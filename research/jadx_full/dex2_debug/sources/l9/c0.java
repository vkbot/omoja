package l9;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class c0 {
    public static final b0 a = new b0(new byte[0], 0, 0, false, false);
    public static final int b;
    public static final AtomicReference[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        b = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i = 0; i < iHighestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference();
        }
        c = atomicReferenceArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void a(b0 b0Var) {
        b0Var.getClass();
        if (b0Var.f != null || b0Var.g != null) {
            j1.i.k("Failed requirement.");
            return;
        }
        if (b0Var.d) {
            return;
        }
        AtomicReference atomicReference = c[(int) (Thread.currentThread().getId() & (((long) b) - 1))];
        b0 b0Var2 = a;
        b0 b0Var3 = (b0) atomicReference.getAndSet(b0Var2);
        if (b0Var3 == b0Var2) {
            return;
        }
        int i = b0Var3 != null ? b0Var3.c : 0;
        if (i >= 65536) {
            atomicReference.set(b0Var3);
            return;
        }
        b0Var.f = b0Var3;
        b0Var.b = 0;
        b0Var.c = i + 8192;
        atomicReference.set(b0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final b0 b() {
        AtomicReference atomicReference = c[(int) (Thread.currentThread().getId() & (((long) b) - 1))];
        b0 b0Var = a;
        b0 b0Var2 = (b0) atomicReference.getAndSet(b0Var);
        if (b0Var2 == b0Var) {
            return new b0();
        }
        if (b0Var2 == null) {
            atomicReference.set(null);
            return new b0();
        }
        atomicReference.set(b0Var2.f);
        b0Var2.f = null;
        b0Var2.c = 0;
        return b0Var2;
    }
}
