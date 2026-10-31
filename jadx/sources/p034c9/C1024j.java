package p034c9;

import p224v8.AbstractC3366a0;

/* JADX INFO: renamed from: c9.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1024j extends AbstractRunnableC1022h {

    /* JADX INFO: renamed from: d */
    public final Runnable f1049d;

    public C1024j(Runnable runnable, long j10, C1023i c1023i) {
        super(j10, c1023i);
        this.f1049d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f1049d.run();
        } finally {
            this.f1047c.getClass();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f1049d;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(AbstractC3366a0.m5282a(runnable));
        sb.append(", ");
        sb.append(this.f1046b);
        sb.append(", ");
        sb.append(this.f1047c);
        sb.append(']');
        return sb.toString();
    }
}
