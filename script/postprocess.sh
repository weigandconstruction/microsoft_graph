#!/bin/bash

# Directory to search
dir_to_search="lib"

# There are some issues with the auto-generated files. These may be fixed in an update to openapi-generator
# but for the time being, they can be fairly easily resolved with simple find and replace

# First, the tool incorrectly atomizes parameters that start with `@`. This currently only applies to the
# `@id` param in the MS API. This is fixed in a pull request, so may not need soon.

# Second, some params in the spec are named `end`. This is a reserved word in Elixir, so this script repaces those
# few cases where `end` is used with `end_`.

# Finally, something not done in this script is that the output version number is not a valid elixir format. The
# default output is "v1.0" where mix expects semver "1.0.0". This should be manually changed as version is a dev decision.

# For each file, use sed to:
# - replace :@id with :"@id"
# - replace `, end,` with `, end_,`
# - replace `:end, end)` with `:end, end_)`
find "$dir_to_search" -type f -print0 | xargs -0 sed -i '' \
  -e 's/:@id/:\"@id\"/g' \
  -e 's/, end,/, end_,/g' \
  -e 's/:end, end)/:end, end_)/g'
