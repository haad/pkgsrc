# $NetBSD: Makefile,v 1.1 2014/11/03 02:25:29 wen Exp $

DISTNAME=	Cookie-Baker-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Cookie/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Cookie-Baker/
COMMENT=	Perl extension for cookie string generator/parser
LICENSE=	${PERL5_LICENSE}

BUILD_DEPENDS+=	p5-Test-Time>=0:../../time/p5-Test-Time
DEPENDS+=       p5-URI>=0:../../www/p5-URI

USE_LANGUAGES=	#
PERL5_PACKLIST= auto/Cookie/Baker/.packlist

PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
