package s1;

import e0.j2;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5076b;
    public final /* synthetic */ q0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f0(q0 q0Var, int i9) {
        this.f5076b = i9;
        this.c = q0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5076b) {
            case 0:
                if (this.c.E) {
                    return;
                }
                q0 q0Var = this.c;
                if (q0Var.f5179n && q0Var.isAttachedToWindow()) {
                    x xVarA = x.a(this.c.getContext());
                    q0.f fVar = new q0.f(2, this);
                    synchronized (xVarA) {
                        if (xVarA.f5229g) {
                            return;
                        }
                        xVarA.f5229g = true;
                        xVarA.d.execute(new j2(26, xVarA, fVar));
                        return;
                    }
                }
                return;
            default:
                if (this.c.E || !this.c.isAttachedToWindow()) {
                    return;
                }
                ArrayList arrayList = this.c.f5182q;
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    if (q0.r(((j0) obj).f5100b)) {
                        this.c.f5178m.execute(new f5.j(17, this));
                        return;
                    }
                }
                this.c.r.postDelayed(this, 4000L);
                return;
        }
    }
}
