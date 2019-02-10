#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

CILLOCOIND=${CILLOCOIND:-$SRCDIR/cillocoind}
CILLOCOINCLI=${CILLOCOINCLI:-$SRCDIR/cillocoin-cli}
CILLOCOINTX=${CILLOCOINTX:-$SRCDIR/cillocoin-tx}
CILLOCOINQT=${CILLOCOINQT:-$SRCDIR/qt/cillocoin-qt}

[ ! -x $CILLOCOIND ] && echo "$CILLOCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
CLCVER=($($CILLOCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for cillocoind if --version-string is not set,
# but has different outcomes for cillocoin-qt and cillocoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$CILLOCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $CILLOCOIND $CILLOCOINCLI $CILLOCOINTX $CILLOCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${CLCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${CLCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
