# $NetBSD: Makefile,v 1.32 2014/05/17 16:10:48 wiz Exp $

DISTNAME=	bg5pdf-1.0.0
PKGREVISION=	16
CATEGORIES=	print chinese
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	rxg@NetBSD.org
# HOMEPAGE=	http://students.washington.edu/cschin/bg5ps/bg5pdf/
COMMENT=	Wrap big5 encoding text file into PDF file by using PDFlib

# The package is a confusing mix of GPL and pdflib license.
# Err on the side of caution until this is understood.
LICENSE=		bg5pdf-license
RESTRICTED=		"No clear permission to redistribute".
NO_SOURCE_ON_FTP=	${RESTRICTED}
NO_SOURCE_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_FTP=		${RESTRICTED}
NO_BIN_ON_CDROM=	${RESTRICTED}

WRKSRC=				${WRKDIR}/bg5pdf
PY_PATCHPLIST=			yes
REPLACE_PYTHON=		bg5pdf

INSTALLATION_DIRS=	bin ${PYSITELIB}

MAKE_ENV+=	PYINC=${PYINC:Q} PYSITELIB=${PYSITELIB:Q}

post-extract:
	${RM} -f ${WRKSRC}/bg5pdflib.so

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../print/pdflib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
