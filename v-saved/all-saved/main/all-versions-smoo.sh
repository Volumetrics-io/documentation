#!/bin/bash

# copy what is in the main source to /main/
rm -rf "v/main"
cp -r "source" "v/main"

# copy what is in the most recent version number to /latest/
rm -rf "v/latest"
cp -r "v/$LATESTV" "v/latest"

# setup to run all of `smoo.sh`es for each sub-directory:
# -- for each folder in v, run smoo.sh and pass in the proper
#    versioning info 'vX.Y.Z' s.t. they go to the right public
#    folder

# Set the base directory for versions
version_dir="v"

# Navigate to the version directory
cd "$version_dir"

# Loop through each version subdirectory and execute smoo.sh
for dir in */ ; do
    if [[ -d "$dir" && "$dir" != "main/" && "$dir" != "latest/" ]]; then
        version=${dir%/}  # Strip trailing slash to get the version name

        echo "Processing version $version..."

        # Change to the version directory
        cd "$version"

        # Check if smoo.sh exists and is executable
        if [[ -x "../../smoo.sh" ]]; then
            # Execute smoo.sh with the version as a parameter
            ../../smoo.sh "$version"
        else
            echo "Error: smoo.sh is not executable or found"
        fi

        # Go back to the version directory
        cd ..
    fi
done

# Return to the original directory
cd ..
