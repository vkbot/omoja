package p172q;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import p025c0.AbstractC0938g;
import p025c0.AbstractC0947p;
import p097j.InterfaceC1883a0;
import p097j.InterfaceC1889d0;
import p108k.InterfaceC2014b;

/* JADX INFO: renamed from: q.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3013e implements InterfaceC1889d0, InterfaceC1883a0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8461b = 1;

    /* JADX INFO: renamed from: c */
    public final Object f8462c;

    /* JADX INFO: renamed from: d */
    public final Object f8463d;

    public C3013e(Bitmap bitmap, InterfaceC2014b interfaceC2014b) {
        AbstractC0938g.m1072c(bitmap, "Bitmap must not be null");
        this.f8462c = bitmap;
        AbstractC0938g.m1072c(interfaceC2014b, "BitmapPool must not be null");
        this.f8463d = interfaceC2014b;
    }

    /* JADX INFO: renamed from: c */
    public static C3013e m4837c(Bitmap bitmap, InterfaceC2014b interfaceC2014b) {
        if (bitmap == null) {
            return null;
        }
        return new C3013e(bitmap, interfaceC2014b);
    }

    @Override // p097j.InterfaceC1883a0
    /* JADX INFO: renamed from: a */
    public final void mo2929a() {
        switch (this.f8461b) {
            case 0:
                ((Bitmap) this.f8462c).prepareToDraw();
                break;
            default:
                InterfaceC1889d0 interfaceC1889d0 = (InterfaceC1889d0) this.f8463d;
                if (interfaceC1889d0 instanceof InterfaceC1883a0) {
                    ((InterfaceC1883a0) interfaceC1889d0).mo2929a();
                }
                break;
        }
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: b */
    public final int mo2932b() {
        switch (this.f8461b) {
            case 0:
                return AbstractC0947p.m1086c((Bitmap) this.f8462c);
            default:
                return ((InterfaceC1889d0) this.f8463d).mo2932b();
        }
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: d */
    public final Class mo2933d() {
        switch (this.f8461b) {
            case 0:
                return Bitmap.class;
            default:
                return BitmapDrawable.class;
        }
    }

    @Override // p097j.InterfaceC1889d0
    public final Object get() {
        switch (this.f8461b) {
            case 0:
                return (Bitmap) this.f8462c;
            default:
                return new BitmapDrawable((Resources) this.f8462c, (Bitmap) ((InterfaceC1889d0) this.f8463d).get());
        }
    }

    @Override // p097j.InterfaceC1889d0
    public final void recycle() {
        switch (this.f8461b) {
            case 0:
                ((InterfaceC2014b) this.f8463d).mo1141c((Bitmap) this.f8462c);
                break;
            default:
                ((InterfaceC1889d0) this.f8463d).recycle();
                break;
        }
    }

    public C3013e(Resources resources, InterfaceC1889d0 interfaceC1889d0) {
        AbstractC0938g.m1072c(resources, "Argument must not be null");
        this.f8462c = resources;
        AbstractC0938g.m1072c(interfaceC1889d0, "Argument must not be null");
        this.f8463d = interfaceC1889d0;
    }
}
