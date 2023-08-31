#!/bin/bash
BOOT_SECT_FN=boot_sector
BOOT_SECT_EX="$BOOT_SECT_FN.bin"
if [ -f  "$BOOT_SECT_EX" ]; then
  echo -e "$BOOT_SECT_EX exists."
  od -t x1 -A n "$BOOT_SECT_EX"
else
  echo -e "$BOOT_SECT_EX do not exist."
fi
