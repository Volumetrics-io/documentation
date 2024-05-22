#!/bin/bash

version="v0.6.2"

echo ""
echo ""
echo "SETUP MAIN ACTION for : $version"
echo ""
echo ""

OLDIFS="$IFS"
IFS=$'\n'

if [ "$LOCAL" = "true" ]; then
    base_url="http://localhost:8000/v/$version"
else
    base_url="https://docs.mrjs.io/v/$version"
fi
github_base='https://github.com/Volumetrics-io/documentation/edit/main/source'
site_name='MRjs'
saved_version_dir="v-saved/all-saved/$version"
sourceDir="$saved_version_dir/source"
templateHTML="$sourceDir/_template.html"
outputDir="public/v/$version"
echo "outputDir:" $outputDir

assetDir="$sourceDir/static"
pagesDir="$sourceDir/pages"
docsDir="$sourceDir/docs"
attributesDir="$sourceDir/attributes"
eventsDir="$sourceDir/events"
jsAPIDir="$sourceDir/js-api"
jsAPIExtrasDir="$sourceDir/js-api-extras"
jsAPIUtilsDir="$sourceDir/js-api-utils"

current_year=$(date +"%Y")

echo ""
echo ""
echo "RUNNING MAIN ACTION for : $version"
echo ""
echo ""

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
        local slug=$(echo -e "$title" | tr '[:upper:]' '[:lower:]')

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
        # --- handling the file for creation to the public folder --- #

        # Extract the file name
        local base_file=$(basename -- "$file")

        # Get the part before the .md extension
        local title=${base_file%.*}

        # Remove the leading numbers (used for sorting)
        title=$(echo -e "$title" | sed 's/^[0-9]*//')

        # Make the slug lowercase
        local slug=$(echo -e "$title" | tr '[:upper:]' '[:lower:]')

        # Replace spaces with "-" in the slug
        slug=${slug// /-}

        # Set path variables and create the folder
        local page_url="${base_url}/${output_subdir}/${slug}/"
        local github_path_auto="${github_base}/${github_path_prefix}/${base_file}"
        mkdir -p "${outputDir}/${output_subdir}/${slug}"

        # Convert the markdown to HTML
        pandoc "$file" \
            --template "$templateHTML" \
            --metadata current-year="$current_year" \
            --metadata site-name="$site_name" \
            --metadata page-url="$page_url" \
            --metadata base-url="$base_url" \
            --metadata github-path-auto="$github_path_auto" \
            --metadata title="$title" \
            --metadata slug="$slug" \
            --metadata title-prefix="$site_name" \
            --metadata-file="${outputDir}/docs.yaml" \
            --lua-filter colgroups.lua \
            --lua-filter anchorlinks.lua \
            --highlight-style pygments \
            --wrap=none \
            -f commonmark_x \
            -s -p \
            -o "${outputDir}/${output_subdir}/${slug}/index.html"

        echo -e "🌟 Generated page for $title"
    done
}

# Initialize YAML header
docsYAML="---\n"

######################################

# Process "General" pages
docsYAML+="pages:\n"
extract_metadata "$pagesDir"

# Process "HTML tags" pages
docsYAML+="docs:\n"
extract_metadata "$docsDir"

# Process "MRjs Events" pages
docsYAML+="events:\n"
extract_metadata "$eventsDir"

# Process "Data attributes" pages
docsYAML+="attributes:\n"
extract_metadata "$attributesDir"

# Process "JavaScript API" pages
docsYAML+="js-api:\n"
extract_metadata "$jsAPIDir"

# Process "JavaScript API Extras" pages
docsYAML+="js-api-extras:\n"
extract_metadata "$jsAPIExtrasDir"

# Process "JavaScript API Utils" pages
docsYAML+="js-api-utils:\n"
extract_metadata "$jsAPIUtilsDir"


######################################

# Finalize and write to file
docsYAML+="---"
echo -e "$docsYAML" > "${outputDir}/docs.yaml"

# Process page files
process_markdown "$pagesDir" "pages" ""

# Process doc files
process_markdown "$docsDir" "docs" "doc"

# Process data events files
process_markdown "$eventsDir" "events" "events"

# Process data attributes files
process_markdown "$attributesDir" "attributes" "attributes"

# Process javascript API files
process_markdown "$jsAPIDir" "js-api" "js-api"
process_markdown "$jsAPIExtrasDir" "js-api-extras" "js-api-extras"
process_markdown "$jsAPIUtilsDir" "js-api-utils" "js-api-utils"

# --metadata base-url="$base_url" \
# --metadata github-path="https://github.com/Volumetrics-io/mrjs/edit/main/README.md" \
pandoc "${sourceDir}/index.md" \
    --template $templateHTML \
    --metadata current-year="$current_year" \
    --metadata site-name="$site_name" \
    --metadata page-url="$base_url" \
    --metadata base-url="$base_url" \
    --metadata github-path-auto="https://github.com/Volumetrics-io/mrjs/edit/main/README.md" \
    --metadata title="$site_name" \
    --metadata slug="" \
    --metadata-file="${outputDir}/docs.yaml" \
    --lua-filter colgroups.lua \
    --lua-filter anchorlinks.lua \
    --highlight-style pygments \
    --wrap=none \
    -f commonmark_x \
    -s -p \
    -o "${outputDir}/index.html"

IFS="$OLDIFS"

echo -e "🎀 Website smooshed!\n"
