# $NetBSD: Makefile,v 1.12 2014/10/09 14:06:12 wiz Exp $

DISTNAME=	Cache-2.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	7
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Cache/} \
		${MASTER_SITE_SOURCEFORGE:=perl-cache/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://perl-cache.sourceforge.net/
COMMENT=	The Cache interface
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-File-NFSLock>=1.20:../../devel/p5-File-NFSLock
DEPENDS+=	p5-Heap>=0.01:../../devel/p5-Heap
DEPENDS+=	p5-IO-String>=1.02:../../devel/p5-IO-String
#DEPENDS+=	p5-Storable>=1.00:../../devel/p5-Storable
DEPENDS+=	p5-TimeDate>=1.00:../../time/p5-TimeDate
DEPENDS+=	p5-Digest-SHA1>=2.01:../../security/p5-Digest-SHA1

PERL5_PACKLIST=	auto/Cache/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
