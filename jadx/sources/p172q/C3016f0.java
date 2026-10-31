package p172q;

import ai.onnxruntime.AbstractC0074a;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import p009a8.C0029a;
import p030c5.C0990e;
import p077h.C1645g;
import p077h.C1646h;
import p077h.InterfaceC1648j;
import p097j.InterfaceC1889d0;
import p099j1.C1929i;
import p108k.InterfaceC2014b;

/* JADX INFO: renamed from: q.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3016f0 implements InterfaceC1648j {

    /* JADX INFO: renamed from: d */
    public static final C1645g f8464d = new C1645g("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C3021k(1));

    /* JADX INFO: renamed from: e */
    public static final C1645g f8465e = new C1645g("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new C3021k(2));

    /* JADX INFO: renamed from: f */
    public static final C0990e f8466f = new C0990e(17);

    /* JADX INFO: renamed from: g */
    public static final List f8467g = Collections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* JADX INFO: renamed from: a */
    public final InterfaceC3014e0 f8468a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2014b f8469b;

    /* JADX INFO: renamed from: c */
    public final C0990e f8470c = f8466f;

    public C3016f0(InterfaceC2014b interfaceC2014b, InterfaceC3014e0 interfaceC3014e0) {
        this.f8469b = interfaceC2014b;
        this.f8468a = interfaceC3014e0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2730a(Object obj, int i10, int i11, C1646h c1646h) throws Exception {
        boolean zIsTerminated;
        boolean zIsTerminated2;
        TimeUnit timeUnit = TimeUnit.DAYS;
        long jLongValue = ((Long) c1646h.m2729c(f8464d)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            C1929i.m3029k(AbstractC0074a.m157h(jLongValue, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "));
            return null;
        }
        Integer num = (Integer) c1646h.m2729c(f8465e);
        if (num == null) {
            num = 2;
        }
        C3025o c3025o = (C3025o) c1646h.m2729c(C3025o.f8486g);
        if (c3025o == null) {
            c3025o = C3025o.f8485f;
        }
        C3025o c3025o2 = c3025o;
        this.f8470c.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        boolean z9 = false;
        try {
            this.f8468a.mo4752h(mediaMetadataRetriever, obj);
            Bitmap bitmapM4839c = m4839c(obj, mediaMetadataRetriever, jLongValue, num.intValue(), i10, i11, c3025o2);
            if (Build.VERSION.SDK_INT < 29) {
                mediaMetadataRetriever.release();
            } else if (mediaMetadataRetriever instanceof AutoCloseable) {
                mediaMetadataRetriever.close();
            } else if (mediaMetadataRetriever instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) mediaMetadataRetriever;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated2 = executorService.isTerminated())) {
                    executorService.shutdown();
                    while (!zIsTerminated2) {
                        try {
                            zIsTerminated2 = executorService.awaitTermination(1L, timeUnit);
                        } catch (InterruptedException unused) {
                            if (!z9) {
                                executorService.shutdownNow();
                                z9 = true;
                            }
                        }
                    }
                    if (z9) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else {
                mediaMetadataRetriever.release();
            }
            return C3013e.m4837c(bitmapM4839c, this.f8469b);
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT < 29) {
                mediaMetadataRetriever.release();
            } else if (mediaMetadataRetriever instanceof AutoCloseable) {
                mediaMetadataRetriever.close();
            } else if (mediaMetadataRetriever instanceof ExecutorService) {
                ExecutorService executorService2 = (ExecutorService) mediaMetadataRetriever;
                if (executorService2 != ForkJoinPool.commonPool() && !(zIsTerminated = executorService2.isTerminated())) {
                    executorService2.shutdown();
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService2.awaitTermination(1L, timeUnit);
                        } catch (InterruptedException unused2) {
                            if (!z9) {
                                executorService2.shutdownNow();
                                z9 = true;
                            }
                        }
                    }
                    if (z9) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else {
                mediaMetadataRetriever.release();
            }
            throw th;
        }
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final boolean mo2731b(Object obj, C1646h c1646h) {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:65:0x0105  */
    /* JADX WARN: Code duplicated, block: B:67:0x010b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:71:0x0125 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:72:0x0127 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:78:0x013f  */
    /* JADX WARN: Code duplicated, block: B:84:0x0185 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:85:0x0186  */
    /* JADX INFO: renamed from: c */
    public final Bitmap m4839c(Object obj, MediaMetadataRetriever mediaMetadataRetriever, long j10, int i10, int i11, int i12, C3025o c3025o) {
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        MediaExtractor mediaExtractor;
        String str = Build.DEVICE;
        Bitmap bitmapCreateBitmap = null;
        if (str != null && str.matches(".+_cheets|cheets_.+")) {
            try {
                if ("video/webm".equals(mediaMetadataRetriever.extractMetadata(12))) {
                    mediaExtractor = new MediaExtractor();
                    try {
                        this.f8468a.mo4751e(mediaExtractor, obj);
                        int trackCount = mediaExtractor.getTrackCount();
                        for (int i18 = 0; i18 < trackCount; i18++) {
                            if ("video/x-vnd.on2.vp8".equals(mediaExtractor.getTrackFormat(i18).getString("mime"))) {
                                mediaExtractor.release();
                                C1929i.m3030l("Cannot decode VP8 video on CrOS.");
                                return null;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            if (Log.isLoggable("VideoDecoder", 3)) {
                                Log.d("VideoDecoder", "Exception trying to extract track info for a webm video on CrOS.", th);
                            }
                            if (mediaExtractor != null) {
                            }
                            if (Build.VERSION.SDK_INT >= 27) {
                                try {
                                    i15 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
                                    i16 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
                                    i17 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
                                    if (i17 != 90) {
                                        i16 = i15;
                                        i15 = i16;
                                    } else {
                                        i16 = i15;
                                        i15 = i16;
                                    }
                                    float fM4845b = c3025o.m4845b(i15, i16, i11, i12);
                                    bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j10, i10, Math.round(i15 * fM4845b), Math.round(fM4845b * i16));
                                } catch (Throwable th2) {
                                    if (Log.isLoggable("VideoDecoder", 3)) {
                                        Log.d("VideoDecoder", "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame", th2);
                                    }
                                }
                            }
                            if (bitmapCreateBitmap == null) {
                                bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j10, i10);
                            }
                            if (Build.MODEL.startsWith("Pixel")) {
                                i13 = Build.VERSION.SDK_INT;
                                if (i13 >= 30) {
                                    try {
                                        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(36);
                                        String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(35);
                                        i14 = Integer.parseInt(strExtractMetadata);
                                        int i19 = Integer.parseInt(strExtractMetadata2);
                                        if (i14 != 7) {
                                            if (Log.isLoggable("VideoDecoder", 3)) {
                                                Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                            }
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, true);
                                        } else {
                                            if (Log.isLoggable("VideoDecoder", 3)) {
                                                Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                            }
                                            Matrix matrix2 = new Matrix();
                                            matrix2.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix2, true);
                                        }
                                    } catch (NumberFormatException unused) {
                                        if (Log.isLoggable("VideoDecoder", 3)) {
                                            Log.d("VideoDecoder", "Exception trying to extract HDR transfer function or rotation");
                                        }
                                    }
                                }
                            } else {
                                i13 = Build.VERSION.SDK_INT;
                                if (i13 >= 30) {
                                    String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(36);
                                    String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(35);
                                    i14 = Integer.parseInt(strExtractMetadata3);
                                    int i110 = Integer.parseInt(strExtractMetadata4);
                                    if (i14 != 7) {
                                        if (Log.isLoggable("VideoDecoder", 3)) {
                                            Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                        }
                                        Matrix matrix3 = new Matrix();
                                        matrix3.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix3, true);
                                    } else {
                                        if (Log.isLoggable("VideoDecoder", 3)) {
                                            Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                        }
                                        Matrix matrix4 = new Matrix();
                                        matrix4.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix4, true);
                                    }
                                }
                            }
                            if (bitmapCreateBitmap != null) {
                                return bitmapCreateBitmap;
                            }
                            throw new C0029a("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details", 3);
                        } catch (Throwable th3) {
                            if (mediaExtractor != null) {
                                mediaExtractor.release();
                            }
                            throw th3;
                        }
                    }
                    mediaExtractor.release();
                }
            } catch (Throwable th4) {
                th = th4;
                mediaExtractor = null;
            }
        }
        if (Build.VERSION.SDK_INT >= 27 && i11 != Integer.MIN_VALUE && i12 != Integer.MIN_VALUE && c3025o != C3025o.f8484e) {
            i15 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            i16 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            i17 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (i17 != 90 || i17 == 270) {
                i16 = i15;
                i15 = i16;
            }
            float fM4845b2 = c3025o.m4845b(i15, i16, i11, i12);
            bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j10, i10, Math.round(i15 * fM4845b2), Math.round(fM4845b2 * i16));
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j10, i10);
        }
        if (Build.MODEL.startsWith("Pixel") || Build.VERSION.SDK_INT != 33) {
            i13 = Build.VERSION.SDK_INT;
            if (i13 >= 30 && i13 < 33) {
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(36);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(35);
                i14 = Integer.parseInt(strExtractMetadata5);
                int i111 = Integer.parseInt(strExtractMetadata6);
                if ((i14 != 7 || i14 == 6) && i111 == 6 && Math.abs(Integer.parseInt(mediaMetadataRetriever.extractMetadata(24))) == 180) {
                    if (Log.isLoggable("VideoDecoder", 3)) {
                        Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                    }
                    Matrix matrix5 = new Matrix();
                    matrix5.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                    bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix5, true);
                }
            }
        } else {
            Iterator it = f8467g.iterator();
            do {
                if (it.hasNext()) {
                }
            } while (!Build.ID.startsWith((String) it.next()));
            String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(36);
            String strExtractMetadata8 = mediaMetadataRetriever.extractMetadata(35);
            i14 = Integer.parseInt(strExtractMetadata7);
            int i112 = Integer.parseInt(strExtractMetadata8);
            if (i14 != 7) {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                }
                Matrix matrix6 = new Matrix();
                matrix6.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix6, true);
            } else {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                }
                Matrix matrix7 = new Matrix();
                matrix7.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix7, true);
            }
        }
        if (bitmapCreateBitmap != null) {
            return bitmapCreateBitmap;
        }
        throw new C0029a("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details", 3);
    }
}
