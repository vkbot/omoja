package p243x8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import p010a9.AbstractC0059u;
import p010a9.AbstractC0060v;
import p010a9.C0061w;
import p099j1.C1929i;
import p224v8.AbstractC3366a0;
import p224v8.C3377e;
import p224v8.InterfaceC3427u1;

/* JADX INFO: renamed from: x8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3597a implements InterfaceC3427u1 {

    /* JADX INFO: renamed from: b */
    public Object f10657b = AbstractC3600d.f10686p;

    /* JADX INFO: renamed from: c */
    public C3377e f10658c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C3598b f10659d;

    public C3597a(C3598b c3598b) {
        this.f10659d = c3598b;
    }

    /* JADX INFO: renamed from: a */
    public static final void m5722a(C3597a c3597a) {
        C3377e c3377e = c3597a.f10658c;
        c3377e.getClass();
        c3597a.f10658c = null;
        c3597a.f10657b = AbstractC3600d.f10682l;
        Throwable thM5740m = c3597a.f10659d.m5740m();
        if (thM5740m == null) {
            Result.Companion companion = Result.INSTANCE;
            c3377e.resumeWith(Result.m6088constructorimpl(Boolean.FALSE));
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            c3377e.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(thM5740m)));
        }
    }

    @Override // p224v8.InterfaceC3427u1
    /* JADX INFO: renamed from: b */
    public final void mo2359b(AbstractC0059u abstractC0059u, int i10) {
        C3377e c3377e = this.f10658c;
        if (c3377e != null) {
            c3377e.mo2359b(abstractC0059u, i10);
        }
    }

    /* JADX INFO: renamed from: c */
    public final Object m5723c(ContinuationImpl continuationImpl) throws Throwable {
        C3607k c3607kM5739l;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C3598b.f10665h;
        C3598b c3598b = this.f10659d;
        C3607k c3607k = (C3607k) atomicReferenceFieldUpdater.get(c3598b);
        while (!c3598b.m5743q(C3598b.f10660c.get(c3598b), true)) {
            long andIncrement = C3598b.f10661d.getAndIncrement(c3598b);
            long j10 = AbstractC3600d.f10672b;
            long j11 = andIncrement / j10;
            int i10 = (int) (andIncrement % j10);
            if (c3607k.f149d != j11) {
                c3607kM5739l = c3598b.m5739l(j11, c3607k);
                if (c3607kM5739l == null) {
                    continue;
                }
            } else {
                c3607kM5739l = c3607k;
            }
            Object objM5751z = c3598b.m5751z(c3607kM5739l, i10, andIncrement, null);
            C0061w c0061w = AbstractC3600d.f10683m;
            if (objM5751z == c0061w) {
                C1929i.m3030l("unreachable");
                return null;
            }
            C0061w c0061w2 = AbstractC3600d.f10685o;
            if (objM5751z != c0061w2) {
                if (objM5751z != AbstractC3600d.f10684n) {
                    c3607kM5739l.m109a();
                    this.f10657b = objM5751z;
                    return Boxing.boxBoolean(true);
                }
                C3377e c3377eM5283b = AbstractC3366a0.m5283b(IntrinsicsKt.intercepted(continuationImpl));
                try {
                    this.f10658c = c3377eM5283b;
                    Object objM5751z2 = c3598b.m5751z(c3607kM5739l, i10, andIncrement, this);
                    if (objM5751z2 == c0061w) {
                        mo2359b(c3607kM5739l, i10);
                    } else {
                        if (objM5751z2 == c0061w2) {
                            if (andIncrement < c3598b.m5742o()) {
                                c3607kM5739l.m109a();
                            }
                            C3607k c3607k2 = (C3607k) C3598b.f10665h.get(c3598b);
                            while (true) {
                                if (c3598b.m5743q(C3598b.f10660c.get(c3598b), true)) {
                                    m5722a(this);
                                } else {
                                    long andIncrement2 = C3598b.f10661d.getAndIncrement(c3598b);
                                    long j12 = AbstractC3600d.f10672b;
                                    long j13 = andIncrement2 / j12;
                                    int i11 = (int) (andIncrement2 % j12);
                                    if (c3607k2.f149d != j13) {
                                        C3607k c3607kM5739l2 = c3598b.m5739l(j13, c3607k2);
                                        if (c3607kM5739l2 != null) {
                                            c3607k2 = c3607kM5739l2;
                                        }
                                    }
                                    Object objM5751z3 = c3598b.m5751z(c3607k2, i11, andIncrement2, this);
                                    if (objM5751z3 == AbstractC3600d.f10683m) {
                                        mo2359b(c3607k2, i11);
                                    } else if (objM5751z3 == AbstractC3600d.f10685o) {
                                        if (andIncrement2 < c3598b.m5742o()) {
                                            c3607k2.m109a();
                                        }
                                    } else {
                                        if (objM5751z3 == AbstractC3600d.f10684n) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        c3607k2.m109a();
                                        this.f10657b = objM5751z3;
                                        this.f10658c = null;
                                    }
                                }
                            }
                        } else {
                            c3607kM5739l.m109a();
                            this.f10657b = objM5751z2;
                            this.f10658c = null;
                        }
                        c3377eM5283b.mo2360d(Boxing.boxBoolean(true), null);
                    }
                    Object objM5306q = c3377eM5283b.m5306q();
                    if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(continuationImpl);
                    }
                    return objM5306q;
                } catch (Throwable th) {
                    c3377eM5283b.m5312x();
                    throw th;
                }
            }
            if (andIncrement < c3598b.m5742o()) {
                c3607kM5739l.m109a();
            }
            c3607k = c3607kM5739l;
        }
        this.f10657b = AbstractC3600d.f10682l;
        Throwable thM5740m = c3598b.m5740m();
        if (thM5740m == null) {
            return Boxing.boxBoolean(false);
        }
        int i12 = AbstractC0060v.f150a;
        throw thM5740m;
    }

    /* JADX INFO: renamed from: d */
    public final Object m5724d() throws Throwable {
        Object obj = this.f10657b;
        C0061w c0061w = AbstractC3600d.f10686p;
        if (obj == c0061w) {
            C1929i.m3030l("`hasNext()` has not been invoked");
            return null;
        }
        this.f10657b = c0061w;
        if (obj != AbstractC3600d.f10682l) {
            return obj;
        }
        Throwable thM5740m = this.f10659d.m5740m();
        if (thM5740m == null) {
            thM5740m = new C3608l("Channel was closed");
        }
        int i10 = AbstractC0060v.f150a;
        throw thM5740m;
    }
}
