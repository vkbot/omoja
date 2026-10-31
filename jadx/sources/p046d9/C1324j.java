package p046d9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import org.apache.commons.net.ftp.C2930a;
import p010a9.AbstractC0035a;
import p010a9.AbstractC0041d;
import p010a9.AbstractC0059u;
import p010a9.C0061w;
import p224v8.InterfaceC3374d;

/* JADX INFO: renamed from: d9.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C1324j {

    /* JADX INFO: renamed from: b */
    public static final AtomicReferenceFieldUpdater f3149b = AtomicReferenceFieldUpdater.newUpdater(C1324j.class, Object.class, "head");

    /* JADX INFO: renamed from: c */
    public static final AtomicLongFieldUpdater f3150c = AtomicLongFieldUpdater.newUpdater(C1324j.class, "deqIdx");

    /* JADX INFO: renamed from: d */
    public static final AtomicReferenceFieldUpdater f3151d = AtomicReferenceFieldUpdater.newUpdater(C1324j.class, Object.class, "tail");

    /* JADX INFO: renamed from: e */
    public static final AtomicLongFieldUpdater f3152e = AtomicLongFieldUpdater.newUpdater(C1324j.class, "enqIdx");

    /* JADX INFO: renamed from: f */
    public static final AtomicIntegerFieldUpdater f3153f = AtomicIntegerFieldUpdater.newUpdater(C1324j.class, "_availablePermits");

    @Volatile
    private volatile int _availablePermits;

    /* JADX INFO: renamed from: a */
    public final C1322h f3154a;

    @Volatile
    private volatile long deqIdx;

    @Volatile
    private volatile long enqIdx;

    @Volatile
    private volatile Object head;

    @Volatile
    private volatile Object tail;

    public C1324j() {
        C1326l c1326l = new C1326l(0L, null, 2);
        this.head = c1326l;
        this.tail = c1326l;
        this._availablePermits = 1;
        this.f3154a = new C1322h(0, this);
    }

    /* JADX INFO: renamed from: a */
    public final void m2363a(C1317c c1317c) {
        Object objM108a;
        long j10;
        C1326l c1326l;
        while (true) {
            int andDecrement = f3153f.getAndDecrement(this);
            if (andDecrement <= 1) {
                Function1 function1 = this.f3154a;
                if (andDecrement > 0) {
                    c1317c.mo2360d(Unit.INSTANCE, function1);
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3151d;
                C1326l c1326l2 = (C1326l) atomicReferenceFieldUpdater.get(this);
                long andIncrement = f3152e.getAndIncrement(this);
                C1321g c1321g = C1321g.f3145b;
                long j11 = andIncrement / ((long) AbstractC1325k.f3160f);
                while (true) {
                    objM108a = AbstractC0041d.m108a(c1326l2, j11, c1321g);
                    if (AbstractC0035a.m97d(objM108a)) {
                        j10 = andIncrement;
                        break;
                    }
                    AbstractC0059u abstractC0059uM95b = AbstractC0035a.m95b(objM108a);
                    while (true) {
                        AbstractC0059u abstractC0059u = (AbstractC0059u) atomicReferenceFieldUpdater.get(this);
                        c1326l = c1326l2;
                        j10 = andIncrement;
                        if (abstractC0059u.f149d >= abstractC0059uM95b.f149d) {
                            break;
                        }
                        if (!abstractC0059uM95b.m142i()) {
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(this, abstractC0059u, abstractC0059uM95b)) {
                                if (!abstractC0059u.m138e()) {
                                    break;
                                }
                                abstractC0059u.m112d();
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(this) == abstractC0059u);
                        if (abstractC0059uM95b.m138e()) {
                            abstractC0059uM95b.m112d();
                        }
                        c1326l2 = c1326l;
                        andIncrement = j10;
                    }
                    c1326l2 = c1326l;
                    andIncrement = j10;
                }
                C1326l c1326l3 = (C1326l) AbstractC0035a.m95b(objM108a);
                AtomicReferenceArray atomicReferenceArray = c1326l3.f3161f;
                int i10 = (int) (j10 % ((long) AbstractC1325k.f3160f));
                do {
                    if (atomicReferenceArray.compareAndSet(i10, null, c1317c)) {
                        c1317c.mo2359b(c1326l3, i10);
                        return;
                    }
                } while (atomicReferenceArray.get(i10) == null);
                C0061w c0061w = AbstractC1325k.f3156b;
                C0061w c0061w2 = AbstractC1325k.f3157c;
                do {
                    if (atomicReferenceArray.compareAndSet(i10, c0061w, c0061w2)) {
                        c1317c.mo2360d(Unit.INSTANCE, function1);
                        return;
                    }
                } while (atomicReferenceArray.get(i10) == c0061w);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0078  */
    /* JADX INFO: renamed from: b */
    public final void m2364b() {
        boolean z9;
        int i10;
        Object objM108a;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f3153f;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            z9 = true;
            if (andIncrement >= 1) {
                do {
                    i10 = atomicIntegerFieldUpdater.get(this);
                    if (i10 <= 1) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 1));
                throw new IllegalStateException("The number of released permits cannot be greater than 1".toString());
            }
            if (andIncrement >= 0) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3149b;
            C1326l c1326l = (C1326l) atomicReferenceFieldUpdater.get(this);
            long andIncrement2 = f3150c.getAndIncrement(this);
            long j10 = andIncrement2 / ((long) AbstractC1325k.f3160f);
            C1323i c1323i = C1323i.f3148b;
            while (true) {
                objM108a = AbstractC0041d.m108a(c1326l, j10, c1323i);
                if (!AbstractC0035a.m97d(objM108a)) {
                    AbstractC0059u abstractC0059uM95b = AbstractC0035a.m95b(objM108a);
                    while (true) {
                        AbstractC0059u abstractC0059u = (AbstractC0059u) atomicReferenceFieldUpdater.get(this);
                        if (abstractC0059u.f149d >= abstractC0059uM95b.f149d) {
                            break;
                        }
                        if (!abstractC0059uM95b.m142i()) {
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(this, abstractC0059u, abstractC0059uM95b)) {
                                if (!abstractC0059u.m138e()) {
                                    break;
                                }
                                abstractC0059u.m112d();
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(this) == abstractC0059u);
                        if (abstractC0059uM95b.m138e()) {
                            abstractC0059uM95b.m112d();
                        }
                    }
                } else {
                    break;
                }
            }
            C1326l c1326l2 = (C1326l) AbstractC0035a.m95b(objM108a);
            c1326l2.m109a();
            AtomicReferenceArray atomicReferenceArray = c1326l2.f3161f;
            boolean z10 = false;
            if (c1326l2.f149d <= j10) {
                int i11 = (int) (andIncrement2 % ((long) AbstractC1325k.f3160f));
                Object andSet = atomicReferenceArray.getAndSet(i11, AbstractC1325k.f3156b);
                if (andSet == null) {
                    int i12 = AbstractC1325k.f3155a;
                    int i13 = 0;
                    while (true) {
                        if (i13 >= i12) {
                            C0061w c0061w = AbstractC1325k.f3156b;
                            C0061w c0061w2 = AbstractC1325k.f3158d;
                            do {
                                if (atomicReferenceArray.compareAndSet(i11, c0061w, c0061w2)) {
                                    z10 = true;
                                    break;
                                }
                            } while (atomicReferenceArray.get(i11) == c0061w);
                            z9 = true ^ z10;
                            break;
                        }
                        if (atomicReferenceArray.get(i11) == AbstractC1325k.f3157c) {
                            break;
                        } else {
                            i13++;
                        }
                    }
                } else if (andSet == AbstractC1325k.f3159e) {
                    z9 = false;
                } else {
                    if (!(andSet instanceof InterfaceC3374d)) {
                        C2930a.m4661c(andSet, "unexpected: ");
                        return;
                    }
                    InterfaceC3374d interfaceC3374d = (InterfaceC3374d) andSet;
                    C0061w c0061wMo2358a = interfaceC3374d.mo2358a(Unit.INSTANCE, this.f3154a);
                    if (c0061wMo2358a != null) {
                        interfaceC3374d.mo2361g(c0061wMo2358a);
                    } else {
                        z9 = false;
                    }
                }
            } else {
                z9 = false;
            }
        } while (!z9);
    }
}
