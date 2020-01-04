# gets all source files containing $pattern to be edited when documenting
function grep_source_files() {
    pattern=$1

    local files=$(grep -lwr --include="*.s" --include="*.h" --include="*.inc" --include="*.c" --exclude-dir="tools" --exclude-dir=".git" "$pattern")


    # echo pattern: $pattern >&2
    # echo files: $files >&2
    echo $files
}

funcion update_ctags() {
    ctags -R *.s asm/* data/dat* docs/decomp/*.c include/* maps/*
}
