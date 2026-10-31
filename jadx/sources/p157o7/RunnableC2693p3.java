package p157o7;

import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.Future;
import p016b1.C0872m;
import p148n7.C2508f1;

/* JADX INFO: renamed from: o7.p3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2693p3 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Collection f7698b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2616c4 f7699c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Future f7700d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Future f7701e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ C2727v1 f7702f;

    public RunnableC2693p3(C2727v1 c2727v1, Collection collection, C2616c4 c2616c4, Future future, Future future2) {
        this.f7702f = c2727v1;
        this.f7698b = collection;
        this.f7699c = c2616c4;
        this.f7700d = future;
        this.f7701e = future2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2508f1 c2508f1;
        for (C2616c4 c2616c4 : this.f7698b) {
            if (c2616c4 != this.f7699c) {
                c2616c4.f7336a.mo4097h(C2727v1.f7808H);
            }
        }
        Future future = this.f7700d;
        if (future != null) {
            future.cancel(false);
        }
        Future future2 = this.f7701e;
        if (future2 != null) {
            future2.cancel(false);
        }
        C2727v1 c2727v1 = this.f7702f;
        C0872m c0872m = ((C2632f2) c2727v1.f7814E.f796b).f7402F;
        synchronized (c0872m.f601c) {
            try {
                ((HashSet) c0872m.f602d).remove(c2727v1);
                if (((HashSet) c0872m.f602d).isEmpty()) {
                    c2508f1 = (C2508f1) c0872m.f603e;
                    c0872m.f602d = new HashSet();
                } else {
                    c2508f1 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c2508f1 != null) {
            ((C2632f2) c0872m.f604f).f7401E.mo4170a(c2508f1);
        }
    }
}
