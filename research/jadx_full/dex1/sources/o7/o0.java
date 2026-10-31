package o7;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o0 implements w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f4358b;
    public volatile boolean c;
    public List d = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o0(w wVar) {
        this.f4358b = wVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Runnable runnable) {
        synchronized (this) {
            try {
                if (this.c) {
                    runnable.run();
                } else {
                    this.d.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public final void b(n7.f1 f1Var, v vVar, n7.v0 v0Var) {
        a(new m0.r0(2, this, f1Var, vVar, v0Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public final void j() {
        if (this.c) {
            this.f4358b.j();
        } else {
            a(new com.bumptech.glide.m(11, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public final void k(o2 o2Var) {
        if (this.c) {
            this.f4358b.k(o2Var);
        } else {
            a(new e0(11, this, o2Var));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public final void l(n7.v0 v0Var) {
        a(new e0(12, this, v0Var));
    }
}
