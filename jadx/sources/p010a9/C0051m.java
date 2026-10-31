package p010a9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;
import p224v8.AbstractC3366a0;

/* JADX INFO: renamed from: a9.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C0051m {

    /* JADX INFO: renamed from: b */
    public static final AtomicReferenceFieldUpdater f133b = AtomicReferenceFieldUpdater.newUpdater(C0051m.class, Object.class, "_next");

    /* JADX INFO: renamed from: c */
    public static final AtomicReferenceFieldUpdater f134c = AtomicReferenceFieldUpdater.newUpdater(C0051m.class, Object.class, "_prev");

    /* JADX INFO: renamed from: d */
    public static final AtomicReferenceFieldUpdater f135d = AtomicReferenceFieldUpdater.newUpdater(C0051m.class, Object.class, "_removedRef");

    @Volatile
    private volatile Object _next = this;

    @Volatile
    private volatile Object _prev = this;

    @Volatile
    private volatile Object _removedRef;

    /* JADX INFO: renamed from: d */
    public final C0051m m120d() {
        C0051m c0051m;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object obj;
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f134c;
            C0051m c0051m2 = (C0051m) atomicReferenceFieldUpdater2.get(this);
            c0051m = c0051m2;
            while (true) {
                C0051m c0051m3 = null;
                while (true) {
                    atomicReferenceFieldUpdater = f133b;
                    obj = atomicReferenceFieldUpdater.get(c0051m);
                    if (obj == this) {
                        if (c0051m2 != c0051m) {
                            while (!atomicReferenceFieldUpdater2.compareAndSet(this, c0051m2, c0051m)) {
                                if (atomicReferenceFieldUpdater2.get(this) != c0051m2) {
                                    break;
                                }
                            }
                            break loop0;
                        }
                        break;
                    }
                    if (mo119h()) {
                        return null;
                    }
                    if (obj == null) {
                        break loop0;
                    }
                    if (obj instanceof AbstractC0037b) {
                        ((AbstractC0037b) obj).m104b(c0051m);
                        break;
                    }
                    if (!(obj instanceof C0056r)) {
                        obj.getClass();
                        c0051m3 = c0051m;
                        c0051m = (C0051m) obj;
                    } else {
                        if (c0051m3 != null) {
                            break;
                        }
                        c0051m = (C0051m) atomicReferenceFieldUpdater2.get(c0051m);
                    }
                }
                C0051m c0051m4 = ((C0056r) obj).f146a;
                while (!atomicReferenceFieldUpdater.compareAndSet(c0051m3, c0051m, c0051m4)) {
                    if (atomicReferenceFieldUpdater.get(c0051m3) != c0051m) {
                        break;
                    }
                }
                c0051m = c0051m3;
            }
        }
        return c0051m;
    }

    /* JADX INFO: renamed from: e */
    public final void m121e(C0051m c0051m) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f134c;
            C0051m c0051m2 = (C0051m) atomicReferenceFieldUpdater.get(c0051m);
            if (m122f() != c0051m) {
                return;
            }
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(c0051m, c0051m2, this)) {
                    if (mo119h()) {
                        c0051m.m120d();
                        return;
                    }
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(c0051m) == c0051m2);
        }
    }

    /* JADX INFO: renamed from: f */
    public final Object m122f() {
        while (true) {
            Object obj = f133b.get(this);
            if (!(obj instanceof AbstractC0037b)) {
                return obj;
            }
            ((AbstractC0037b) obj).m104b(this);
        }
    }

    /* JADX INFO: renamed from: g */
    public final C0051m m123g() {
        Object objM122f = m122f();
        C0056r c0056r = objM122f instanceof C0056r ? (C0056r) objM122f : null;
        if (c0056r != null) {
            return c0056r.f146a;
        }
        objM122f.getClass();
        return (C0051m) objM122f;
    }

    /* JADX INFO: renamed from: h */
    public boolean mo119h() {
        return m122f() instanceof C0056r;
    }

    public String toString() {
        return new C0050l(this, AbstractC3366a0.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + AbstractC3366a0.m5282a(this);
    }
}
