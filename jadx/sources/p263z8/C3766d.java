package p263z8;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import p034c9.C1018d;
import p099j1.C1929i;
import p120l.C2187d;
import p224v8.AbstractC3387h0;
import p224v8.AbstractC3413q;
import p224v8.InterfaceC3434x;
import p243x8.AbstractC3606j;
import p243x8.C3598b;
import p243x8.C3612p;
import p253y8.AbstractC3681r;
import p253y8.InterfaceC3670g;

/* JADX INFO: renamed from: z8.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3766d extends SuspendLambda implements Function2 {

    /* JADX INFO: renamed from: b */
    public int f11222b;

    /* JADX INFO: renamed from: c */
    public /* synthetic */ Object f11223c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ InterfaceC3670g f11224d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2187d f11225e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3766d(InterfaceC3670g interfaceC3670g, C2187d c2187d, Continuation continuation) {
        super(2, continuation);
        this.f11224d = interfaceC3670g;
        this.f11225e = c2187d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C3766d c3766d = new C3766d(this.f11224d, this.f11225e, continuation);
        c3766d.f11223c = obj;
        return c3766d;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C3766d) create((InterfaceC3434x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f11222b;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            InterfaceC3434x interfaceC3434x = (InterfaceC3434x) this.f11223c;
            C2187d c2187d = this.f11225e;
            CoroutineContext coroutineContext = (CoroutineContext) c2187d.f5705c;
            Function2 c3767e = new C3767e(c2187d, null);
            C3598b c3598bM5753a = AbstractC3606j.m5753a(-2, 1);
            CoroutineContext coroutineContextM5352a = AbstractC3413q.m5352a(interfaceC3434x.getCoroutineContext(), coroutineContext, true);
            C1018d c1018d = AbstractC3387h0.f9879a;
            if (coroutineContextM5352a != c1018d && coroutineContextM5352a.get(ContinuationInterceptor.INSTANCE) == null) {
                coroutineContextM5352a = coroutineContextM5352a.plus(c1018d);
            }
            C3612p c3612p = new C3612p(coroutineContextM5352a, c3598bM5753a);
            c3612p.m5279L(3, c3612p, c3767e);
            this.f11222b = 1;
            Object objM5906c = AbstractC3681r.m5906c(this.f11224d, c3612p, true, this);
            if (objM5906c != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objM5906c = Unit.INSTANCE;
            }
            if (objM5906c == coroutine_suspended) {
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
