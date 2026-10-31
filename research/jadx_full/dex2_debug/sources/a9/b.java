package a9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class b {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_consensus");

    @Volatile
    private volatile Object _consensus = a.a;

    public abstract void a(Object obj, Object obj2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object b(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        w wVar = a.a;
        if (obj2 == wVar) {
            w wVarC = c(obj);
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 == wVar) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, wVar, wVarC)) {
                    if (atomicReferenceFieldUpdater.get(this) != wVar) {
                        obj2 = atomicReferenceFieldUpdater.get(this);
                    }
                }
                obj2 = wVarC;
            }
        }
        a(obj, obj2);
        return obj2;
    }

    public abstract w c(Object obj);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return getClass().getSimpleName() + '@' + v8.a0.a(this);
    }
}
