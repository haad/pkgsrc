# $NetBSD: Makefile,v 1.6 2014/10/20 10:43:53 wiz Exp $

DISTNAME=	libunistring-0.9.4
CATEGORIES=	textproc
MASTER_SITES=	http://ftp.gnu.org/gnu/libunistring/

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/libunistring/
COMMENT=	Unicode string library
LICENSE=	gnu-lgpl-v3

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
INFO_FILES=	yes

.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
