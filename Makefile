#	$OpenBSD: $

PROG=	jsmin
BINDIR=/usr/local/bin
MANDIR=/usr/local/man/man

.include <bsd.prog.mk>

VER= 1.0

DISTNAME= ${PROG}-${VER}
DIST= ${DISTNAME}.tar.gz
DISTFILES= ${SRCS} ${MAN} README Makefile

dist: ${DIST}

${DIST}: ${DISTFILES}
	pax -wzx tar -s,^,${DISTNAME}/, ${DISTFILES} > ${DIST}

distclean:
	rm -rf ${DIST} ${DISTNAME}
.PHONY: distclean
