package p010a9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: a9.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0041d {

    /* JADX INFO: renamed from: a */
    public static final C0061w f112a = new C0061w("CLOSED", 0);

    /* JADX INFO: renamed from: a */
    public static final Object m108a(AbstractC0059u abstractC0059u, long j10, Function2 function2) {
        while (true) {
            if (abstractC0059u.f149d >= j10 && !abstractC0059u.mo111c()) {
                return abstractC0059u;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = AbstractC0043e.f116b;
            Object obj = atomicReferenceFieldUpdater.get(abstractC0059u);
            C0061w c0061w = f112a;
            if (obj == c0061w) {
                return c0061w;
            }
            AbstractC0059u abstractC0059u2 = (AbstractC0059u) ((AbstractC0043e) obj);
            if (abstractC0059u2 == null) {
                abstractC0059u2 = (AbstractC0059u) function2.invoke(Long.valueOf(abstractC0059u.f149d + 1), abstractC0059u);
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(abstractC0059u, null, abstractC0059u2)) {
                        if (abstractC0059u.mo111c()) {
                            abstractC0059u.m112d();
                        }
                    }
                } while (atomicReferenceFieldUpdater.get(abstractC0059u) == null);
            }
            abstractC0059u = abstractC0059u2;
        }
    }
}
