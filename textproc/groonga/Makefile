# $NetBSD: Makefile,v 1.49 2014/12/12 01:13:40 obache Exp $
#

DISTNAME=	groonga-4.0.8
CATEGORIES=	textproc
MASTER_SITES=	http://packages.groonga.org/source/groonga/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://groonga.org/
COMMENT=	Fulltext search engine and column store
LICENSE=	gnu-lgpl-v2.1

RUBY_VERSION_SUPPORTED=	21 200 193
.include "../../lang/ruby/rubyversion.mk"
DEPENDS+=	${RUBY_BASE}>=${RUBY_VERSION}:${RUBY_SRCDIR}

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config
# for long file name
EXTRACT_USING=	bsdtar

.include "options.mk"

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFBASEDIR}
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}
CONFIGURE_ARGS+=	--with-ruby=${RUBY}

PKGCONFIG_OVERRIDE+=	groonga.pc.in

PKG_SYSCONFSUBDIR=	${PKGBASE}

BUILD_DEFS+=		VARBASE

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples

CONF_FILES+=		share/examples/${PKGBASE}/groonga.conf \
			${PKG_SYSCONFDIR}/groonga.conf
CONF_FILES+=		share/examples/groonga/synonyms.tsv \
			${PKG_SYSCONFDIR}/synonyms.tsv

OWN_DIRS+=		${VARBASE}/log/${PKGBASE}

CHECK_WRKREF_SKIP+=	bin/groonga
CHECK_INTERPRETER_SKIP+=	share/groonga/examples/*

REPLACE_RUBY+=	data/munin/groonga_cpu_time_
REPLACE_RUBY+=	data/munin/groonga_disk_
REPLACE_RUBY+=	data/munin/groonga_n_records_
REPLACE_RUBY+=	data/munin/groonga_query_performance_
REPLACE_RUBY+=	data/munin/groonga_status_
REPLACE_RUBY+=	data/munin/groonga_throughput_
.include "../../lang/ruby/replace.mk"

.include "../../devel/editline/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
