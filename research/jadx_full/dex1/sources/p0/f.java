package p0;

import w0.i0;
import w0.k0;
import w0.l0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4558b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(Object obj, int i9, int i10, int i11) {
        this.f4558b = i11;
        this.e = obj;
        this.c = i9;
        this.d = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4558b) {
            case 0:
                ((j) this.e).i(this.c, this.d);
                break;
            case 1:
                l0 l0Var = (l0) this.e;
                int i9 = this.c;
                int i10 = this.d;
                if (l0Var.y(i9, i10) && l0Var.f5707s == null) {
                    l0Var.b(k0.d, i9, i10);
                    break;
                }
                break;
            default:
                l0 l0Var2 = ((i0) this.e).c;
                int i11 = this.c;
                int i12 = this.d;
                if (l0Var2.y(i11, i12) && l0Var2.r) {
                    l0Var2.b(k0.c, i11, i12);
                    break;
                }
                break;
        }
    }
}
