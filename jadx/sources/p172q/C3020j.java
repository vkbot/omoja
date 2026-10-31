package p172q;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.util.Log;
import java.security.MessageDigest;
import p077h.InterfaceC1643e;
import p108k.InterfaceC2014b;

/* JADX INFO: renamed from: q.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3020j extends AbstractC3015f {

    /* JADX INFO: renamed from: b */
    public static final byte[] f8476b = "q.j".getBytes(InterfaceC1643e.f4176a);

    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        messageDigest.update(f8476b);
    }

    @Override // p172q.AbstractC3015f
    /* JADX INFO: renamed from: c */
    public final Bitmap mo4838c(InterfaceC2014b interfaceC2014b, Bitmap bitmap, int i10, int i11) {
        Paint paint = AbstractC3036z.f8518a;
        if (bitmap.getWidth() > i10 || bitmap.getHeight() > i11) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return AbstractC3036z.m4859b(interfaceC2014b, bitmap, i10, i11);
        }
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        return obj instanceof C3020j;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        return -670243078;
    }
}
