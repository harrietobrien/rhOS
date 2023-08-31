#!/bin/bash
BOOT_SECT_FN=boot_sector
BOOT_SECT_WD="$BOOT_SECT_FN.asm"
BOOT_SECT_EX="$BOOT_SECT_FN.bin"
if [ -f  "$BOOT_SECT_WD" ]; then
  echo "$BOOT_SECT_WD exists."
  if [ -f  "$BOOT_SECT_EX" ]; then
    echo "$BOOT_SECT_EX already exists."
    read -rp "Would you like to reassemble? (Y/N)" opt
    case $opt in
      Y ) echo "Reassembling...";
        nasm "$BOOT_SECT_WD" -f bin -o boot_sector.bin;
        echo "Assembled.";
        exit 0;;
      N ) echo "Exiting...";
        exit;;
      * ) echo "Invalid response.";
        exit 1;;
    esac
  else
    echo "Assembling..."
    nasm "$BOOT_SECT_WD" -f bin -o boot_sector.bin
    echo "Assembled."
  fi
else
  echo "$BOOT_SECT_WD does not exist."
  read -rp "Should I create a basic ASM boot sector? (Y/N)" opt
  case $opt in
    Y ) echo "Creating a simple boot sector in assembly...";
      touch "$BOOT_SECT_WD";
      printf "loop: jmp loop times 510-(\$-\$\$) db 0 dw 0xaa55" > "$BOOT_SECT_WD";
      echo "Done."
      exit 0;;
    N ) echo "Alright, go make one then...";
      exit;;
    * ) echo "Invalid response.";
      exit 1;;
  esac
fi