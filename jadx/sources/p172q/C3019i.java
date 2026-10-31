package p172q;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.security.MessageDigest;
import p077h.InterfaceC1643e;
import p108k.InterfaceC2014b;

/* JADX INFO: renamed from: q.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3019i extends AbstractC3015f {

    /* JADX INFO: renamed from: b */
    public static final byte[] f8475b = "q.i".getBytes(InterfaceC1643e.f4176a);

    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        messageDigest.update(f8475b);
    }

    @Override // p172q.AbstractC3015f
    /* JADX INFO: renamed from: c */
    public final Bitmap mo4838c(InterfaceC2014b interfaceC2014b, Bitmap bitmap, int i10, int i11) {
        float width;
        float height;
        Paint paint = AbstractC3036z.f8518a;
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * i11 > bitmap.getHeight() * i10) {
            width = i11 / bitmap.getHeight();
            width2 = (i10 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i10 / bitmap.getWidth();
            height = (i11 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmapMo1148j = interfaceC2014b.mo1148j(i10, i11, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        bitmapMo1148j.setHasAlpha(bitmap.hasAlpha());
        AbstractC3036z.m4858a(bitmap, bitmapMo1148j, matrix);
        return bitmapMo1148j;
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        return obj instanceof C3019i;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        return -599754482;
    }
}
