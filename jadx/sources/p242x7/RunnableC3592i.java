package p242x7;

import p095i8.RunnableC1791p;
import p139m8.C2422j;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: x7.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3592i implements InterfaceC3762a, Runnable {

    /* JADX INFO: renamed from: b */
    public final RunnableC1791p f10654b;

    /* JADX INFO: renamed from: c */
    public final AbstractC3593j f10655c;

    /* JADX INFO: renamed from: d */
    public Thread f10656d;

    public RunnableC3592i(RunnableC1791p runnableC1791p, AbstractC3593j abstractC3593j) {
        this.f10654b = runnableC1791p;
        this.f10655c = abstractC3593j;
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        if (this.f10656d == Thread.currentThread()) {
            AbstractC3593j abstractC3593j = this.f10655c;
            if (abstractC3593j instanceof C2422j) {
                C2422j c2422j = (C2422j) abstractC3593j;
                if (c2422j.f6573c) {
                    return;
                }
                c2422j.f6573c = true;
                c2422j.f6572b.shutdown();
                return;
            }
        }
        this.f10655c.dispose();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10656d = Thread.currentThread();
        try {
            this.f10654b.run();
        } finally {
            dispose();
            this.f10656d = null;
        }
    }
}
