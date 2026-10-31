package p157o7;

import java.util.Random;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.r0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2702r0 {

    /* JADX INFO: renamed from: a */
    public Random f7736a;

    /* JADX INFO: renamed from: b */
    public long f7737b;

    /* JADX INFO: renamed from: c */
    public double f7738c;

    /* JADX INFO: renamed from: d */
    public double f7739d;

    /* JADX INFO: renamed from: e */
    public long f7740e;

    /* JADX INFO: renamed from: a */
    public final long m4230a() {
        long j10 = this.f7740e;
        double d = j10;
        this.f7740e = Math.min((long) (this.f7738c * d), this.f7737b);
        double d10 = this.f7739d;
        double d11 = (-d10) * d;
        double d12 = d10 * d;
        AbstractC2587b.m4039f(d12 >= d11);
        return j10 + ((long) ((this.f7736a.nextDouble() * (d12 - d11)) + d11));
    }
}
