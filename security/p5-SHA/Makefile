# $NetBSD: Makefile,v 1.26 2014/10/09 13:44:56 wiz Exp $
#

DISTNAME=		SHA-2.01
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		7
CATEGORIES=		security perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=SHA/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/SHA/
COMMENT=		Perl5 interface to the SHA1 algorithm

DEPENDS+=		p5-Digest-SHA1>=1.0:../../security/p5-Digest-SHA1

PERL5_PACKLIST=		auto/SHA/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
