package d9;

import a9.u;
import a9.w;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class j {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "head");
    public static final AtomicLongFieldUpdater c = AtomicLongFieldUpdater.newUpdater(j.class, "deqIdx");
    public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "tail");
    public static final AtomicLongFieldUpdater e = AtomicLongFieldUpdater.newUpdater(j.class, "enqIdx");
    public static final AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(j.class, "_availablePermits");

    @Volatile
    private volatile int _availablePermits;
    public final h a;

    @Volatile
    private volatile long deqIdx;

    @Volatile
    private volatile long enqIdx;

    @Volatile
    private volatile Object head;

    @Volatile
    private volatile Object tail;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j() {
        l lVar = new l(0L, null, 2);
        this.head = lVar;
        this.tail = lVar;
        this._availablePermits = 1;
        this.a = new h(0, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(c cVar) {
        Object objA;
        long j;
        l lVar;
        while (true) {
            int andDecrement = f.getAndDecrement(this);
            if (andDecrement <= 1) {
                Function1 function1 = this.a;
                if (andDecrement > 0) {
                    cVar.d(Unit.INSTANCE, function1);
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
                l lVar2 = (l) atomicReferenceFieldUpdater.get(this);
                long andIncrement = e.getAndIncrement(this);
                g gVar = g.b;
                long j2 = andIncrement / ((long) k.f);
                while (true) {
                    objA = a9.d.a(lVar2, j2, gVar);
                    if (a9.a.d(objA)) {
                        j = andIncrement;
                        break;
                    }
                    u uVarB = a9.a.b(objA);
                    while (true) {
                        u uVar = (u) atomicReferenceFieldUpdater.get(this);
                        lVar = lVar2;
                        j = andIncrement;
                        if (uVar.d >= uVarB.d) {
                            break;
                        }
                        if (!uVarB.i()) {
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, uVarB)) {
                                if (!uVar.e()) {
                                    break;
                                }
                                uVar.d();
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(this) == uVar);
                        if (uVarB.e()) {
                            uVarB.d();
                        }
                        lVar2 = lVar;
                        andIncrement = j;
                    }
                    lVar2 = lVar;
                    andIncrement = j;
                }
                l lVar3 = (l) a9.a.b(objA);
                AtomicReferenceArray atomicReferenceArray = lVar3.f;
                int i = (int) (j % ((long) k.f));
                do {
                    if (atomicReferenceArray.compareAndSet(i, null, cVar)) {
                        cVar.b(lVar3, i);
                        return;
                    }
                } while (atomicReferenceArray.get(i) == null);
                w wVar = k.b;
                w wVar2 = k.c;
                do {
                    if (atomicReferenceArray.compareAndSet(i, wVar, wVar2)) {
                        cVar.d(Unit.INSTANCE, function1);
                        return;
                    }
                } while (atomicReferenceArray.get(i) == wVar);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:28:0x0078  */
    public final void b() {
        boolean z;
        int i;
        Object objA;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            z = true;
            if (andIncrement >= 1) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= 1) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 1));
                throw new IllegalStateException("The number of released permits cannot be greater than 1".toString());
            }
            if (andIncrement >= 0) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
            l lVar = (l) atomicReferenceFieldUpdater.get(this);
            long andIncrement2 = c.getAndIncrement(this);
            long j = andIncrement2 / ((long) k.f);
            i iVar = i.b;
            while (true) {
                objA = a9.d.a(lVar, j, iVar);
                if (!a9.a.d(objA)) {
                    u uVarB = a9.a.b(objA);
                    while (true) {
                        u uVar = (u) atomicReferenceFieldUpdater.get(this);
                        if (uVar.d >= uVarB.d) {
                            break;
                        }
                        if (!uVarB.i()) {
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, uVarB)) {
                                if (!uVar.e()) {
                                    break;
                                }
                                uVar.d();
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(this) == uVar);
                        if (uVarB.e()) {
                            uVarB.d();
                        }
                    }
                } else {
                    break;
                }
            }
            l lVar2 = (l) a9.a.b(objA);
            lVar2.a();
            AtomicReferenceArray atomicReferenceArray = lVar2.f;
            boolean z2 = false;
            if (lVar2.d <= j) {
                int i2 = (int) (andIncrement2 % ((long) k.f));
                Object andSet = atomicReferenceArray.getAndSet(i2, k.b);
                if (andSet == null) {
                    int i3 = k.a;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= i3) {
                            w wVar = k.b;
                            w wVar2 = k.d;
                            do {
                                if (atomicReferenceArray.compareAndSet(i2, wVar, wVar2)) {
                                    z2 = true;
                                    break;
                                }
                            } while (atomicReferenceArray.get(i2) == wVar);
                            z = true ^ z2;
                            break;
                        }
                        if (atomicReferenceArray.get(i2) == k.c) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                } else if (andSet == k.e) {
                    z = false;
                } else {
                    if (!(andSet instanceof v8.d)) {
                        org.apache.commons.net.ftp.a.c(andSet, "unexpected: ");
                        return;
                    }
                    v8.d dVar = (v8.d) andSet;
                    w wVarA = dVar.a(Unit.INSTANCE, this.a);
                    if (wVarA != null) {
                        dVar.g(wVarA);
                    } else {
                        z = false;
                    }
                }
            } else {
                z = false;
            }
        } while (!z);
    }
}
