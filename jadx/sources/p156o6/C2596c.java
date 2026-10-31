package p156o6;

import p260z5.C3759o;

/* JADX INFO: renamed from: o6.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2596c {

    /* JADX INFO: renamed from: a */
    public final int f7237a;

    /* JADX INFO: renamed from: b */
    public final int[] f7238b;

    /* JADX INFO: renamed from: c */
    public final C3759o[] f7239c;

    public C2596c(int i10, int i11, int i12, int i13, int[] iArr) {
        this.f7237a = i10;
        this.f7238b = iArr;
        float f8 = i13;
        this.f7239c = new C3759o[]{new C3759o(i11, f8), new C3759o(i12, f8)};
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C2596c) && this.f7237a == ((C2596c) obj).f7237a;
    }

    public final int hashCode() {
        return this.f7237a;
    }
}
