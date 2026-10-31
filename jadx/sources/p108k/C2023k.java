package p108k;

import android.graphics.Bitmap;
import p025c0.AbstractC0947p;

/* JADX INFO: renamed from: k.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2023k implements InterfaceC2021i {

    /* JADX INFO: renamed from: a */
    public final C2018f f5524a;

    /* JADX INFO: renamed from: b */
    public int f5525b;

    /* JADX INFO: renamed from: c */
    public Bitmap.Config f5526c;

    public C2023k(C2018f c2018f) {
        this.f5524a = c2018f;
    }

    @Override // p108k.InterfaceC2021i
    /* JADX INFO: renamed from: a */
    public final void mo3102a() {
        this.f5524a.m3097c(this);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2023k) {
            C2023k c2023k = (C2023k) obj;
            if (this.f5525b == c2023k.f5525b && AbstractC0947p.m1085b(this.f5526c, c2023k.f5526c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f5525b * 31;
        Bitmap.Config config = this.f5526c;
        return i10 + (config != null ? config.hashCode() : 0);
    }

    public final String toString() {
        return C2024l.m3114c(this.f5525b, this.f5526c);
    }
}
