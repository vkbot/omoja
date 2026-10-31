package p245y0;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: y0.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3636n {

    /* JADX INFO: renamed from: a */
    public static final AtomicBoolean f10805a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a */
    public static void m5820a() {
        f10805a.compareAndSet(false, true);
    }
}
