# $NetBSD: Makefile,v 1.3 2014/05/29 23:36:34 wiz Exp $
#

DISTNAME=	Font-FreeType-0.03
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	perl5 fonts graphics
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Font/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Font-FreeType/
COMMENT=	Read font files and render glyphs from Perl using FreeType2
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=		auto/Font/FreeType/.packlist

.include "../../graphics/freetype2/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
