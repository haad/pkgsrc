# $NetBSD: Makefile,v 1.6 2014/12/03 23:00:11 rodent Exp $

DISTNAME=	Flask-Bootstrap-3.3.0.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	python www
MASTER_SITES=	https://pypi.python.org/packages/source/F/Flask-Bootstrap/

MAINTAINER=	rodent@NetBSD.org
HOMEPAGE=	http://github.com/mbr/flask-bootstrap
COMMENT=	Flask extension for Twitter's Bootstrap
LICENSE=	apache-2.0 AND mit AND modified-bsd

DEPENDS+=	${PYPKGPREFIX}-flask>=0.8:../../www/py-flask

USE_LANGUAGES=	# none
EGG_NAME=	${DISTNAME:S/-/_/1}

REPLACE_PYTHON+=	flask_bootstrap/__init__.py

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
