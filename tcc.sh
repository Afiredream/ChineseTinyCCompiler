#!/bin/sh
ROOT="$(dirname "$0")"
exec "$ROOT/bin/tcc" -L"$ROOT/lib" -L"$ROOT/lib/tcc" -I"$ROOT/include" -I"$ROOT/lib/tcc/include" -D主函数=main "$@"