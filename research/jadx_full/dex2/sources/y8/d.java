package y8;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class d implements g {
    public final /* synthetic */ e b;
    public final /* synthetic */ Ref$ObjectRef c;
    public final /* synthetic */ g d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(e eVar, Ref$ObjectRef ref$ObjectRef, g gVar) {
        this.b = eVar;
        this.c = ref$ObjectRef;
        this.d = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // y8.g
    public final Object emit(Object obj, Continuation continuation) {
        c cVar;
        if (continuation instanceof c) {
            cVar = (c) continuation;
            int i = cVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                cVar.d = i - Integer.MIN_VALUE;
            } else {
                cVar = new c(this, continuation);
            }
        } else {
            cVar = new c(this, continuation);
        }
        Object obj2 = cVar.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cVar.d;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj2);
            e eVar = this.b;
            Object objInvoke = eVar.c.invoke(obj);
            Ref$ObjectRef ref$ObjectRef = this.c;
            Object obj3 = ref$ObjectRef.element;
            if (obj3 != z8.b.b && ((Boolean) eVar.d.invoke(obj3, objInvoke)).booleanValue()) {
                return Unit.INSTANCE;
            }
            ref$ObjectRef.element = objInvoke;
            cVar.d = 1;
            if (this.d.emit(obj, cVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                j1.i.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj2);
        }
        return Unit.INSTANCE;
    }
}
