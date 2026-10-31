package x8;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import v8.y0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class o {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: x8.q */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object a(q qVar, Function0 function0, ContinuationImpl continuationImpl) {
        n nVar;
        if (continuationImpl instanceof n) {
            nVar = (n) continuationImpl;
            int i = nVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                nVar.d = i - Integer.MIN_VALUE;
            } else {
                nVar = new n(continuationImpl);
            }
        } else {
            nVar = new n(continuationImpl);
        }
        Object obj = nVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = nVar.d;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                if (nVar.getContext().get(y0.b) != qVar) {
                    j1.i.l("awaitClose() can only be invoked from the producer context");
                    return null;
                }
                nVar.b = function0;
                nVar.d = 1;
                v8.e eVar = new v8.e(1, IntrinsicsKt.intercepted(nVar));
                eVar.r();
                ((g) qVar).M(new d9.h(6, eVar));
                Object objQ = eVar.q();
                if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(nVar);
                }
                if (objQ == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    j1.i.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                function0 = (Function0) nVar.b;
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
