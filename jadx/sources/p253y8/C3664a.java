package p253y8;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import p141n.C2455p;
import p263z8.C3771i;

/* JADX INFO: renamed from: y8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3664a extends ContinuationImpl {

    /* JADX INFO: renamed from: b */
    public C3771i f10855b;

    /* JADX INFO: renamed from: c */
    public /* synthetic */ Object f10856c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2455p f10857d;

    /* JADX INFO: renamed from: e */
    public int f10858e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3664a(C2455p c2455p, Continuation continuation) {
        super(continuation);
        this.f10857d = c2455p;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f10856c = obj;
        this.f10858e |= Integer.MIN_VALUE;
        return this.f10857d.collect(null, this);
    }
}
