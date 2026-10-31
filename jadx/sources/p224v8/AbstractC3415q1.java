package p224v8;

/* JADX INFO: renamed from: v8.q1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3415q1 {

    /* JADX INFO: renamed from: a */
    public static final ThreadLocal f9904a = new ThreadLocal();

    /* JADX INFO: renamed from: a */
    public static AbstractC3399l0 m5354a() {
        ThreadLocal threadLocal = f9904a;
        AbstractC3399l0 abstractC3399l0 = (AbstractC3399l0) threadLocal.get();
        if (abstractC3399l0 != null) {
            return abstractC3399l0;
        }
        C3371c c3371c = new C3371c(Thread.currentThread());
        threadLocal.set(c3371c);
        return c3371c;
    }
}
