#!/bin/bash
mkdocs build --strict
test -f docs/index.md && test -f docs/modul1.md && test -f docs/modul2.md && test -f docs/modul3.md && echo "All files present"