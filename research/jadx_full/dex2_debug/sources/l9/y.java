package l9;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class y implements g0 {
    public final n b;
    public final l c;
    public b0 d;
    public int e;
    public boolean f;
    public long g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y(n nVar) {
        this.b = nVar;
        l lVarA = nVar.a();
        this.c = lVarA;
        b0 b0Var = lVarA.b;
        this.d = b0Var;
        this.e = b0Var != null ? b0Var.b : -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if (r3 == r5.b) goto L16;
     */
    @Override // l9.g0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long read(l lVar, long j) {
        b0 b0Var;
        lVar.getClass();
        if (j < 0) {
            i.d(ai.onnxruntime.a.h(j, "byteCount < 0: "));
            return 0L;
        }
        if (this.f) {
            j1.i.l("closed");
            return 0L;
        }
        b0 b0Var2 = this.d;
        l lVar2 = this.c;
        if (b0Var2 != null) {
            b0 b0Var3 = lVar2.b;
            if (b0Var2 == b0Var3) {
                int i = this.e;
                b0Var3.getClass();
            }
            j1.i.l("Peek source is invalid because upstream source was used");
            return 0L;
        }
        if (j == 0) {
            return 0L;
        }
        if (!this.b.d(this.g + 1)) {
            return -1L;
        }
        if (this.d == null && (b0Var = lVar2.b) != null) {
            this.d = b0Var;
            this.e = b0Var.b;
        }
        long jMin = Math.min(j, lVar2.c - this.g);
        this.c.S(this.g, lVar, jMin);
        this.g += jMin;
        return jMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout */
    public final j0 getTimeout() {
        return this.b.getTimeout();
    }
}
