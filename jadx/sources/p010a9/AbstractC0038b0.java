package p010a9;

import kotlin.coroutines.CoroutineContext;
import p142n0.C2467b;
import p224v8.InterfaceC3412p1;

/* JADX INFO: renamed from: a9.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0038b0 {

    /* JADX INFO: renamed from: a */
    public static final C0061w f106a = new C0061w("NO_THREAD_ELEMENTS", 0);

    /* JADX INFO: renamed from: b */
    public static final C0063y f107b = C0063y.f154b;

    /* JADX INFO: renamed from: c */
    public static final C0064z f108c = C0064z.f155b;

    /* JADX INFO: renamed from: d */
    public static final C0036a0 f109d = C0036a0.f104b;

    /* JADX INFO: renamed from: a */
    public static final void m106a(CoroutineContext coroutineContext, Object obj) {
        if (obj == f106a) {
            return;
        }
        if (!(obj instanceof C0042d0)) {
            coroutineContext.fold(null, f108c).getClass();
            C2467b.m3822a();
            return;
        }
        InterfaceC3412p1[] interfaceC3412p1Arr = ((C0042d0) obj).f115c;
        int length = interfaceC3412p1Arr.length - 1;
        if (length < 0) {
            return;
        }
        InterfaceC3412p1 interfaceC3412p1 = interfaceC3412p1Arr[length];
        throw null;
    }

    /* JADX INFO: renamed from: b */
    public static final Object m107b(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = coroutineContext.fold(0, f107b);
            obj.getClass();
        }
        if (obj == 0) {
            return f106a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new C0042d0(((Number) obj).intValue(), coroutineContext), f109d);
        }
        C2467b.m3822a();
        return null;
    }
}
