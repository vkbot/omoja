package p263z8;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import p010a9.C0058t;
import p224v8.C3388h1;
import p224v8.C3437y0;
import p224v8.InterfaceC3386h;
import p224v8.InterfaceC3439z0;

/* JADX INFO: renamed from: z8.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3774l extends Lambda implements Function2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3771i f11241b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3774l(C3771i c3771i) {
        super(2);
        this.f11241b = c3771i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int iIntValue = ((Number) obj).intValue();
        CoroutineContext.Element element = (CoroutineContext.Element) obj2;
        CoroutineContext.Key<?> key = element.getKey();
        CoroutineContext.Element element2 = this.f11241b.f11235c.get(key);
        if (key != C3437y0.f9916b) {
            return Integer.valueOf(element != element2 ? Integer.MIN_VALUE : iIntValue + 1);
        }
        InterfaceC3439z0 interfaceC3439z0 = (InterfaceC3439z0) element2;
        InterfaceC3439z0 parent = (InterfaceC3439z0) element;
        while (true) {
            if (parent != null) {
                if (parent == interfaceC3439z0 || !(parent instanceof C0058t)) {
                    break;
                }
                InterfaceC3386h interfaceC3386h = (InterfaceC3386h) C3388h1.f9882c.get((C3388h1) parent);
                parent = interfaceC3386h != null ? interfaceC3386h.getParent() : null;
            } else {
                parent = null;
                break;
            }
        }
        if (parent == interfaceC3439z0) {
            if (interfaceC3439z0 != null) {
                iIntValue++;
            }
            return Integer.valueOf(iIntValue);
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + parent + ", expected child of " + interfaceC3439z0 + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
    }
}
