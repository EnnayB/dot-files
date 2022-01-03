#! /bin/sh

pull() {
    cp ~/.scripts/"$1" ./
}

for arg in "$@"; do
    case "$arg" in
        make)
            pull 'Makefile'
            ;;
        main)
            pull 'main.c'
            ;;
        clang)
            pull '.clang-format'
            ;;
        test)
            pull 'test.sh'
            ;;
        *)
            echo "Unknown $arg"
    esac
done
