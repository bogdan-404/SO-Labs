import os

size = os.path.getsize("prog.bin")
small = open("prog.bin", "rb")
big = open("prog.img", "wb")
big.write(small.read())
if size < 512:
    bytes = b"\x00" * (512 - size - 2) + b"\x55\xAA"
    big.write(bytes)
bytes = b"\x00" * (1474560 - 512)
big.write(bytes)
