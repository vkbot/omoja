package m0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o2 implements p0.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3556b;
    public final /* synthetic */ q2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o2(q2 q2Var, int i9) {
        this.f3556b = i9;
        this.c = q2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // p0.d
    public final void b(int i9, int i10) {
        switch (this.f3556b) {
            case 0:
                q2 q2Var = this.c;
                q2Var.f3574i.post(new e0.s1(q2Var, i9, i10, true));
                break;
            default:
                q2 q2Var2 = this.c;
                q2Var2.f3574i.post(new e0.s1(q2Var2, i9, i10, false));
                break;
        }
    }
}
