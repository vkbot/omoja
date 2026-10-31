package p224v8;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Ref;

/* JADX INFO: renamed from: v8.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3413q {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    /* JADX INFO: renamed from: a */
    public static final CoroutineContext m5352a(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, boolean z9) {
        Boolean bool = Boolean.FALSE;
        C3410p c3410p = C3410p.f9902b;
        boolean zBooleanValue = ((Boolean) coroutineContext.fold(bool, c3410p)).booleanValue();
        boolean zBooleanValue2 = ((Boolean) coroutineContext2.fold(bool, c3410p)).booleanValue();
        if (!zBooleanValue && !zBooleanValue2) {
            return coroutineContext.plus(coroutineContext2);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = coroutineContext2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, new C3407o(2));
        if (zBooleanValue2) {
            objectRef.element = ((CoroutineContext) objectRef.element).fold(emptyCoroutineContext, C3404n.f9898b);
        }
        return coroutineContext3.plus((CoroutineContext) objectRef.element);
    }

    /* JADX INFO: renamed from: b */
    public static final C3421s1 m5353b(Continuation continuation, CoroutineContext coroutineContext, Object obj) {
        C3421s1 c3421s1 = null;
        if (!(continuation instanceof CoroutineStackFrame)) {
            return null;
        }
        if (coroutineContext.get(C3424t1.f9910b) != null) {
            CoroutineStackFrame callerFrame = (CoroutineStackFrame) continuation;
            while (!(callerFrame instanceof C3378e0) && (callerFrame = callerFrame.getCallerFrame()) != null) {
                if (callerFrame instanceof C3421s1) {
                    c3421s1 = (C3421s1) callerFrame;
                    break;
                }
            }
            if (c3421s1 != null) {
                c3421s1.m5356N(coroutineContext, obj);
            }
        }
        return c3421s1;
    }
}
