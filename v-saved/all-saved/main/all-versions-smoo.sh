#!/bin/bash

# Set the base directory for versions
versions_dir="./v-saved/all-saved"

latest_v="v0.6.4"

echo "hi0"

# delete /main/ in v-saved setup for now.
main_version_dir="$versions_dir/main"
rm -rf $main_version_dir

echo "hi1"

# setup to run all of `smoo.sh`es for each sub-directory:
# -- for each folder in v, run smoo.sh and pass in the proper
#    versioning info 'vX.Y.Z' s.t. they go to the right public
#    folder

# Navigate to the version directory
# cd "$versions_dir"

# Loop through each version subdirectory and execute smoo.sh
# Retrieve list of directories and store in an array
directories=($(find "$versions_dir" -maxdepth 1 -mindepth 1 -type d -exec basename {} \;))

# Echo directories to check what's captured
echo "Directories in $versions_dir:"
printf "%s\n" "${directories[@]}"

# Example of processing each directory
for dir in "${directories[@]}"; do
    echo "hi2.0"
    echo $dir
    if [ -d "$dir" ]; then
        echo "hi2"
        version=${dir%/}  # Strip trailing slash to get the version name

        echo "Processing version $version..."

        # Change to the version directory
        # cd "$version"

        echo "pwd:" $(pwd)
        echo "smoo.sh is:" "$versions_dir/$version/smoo.sh"

        # Check if smoo.sh exists and is executable
        if [[ -x "$versions_dir/$version/smoo.sh" ]]; then
            # Execute smoo.sh with the version as a parameter
            $versions_dir/$version/smoo.sh "$version"
        else
            echo "Error: smoo.sh is not executable or found"
        fi

        # Go back to the version directory
        # cd ..
    fi
done

# Return to the original directory
# cd ..

# run /main/ in v-saved setup now.
rm -rf $main_version_dir
mkdir $main_version_dir
echo "removed and recreated: $main_version_dir"
# copy everything except the folders .github, public, and v-saved
# to the /main/ section in v-saved/all
rsync -av --exclude='err.txt' --exclude='output.txt' --exclude='.github/' --exclude='.git' --exclude='public/' --exclude='v-saved/' ./ $main_version_dir
echo "copied current main documentation to: $main_version_dir"

# cd "$main_version_dir"
echo "pwd:" $(pwd)
./$main_version_dir/smoo.sh "main"
# cd -
