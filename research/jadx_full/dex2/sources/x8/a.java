package x8;

import a9.u;
import a9.v;
import a9.w;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import v8.a0;
import v8.u1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class a implements u1 {
    public Object b = d.p;
    public v8.e c;
    public final /* synthetic */ b d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(b bVar) {
        this.d = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void a(a aVar) {
        v8.e eVar = aVar.c;
        eVar.getClass();
        aVar.c = null;
        aVar.b = d.l;
        Throwable thM = aVar.d.m();
        if (thM == null) {
            Result$Companion result$Companion = Result.Companion;
            eVar.resumeWith(Result.constructor-impl(Boolean.FALSE));
        } else {
            Result$Companion result$Companion2 = Result.Companion;
            eVar.resumeWith(Result.constructor-impl(ResultKt.createFailure(thM)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.u1
    public final void b(u uVar, int i) {
        v8.e eVar = this.c;
        if (eVar != null) {
            eVar.b(uVar, i);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        k kVarL;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b.h;
        b bVar = this.d;
        k kVar = (k) atomicReferenceFieldUpdater.get(bVar);
        while (!bVar.q(b.c.get(bVar), true)) {
            long andIncrement = b.d.getAndIncrement(bVar);
            long j = d.b;
            long j2 = andIncrement / j;
            int i = (int) (andIncrement % j);
            if (kVar.d != j2) {
                kVarL = bVar.l(j2, kVar);
                if (kVarL == null) {
                    continue;
                }
            } else {
                kVarL = kVar;
            }
            Object objZ = bVar.z(kVarL, i, andIncrement, null);
            w wVar = d.m;
            if (objZ == wVar) {
                j1.i.l("unreachable");
                return null;
            }
            w wVar2 = d.o;
            if (objZ != wVar2) {
                if (objZ != d.n) {
                    kVarL.a();
                    this.b = objZ;
                    return Boxing.boxBoolean(true);
                }
                v8.e eVarB = a0.b(IntrinsicsKt.intercepted(continuationImpl));
                try {
                    this.c = eVarB;
                    Object objZ2 = bVar.z(kVarL, i, andIncrement, this);
                    if (objZ2 == wVar) {
                        b(kVarL, i);
                    } else {
                        if (objZ2 == wVar2) {
                            if (andIncrement < bVar.o()) {
                                kVarL.a();
                            }
                            k kVar2 = (k) b.h.get(bVar);
                            while (true) {
                                if (bVar.q(b.c.get(bVar), true)) {
                                    a(this);
                                } else {
                                    long andIncrement2 = b.d.getAndIncrement(bVar);
                                    long j3 = d.b;
                                    long j4 = andIncrement2 / j3;
                                    int i2 = (int) (andIncrement2 % j3);
                                    if (kVar2.d != j4) {
                                        k kVarL2 = bVar.l(j4, kVar2);
                                        if (kVarL2 != null) {
                                            kVar2 = kVarL2;
                                        }
                                    }
                                    Object objZ3 = bVar.z(kVar2, i2, andIncrement2, this);
                                    if (objZ3 == d.m) {
                                        b(kVar2, i2);
                                    } else if (objZ3 == d.o) {
                                        if (andIncrement2 < bVar.o()) {
                                            kVar2.a();
                                        }
                                    } else {
                                        if (objZ3 == d.n) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        kVar2.a();
                                        this.b = objZ3;
                                        this.c = null;
                                    }
                                }
                            }
                        } else {
                            kVarL.a();
                            this.b = objZ2;
                            this.c = null;
                        }
                        eVarB.d(Boxing.boxBoolean(true), null);
                    }
                    Object objQ = eVarB.q();
                    if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(continuationImpl);
                    }
                    return objQ;
                } catch (Throwable th) {
                    eVarB.x();
                    throw th;
                }
            }
            if (andIncrement < bVar.o()) {
                kVarL.a();
            }
            kVar = kVarL;
        }
        this.b = d.l;
        Throwable thM = bVar.m();
        if (thM == null) {
            return Boxing.boxBoolean(false);
        }
        int i3 = v.a;
        throw thM;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object d() throws Throwable {
        Object obj = this.b;
        w wVar = d.p;
        if (obj == wVar) {
            j1.i.l("`hasNext()` has not been invoked");
            return null;
        }
        this.b = wVar;
        if (obj != d.l) {
            return obj;
        }
        Throwable thM = this.d.m();
        if (thM == null) {
            thM = new l("Channel was closed");
        }
        int i = v.a;
        throw thM;
    }
}
