#!/usr/bin/env bash

set -eu

MODULE_FILES=$(fgrep --recursive --exclude-dir=node_modules --include='*.d.ts' --files-without-match 'GENERATED CODE -- NO SERVICES IN PROTO' . | sed 's/\.d\.ts$//g')
MODULE_DIRS=$(find . \( -type d -name node_modules -prune \) -o -type d -print)

find_module_files() {
    for moduleFile in ${MODULE_FILES}; do
        echo "${moduleFile}" | grep "^$1/[^/]*$" | sed "s,$1/,,g"
    done
}

find_sub_dirs() {
    for subDir in ${MODULE_DIRS}; do
        echo "${subDir}" | grep "^$1/[^/]*$" | sed "s,$1/,,g"
    done
}

for moduleDir in ${MODULE_DIRS}; do
    pushd "${moduleDir}" > /dev/null

    rm -f index.ts

    moduleFiles=$(find_module_files "${moduleDir}")
    for moduleFile in ${moduleFiles}; do
        echo "export * from './${moduleFile}'" >> index.ts
    done

    subDirs=$(find_sub_dirs "${moduleDir}")
    for subDir in ${subDirs}; do
        echo "export * as ${subDir} from './${subDir}'" >> index.ts
    done

    popd > /dev/null
done
