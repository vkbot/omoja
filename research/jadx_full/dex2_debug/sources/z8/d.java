package z8;

import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import v8.h0;
import v8.q;
import v8.x;
import x8.p;
import y8.r;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class d extends SuspendLambda implements Function2 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ y8.g d;
    public final /* synthetic */ l.d e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(y8.g gVar, l.d dVar, Continuation continuation) {
        super(2, continuation);
        this.d = gVar;
        this.e = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Continuation create(Object obj, Continuation continuation) {
        d dVar = new d(this.d, this.e, continuation);
        dVar.c = obj;
        return dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj, Object obj2) {
        return create((x) obj, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public final Object invokeSuspend(Object obj) throws NoWhenBranchMatchedException {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            x xVar = (x) this.c;
            l.d dVar = this.e;
            CoroutineContext coroutineContext = (CoroutineContext) dVar.c;
            Function2 eVar = new e(dVar, null);
            x8.b bVarA = x8.j.a(-2, 1);
            CoroutineContext coroutineContextA = q.a(xVar.getCoroutineContext(), coroutineContext, true);
            CoroutineContext coroutineContext2 = h0.a;
            if (coroutineContextA != coroutineContext2 && coroutineContextA.get(ContinuationInterceptor.Key) == null) {
                coroutineContextA = coroutineContextA.plus(coroutineContext2);
            }
            p pVar = new p(coroutineContextA, bVarA);
            pVar.L(3, pVar, eVar);
            this.b = 1;
            Object objC = r.c(this.d, pVar, true, this);
            if (objC != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objC = Unit.INSTANCE;
            }
            if (objC == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                j1.i.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
