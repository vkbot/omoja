package o7;

import java.util.Random;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Random f4416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4417b;
    public double c;
    public double d;
    public long e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long a() {
        long j9 = this.e;
        double d = j9;
        this.e = Math.min((long) (this.c * d), this.f4417b);
        double d9 = this.d;
        double d10 = (-d9) * d;
        double d11 = d9 * d;
        o4.b.f(d11 >= d10);
        return j9 + ((long) ((this.f4416a.nextDouble() * (d11 - d10)) + d10));
    }
}
