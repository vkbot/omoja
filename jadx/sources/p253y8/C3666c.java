package p253y8;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: y8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3666c extends ContinuationImpl {

    /* JADX INFO: renamed from: b */
    public /* synthetic */ Object f10863b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3667d f10864c;

    /* JADX INFO: renamed from: d */
    public int f10865d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3666c(C3667d c3667d, Continuation continuation) {
        super(continuation);
        this.f10864c = c3667d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f10863b = obj;
        this.f10865d |= Integer.MIN_VALUE;
        return this.f10864c.emit(null, this);
    }
}
