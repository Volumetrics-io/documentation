#!/bin/bash

# Set the base directory for versions
versions_dir="./v-saved/all-saved"

latest_v="v0.6.4"

# copy what is in the main source to /main/
rm -rf "$versions_dir/main"
cp -r "./source" "$versions_dir/main"

# setup to run all of `smoo.sh`es for each sub-directory:
# -- for each folder in v, run smoo.sh and pass in the proper
#    versioning info 'vX.Y.Z' s.t. they go to the right public
#    folder

# Navigate to the version directory
cd "$versions_dir"

# Loop through each version subdirectory and execute smoo.sh
for dir in */ ; do
    if [[ -d "$dir" ]]; then
        version=${dir%/}  # Strip trailing slash to get the version name

        echo "Processing version $version..."

        # Change to the version directory
        cd "$version"

        echo "pwd:" $(pwd)

        # Check if smoo.sh exists and is executable
        # if [[ -x "../../smoo.sh" ]]; then
        #     # Execute smoo.sh with the version as a parameter
        #     ../../smoo.sh "$version"
        # else
        #     echo "Error: smoo.sh is not executable or found"
        # fi

        # Go back to the version directory
        cd ..
    fi
done

# Return to the original directory
cd ..
