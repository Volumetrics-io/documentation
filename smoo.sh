#!/bin/bash

if [ "$LOCAL" = "true" ]; then
    base_url="http://localhost:8000"
else
    base_url="https://docs.mrjs.io"
fi
site_name="mrjs"
templateDir='source'
templateHTML='source/_template.html'
outputDir='public'
assetDir='source/static'
pagesDir='source/pages'
docsDir='source/docs'
apiDir='source/js-api'
current_year=$(date +"%Y")
start_time=$(date +%s.%N)

#run main action
mkdir -p "$outputDir"
rm -rf "${outputDir}"/*
echo -e "🧹 Cleaned up /$outputDir/ folder"
if [[ "$assetDir" ]]; then
    rsync -a "$assetDir" "${outputDir}/"
    echo "📦️ Copied /$assetDir/ assets folder"
fi

# Add the top of the post list markdown file
docsYAML="---
"
docsYAML+="pages:
"

# Store the list of folders in an array in reverse order
pageFiles=($(ls -f "$pagesDir"/*.md))

# Loop through the array
for file in "${pageFiles[@]}"
do
        base_file=$(basename -- "$file")
        title=${base_file%.*}
        title=$(echo "$title" | sed 's/^[0-9]*//')
        docsYAML+="  - title: \"$title\"\n"
        echo "🌏 Extracted metadata for page $title"
done

# Add the top of the post list markdown file
docsYAML+="docs:
"

# Store the list of folders in an array in reverse order
docFiles=($(ls -f "$docsDir"/*.md))

# Loop through the array
for file in "${docFiles[@]}"
do
        base_file=$(basename -- "$file")
        title=${base_file%.*}
        title=$(echo "$title" | sed 's/^[0-9]*//')
        docsYAML+="  - title: \"$title\"\n"
        echo "📝 Extracted metadata for Doc page $title"
done

docsYAML+="api:
"

# Store the list of folders in an array in reverse order
apiFiles=($(ls -f "$apiDir"/*.md))

# Loop through the array
for file in "${apiFiles[@]}"
do
        base_file=$(basename -- "$file")
        title=${base_file%.*}
        title=$(echo "$title" | sed 's/^[0-9]*//')
        docsYAML+="  - title: \"$title\"\n"
        echo "📚 Extracted metadata for API page $title"
done

docsYAML+="---"
echo -e "$docsYAML" > "${outputDir}/docs.yaml"

# mkdir -p "${outputDir}/pages/"
for file in "${pageFiles[@]}"
do
    # Extract the file name
    base_file=$(basename -- "$file")
    title=${base_file%.*}
    title=$(echo "$title" | sed 's/^[0-9]*//')
    description="mrjs documentation for $title"
    
    page_url="${base_url}/${title}/"
    mkdir -p "${outputDir}/${title}"

    # Convert the markdown to HTML
    pandoc $file \
        --template $templateHTML \
        --metadata current-year="$current_year" \
        --metadata site-name="$site_name" \
        --metadata page-url="$page_url" \
        --metadata title="$title" \
        --metadata description="$description" \
        --metadata-file="${outputDir}/docs.yaml" \
        --highlight-style pygments \
        -s -p \
        -o "${outputDir}/${title}/index.html"

    echo "⭐ Generated page for $title"
done

mkdir -p "${outputDir}/doc/"
for file in "${docFiles[@]}"
do
    # Extract the file name
    base_file=$(basename -- "$file")
    title=${base_file%.*}
    title=$(echo "$title" | sed 's/^[0-9]*//')
    description="mrjs documentation for $title"
    
    page_url="${base_url}/doc/${title}/"
    mkdir -p "${outputDir}/doc/${title}"

    # -V base-url="$base_url" \
    # Convert the markdown to HTML
    pandoc $file \
        --template $templateHTML \
        --metadata current-year="$current_year" \
        --metadata site-name="$site_name" \
        --metadata page-url="$page_url" \
        --metadata title="$title" \
        --metadata description="$description" \
        --metadata-file="${outputDir}/docs.yaml" \
        --highlight-style pygments \
        -s -p \
        -o "${outputDir}/doc/${title}/index.html"

    echo "🌟 Generated docs page for $title"
done

mkdir -p "${outputDir}/api/"
for file in "${apiFiles[@]}"
do
    # Extract the file name
    base_file=$(basename -- "$file")
    title=${base_file%.*}
    title=$(echo "$title" | sed 's/^[0-9]*//')
    description="mrjs documentation for $title"
    
    page_url="${base_url}/api/${title}/"
    mkdir -p "${outputDir}/api/${title}"

    # -V base-url="$base_url" \
    # Convert the markdown to HTML
    pandoc $file \
        --template $templateHTML \
        --metadata current-year="$current_year" \
        --metadata site-name="$site_name" \
        --metadata page-url="$page_url" \
        --metadata title="$title" \
        --metadata description="$description" \
        --metadata-file="${outputDir}/docs.yaml" \
        --highlight-style pygments \
        -s -p \
        -o "${outputDir}/api/${title}/index.html"

    echo "✨ Generated API page for $title"
done

# --metadata base-url="$base_url" \
pandoc "${templateDir}/index.md" \
    --template $templateHTML \
    --metadata current-year="$current_year" \
    --metadata site-name="$site_name" \
    --metadata page-url="${base_url}" \
    --metadata title="$site_name" \
    --metadata description="mrjs Documentation" \
    --metadata-file="${outputDir}/docs.yaml" \
    --highlight-style pygments \
    -s -p \
    -o "${outputDir}/index.html"

# IFS="$OLDIFS"

end_time=$(date +%s.%N)
elapsed=$(perl -e "printf('%.2f', $end_time - $start_time)")
echo -e "🎀 Website smooshed in $elapsed seconds!\n"
