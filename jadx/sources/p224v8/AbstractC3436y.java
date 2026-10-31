package p224v8;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import p010a9.C0058t;
import p016b1.AbstractC0880u;

/* JADX INFO: renamed from: v8.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3436y {
    /* JADX INFO: renamed from: a */
    public static final Object m5359a(Function2 function2, Continuation continuation) {
        C0058t c0058t = new C0058t(continuation, continuation.get$context());
        Object objM1007y = AbstractC0880u.m1007y(c0058t, c0058t, function2);
        if (objM1007y == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objM1007y;
    }
}
