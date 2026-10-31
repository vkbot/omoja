package h8;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n0 extends AtomicLong implements n9.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f2585b;
    public volatile o0 c;
    public long d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n0(x7.d dVar) {
        this.f2585b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        o0 o0Var;
        if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE || (o0Var = this.c) == null) {
            return;
        }
        o0Var.h(this);
        o0Var.c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        long j10;
        if (o8.f.c(j9)) {
            do {
                j10 = get();
                if (j10 == Long.MIN_VALUE || j10 == Long.MAX_VALUE) {
                    break;
                }
            } while (!compareAndSet(j10, e3.d.b(j10, j9)));
            o0 o0Var = this.c;
            if (o0Var != null) {
                o0Var.c();
            }
        }
    }
}
