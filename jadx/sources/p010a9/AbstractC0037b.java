package p010a9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;
import p224v8.AbstractC3366a0;

/* JADX INFO: renamed from: a9.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0037b {

    /* JADX INFO: renamed from: a */
    public static final AtomicReferenceFieldUpdater f105a = AtomicReferenceFieldUpdater.newUpdater(AbstractC0037b.class, Object.class, "_consensus");

    @Volatile
    private volatile Object _consensus = AbstractC0035a.f100a;

    /* JADX INFO: renamed from: a */
    public abstract void mo103a(Object obj, Object obj2);

    /* JADX INFO: renamed from: b */
    public final Object m104b(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f105a;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        C0061w c0061w = AbstractC0035a.f100a;
        if (obj2 == c0061w) {
            C0061w c0061wMo105c = mo105c(obj);
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 == c0061w) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, c0061w, c0061wMo105c)) {
                    if (atomicReferenceFieldUpdater.get(this) != c0061w) {
                        obj2 = atomicReferenceFieldUpdater.get(this);
                    }
                }
                obj2 = c0061wMo105c;
            }
        }
        mo103a(obj, obj2);
        return obj2;
    }

    /* JADX INFO: renamed from: c */
    public abstract C0061w mo105c(Object obj);

    public final String toString() {
        return getClass().getSimpleName() + '@' + AbstractC3366a0.m5282a(this);
    }
}
