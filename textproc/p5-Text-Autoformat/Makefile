# $NetBSD: Makefile,v 1.26 2014/10/09 13:44:58 wiz Exp $

DISTNAME=	Text-Autoformat-1.669004
PKGNAME=	p5-${DISTNAME:S/669002/669.002/}
PKGREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Text-Autoformat/
COMMENT=	Perl module for text wrapping and reformatting
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Text-Reform>=1.11:../../textproc/p5-Text-Reform

PERL5_PACKLIST=		auto/Text/Autoformat/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
