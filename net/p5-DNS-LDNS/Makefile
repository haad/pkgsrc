# $NetBSD: Makefile,v 1.2 2014/11/21 09:59:35 he Exp $

DISTVERSION=	1.6.17
PKGVERSION=	0.06
PKGNAME=	p5-DNS-LDNS-${PKGVERSION}
DISTNAME=	ldns-${DISTVERSION}
CATEGORIES=	net
MASTER_SITES=	http://www.nlnetlabs.nl/downloads/ldns/

MAINTAINER=	he@NetBSD.org
HOMEPAGE=	http://www.nlnetlabs.nl/projects/ldns/
COMMENT=	Perl5 bindings for the LDNS library
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	c

WRKSRC=		${WRKDIR}/${DISTNAME}/contrib/DNS-LDNS
PERL5_PACKLIST=	auto/DNS/LDNS/.packlist

.include "../../net/ldns/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
