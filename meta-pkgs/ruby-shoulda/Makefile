# $NetBSD: Makefile,v 1.5 2014/12/07 19:38:59 rodent Exp $

DISTNAME=	shoulda-3.5.0
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME}
CATEGORIES=	devel meta-pkgs ruby

MAINTAINER=	rodent@NetBSD.org
HOMEPAGE=	https://github.com/thoughtbot/shoulda
COMMENT=	Making tests easy on the fingers and eyes
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-shoulda-context>=1.0.1<2.0:../../devel/ruby-shoulda-context
DEPENDS+=	${RUBY_PKGPREFIX}-shoulda-matchers>=1.4.1<3.0:../../devel/ruby-shoulda-matchers

USE_LANGUAGES=	# none

RUBY_VERSION_SUPPORTED=	200 193 21

META_PACKAGE=	yes

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
