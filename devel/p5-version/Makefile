# $NetBSD: Makefile,v 1.29 2014/10/09 14:06:30 wiz Exp $

DISTNAME=	version-0.9908
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=version/}

MAINTAINER=	abs@absd.org
HOMEPAGE=	http://search.cpan.org/dist/version/
COMMENT=	Perl extension for Version Objects
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		c
PERL5_PACKLIST=		auto/version/.packlist
PERL5_MODULE_TYPE=	MakeMaker

REPLACE_PERL+=	lib/version.pm
REPLACE_PERL+=	vutil/lib/version/vxs.pm

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
