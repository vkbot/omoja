package p263z8;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import p099j1.C1929i;
import p120l.C2187d;
import p243x8.InterfaceC3613q;

/* JADX INFO: renamed from: z8.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3767e extends SuspendLambda implements Function2 {

    /* JADX INFO: renamed from: b */
    public int f11226b;

    /* JADX INFO: renamed from: c */
    public /* synthetic */ Object f11227c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2187d f11228d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3767e(C2187d c2187d, Continuation continuation) {
        super(2, continuation);
        this.f11228d = c2187d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C3767e c3767e = new C3767e(this.f11228d, continuation);
        c3767e.f11227c = obj;
        return c3767e;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C3767e) create((InterfaceC3613q) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f11226b;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            InterfaceC3613q interfaceC3613q = (InterfaceC3613q) this.f11227c;
            this.f11226b = 1;
            if (this.f11228d.m3483k(interfaceC3613q, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i10 != 1) {
                C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
