package p130l9;

import java.util.concurrent.atomic.AtomicReference;
import p099j1.C1929i;

/* JADX INFO: renamed from: l9.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2226c0 {

    /* JADX INFO: renamed from: a */
    public static final C2224b0 f5856a = new C2224b0(new byte[0], 0, 0, false, false);

    /* JADX INFO: renamed from: b */
    public static final int f5857b;

    /* JADX INFO: renamed from: c */
    public static final AtomicReference[] f5858c;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f5857b = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i10 = 0; i10 < iHighestOneBit; i10++) {
            atomicReferenceArr[i10] = new AtomicReference();
        }
        f5858c = atomicReferenceArr;
    }

    /* JADX INFO: renamed from: a */
    public static final void m3581a(C2224b0 c2224b0) {
        c2224b0.getClass();
        if (c2224b0.f5854f != null || c2224b0.f5855g != null) {
            C1929i.m3029k("Failed requirement.");
            return;
        }
        if (c2224b0.f5852d) {
            return;
        }
        AtomicReference atomicReference = f5858c[(int) (Thread.currentThread().getId() & (((long) f5857b) - 1))];
        C2224b0 c2224b1 = f5856a;
        C2224b0 c2224b2 = (C2224b0) atomicReference.getAndSet(c2224b1);
        if (c2224b2 == c2224b1) {
            return;
        }
        int i10 = c2224b2 != null ? c2224b2.f5851c : 0;
        if (i10 >= 65536) {
            atomicReference.set(c2224b2);
            return;
        }
        c2224b0.f5854f = c2224b2;
        c2224b0.f5850b = 0;
        c2224b0.f5851c = i10 + 8192;
        atomicReference.set(c2224b0);
    }

    /* JADX INFO: renamed from: b */
    public static final C2224b0 m3582b() {
        AtomicReference atomicReference = f5858c[(int) (Thread.currentThread().getId() & (((long) f5857b) - 1))];
        C2224b0 c2224b0 = f5856a;
        C2224b0 c2224b1 = (C2224b0) atomicReference.getAndSet(c2224b0);
        if (c2224b1 == c2224b0) {
            return new C2224b0();
        }
        if (c2224b1 == null) {
            atomicReference.set(null);
            return new C2224b0();
        }
        atomicReference.set(c2224b1.f5854f);
        c2224b1.f5854f = null;
        c2224b1.f5851c = 0;
        return c2224b1;
    }
}
