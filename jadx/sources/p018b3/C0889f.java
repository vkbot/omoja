package p018b3;

import ai.onnxruntime.AbstractC0074a;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;

/* JADX INFO: renamed from: b3.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0889f {

    /* JADX INFO: renamed from: a */
    public long f670a;

    /* JADX INFO: renamed from: c */
    public TimeInterpolator f672c = null;

    /* JADX INFO: renamed from: d */
    public int f673d = 0;

    /* JADX INFO: renamed from: e */
    public int f674e = 1;

    /* JADX INFO: renamed from: b */
    public long f671b = 150;

    public C0889f(long j10) {
        this.f670a = j10;
    }

    /* JADX INFO: renamed from: a */
    public final void m1023a(ObjectAnimator objectAnimator) {
        objectAnimator.setStartDelay(this.f670a);
        objectAnimator.setDuration(this.f671b);
        objectAnimator.setInterpolator(m1024b());
        objectAnimator.setRepeatCount(this.f673d);
        objectAnimator.setRepeatMode(this.f674e);
    }

    /* JADX INFO: renamed from: b */
    public final TimeInterpolator m1024b() {
        TimeInterpolator timeInterpolator = this.f672c;
        return timeInterpolator != null ? timeInterpolator : AbstractC0884a.f662b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0889f)) {
            return false;
        }
        C0889f c0889f = (C0889f) obj;
        if (this.f670a == c0889f.f670a && this.f671b == c0889f.f671b && this.f673d == c0889f.f673d && this.f674e == c0889f.f674e) {
            return m1024b().getClass().equals(c0889f.m1024b().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f670a;
        long j11 = this.f671b;
        return ((((m1024b().getClass().hashCode() + (((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) ((j11 >>> 32) ^ j11))) * 31)) * 31) + this.f673d) * 31) + this.f674e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(C0889f.class.getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.f670a);
        sb.append(" duration: ");
        sb.append(this.f671b);
        sb.append(" interpolator: ");
        sb.append(m1024b().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.f673d);
        sb.append(" repeatMode: ");
        return AbstractC0074a.m164o(sb, "}\n", this.f674e);
    }
}
