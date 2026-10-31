package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w3 extends n7.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c4 f4494b;
    public long c;
    public final /* synthetic */ v1 d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w3(v1 v1Var, c4 c4Var) {
        this.d = v1Var;
        this.f4494b = c4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void w(long j9) {
        if (this.d.f4475p.f4529f != null) {
            return;
        }
        synchronized (this.d.f4469j) {
            try {
                if (this.d.f4475p.f4529f == null) {
                    c4 c4Var = this.f4494b;
                    if (!c4Var.f4178b) {
                        long j10 = this.c + j9;
                        this.c = j10;
                        v1 v1Var = this.d;
                        long j11 = v1Var.f4478u;
                        if (j10 <= j11) {
                            return;
                        }
                        if (j10 > v1Var.f4471l) {
                            c4Var.c = true;
                        } else {
                            long jAddAndGet = v1Var.f4470k.f4208a.addAndGet(j10 - j11);
                            v1 v1Var2 = this.d;
                            v1Var2.f4478u = this.c;
                            if (jAddAndGet > v1Var2.f4472m) {
                                this.f4494b.c = true;
                            }
                        }
                        c4 c4Var2 = this.f4494b;
                        p3 p3VarJ = c4Var2.c ? this.d.j(c4Var2) : null;
                        if (p3VarJ != null) {
                            p3VarJ.run();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
