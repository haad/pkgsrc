# $NetBSD: Makefile,v 1.8 2014/05/29 23:36:52 wiz Exp $

PKGREVISION=	3
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	${R_HOMEPAGE_BASE}/gdata/
COMMENT=	Various R programming tools for data manipulation
LICENSE=	gnu-gpl-v2

R_PKGNAME=	gdata
R_PKGVER=	2.8.2

DEPENDS+=	R-gtools>=2.6.2:../../math/R-gtools

USE_TOOLS+=	perl:run
REPLACE_PERL+=	inst/bin/*.bat inst/perl/*.pl

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
