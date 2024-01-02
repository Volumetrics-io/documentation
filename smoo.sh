#!/bin/bash

# TODO: responsive sidebar / hamburger
# TODO: MRJS logo
# TODO: docs/ route or flatten structure

site_name="MRJS"

if [ "$LOCAL" = "true" ]; then
    base_url="http://localhost:8000"
else
    base_url="https://docs.mrjs.io"
fi
templateDir='source'
templateHTML='source/_template.html'
outputDir='public'
assetDir='source/static'
docsDir='source/docs'
current_year=$(date +"%Y")
start_time=$(date +%s.%N)

#run main action
mkdir -p "$outputDir"
rm -rf "${outputDir}"/*
echo -e "🧹 Cleaned up $(tput bold)/$outputDir/$(tput sgr0) folder"
if [[ "$assetDir" ]]; then
    rsync -a "$assetDir" "${outputDir}/"
    echo "📦️ Copied $(tput bold)/$assetDir/$(tput sgr0) assets folder"
fi
# routeList="$(<$routeFile)"
OLDIFS="$IFS"
IFS=$'\n'

# Add the top of the post list markdown file
docsYAML="---
docs:
"

# Generate the blog posts
mkdir -p "$outputDir/docs/"

# Store the list of folders in an array in reverse order
mdFiles=($(ls -f "$docsDir"/*.md))

# Loop through the array
for file in "${mdFiles[@]}"
do
        # Extract the file name
        base_file=$(basename -- "$file")
        slug=${base_file%.*}

        # Extract metadata from markdown (YAML front matter)
        title=$(perl -ne 'print $1 if /^title:\s*"(.*)"/' "$file")
        description=$(perl -ne 'print $1 if /^description:\s*"(.*)"/' "$file")

#         # Generate the tile for the blog index page
        docsYAML+="  - title: \"$title\"
    description: \"$description\"
    slug: \"$slug\"
"

        echo "✊ Extracted metadata for page $(tput bold)$slug$(tput sgr0)"
done

docsYAML+="---"
echo -e "$docsYAML" > "${outputDir}/docs/docs.yaml"

# Now that we have all we need to create the actual pages
for file in "${mdFiles[@]}"
do
    # Extract the file name
    base_file=$(basename -- "$file")
    slug=${base_file%.*}

    title=$(perl -ne 'print $1 if /^title:\s*"(.*)"/' "$file")
    description=$(perl -ne 'print $1 if /^description:\s*"(.*)"/' "$file")

    page_url="${base_url}/docs/${slug}/"
    mkdir -p "${outputDir}/docs/${slug}"

    # Convert the markdown to HTML
    pandoc $file \
        --template $templateHTML \
        -V current-year="$current_year" \
        -V site-name="$site_name" \
        -V page-url="$page_url" \
        -V base-url="$base_url" \
        --metadata title="$slug" \
        --metadata description="$description" \
        --metadata-file="${outputDir}/docs/docs.yaml" \
        --highlight-style pygments \
        -s -p \
        -o "${outputDir}/docs/${slug}/index.html"

    echo "🌟 Generated docs page for $(tput bold)$slug$(tput sgr0)"
done

pandoc "${templateDir}/index.md" \
    --template $templateHTML \
    -V current-year="$current_year" \
    -V site-name="$site_name" \
    -V base-url="$base_url" \
    -V page-url="${base_url}" \
    --metadata-file="${outputDir}/docs/docs.yaml" \
    --highlight-style pygments \
    -s -p \
    -o "${outputDir}/index.html"

IFS="$OLDIFS"

end_time=$(date +%s.%N)
elapsed=$(perl -e "printf('%.2f', $end_time - $start_time)")
echo -e "🎀 Website smooshed in $elapsed seconds!\n"
