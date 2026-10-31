package p157o7;

import java.io.IOException;
import p148n7.C2530n;
import p170p7.C2978c;

/* JADX INFO: renamed from: o7.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractRunnableC2618d0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7342b;

    /* JADX INFO: renamed from: c */
    public final Object f7343c;

    public /* synthetic */ AbstractRunnableC2618d0(int i10, Object obj) {
        this.f7342b = i10;
        this.f7343c = obj;
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo4132a();

    /* JADX INFO: renamed from: b */
    public abstract void mo4133b();

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7342b) {
            case 0:
                C2530n c2530n = (C2530n) this.f7343c;
                C2530n c2530nM3962a = c2530n.m3962a();
                try {
                    mo4133b();
                    return;
                } finally {
                    c2530n.m3963c(c2530nM3962a);
                }
            default:
                C2978c c2978c = (C2978c) this.f7343c;
                try {
                    if (c2978c.f8296j == null) {
                        throw new IOException("Unable to perform write due to unavailable sink.");
                    }
                    mo4132a();
                    return;
                } catch (Exception e) {
                    c2978c.f8291e.m4796n(e);
                    return;
                }
        }
    }
}
