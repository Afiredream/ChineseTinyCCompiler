#!/bin/sh
FILE="$0"
ROOT="$(dirname "$FILE")"
ROOT="$(dirname "$ROOT")"
exec "$ROOT/bin/tcc" -L"$ROOT/lib" -L"$ROOT/lib/tcc" -I"$ROOT/include" -I"$ROOT/lib/tcc/include" -D主函数=main "$@"