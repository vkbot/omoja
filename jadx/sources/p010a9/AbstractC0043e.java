package p010a9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: renamed from: a9.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0043e {

    /* JADX INFO: renamed from: b */
    public static final AtomicReferenceFieldUpdater f116b = AtomicReferenceFieldUpdater.newUpdater(AbstractC0043e.class, Object.class, "_next");

    /* JADX INFO: renamed from: c */
    public static final AtomicReferenceFieldUpdater f117c = AtomicReferenceFieldUpdater.newUpdater(AbstractC0043e.class, Object.class, "_prev");

    @Volatile
    private volatile Object _next;

    @Volatile
    private volatile Object _prev;

    public AbstractC0043e(AbstractC0059u abstractC0059u) {
        this._prev = abstractC0059u;
    }

    /* JADX INFO: renamed from: a */
    public final void m109a() {
        f117c.lazySet(this, null);
    }

    /* JADX INFO: renamed from: b */
    public final AbstractC0043e m110b() {
        Object obj = f116b.get(this);
        if (obj == AbstractC0041d.f112a) {
            return null;
        }
        return (AbstractC0043e) obj;
    }

    /* JADX INFO: renamed from: c */
    public abstract boolean mo111c();

    /* JADX INFO: renamed from: d */
    public final void m112d() {
        AbstractC0043e abstractC0043eM110b;
        if (m110b() == null) {
            return;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f117c;
            AbstractC0043e abstractC0043e = (AbstractC0043e) atomicReferenceFieldUpdater.get(this);
            while (abstractC0043e != null && abstractC0043e.mo111c()) {
                abstractC0043e = (AbstractC0043e) atomicReferenceFieldUpdater.get(abstractC0043e);
            }
            AbstractC0043e abstractC0043eM110b2 = m110b();
            abstractC0043eM110b2.getClass();
            while (abstractC0043eM110b2.mo111c() && (abstractC0043eM110b = abstractC0043eM110b2.m110b()) != null) {
                abstractC0043eM110b2 = abstractC0043eM110b;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(abstractC0043eM110b2);
                AbstractC0043e abstractC0043e2 = ((AbstractC0043e) obj) == null ? null : abstractC0043e;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(abstractC0043eM110b2, obj, abstractC0043e2)) {
                        break;
                    } else if (atomicReferenceFieldUpdater.get(abstractC0043eM110b2) != obj) {
                    }
                }
            }
            if (abstractC0043e != null) {
                f116b.set(abstractC0043e, abstractC0043eM110b2);
            }
            if (!abstractC0043eM110b2.mo111c() || abstractC0043eM110b2.m110b() == null) {
                if (abstractC0043e == null || !abstractC0043e.mo111c()) {
                    return;
                }
            }
        }
    }
}
