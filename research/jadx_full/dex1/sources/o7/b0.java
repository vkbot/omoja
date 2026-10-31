package o7;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b0 extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final u2 f4136f = new u2(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final u2 f4137g = new u2(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final u2 f4138h = new u2(6);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final u2 f4139i = new u2(7);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final u2 f4140j = new u2(8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f4141b;
    public ArrayDeque c;
    public int d;
    public boolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b0() {
        new ArrayDeque(2);
        this.f4141b = new ArrayDeque();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:16:0x003d */
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
    @Override // o7.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final c S(int i9) throws IOException {
        c cVarS;
        int i10;
        c cVarS2;
        ?? r1;
        ?? r9;
        if (i9 <= 0) {
            return k3.f4325a;
        }
        b(i9);
        this.d -= i9;
        ?? r10 = 0;
        ?? b0Var = 0;
        while (true) {
            ArrayDeque arrayDeque = this.f4141b;
            c cVar = (c) arrayDeque.peek();
            int iF0 = cVar.f0();
            if (iF0 > i9) {
                cVarS2 = cVar.S(i9);
                i10 = 0;
            } else {
                if (this.e) {
                    cVarS = cVar.S(iF0);
                    j0();
                } else {
                    cVarS = (c) arrayDeque.poll();
                }
                c cVar2 = cVarS;
                i10 = i9 - iF0;
                cVarS2 = cVar2;
            }
            if (r10 == 0) {
                r9 = cVarS2;
            } else {
                if (b0Var == 0) {
                    b0Var = new b0(i10 != 0 ? Math.min(arrayDeque.size() + 2, 16) : 2);
                    b0Var.i0(r10);
                    r10 = b0Var;
                }
                b0Var.i0(cVarS2);
                r9 = r10;
                r1 = b0Var;
            }
            if (i10 <= 0) {
                break;
            }
            r1 = b0Var;
            i9 = i10;
            r10 = r9;
            b0Var = r1;
        }
        return r9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void V(OutputStream outputStream, int i9) throws IOException {
        k0(f4140j, i9, outputStream, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void c() throws IOException {
        ArrayDeque arrayDeque = this.c;
        ArrayDeque arrayDeque2 = this.f4141b;
        if (arrayDeque == null) {
            this.c = new ArrayDeque(Math.min(arrayDeque2.size(), 16));
        }
        while (!this.c.isEmpty()) {
            ((c) this.c.remove()).close();
        }
        this.e = true;
        c cVar = (c) arrayDeque2.peek();
        if (cVar != null) {
            cVar.c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void c0(ByteBuffer byteBuffer) {
        l0(f4139i, byteBuffer.remaining(), byteBuffer, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        while (true) {
            ArrayDeque arrayDeque = this.f4141b;
            if (arrayDeque.isEmpty()) {
                break;
            } else {
                ((c) arrayDeque.remove()).close();
            }
        }
        if (this.c != null) {
            while (!this.c.isEmpty()) {
                ((c) this.c.remove()).close();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void d0(byte[] bArr, int i9, int i10) {
        l0(f4138h, i10, bArr, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final int e0() {
        return l0(f4136f, 1, null, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final int f0() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void g0() {
        if (!this.e) {
            throw new InvalidMarkException();
        }
        ArrayDeque arrayDeque = this.f4141b;
        c cVar = (c) arrayDeque.peek();
        if (cVar != null) {
            int iF0 = cVar.f0();
            cVar.g0();
            this.d = (cVar.f0() - iF0) + this.d;
        }
        while (true) {
            c cVar2 = (c) this.c.pollLast();
            if (cVar2 == null) {
                return;
            }
            cVar2.g0();
            arrayDeque.addFirst(cVar2);
            this.d = cVar2.f0() + this.d;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final void h0(int i9) {
        l0(f4137g, i9, null, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i0(c cVar) throws IOException {
        boolean z8 = this.e;
        ArrayDeque arrayDeque = this.f4141b;
        boolean z9 = z8 && arrayDeque.isEmpty();
        if (cVar instanceof b0) {
            b0 b0Var = (b0) cVar;
            ArrayDeque arrayDeque2 = b0Var.f4141b;
            while (!arrayDeque2.isEmpty()) {
                arrayDeque.add((c) arrayDeque2.remove());
            }
            this.d += b0Var.d;
            b0Var.d = 0;
            b0Var.close();
        } else {
            arrayDeque.add(cVar);
            this.d = cVar.f0() + this.d;
        }
        if (z9) {
            ((c) arrayDeque.peek()).c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j0() throws IOException {
        boolean z8 = this.e;
        ArrayDeque arrayDeque = this.f4141b;
        if (!z8) {
            ((c) arrayDeque.remove()).close();
            return;
        }
        this.c.add((c) arrayDeque.remove());
        c cVar = (c) arrayDeque.peek();
        if (cVar != null) {
            cVar.c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int k0(a0 a0Var, int i9, Object obj, int i10) throws IOException {
        b(i9);
        ArrayDeque arrayDeque = this.f4141b;
        if (!arrayDeque.isEmpty() && ((c) arrayDeque.peek()).f0() == 0) {
            j0();
        }
        while (i9 > 0 && !arrayDeque.isEmpty()) {
            c cVar = (c) arrayDeque.peek();
            int iMin = Math.min(i9, cVar.f0());
            i10 = a0Var.l(cVar, iMin, obj, i10);
            i9 -= iMin;
            this.d -= iMin;
            if (((c) arrayDeque.peek()).f0() == 0) {
                j0();
            }
        }
        if (i9 <= 0) {
            return i10;
        }
        j1.i.e("Failed executing read operation");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int l0(u2 u2Var, int i9, Object obj, int i10) {
        try {
            return k0(u2Var, i9, obj, i10);
        } catch (IOException e) {
            j1.i.e(e);
            return 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c
    public final boolean y() {
        Iterator it = this.f4141b.iterator();
        while (it.hasNext()) {
            if (!((c) it.next()).y()) {
                return false;
            }
        }
        return true;
    }

    public b0(int i9) {
        new ArrayDeque(2);
        this.f4141b = new ArrayDeque(i9);
    }
}
