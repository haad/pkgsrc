# $NetBSD: Makefile,v 1.114 2014/05/29 23:37:04 wiz Exp $

DISTNAME=	mrtg-2.17.4
PKGREVISION=	3
CATEGORIES=	net
MASTER_SITES=	http://oss.oetiker.ch/mrtg/pub/ \
		http://oss.oetiker.ch/mrtg/pub/old/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://oss.oetiker.ch/mrtg/
COMMENT=	The Multi-Router Traffic Grapher
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		perl:run
PERL5_REQD=		5.14.1
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-gd=${BUILDLINK_PREFIX.gd}
CONFIGURE_ARGS+=	--with-png=${BUILDLINK_PREFIX.png}
CONFIGURE_ARGS+=	--with-z=${BUILDLINK_PREFIX.zlib}
MAKE_ENV+=		PERL5_INSTALLVENDORLIB=${PERL5_INSTALLVENDORLIB}

REPLACE_PERL=	bin/cfgmaker bin/indexmaker bin/mrtg bin/mrtg-traffic-sum
EGDIR=		${PREFIX}/share/examples/${PKGBASE}

CONF_FILES=	${EGDIR}/mrtg.conf ${PKG_SYSCONFDIR}/mrtg.conf

.include "options.mk"

SUBST_CLASSES+=		files
SUBST_STAGE.files=	post-patch
SUBST_FILES.files=	../mrtg.conf.example ../netstat2mrtg	\
			../sys2mrtg ../envstat2mrtg
SUBST_SED.files=	-e "s|@PREFIX@|${PREFIX}|g"
SUBST_MESSAGE.files=	Fixing default configuration files.

INSTALLATION_DIRS+=	${EGDIR} libexec

post-extract:
	cp ${FILESDIR}/mrtg.conf.example ${WRKDIR}
	cp ${FILESDIR}/netstat2mrtg ${WRKDIR}
	cp ${FILESDIR}/sys2mrtg ${WRKDIR}
	cp ${FILESDIR}/envstat2mrtg ${WRKDIR}

post-install:
	${INSTALL_DATA} ${WRKDIR}/mrtg.conf.example ${DESTDIR}${EGDIR}/mrtg.conf
	${INSTALL_SCRIPT} ${WRKDIR}/envstat2mrtg ${DESTDIR}${PREFIX}/libexec
	${INSTALL_SCRIPT} ${WRKDIR}/netstat2mrtg ${DESTDIR}${PREFIX}/libexec
	${INSTALL_SCRIPT} ${WRKDIR}/sys2mrtg ${DESTDIR}${PREFIX}/libexec

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/gd/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
