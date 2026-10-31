package a9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class m {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_next");
    public static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_prev");
    public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_removedRef");

    @Volatile
    private volatile Object _next = this;

    @Volatile
    private volatile Object _prev = this;

    @Volatile
    private volatile Object _removedRef;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final m d() {
        m mVar;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object obj;
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = c;
            m mVar2 = (m) atomicReferenceFieldUpdater2.get(this);
            mVar = mVar2;
            while (true) {
                m mVar3 = null;
                while (true) {
                    atomicReferenceFieldUpdater = b;
                    obj = atomicReferenceFieldUpdater.get(mVar);
                    if (obj == this) {
                        if (mVar2 != mVar) {
                            while (!atomicReferenceFieldUpdater2.compareAndSet(this, mVar2, mVar)) {
                                if (atomicReferenceFieldUpdater2.get(this) != mVar2) {
                                    break;
                                }
                            }
                            break loop0;
                        }
                        break;
                    }
                    if (h()) {
                        return null;
                    }
                    if (obj == null) {
                        break loop0;
                    }
                    if (obj instanceof b) {
                        ((b) obj).b(mVar);
                        break;
                    }
                    if (!(obj instanceof r)) {
                        obj.getClass();
                        mVar3 = mVar;
                        mVar = (m) obj;
                    } else {
                        if (mVar3 != null) {
                            break;
                        }
                        mVar = (m) atomicReferenceFieldUpdater2.get(mVar);
                    }
                }
                m mVar4 = ((r) obj).a;
                while (!atomicReferenceFieldUpdater.compareAndSet(mVar3, mVar, mVar4)) {
                    if (atomicReferenceFieldUpdater.get(mVar3) != mVar) {
                        break;
                    }
                }
                mVar = mVar3;
            }
        }
        return mVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(m mVar) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
            m mVar2 = (m) atomicReferenceFieldUpdater.get(mVar);
            if (f() != mVar) {
                return;
            }
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(mVar, mVar2, this)) {
                    if (h()) {
                        mVar.d();
                        return;
                    }
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(mVar) == mVar2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object f() {
        while (true) {
            Object obj = b.get(this);
            if (!(obj instanceof b)) {
                return obj;
            }
            ((b) obj).b(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final m g() {
        Object objF = f();
        r rVar = objF instanceof r ? (r) objF : null;
        if (rVar != null) {
            return rVar.a;
        }
        objF.getClass();
        return (m) objF;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean h() {
        return f() instanceof r;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return new l(this, v8.a0.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + v8.a0.a(this);
    }
}
