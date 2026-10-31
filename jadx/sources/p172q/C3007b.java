package p172q;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.data.C1042c;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import p025c0.AbstractC0941j;
import p025c0.AbstractC0947p;
import p077h.C1645g;
import p077h.C1646h;
import p077h.InterfaceC1649k;
import p097j.InterfaceC1889d0;
import p108k.C2019g;

/* JADX INFO: renamed from: q.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3007b implements InterfaceC1649k {

    /* JADX INFO: renamed from: c */
    public static final C1645g f8454c = C1645g.m2728a(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");

    /* JADX INFO: renamed from: d */
    public static final C1645g f8455d = new C1645g("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, C1645g.f4177e);

    /* JADX INFO: renamed from: b */
    public final C2019g f8456b;

    public C3007b(C2019g c2019g) {
        this.f8456b = c2019g;
    }

    @Override // p077h.InterfaceC1649k
    /* JADX INFO: renamed from: e */
    public final int mo1143e(C1646h c1646h) {
        return 2;
    }

    @Override // p077h.InterfaceC1640b
    /* JADX INFO: renamed from: h */
    public final boolean mo1146h(Object obj, File file, C1646h c1646h) throws Throwable {
        boolean z9;
        Bitmap bitmap = (Bitmap) ((InterfaceC1889d0) obj).get();
        C1645g c1645g = f8455d;
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) c1646h.m2729c(c1645g);
        if (compressFormat == null) {
            compressFormat = bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        int i10 = AbstractC0941j.f799b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int iIntValue = ((Integer) c1646h.m2729c(f8454c)).intValue();
        OutputStream c1042c = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    C2019g c2019g = this.f8456b;
                    if (c2019g != null) {
                        try {
                            c1042c = new C1042c(fileOutputStream, c2019g);
                        } catch (IOException e) {
                            e = e;
                            c1042c = fileOutputStream;
                            if (Log.isLoggable("BitmapEncoder", 3)) {
                                Log.d("BitmapEncoder", "Failed to encode Bitmap", e);
                            }
                            if (c1042c != null) {
                                try {
                                    c1042c.close();
                                } catch (IOException unused) {
                                }
                            }
                            z9 = false;
                        } catch (Throwable th) {
                            th = th;
                            c1042c = fileOutputStream;
                            if (c1042c != null) {
                                try {
                                    c1042c.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        c1042c = fileOutputStream;
                    }
                    bitmap.compress(compressFormat, iIntValue, c1042c);
                    c1042c.close();
                    try {
                        c1042c.close();
                    } catch (IOException unused3) {
                    }
                    z9 = true;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e6) {
                e = e6;
            }
            if (Log.isLoggable("BitmapEncoder", 2)) {
                Log.v("BitmapEncoder", "Compressed with type: " + compressFormat + " of size " + AbstractC0947p.m1086c(bitmap) + " in " + AbstractC0941j.m1076a(jElapsedRealtimeNanos) + ", options format: " + c1646h.m2729c(c1645g) + ", hasAlpha: " + bitmap.hasAlpha());
            }
            return z9;
        } catch (Throwable th3) {
            throw th3;
        }
    }
}
