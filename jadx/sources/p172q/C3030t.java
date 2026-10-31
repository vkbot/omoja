package p172q;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.navigation.C0674b;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import java.security.MessageDigest;
import p077h.InterfaceC1650l;
import p097j.InterfaceC1889d0;
import p108k.InterfaceC2014b;

/* JADX INFO: renamed from: q.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3030t implements InterfaceC1650l {

    /* JADX INFO: renamed from: b */
    public final InterfaceC1650l f8501b;

    /* JADX INFO: renamed from: c */
    public final boolean f8502c;

    public C3030t(InterfaceC1650l interfaceC1650l, boolean z9) {
        this.f8501b = interfaceC1650l;
        this.f8502c = z9;
    }

    @Override // p077h.InterfaceC1650l
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2732a(Context context, InterfaceC1889d0 interfaceC1889d0, int i10, int i11) {
        InterfaceC2014b interfaceC2014b = ComponentCallbacks2C1029b.m1249a(context).f1067b;
        Drawable drawable = (Drawable) interfaceC1889d0.get();
        C3013e c3013eM4851a = AbstractC3029s.m4851a(interfaceC2014b, drawable, i10, i11);
        if (c3013eM4851a == null) {
            if (!this.f8502c) {
                return interfaceC1889d0;
            }
            C0674b.m849p(drawable, "Unable to convert ", " to a Bitmap");
            return null;
        }
        InterfaceC1889d0 interfaceC1889d0Mo2732a = this.f8501b.mo2732a(context, c3013eM4851a, i10, i11);
        if (!interfaceC1889d0Mo2732a.equals(c3013eM4851a)) {
            return new C3013e(context.getResources(), interfaceC1889d0Mo2732a);
        }
        interfaceC1889d0Mo2732a.recycle();
        return interfaceC1889d0;
    }

    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        this.f8501b.mo917b(messageDigest);
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        if (obj instanceof C3030t) {
            return this.f8501b.equals(((C3030t) obj).f8501b);
        }
        return false;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        return this.f8501b.hashCode();
    }
}
