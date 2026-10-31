package v8;

import kotlin.collections.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class l0 extends t {
    public long b;
    public boolean c;
    public ArrayDeque d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S(boolean z) {
        this.b = (z ? 4294967296L : 1L) + this.b;
        if (z) {
            return;
        }
        this.c = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean V() {
        f0 f0Var;
        ArrayDeque arrayDeque = this.d;
        if (arrayDeque == null || (f0Var = (f0) arrayDeque.removeFirstOrNull()) == null) {
            return false;
        }
        f0Var.run();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final t limitedParallelism(int i) {
        a9.a.a(i);
        return this;
    }

    public abstract void shutdown();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y() {
        long j = this.b - 4294967296L;
        this.b = j;
        if (j <= 0 && this.c) {
            shutdown();
        }
    }
}
