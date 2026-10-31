package p130l9;

/* JADX INFO: renamed from: l9.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2255y implements InterfaceC2234g0 {

    /* JADX INFO: renamed from: b */
    public final InterfaceC2244n f5902b;

    /* JADX INFO: renamed from: c */
    public final C2242l f5903c;

    /* JADX INFO: renamed from: d */
    public C2224b0 f5904d;

    /* JADX INFO: renamed from: e */
    public int f5905e;

    /* JADX INFO: renamed from: f */
    public boolean f5906f;

    /* JADX INFO: renamed from: g */
    public long f5907g;

    public C2255y(InterfaceC2244n interfaceC2244n) {
        this.f5902b = interfaceC2244n;
        C2242l c2242lMo3556a = interfaceC2244n.mo3556a();
        this.f5903c = c2242lMo3556a;
        C2224b0 c2224b0 = c2242lMo3556a.f5877b;
        this.f5904d = c2224b0;
        this.f5905e = c2224b0 != null ? c2224b0.f5850b : -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5906f = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if (r3 == r5.f5850b) goto L16;
     */
    @Override // p130l9.InterfaceC2234g0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long read(p130l9.C2242l r9, long r10) {
        /*
            r8 = this;
            r9.getClass()
            r0 = 0
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 < 0) goto L67
            boolean r3 = r8.f5906f
            if (r3 != 0) goto L61
            l9.b0 r3 = r8.f5904d
            l9.l r4 = r8.f5903c
            if (r3 == 0) goto L29
            l9.b0 r5 = r4.f5877b
            if (r3 != r5) goto L21
            int r3 = r8.f5905e
            r5.getClass()
            int r5 = r5.f5850b
            if (r3 != r5) goto L21
            goto L29
        L21:
            java.lang.String r9 = "Peek source is invalid because upstream source was used"
            p099j1.C1929i.m3030l(r9)
        L26:
            r9 = 0
            return r9
        L29:
            if (r2 != 0) goto L2c
            return r0
        L2c:
            long r0 = r8.f5907g
            r2 = 1
            long r0 = r0 + r2
            l9.n r2 = r8.f5902b
            boolean r0 = r2.mo3561d(r0)
            if (r0 != 0) goto L3c
            r9 = -1
            return r9
        L3c:
            l9.b0 r0 = r8.f5904d
            if (r0 != 0) goto L4a
            l9.b0 r0 = r4.f5877b
            if (r0 == 0) goto L4a
            r8.f5904d = r0
            int r0 = r0.f5850b
            r8.f5905e = r0
        L4a:
            long r0 = r4.f5878c
            long r2 = r8.f5907g
            long r0 = r0 - r2
            long r6 = java.lang.Math.min(r10, r0)
            l9.l r2 = r8.f5903c
            long r3 = r8.f5907g
            r5 = r9
            r2.m3605S(r3, r5, r6)
            long r9 = r8.f5907g
            long r9 = r9 + r6
            r8.f5907g = r9
            return r6
        L61:
            java.lang.String r9 = "closed"
            p099j1.C1929i.m3030l(r9)
            goto L26
        L67:
            java.lang.String r9 = "byteCount < 0: "
            java.lang.String r9 = ai.onnxruntime.AbstractC0074a.m157h(r10, r9)
            p130l9.C2237i.m3597d(r9)
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: p130l9.C2255y.read(l9.l, long):long");
    }

    @Override // p130l9.InterfaceC2234g0
    public final C2240j0 timeout() {
        return this.f5902b.timeout();
    }
}
