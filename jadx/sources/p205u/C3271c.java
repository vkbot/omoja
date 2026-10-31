package p205u;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import java.security.MessageDigest;
import p025c0.AbstractC0938g;
import p077h.InterfaceC1650l;
import p097j.InterfaceC1889d0;
import p172q.C3013e;

/* JADX INFO: renamed from: u.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3271c implements InterfaceC1650l {

    /* JADX INFO: renamed from: b */
    public final InterfaceC1650l f9581b;

    public C3271c(InterfaceC1650l interfaceC1650l) {
        AbstractC0938g.m1072c(interfaceC1650l, "Argument must not be null");
        this.f9581b = interfaceC1650l;
    }

    @Override // p077h.InterfaceC1650l
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2732a(Context context, InterfaceC1889d0 interfaceC1889d0, int i10, int i11) {
        C3270b c3270b = (C3270b) interfaceC1889d0.get();
        InterfaceC1889d0 c3013e = new C3013e(((C3274f) c3270b.f9570b.f8794b).f9600l, ComponentCallbacks2C1029b.m1249a(context).f1067b);
        InterfaceC1650l interfaceC1650l = this.f9581b;
        InterfaceC1889d0 interfaceC1889d0Mo2732a = interfaceC1650l.mo2732a(context, c3013e, i10, i11);
        if (!c3013e.equals(interfaceC1889d0Mo2732a)) {
            c3013e.recycle();
        }
        ((C3274f) c3270b.f9570b.f8794b).m5214c(interfaceC1650l, (Bitmap) interfaceC1889d0Mo2732a.get());
        return interfaceC1889d0;
    }

    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        this.f9581b.mo917b(messageDigest);
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        if (obj instanceof C3271c) {
            return this.f9581b.equals(((C3271c) obj).f9581b);
        }
        return false;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        return this.f9581b.hashCode();
    }
}
