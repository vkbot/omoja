package p243x8;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import p046d9.C1322h;
import p099j1.C1929i;
import p224v8.C3377e;
import p224v8.C3437y0;

/* JADX INFO: renamed from: x8.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3611o {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public static final Object m5760a(InterfaceC3613q interfaceC3613q, Function0 function0, ContinuationImpl continuationImpl) {
        C3610n c3610n;
        if (continuationImpl instanceof C3610n) {
            c3610n = (C3610n) continuationImpl;
            int i10 = c3610n.f10701d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c3610n.f10701d = i10 - Integer.MIN_VALUE;
            } else {
                c3610n = new C3610n(continuationImpl);
            }
        } else {
            c3610n = new C3610n(continuationImpl);
        }
        Object obj = c3610n.f10700c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = c3610n.f10701d;
        try {
            if (i11 == 0) {
                ResultKt.throwOnFailure(obj);
                if (c3610n.getContext().get(C3437y0.f9916b) != interfaceC3613q) {
                    C1929i.m3030l("awaitClose() can only be invoked from the producer context");
                    return null;
                }
                c3610n.f10699b = function0;
                c3610n.f10701d = 1;
                C3377e c3377e = new C3377e(1, IntrinsicsKt.intercepted(c3610n));
                c3377e.m5307r();
                ((AbstractC3603g) interfaceC3613q).m5752M(new C1322h(6, c3377e));
                Object objM5306q = c3377e.m5306q();
                if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(c3610n);
                }
                if (objM5306q == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i11 != 1) {
                    C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                function0 = (Function0) c3610n.f10699b;
                ResultKt.throwOnFailure(obj);
            }
            function0.invoke();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            function0.invoke();
            throw th;
        }
    }
}
