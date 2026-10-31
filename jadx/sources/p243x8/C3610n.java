package p243x8;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: x8.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3610n extends ContinuationImpl {

    /* JADX INFO: renamed from: b */
    public Object f10699b;

    /* JADX INFO: renamed from: c */
    public /* synthetic */ Object f10700c;

    /* JADX INFO: renamed from: d */
    public int f10701d;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f10700c = obj;
        this.f10701d |= Integer.MIN_VALUE;
        return AbstractC3611o.m5760a(null, null, this);
    }
}
