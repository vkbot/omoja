package p252y7;

import android.os.Handler;
import p000a.AbstractC0000a;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: y7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3662d implements Runnable, InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final Handler f10852b;

    /* JADX INFO: renamed from: c */
    public final Runnable f10853c;

    public RunnableC3662d(Handler handler, Runnable runnable) {
        this.f10852b = handler;
        this.f10853c = runnable;
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        this.f10852b.removeCallbacks(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f10853c.run();
        } catch (Throwable th) {
            AbstractC0000a.m18s(th);
        }
    }
}
