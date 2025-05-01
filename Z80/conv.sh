#!/bin/sh

Z80CONV=${HOME}/Library/Python/3.9/bin/z80conv
for f in ../*.ASM; do
    o=$(echo ${f}|sed -e 's/\.ASM$/.z80/' -e 's/^\.\././')
    echo ${o}
    ${Z80CONV} < ${f} > ${o}
done

cp ../LICENSE ../*.H ../*.md ../GIO86U ../MSDOSU ../.gitignore .