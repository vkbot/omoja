package p157o7;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
import java.util.ArrayDeque;
import java.util.Iterator;
import p099j1.C1929i;

/* JADX INFO: renamed from: o7.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2606b0 extends AbstractC2611c {

    /* JADX INFO: renamed from: f */
    public static final C2722u2 f7280f = new C2722u2(4);

    /* JADX INFO: renamed from: g */
    public static final C2722u2 f7281g = new C2722u2(5);

    /* JADX INFO: renamed from: h */
    public static final C2722u2 f7282h = new C2722u2(6);

    /* JADX INFO: renamed from: i */
    public static final C2722u2 f7283i = new C2722u2(7);

    /* JADX INFO: renamed from: j */
    public static final C2722u2 f7284j = new C2722u2(8);

    /* JADX INFO: renamed from: b */
    public final ArrayDeque f7285b;

    /* JADX INFO: renamed from: c */
    public ArrayDeque f7286c;

    /* JADX INFO: renamed from: d */
    public int f7287d;

    /* JADX INFO: renamed from: e */
    public boolean f7288e;

    public C2606b0() {
        new ArrayDeque(2);
        this.f7285b = new ArrayDeque();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [o7.c] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [o7.c] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [o7.b0] */
    /* JADX WARN: Type inference failed for: r1v3, types: [o7.b0] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final p157o7.AbstractC2611c mo4102S(int r8) throws java.io.IOException {
        /*
            r7 = this;
            if (r8 > 0) goto L5
            o7.j3 r8 = p157o7.AbstractC2663k3.f7593a
            return r8
        L5:
            r7.m4129b(r8)
            int r0 = r7.f7287d
            int r0 = r0 - r8
            r7.f7287d = r0
            r0 = 0
            r1 = r0
        Lf:
            java.util.ArrayDeque r2 = r7.f7285b
            java.lang.Object r3 = r2.peek()
            o7.c r3 = (p157o7.AbstractC2611c) r3
            int r4 = r3.mo4108f0()
            if (r4 <= r8) goto L23
            o7.c r8 = r3.mo4102S(r8)
            r3 = 0
            goto L39
        L23:
            boolean r5 = r7.f7288e
            if (r5 == 0) goto L2f
            o7.c r3 = r3.mo4102S(r4)
            r7.m4112j0()
            goto L35
        L2f:
            java.lang.Object r3 = r2.poll()
            o7.c r3 = (p157o7.AbstractC2611c) r3
        L35:
            int r8 = r8 - r4
            r6 = r3
            r3 = r8
            r8 = r6
        L39:
            if (r0 != 0) goto L3d
            r0 = r8
            goto L5a
        L3d:
            if (r1 != 0) goto L57
            o7.b0 r1 = new o7.b0
            r4 = 2
            if (r3 != 0) goto L45
            goto L50
        L45:
            int r2 = r2.size()
            int r2 = r2 + r4
            r4 = 16
            int r4 = java.lang.Math.min(r2, r4)
        L50:
            r1.<init>(r4)
            r1.m4111i0(r0)
            r0 = r1
        L57:
            r1.m4111i0(r8)
        L5a:
            if (r3 > 0) goto L5d
            return r0
        L5d:
            r8 = r3
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: p157o7.C2606b0.mo4102S(int):o7.c");
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: V */
    public final void mo4103V(OutputStream outputStream, int i10) throws IOException {
        m4113k0(f7284j, i10, outputStream, 0);
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: c */
    public final void mo4104c() throws IOException {
        ArrayDeque arrayDeque = this.f7286c;
        ArrayDeque arrayDeque2 = this.f7285b;
        if (arrayDeque == null) {
            this.f7286c = new ArrayDeque(Math.min(arrayDeque2.size(), 16));
        }
        while (!this.f7286c.isEmpty()) {
            ((AbstractC2611c) this.f7286c.remove()).close();
        }
        this.f7288e = true;
        AbstractC2611c abstractC2611c = (AbstractC2611c) arrayDeque2.peek();
        if (abstractC2611c != null) {
            abstractC2611c.mo4104c();
        }
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: c0 */
    public final void mo4105c0(ByteBuffer byteBuffer) {
        m4114l0(f7283i, byteBuffer.remaining(), byteBuffer, 0);
    }

    @Override // p157o7.AbstractC2611c, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        while (true) {
            ArrayDeque arrayDeque = this.f7285b;
            if (arrayDeque.isEmpty()) {
                break;
            } else {
                ((AbstractC2611c) arrayDeque.remove()).close();
            }
        }
        if (this.f7286c != null) {
            while (!this.f7286c.isEmpty()) {
                ((AbstractC2611c) this.f7286c.remove()).close();
            }
        }
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: d0 */
    public final void mo4106d0(byte[] bArr, int i10, int i11) {
        m4114l0(f7282h, i11, bArr, i10);
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: e0 */
    public final int mo4107e0() {
        return m4114l0(f7280f, 1, null, 0);
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: f0 */
    public final int mo4108f0() {
        return this.f7287d;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: g0 */
    public final void mo4109g0() {
        if (!this.f7288e) {
            throw new InvalidMarkException();
        }
        ArrayDeque arrayDeque = this.f7285b;
        AbstractC2611c abstractC2611c = (AbstractC2611c) arrayDeque.peek();
        if (abstractC2611c != null) {
            int iMo4108f0 = abstractC2611c.mo4108f0();
            abstractC2611c.mo4109g0();
            this.f7287d = (abstractC2611c.mo4108f0() - iMo4108f0) + this.f7287d;
        }
        while (true) {
            AbstractC2611c abstractC2611c2 = (AbstractC2611c) this.f7286c.pollLast();
            if (abstractC2611c2 == null) {
                return;
            }
            abstractC2611c2.mo4109g0();
            arrayDeque.addFirst(abstractC2611c2);
            this.f7287d = abstractC2611c2.mo4108f0() + this.f7287d;
        }
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: h0 */
    public final void mo4110h0(int i10) {
        m4114l0(f7281g, i10, null, 0);
    }

    /* JADX INFO: renamed from: i0 */
    public final void m4111i0(AbstractC2611c abstractC2611c) throws IOException {
        boolean z9 = this.f7288e;
        ArrayDeque arrayDeque = this.f7285b;
        boolean z10 = z9 && arrayDeque.isEmpty();
        if (abstractC2611c instanceof C2606b0) {
            C2606b0 c2606b0 = (C2606b0) abstractC2611c;
            ArrayDeque arrayDeque2 = c2606b0.f7285b;
            while (!arrayDeque2.isEmpty()) {
                arrayDeque.add((AbstractC2611c) arrayDeque2.remove());
            }
            this.f7287d += c2606b0.f7287d;
            c2606b0.f7287d = 0;
            c2606b0.close();
        } else {
            arrayDeque.add(abstractC2611c);
            this.f7287d = abstractC2611c.mo4108f0() + this.f7287d;
        }
        if (z10) {
            ((AbstractC2611c) arrayDeque.peek()).mo4104c();
        }
    }

    /* JADX INFO: renamed from: j0 */
    public final void m4112j0() throws IOException {
        boolean z9 = this.f7288e;
        ArrayDeque arrayDeque = this.f7285b;
        if (!z9) {
            ((AbstractC2611c) arrayDeque.remove()).close();
            return;
        }
        this.f7286c.add((AbstractC2611c) arrayDeque.remove());
        AbstractC2611c abstractC2611c = (AbstractC2611c) arrayDeque.peek();
        if (abstractC2611c != null) {
            abstractC2611c.mo4104c();
        }
    }

    /* JADX INFO: renamed from: k0 */
    public final int m4113k0(InterfaceC2600a0 interfaceC2600a0, int i10, Object obj, int i11) throws IOException {
        m4129b(i10);
        ArrayDeque arrayDeque = this.f7285b;
        if (!arrayDeque.isEmpty() && ((AbstractC2611c) arrayDeque.peek()).mo4108f0() == 0) {
            m4112j0();
        }
        while (i10 > 0 && !arrayDeque.isEmpty()) {
            AbstractC2611c abstractC2611c = (AbstractC2611c) arrayDeque.peek();
            int iMin = Math.min(i10, abstractC2611c.mo4108f0());
            i11 = interfaceC2600a0.mo4085l(abstractC2611c, iMin, obj, i11);
            i10 -= iMin;
            this.f7287d -= iMin;
            if (((AbstractC2611c) arrayDeque.peek()).mo4108f0() == 0) {
                m4112j0();
            }
        }
        if (i10 <= 0) {
            return i11;
        }
        C1929i.m3023e("Failed executing read operation");
        return 0;
    }

    /* JADX INFO: renamed from: l0 */
    public final int m4114l0(C2722u2 c2722u2, int i10, Object obj, int i11) {
        try {
            return m4113k0(c2722u2, i10, obj, i11);
        } catch (IOException e) {
            C1929i.m3023e(e);
            return 0;
        }
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: y */
    public final boolean mo4115y() {
        Iterator it = this.f7285b.iterator();
        while (it.hasNext()) {
            if (!((AbstractC2611c) it.next()).mo4115y()) {
                return false;
            }
        }
        return true;
    }

    public C2606b0(int i10) {
        new ArrayDeque(2);
        this.f7285b = new ArrayDeque(i10);
    }
}
