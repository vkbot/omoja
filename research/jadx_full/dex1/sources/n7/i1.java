package n7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j1 f3942b;
    public final /* synthetic */ c3.e c;
    public final /* synthetic */ long d;
    public final /* synthetic */ k1 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i1(k1 k1Var, j1 j1Var, c3.e eVar, long j9) {
        this.e = k1Var;
        this.f3942b = j1Var;
        this.c = eVar;
        this.d = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        this.e.execute(this.f3942b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c.toString());
        sb.append("(scheduled in SynchronizationContext with delay of ");
        return ai.onnxruntime.a.n(sb, this.d, ")");
    }
}
