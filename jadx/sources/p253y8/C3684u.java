package p253y8;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import p224v8.InterfaceC3439z0;

/* JADX INFO: renamed from: y8.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3684u extends ContinuationImpl {

    /* JADX INFO: renamed from: b */
    public C3685v f10906b;

    /* JADX INFO: renamed from: c */
    public InterfaceC3670g f10907c;

    /* JADX INFO: renamed from: d */
    public C3686w f10908d;

    /* JADX INFO: renamed from: e */
    public InterfaceC3439z0 f10909e;

    /* JADX INFO: renamed from: f */
    public Object f10910f;

    /* JADX INFO: renamed from: g */
    public /* synthetic */ Object f10911g;

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ C3685v f10912h;

    /* JADX INFO: renamed from: i */
    public int f10913i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3684u(C3685v c3685v, Continuation continuation) {
        super(continuation);
        this.f10912h = c3685v;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f10911g = obj;
        this.f10913i |= Integer.MIN_VALUE;
        return this.f10912h.collect(null, this);
    }
}
