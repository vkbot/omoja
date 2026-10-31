package a9;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;
import org.apache.commons.io.FileUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class p {
    public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "_next");
    public static final AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(p.class, "_state");
    public static final w g = new w("REMOVE_FROZEN", 0);

    @Volatile
    private volatile Object _next;

    @Volatile
    private volatile long _state;
    public final int a;
    public final boolean b;
    public final int c;
    public final AtomicReferenceArray d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(int i, boolean z) {
        this.a = i;
        this.b = z;
        int i2 = i - 1;
        this.c = i2;
        this.d = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            j1.i.l("Check failed.");
            throw null;
        }
        if ((i & i2) == 0) {
            return;
        }
        j1.i.l("Check failed.");
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a(Object obj) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j) != 0) {
                return (2305843009213693952L & j) != 0 ? 2 : 1;
            }
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.c;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            boolean z = this.b;
            AtomicReferenceArray atomicReferenceArray = this.d;
            if (z || atomicReferenceArray.get(i2 & i3) == null) {
                if (f.compareAndSet(this, j, ((-1152921503533105153L) & j) | (((long) ((i2 + 1) & 1073741823)) << 30))) {
                    atomicReferenceArray.set(i2 & i3, obj);
                    p pVarC = this;
                    while ((atomicLongFieldUpdater.get(pVarC) & FileUtils.ONE_EB) != 0) {
                        pVarC = pVarC.c();
                        AtomicReferenceArray atomicReferenceArray2 = pVarC.d;
                        int i4 = pVarC.c & i2;
                        Object obj2 = atomicReferenceArray2.get(i4);
                        if ((obj2 instanceof o) && ((o) obj2).a == i2) {
                            atomicReferenceArray2.set(i4, obj);
                        } else {
                            pVarC = null;
                        }
                        if (pVarC == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
            } else {
                int i5 = this.a;
                if (i5 < 1024 || ((i2 - i) & 1073741823) > (i5 >> 1)) {
                    return 1;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        do {
            atomicLongFieldUpdater = f;
            j = atomicLongFieldUpdater.get(this);
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((FileUtils.ONE_EB & j) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, 2305843009213693952L | j));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final p c() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        p pVar;
        while (true) {
            atomicLongFieldUpdater = f;
            j = atomicLongFieldUpdater.get(this);
            if ((j & FileUtils.ONE_EB) != 0) {
                pVar = this;
                break;
            }
            long j2 = FileUtils.ONE_EB | j;
            pVar = this;
            if (atomicLongFieldUpdater.compareAndSet(pVar, j, j2)) {
                j = j2;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
            p pVar2 = (p) atomicReferenceFieldUpdater.get(this);
            if (pVar2 != null) {
                return pVar2;
            }
            p pVar3 = new p(pVar.a * 2, pVar.b);
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            while (true) {
                int i3 = pVar.c;
                int i4 = i & i3;
                if (i4 == (i3 & i2)) {
                    break;
                }
                Object oVar = pVar.d.get(i4);
                if (oVar == null) {
                    oVar = new o(i);
                }
                pVar3.d.set(pVar3.c & i, oVar);
                i++;
            }
            atomicLongFieldUpdater.set(pVar3, (-1152921504606846977L) & j);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, pVar3) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object d() {
        p pVarC = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j = atomicLongFieldUpdater.get(pVarC);
            if ((j & FileUtils.ONE_EB) != 0) {
                return g;
            }
            int i = (int) (j & 1073741823);
            int i2 = pVarC.c;
            int i3 = i & i2;
            if ((((int) ((1152921503533105152L & j) >> 30)) & i2) != i3) {
                AtomicReferenceArray atomicReferenceArray = pVarC.d;
                Object obj = atomicReferenceArray.get(i3);
                boolean z = pVarC.b;
                if (obj == null) {
                    if (z) {
                    }
                } else if (!(obj instanceof o)) {
                    long j2 = (i + 1) & 1073741823;
                    if (f.compareAndSet(pVarC, j, (j & (-1073741824)) | j2)) {
                        atomicReferenceArray.set(i3, null);
                        return obj;
                    }
                    pVarC = this;
                    if (z) {
                        while (true) {
                            long j3 = atomicLongFieldUpdater.get(pVarC);
                            int i4 = (int) (j3 & 1073741823);
                            if ((j3 & FileUtils.ONE_EB) != 0) {
                                pVarC = pVarC.c();
                            } else {
                                p pVar = pVarC;
                                if (f.compareAndSet(pVar, j3, (j3 & (-1073741824)) | j2)) {
                                    pVar.d.set(i4 & pVar.c, null);
                                    pVarC = null;
                                } else {
                                    pVarC = pVar;
                                }
                            }
                            if (pVarC == null) {
                                return obj;
                            }
                        }
                    }
                }
            }
            return null;
        }
    }
}
