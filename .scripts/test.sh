#! /bin/sh

ref_file=".ref"
got_file=".got"
diff_file=".diff"

RED="\033[0;31m"
GREEN="\033[0;32m"
NC="\033[0m"

[ ! -f "$ref_file" ] && touch "$ref_file"
[ ! -f "$got_file" ] && touch "$got_file"
[ ! -f "$diff_file" ] && touch "$diff_file"

test_runner() {
    name="$1"
    shift

    tail "$1" -n "$2" > "$ref_file"
    (./my_c_tail "$2" < "$1") > "$got_file"

    res="$(diff -u $ref_file $got_file)"
    if [ ! "$res" ]; then
        echo -e "$name: [$GREEN OK $NC]\n"
    else
        echo -e "$name: [$RED KO $NC]\n"
        diff -u "$ref_file" "$got_file"
    fi
}

test_runner zero 'main.c' '0'
test_runner five 'main.c' '5'
test_runner ten 'main.c' '10'
test_runner twenty 'main.c' '20'
