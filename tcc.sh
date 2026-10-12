#!/bin/sh
FILE="$0"
ROOT="$(dirname "$FILE")"
ROOT="$(dirname "$ROOT")"
[ -z "$*" ] && exec "$ROOT/lib/tcc/tcc"
[ -n "$*" ] && exec "$ROOT/lib/tcc/tcc" \
    -L"$ROOT/lib" \
    -L"$ROOT/lib/tcc" \
    -I"$ROOT/include" \
    -I"$ROOT/lib/tcc/include" \
    -D主函数=main \
    "$@"