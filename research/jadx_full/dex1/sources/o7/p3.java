package o7;

import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Collection f4391b;
    public final /* synthetic */ c4 c;
    public final /* synthetic */ Future d;
    public final /* synthetic */ Future e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ v1 f4392f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p3(v1 v1Var, Collection collection, c4 c4Var, Future future, Future future2) {
        this.f4392f = v1Var;
        this.f4391b = collection;
        this.c = c4Var;
        this.d = future;
        this.e = future2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        n7.f1 f1Var;
        for (c4 c4Var : this.f4391b) {
            if (c4Var != this.c) {
                c4Var.f4177a.h(v1.H);
            }
        }
        Future future = this.d;
        if (future != null) {
            future.cancel(false);
        }
        Future future2 = this.e;
        if (future2 != null) {
            future2.cancel(false);
        }
        v1 v1Var = this.f4392f;
        b1.m mVar = ((f2) v1Var.E.f400b).F;
        synchronized (mVar.c) {
            try {
                ((HashSet) mVar.d).remove(v1Var);
                if (((HashSet) mVar.d).isEmpty()) {
                    f1Var = (n7.f1) mVar.e;
                    mVar.d = new HashSet();
                } else {
                    f1Var = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (f1Var != null) {
            ((f2) mVar.f270f).E.a(f1Var);
        }
    }
}
