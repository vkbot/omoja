package q;

import android.graphics.Bitmap;
import android.graphics.Bitmap$CompressFormat;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements h.k {
    public static final h.g c = h.g.a(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");
    public static final h.g d = new h.g("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, h.g.e);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k.g f4708b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(k.g gVar) {
        this.f4708b = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.k
    public final int e(h.h hVar) {
        return 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.b
    public final boolean h(Object obj, File file, h.h hVar) throws Throwable {
        boolean z8;
        Bitmap bitmap = (Bitmap) ((j.d0) obj).get();
        h.g gVar = d;
        Bitmap$CompressFormat bitmap$CompressFormat = (Bitmap$CompressFormat) hVar.c(gVar);
        if (bitmap$CompressFormat == null) {
            bitmap$CompressFormat = bitmap.hasAlpha() ? Bitmap$CompressFormat.PNG : Bitmap$CompressFormat.JPEG;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        int i9 = c0.j.f402b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int iIntValue = ((Integer) hVar.c(c)).intValue();
        OutputStream cVar = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    k.g gVar2 = this.f4708b;
                    if (gVar2 != null) {
                        try {
                            cVar = new com.bumptech.glide.load.data.c(fileOutputStream, gVar2);
                        } catch (IOException e) {
                            e = e;
                            cVar = fileOutputStream;
                            if (Log.isLoggable("BitmapEncoder", 3)) {
                                Log.d("BitmapEncoder", "Failed to encode Bitmap", e);
                            }
                            if (cVar != null) {
                                try {
                                    cVar.close();
                                } catch (IOException unused) {
                                }
                            }
                            z8 = false;
                        } catch (Throwable th) {
                            th = th;
                            cVar = fileOutputStream;
                            if (cVar != null) {
                                try {
                                    cVar.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        cVar = fileOutputStream;
                    }
                    bitmap.compress(bitmap$CompressFormat, iIntValue, cVar);
                    cVar.close();
                    try {
                        cVar.close();
                    } catch (IOException unused3) {
                    }
                    z8 = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (IOException e6) {
                e = e6;
            }
            if (Log.isLoggable("BitmapEncoder", 2)) {
                Log.v("BitmapEncoder", "Compressed with type: " + bitmap$CompressFormat + " of size " + c0.p.c(bitmap) + " in " + c0.j.a(jElapsedRealtimeNanos) + ", options format: " + hVar.c(gVar) + ", hasAlpha: " + bitmap.hasAlpha());
            }
            return z8;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
