package p172q;

import ai.onnxruntime.C0075b;
import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import p025c0.AbstractC0947p;
import p077h.InterfaceC1650l;
import p097j.InterfaceC1889d0;
import p108k.InterfaceC2014b;

/* JADX INFO: renamed from: q.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3015f implements InterfaceC1650l {
    @Override // p077h.InterfaceC1650l
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2732a(Context context, InterfaceC1889d0 interfaceC1889d0, int i10, int i11) {
        if (!AbstractC0947p.m1092i(i10, i11)) {
            C0075b.m194s("Cannot apply transformation on width: ", i10, " or height: ", i11, " less than or equal to zero and not Target.SIZE_ORIGINAL");
            return null;
        }
        InterfaceC2014b interfaceC2014b = ComponentCallbacks2C1029b.m1249a(context).f1067b;
        Bitmap bitmap = (Bitmap) interfaceC1889d0.get();
        if (i10 == Integer.MIN_VALUE) {
            i10 = bitmap.getWidth();
        }
        if (i11 == Integer.MIN_VALUE) {
            i11 = bitmap.getHeight();
        }
        Bitmap bitmapMo4838c = mo4838c(interfaceC2014b, bitmap, i10, i11);
        return bitmap.equals(bitmapMo4838c) ? interfaceC1889d0 : C3013e.m4837c(bitmapMo4838c, interfaceC2014b);
    }

    /* JADX INFO: renamed from: c */
    public abstract Bitmap mo4838c(InterfaceC2014b interfaceC2014b, Bitmap bitmap, int i10, int i11);
}
