package p007a6;

import java.io.Serializable;
import p063f6.C1578b;
import p260z5.C3759o;

/* JADX INFO: renamed from: a6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0025a {

    /* JADX INFO: renamed from: a */
    public final boolean f88a;

    /* JADX INFO: renamed from: b */
    public final int f89b;

    /* JADX INFO: renamed from: c */
    public final int f90c;

    /* JADX INFO: renamed from: d */
    public final Object f91d;

    /* JADX INFO: renamed from: e */
    public final Serializable f92e;

    public C0025a(int i10, int i11, String str, String str2, boolean z9) {
        this.f88a = z9;
        this.f89b = Math.max(0, i10);
        this.f90c = Math.max(0, i11);
        this.f91d = str == null ? "" : str;
        this.f92e = str2 == null ? "" : str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0025a(C1578b c1578b, C3759o[] c3759oArr, boolean z9, int i10, int i11) {
        this.f91d = c1578b;
        this.f92e = c3759oArr;
        this.f88a = z9;
        this.f89b = i10;
        this.f90c = i11;
    }
}
