```
AH         13h
AL         Subservice (0-3)
BH         Display page number
BL         Attribute (Subservices 0 and 1)
CX         Length of string
DH         Row position where string is to be written
DL         Column position where string is to be written
ES:BP      Pointer to string to write



AL=00h: Assign all characters the attribute in BL;
do not update cursor
AL=01h: Assign all characters the attribute in BL;
update cursor
AL=02h: Use attributes in string; do not update
cursor
AL=03h: Use attributes in string; update cursor

In Subservices 0 and 1, all characters in the string
are written to the screen with the same attribute--
the attribute specified in BL.

In Subservices 2 and 3, the attribute byte for each
character is found in the string itself. The string
itself consists of a character followed by its
attribute, another character followed by its
attribute, and so on. The string is copied directly
to the video buffer as is.

In Subservices 0 and 2, the cursor position is not
updated after the string is written.

In Subservices 1 and 3, the cursor is moved to the
first position following the last character in the
string.

Like Service 0Eh, Service 13h responds appropriately
to ASCII 07h (bell), 08h (backspace), 10h (line
feed), and 0Dh (carriage return). All other
characters are printed.

```
