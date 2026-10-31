package p224v8;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.net.ftp.C2930a;

/* JADX INFO: renamed from: v8.f1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3382f1 implements InterfaceC3426u0 {

    /* JADX INFO: renamed from: c */
    public static final AtomicIntegerFieldUpdater f9870c = AtomicIntegerFieldUpdater.newUpdater(C3382f1.class, "_isCompleting");

    /* JADX INFO: renamed from: d */
    public static final AtomicReferenceFieldUpdater f9871d = AtomicReferenceFieldUpdater.newUpdater(C3382f1.class, Object.class, "_rootCause");

    /* JADX INFO: renamed from: e */
    public static final AtomicReferenceFieldUpdater f9872e = AtomicReferenceFieldUpdater.newUpdater(C3382f1.class, Object.class, "_exceptionsHolder");

    @Volatile
    private volatile Object _exceptionsHolder;

    @Volatile
    private volatile int _isCompleting = 0;

    @Volatile
    private volatile Object _rootCause;

    /* JADX INFO: renamed from: b */
    public final C3394j1 f9873b;

    public C3382f1(C3394j1 c3394j1, Throwable th) {
        this.f9873b = c3394j1;
        this._rootCause = th;
    }

    /* JADX INFO: renamed from: a */
    public final void m5315a(Throwable th) {
        Throwable thM5316d = m5316d();
        if (thM5316d == null) {
            f9871d.set(this, th);
            return;
        }
        if (th == thM5316d) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9872e;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            atomicReferenceFieldUpdater.set(this, th);
            return;
        }
        if (!(obj instanceof Throwable)) {
            if (obj instanceof ArrayList) {
                ((ArrayList) obj).add(th);
                return;
            } else {
                C2930a.m4661c(obj, "State is ");
                return;
            }
        }
        if (th == obj) {
            return;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(th);
        atomicReferenceFieldUpdater.set(this, arrayList);
    }

    @Override // p224v8.InterfaceC3426u0
    /* JADX INFO: renamed from: b */
    public final boolean mo5292b() {
        return m5316d() == null;
    }

    @Override // p224v8.InterfaceC3426u0
    /* JADX INFO: renamed from: c */
    public final C3394j1 mo5293c() {
        return this.f9873b;
    }

    /* JADX INFO: renamed from: d */
    public final Throwable m5316d() {
        return (Throwable) f9871d.get(this);
    }

    /* JADX INFO: renamed from: e */
    public final boolean m5317e() {
        return m5316d() != null;
    }

    /* JADX INFO: renamed from: f */
    public final boolean m5318f() {
        return f9870c.get(this) != 0;
    }

    /* JADX INFO: renamed from: g */
    public final ArrayList m5319g(Throwable th) {
        ArrayList arrayList;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9872e;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            arrayList = new ArrayList(4);
        } else if (obj instanceof Throwable) {
            ArrayList arrayList2 = new ArrayList(4);
            arrayList2.add(obj);
            arrayList = arrayList2;
        } else {
            if (!(obj instanceof ArrayList)) {
                C2930a.m4661c(obj, "State is ");
                return null;
            }
            arrayList = (ArrayList) obj;
        }
        Throwable thM5316d = m5316d();
        if (thM5316d != null) {
            arrayList.add(0, thM5316d);
        }
        if (th != null && !Intrinsics.areEqual(th, thM5316d)) {
            arrayList.add(th);
        }
        atomicReferenceFieldUpdater.set(this, AbstractC3366a0.f9847g);
        return arrayList;
    }

    public final String toString() {
        return "Finishing[cancelling=" + m5317e() + ", completing=" + m5318f() + ", rootCause=" + m5316d() + ", exceptions=" + f9872e.get(this) + ", list=" + this.f9873b + ']';
    }
}
