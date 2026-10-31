package r7;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.UByte;
import l9.a0;
import l9.g0;
import l9.j0;
import l9.l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements g0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a0 f5017b;
    public int c;
    public byte d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5018f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public short f5019g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(a0 a0Var) {
        this.f5017b = a0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long read(l lVar, long j9) throws IOException {
        int i9;
        int i10;
        do {
            int i11 = this.f5018f;
            a0 a0Var = this.f5017b;
            if (i11 == 0) {
                a0Var.skip(this.f5019g);
                this.f5019g = (short) 0;
                if ((this.d & 4) == 0) {
                    i9 = this.e;
                    int iA = j.a(a0Var);
                    this.f5018f = iA;
                    this.c = iA;
                    byte b9 = (byte) (a0Var.readByte() & UByte.MAX_VALUE);
                    this.d = (byte) (a0Var.readByte() & UByte.MAX_VALUE);
                    Logger logger = j.f5025a;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(g.a(true, this.e, this.c, b9, this.d));
                    }
                    i10 = a0Var.readInt() & Integer.MAX_VALUE;
                    this.e = i10;
                    if (b9 != 9) {
                        j.c("%s != TYPE_CONTINUATION", Byte.valueOf(b9));
                        throw null;
                    }
                }
            } else {
                long j10 = a0Var.read(lVar, Math.min(j9, i11));
                if (j10 != -1) {
                    this.f5018f -= (int) j10;
                    return j10;
                }
            }
            return -1L;
        } while (i10 == i9);
        j.c("TYPE_CONTINUATION streamId changed", new Object[0]);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final j0 timeout() {
        return this.f5017b.b.timeout();
    }

    public final void close() {
    }
}
