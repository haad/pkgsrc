$NetBSD: patch-mozilla_toolkit_library_libxul.mk,v 1.1 2014/11/02 05:40:31 ryoon Exp $

--- mozilla/toolkit/library/libxul.mk.orig	2014-10-14 06:36:44.000000000 +0000
+++ mozilla/toolkit/library/libxul.mk
@@ -77,6 +77,34 @@ ifdef MOZ_NATIVE_HUNSPELL
 EXTRA_DSO_LDOPTS += $(MOZ_HUNSPELL_LIBS)
 endif
 
+ifdef MOZ_NATIVE_OGG
+EXTRA_DSO_LDOPTS += $(MOZ_OGG_LIBS)
+endif
+
+ifdef MOZ_NATIVE_THEORA
+EXTRA_DSO_LDOPTS += $(MOZ_THEORA_LIBS)
+endif
+
+ifdef MOZ_NATIVE_VORBIS
+EXTRA_DSO_LDOPTS += $(MOZ_VORBIS_LIBS)
+endif
+
+ifdef MOZ_NATIVE_TREMOR
+EXTRA_DSO_LDOPTS += $(MOZ_TREMOR_LIBS)
+endif
+
+ifdef MOZ_NATIVE_OPUS
+EXTRA_DSO_LDOPTS += $(MOZ_OPUS_LIBS)
+endif
+
+ifdef MOZ_NATIVE_SPEEX
+EXTRA_DSO_LDOPTS += $(MOZ_SPEEX_LIBS)
+endif
+
+ifdef MOZ_NATIVE_SOUNDTOUCH
+EXTRA_DSO_LDOPTS += $(MOZ_SOUNDTOUCH_LIBS)
+endif
+
 ifdef MOZ_NATIVE_LIBEVENT
 EXTRA_DSO_LDOPTS += $(MOZ_LIBEVENT_LIBS)
 endif
@@ -89,12 +117,28 @@ ifndef MOZ_TREE_PIXMAN
 EXTRA_DSO_LDOPTS += $(MOZ_PIXMAN_LIBS)
 endif
 
+ifdef MOZ_NATIVE_GRAPHITE2
+EXTRA_DSO_LDOPTS += $(MOZ_GRAPHITE2_LIBS)
+endif
+
+ifdef MOZ_NATIVE_HARFBUZZ
+EXTRA_DSO_LDOPTS += $(MOZ_HARFBUZZ_LIBS)
+endif
+
 ifdef MOZ_DMD
 EXTRA_DSO_LDOPTS += $(call EXPAND_LIBNAME_PATH,dmd,$(DIST)/lib)
 endif
 
 EXTRA_DSO_LDOPTS += $(call EXPAND_LIBNAME_PATH,gkmedias,$(DEPTH)/layout/media)
 
+ifdef MOZ_LIBV4L2_LIBS
+EXTRA_DSO_LDOPTS += $(MOZ_LIBV4L2_LIBS)
+endif
+
+ifdef MOZ_LIBV4L2_LIBS
+EXTRA_DSO_LDOPTS += $(MOZ_LIBV4L2_LIBS)
+endif
+
 ifdef MOZ_WEBRTC
 ifeq (WINNT,$(OS_TARGET))
 ifndef MOZ_HAS_WINSDK_WITH_D3D
@@ -106,6 +150,10 @@ OS_LIBS += $(call EXPAND_LIBNAME,secur32
 endif
 endif
 
+ifdef MOZ_OSS
+EXTRA_DSO_LDOPTS += $(MOZ_OSS_LIBS)
+endif
+
 ifdef MOZ_ALSA
 EXTRA_DSO_LDOPTS += $(MOZ_ALSA_LIBS)
 endif
@@ -223,7 +271,7 @@ ifdef MOZ_ENABLE_QT
 EXTRA_DSO_LDOPTS += $(MOZ_QT_LDFLAGS) $(XEXT_LIBS)
 endif
 
-ifeq (cocoa,$(MOZ_WIDGET_TOOLKIT))
+ifeq (Darwin,$(OS_ARCH))
 ifdef MOZ_GSTREAMER
 EXTRA_DSO_LDOPTS += $(GSTREAMER_LIBS)
 endif
