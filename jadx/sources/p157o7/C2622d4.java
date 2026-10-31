package p157o7;

import androidx.core.app.NotificationManagerCompat;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: o7.d4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2622d4 {

    /* JADX INFO: renamed from: a */
    public final int f7354a;

    /* JADX INFO: renamed from: b */
    public final int f7355b;

    /* JADX INFO: renamed from: c */
    public final int f7356c;

    /* JADX INFO: renamed from: d */
    public final AtomicInteger f7357d;

    public C2622d4(float f8, float f10) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.f7357d = atomicInteger;
        this.f7356c = (int) (f10 * 1000.0f);
        int i10 = (int) (f8 * 1000.0f);
        this.f7354a = i10;
        this.f7355b = i10 / 2;
        atomicInteger.set(i10);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m4134a() {
        AtomicInteger atomicInteger;
        int i10;
        int i11;
        do {
            atomicInteger = this.f7357d;
            i10 = atomicInteger.get();
            if (i10 == 0) {
                return false;
            }
            i11 = i10 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        } while (!atomicInteger.compareAndSet(i10, Math.max(i11, 0)));
        return i11 > this.f7355b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2622d4)) {
            return false;
        }
        C2622d4 c2622d4 = (C2622d4) obj;
        return this.f7354a == c2622d4.f7354a && this.f7356c == c2622d4.f7356c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f7354a), Integer.valueOf(this.f7356c)});
    }
}
