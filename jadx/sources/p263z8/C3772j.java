package p263z8;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import p253y8.InterfaceC3670g;

/* JADX INFO: renamed from: z8.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C3772j extends FunctionReferenceImpl implements Function3, SuspendFunction {

    /* JADX INFO: renamed from: b */
    public static final C3772j f11239b = new C3772j(3, InterfaceC3670g.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        return ((InterfaceC3670g) obj).emit(obj2, (Continuation) obj3);
    }
}
