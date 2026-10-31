package o7;

import androidx.core.app.NotificationManagerCompat;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4190b;
    public final int c;
    public final AtomicInteger d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d4(float f8, float f9) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.d = atomicInteger;
        this.c = (int) (f9 * 1000.0f);
        int i9 = (int) (f8 * 1000.0f);
        this.f4189a = i9;
        this.f4190b = i9 / 2;
        atomicInteger.set(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a() {
        AtomicInteger atomicInteger;
        int i9;
        int i10;
        do {
            atomicInteger = this.d;
            i9 = atomicInteger.get();
            if (i9 == 0) {
                return false;
            }
            i10 = i9 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        } while (!atomicInteger.compareAndSet(i9, Math.max(i10, 0)));
        return i10 > this.f4190b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d4)) {
            return false;
        }
        d4 d4Var = (d4) obj;
        return this.f4189a == d4Var.f4189a && this.c == d4Var.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4189a), Integer.valueOf(this.c)});
    }
}
