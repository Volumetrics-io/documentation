#!/bin/bash

OLDIFS="$IFS"
IFS=$'\n'

if [ "$LOCAL" = "true" ]; then
    base_url="http://localhost:8000"
else
    base_url="https://docs.mrjs.io"
fi
github_base='https://github.com/Volumetrics-io/documentation/edit/main/source'
site_name='mrjs'
templateDir='source'
templateHTML='source/_template.html'
outputDir='public'
assetDir='source/static'
pagesDir='source/pages'
docsDir='source/docs'
attributesDir='source/attributes'
current_year=$(date +"%Y")

#run main action
mkdir -p "$outputDir"
rm -rf "${outputDir}"/*
echo -e "🧹 Cleaned up /$outputDir/ folder"
if [[ "$assetDir" ]]; then
    rsync -a "$assetDir" "${outputDir}/"
    echo "📦️ Copied /$assetDir/ assets folder"
fi

# Function to process files
extract_metadata() {
    local directory=$1
    # local files=($(ls -f "${directory}"/*.md))
    local files=($(find "${directory}" -maxdepth 1 -name "*.md" -print | sort))

    for file in "${files[@]}"
    do
        # Extract the file name
        local base_file=$(basename -- "$file")

        # Get the part before the .md extension
        local title=${base_file%.*}

        # Remove the leading numbers (used for sorting)
        title=$(echo -e "$title" | sed 's/^[0-9]*//')

        # Make the slug lowercase
        local slug=${title,,}

        # Replace spaces with "-" in the slug
        slug=${slug// /-}

        # Add the entry to the YAML doc
        docsYAML+="  - title: \"$title\"\n"
        docsYAML+="    slug: \"$slug\"\n"

        echo -e "🔎 Extracted metadata for $title"
    done
}

# Function to process markdown files and convert them to HTML
process_markdown() {
    local source_dir=$1
    local github_path_prefix=$2
    local output_subdir=$3
    # local files=($(ls -f "${source_dir}"/*.md))
    local files=($(find "${source_dir}" -maxdepth 1 -name "*.md" -print | sort))

    for file in "${files[@]}"
    do
        # Extract the file name
        local base_file=$(basename -- "$file")

        # Get the part before the .md extension
        local title=${base_file%.*}

        # Remove the leading numbers (used for sorting)
        title=$(echo -e "$title" | sed 's/^[0-9]*//')

        # Make the slug lowercase
        local slug=${title,,}

        # Replace spaces with "-" in the slug
        slug=${slug// /-}

        # Set path variables and create the folder
        local page_url="${base_url}/${output_subdir}/${slug}/"
        local github_path="${github_base}/${github_path_prefix}/${base_file}"
        mkdir -p "${outputDir}/${output_subdir}/${slug}"

        # Convert the markdown to HTML
        pandoc "$file" \
            --template "$templateHTML" \
            --metadata current-year="$current_year" \
            --metadata site-name="$site_name" \
            --metadata page-url="$page_url" \
            --metadata base-url="$base_url" \
            --metadata github-path="$github_path" \
            --metadata title="$title" \
            --metadata slug="$slug" \
            --metadata title-prefix="$site_name" \
            --metadata-file="${outputDir}/docs.yaml" \
            --lua-filter colgroups.lua \
            --lua-filter anchorlinks.lua \
            --highlight-style pygments \
            --wrap=none \
            -f markdown-smart \
            -s -p \
            -o "${outputDir}/${output_subdir}/${slug}/index.html"

        echo -e "🌟 Generated page for $title"
    done
}

# Initialize YAML header
docsYAML="---\npages:\n"

# Process page files
extract_metadata "$pagesDir"

# Add the docs header
docsYAML+="docs:\n"

# Process doc files
extract_metadata "$docsDir"

# Add the attributes header
docsYAML+="attributes:\n"

# Process doc files
extract_metadata "$attributesDir"

# Finalize and write to file
docsYAML+="---"
echo -e "$docsYAML" > "${outputDir}/docs.yaml"

# Process page files
process_markdown "$pagesDir" "pages" ""

# Process doc files
process_markdown "$docsDir" "docs" "doc"

# Process data attributes files
process_markdown "$attributesDir" "attributes" "attributes"

# --metadata base-url="$base_url" \
pandoc "${templateDir}/index.md" \
    --template $templateHTML \
    --metadata current-year="$current_year" \
    --metadata site-name="$site_name" \
    --metadata page-url="$base_url" \
    --metadata base-url="$base_url" \
    --metadata github-path="https://github.com/Volumetrics-io/mrjs/edit/main/README.md" \
    --metadata title="$site_name" \
    --metadata slug="" \
    --metadata-file="${outputDir}/docs.yaml" \
    --lua-filter colgroups.lua \
    --lua-filter anchorlinks.lua \
    --highlight-style pygments \
    --wrap=none \
    -f markdown-smart \
    -s -p \
    -o "${outputDir}/index.html"

IFS="$OLDIFS"

echo -e "🎀 Website smooshed!\n"
