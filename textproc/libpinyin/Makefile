# $NetBSD: Makefile,v 1.3 2014/12/04 12:06:10 obache Exp $

DISTNAME=	libpinyin-1.0.0
CATEGORIES=	textproc chinese
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libpinyin/}

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	https://github.com/libpinyin/libpinyin/
COMMENT=	Library to deal with pinyin
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake pkg-config
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

PKGCONFIG_OVERRIDE+=	libpinyin.pc.in

OPSYSVARS+=	BUILDLINK_TRANSFORM

BUILDLINK_TRANSFORM.SunOS+=	rm:-Wl,--version-script=./libpinyin.ver

.include "../../databases/db4/buildlink3.mk"
BUILDLINK_TRANSFORM+=	l:db:db4
.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
