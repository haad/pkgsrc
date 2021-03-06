$NetBSD: patch-mozilla_xpcom_build_nsXPComInit.cpp,v 1.1 2014/11/02 05:40:31 ryoon Exp $

--- mozilla/xpcom/build/nsXPComInit.cpp.orig	2014-10-14 06:36:46.000000000 +0000
+++ mozilla/xpcom/build/nsXPComInit.cpp
@@ -137,7 +137,9 @@ extern nsresult nsStringInputStreamConst
 #include "mozilla/VisualEventTracer.h"
 #endif
 
+#ifndef MOZ_OGG_NO_MEM_REPORTING
 #include "ogg/ogg.h"
+#endif
 #if defined(MOZ_VPX) && !defined(MOZ_VPX_NO_MEM_REPORTING)
 #include "vpx_mem/vpx_mem.h"
 #endif
@@ -629,11 +631,13 @@ NS_InitXPCOM2(nsIServiceManager* *result
     // this oddness.
     mozilla::SetICUMemoryFunctions();
 
+#ifndef MOZ_OGG_NO_MEM_REPORTING
     // Do the same for libogg.
     ogg_set_mem_functions(OggReporter::CountingMalloc,
                           OggReporter::CountingCalloc,
                           OggReporter::CountingRealloc,
                           OggReporter::CountingFree);
+#endif
 
 #if defined(MOZ_VPX) && !defined(MOZ_VPX_NO_MEM_REPORTING)
     // And for VPX.
