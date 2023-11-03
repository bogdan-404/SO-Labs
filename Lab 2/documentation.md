1. 0Dh: This is a hexadecimal representation, equivalent to 13 in decimal.
   In ASCII, 0Dh represents the carriage return (CR) character. When displayed, it moves the cursor to the beginning of the line.
2. 0Eh: This is a hexadecimal representation, equivalent to 14 in decimal.
   When placed in the AH register and used with the int 10h BIOS interrupt, it selects the Teletype Output function, which outputs a character to the screen and advances the cursor.
3. 0E0Dh: A combination of two 8-bit values in a single 16-bit register.
   0Eh in the high-order byte (AH register) selects the Teletype Output function in the BIOS interrupt int 10h.
   0Dh in the low-order byte (AL register) is the ASCII value for the carriage return (CR).
4. 0E0Ah: Similar to 0E0Dh, combining two 8-bit values.
   0Eh in AH selects the Teletype Output function.
   0Ah in AL is the ASCII value for the line feed (LF), moving the cursor to the next line.
5. 03h: A hexadecimal representation, 3 in decimal.
   When placed in the AH register and used with int 10h, it selects the Get Cursor Position and Size function, returning the current cursor position and size.
6. 02h: A hexadecimal representation, 2 in decimal.
   In the context of BIOS interrupt int 10h, when placed in the AH register, it selects the Set Cursor Position function, allowing the program to position the cursor at a specific location on the screen.
