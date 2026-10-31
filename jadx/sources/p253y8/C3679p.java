package p253y8;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import p224v8.InterfaceC3439z0;

/* JADX INFO: renamed from: y8.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3679p extends ContinuationImpl {

    /* JADX INFO: renamed from: b */
    public C3680q f10887b;

    /* JADX INFO: renamed from: c */
    public InterfaceC3670g f10888c;

    /* JADX INFO: renamed from: d */
    public C3682s f10889d;

    /* JADX INFO: renamed from: e */
    public InterfaceC3439z0 f10890e;

    /* JADX INFO: renamed from: f */
    public /* synthetic */ Object f10891f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C3680q f10892g;

    /* JADX INFO: renamed from: h */
    public int f10893h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3679p(C3680q c3680q, Continuation continuation) {
        super(continuation);
        this.f10892g = c3680q;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f10891f = obj;
        this.f10893h |= Integer.MIN_VALUE;
        return C3680q.m5889h(this.f10892g, null, this);
    }
}
