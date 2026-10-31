package p253y8;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import p120l.C2187d;
import p243x8.InterfaceC3613q;

/* JADX INFO: renamed from: y8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3665b extends ContinuationImpl {

    /* JADX INFO: renamed from: b */
    public InterfaceC3613q f10859b;

    /* JADX INFO: renamed from: c */
    public /* synthetic */ Object f10860c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2187d f10861d;

    /* JADX INFO: renamed from: e */
    public int f10862e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3665b(C2187d c2187d, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f10861d = c2187d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f10860c = obj;
        this.f10862e |= Integer.MIN_VALUE;
        return this.f10861d.m3483k(null, this);
    }
}
