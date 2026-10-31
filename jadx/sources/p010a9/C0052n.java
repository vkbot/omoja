package p010a9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: renamed from: a9.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C0052n {

    /* JADX INFO: renamed from: a */
    public static final AtomicReferenceFieldUpdater f136a = AtomicReferenceFieldUpdater.newUpdater(C0052n.class, Object.class, "_cur");

    @Volatile
    private volatile Object _cur = new C0054p(8, false);

    /* JADX INFO: renamed from: a */
    public final boolean m124a(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f136a;
            C0054p c0054p = (C0054p) atomicReferenceFieldUpdater.get(this);
            int iM128a = c0054p.m128a(runnable);
            if (iM128a == 0) {
                return true;
            }
            if (iM128a == 1) {
                C0054p c0054pM130c = c0054p.m130c();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, c0054p, c0054pM130c) && atomicReferenceFieldUpdater.get(this) == c0054p) {
                }
            } else if (iM128a == 2) {
                return false;
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m125b() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f136a;
            C0054p c0054p = (C0054p) atomicReferenceFieldUpdater.get(this);
            if (c0054p.m129b()) {
                return;
            }
            C0054p c0054pM130c = c0054p.m130c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, c0054p, c0054pM130c) && atomicReferenceFieldUpdater.get(this) == c0054p) {
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final int m126c() {
        C0054p c0054p = (C0054p) f136a.get(this);
        c0054p.getClass();
        long j10 = C0054p.f139f.get(c0054p);
        return (((int) ((j10 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j10))) & 1073741823;
    }

    /* JADX INFO: renamed from: d */
    public final Object m127d() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f136a;
            C0054p c0054p = (C0054p) atomicReferenceFieldUpdater.get(this);
            Object objM131d = c0054p.m131d();
            if (objM131d != C0054p.f140g) {
                return objM131d;
            }
            C0054p c0054pM130c = c0054p.m130c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, c0054p, c0054pM130c) && atomicReferenceFieldUpdater.get(this) == c0054p) {
            }
        }
    }
}
