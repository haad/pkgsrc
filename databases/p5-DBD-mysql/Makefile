# $NetBSD: Makefile,v 1.58 2014/10/09 13:44:35 wiz Exp $

DISTNAME=	DBD-mysql-4.027
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBD/}

MAINTAINER=	bad@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/DBD-mysql/
COMMENT=	Perl DBI/DBD driver for MySQL databases
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Data-ShowTable>=3.3:../../devel/p5-Data-ShowTable

PERL5_PACKLIST=		auto/DBD/mysql/.packlist

MAKE_PARAMS+=		--nocatchstderr

.include "../../databases/p5-DBI/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/mysql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
