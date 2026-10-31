package p242x7;

import java.util.concurrent.TimeUnit;
import p085h8.AbstractRunnableC1699h0;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: x7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3593j implements InterfaceC3762a {
    /* JADX INFO: renamed from: a */
    public abstract InterfaceC3762a mo3778a(Runnable runnable, TimeUnit timeUnit);

    /* JADX INFO: renamed from: b */
    public void mo3779b(AbstractRunnableC1699h0 abstractRunnableC1699h0) {
        mo3778a(abstractRunnableC1699h0, TimeUnit.NANOSECONDS);
    }
}
