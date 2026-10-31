package p224v8;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: v8.p0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3411p0 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: b */
    public static final C3411p0 f9903b = new C3411p0(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CoroutineContext.Element element = (CoroutineContext.Element) obj;
        if (element instanceof AbstractC3417r0) {
            return (AbstractC3417r0) element;
        }
        return null;
    }
}
