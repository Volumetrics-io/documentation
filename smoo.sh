#!/bin/bash

OLDIFS="$IFS"
IFS=$'\n'

if [ "$LOCAL" = "true" ]; then
    base_url="http://localhost:8000"
else
    base_url="https://docs.mrjs.io"
fi
github_base='https://github.com/Volumetrics-io/documentation/edit/main/source'
site_name='MRjs'
templateDir='source'
templateHTML='source/_template.html'
outputDir='public'

assetDir='source/static'
pagesDir='source/pages'
docsDir='source/docs'
attributesDir='source/attributes'
eventsDir='source/events'
jsAPIDir='source/js-api'
jsAPIExtrasDir='source/js-api-extras'
jsAPIUtilsDir='source/js-api-utils'

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
    local ignore_list=$4
    # local files=($(ls -f "${source_dir}"/*.md))
    local files=($(find "${source_dir}" -maxdepth 1 -name "*.md" -print | sort))
    local files_to_ignore
    IFS=',' read -r -a files_to_ignore <<< "$ignore_list" # make sure ignore list item is just file names and separated by ','

    for file in "${files[@]}"
    do
        # --- do we want to handle this file --- #

        # a file is in a used documentation folder but we dont want it showing up live yet
        skip_file=false
        for ignore_file in "${files_to_ignore[@]}"; do
            if [[ "$file" == "$ignore_file" ]]; then
                skip_file=true
                echo "ignoring file as requested:${ignore_file}"
                break # No need to check other ignore_files once a match is found
            fi
        done
        if [[ "$skip_file" == "true" ]]; then
            # Skip this iteration of the outer loop
            continue
        fi

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
process_markdown "$docsDir" "docs" "doc" "${docsDir}/mr-textarea.md,${docsDir}/mr-textfield.md"

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
pandoc "${templateDir}/index.md" \
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
