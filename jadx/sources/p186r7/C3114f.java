package p186r7;

import java.io.EOFException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.UByte;
import p130l9.C2222a0;
import p130l9.C2240j0;
import p130l9.C2242l;
import p130l9.InterfaceC2234g0;

/* JADX INFO: renamed from: r7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3114f implements InterfaceC2234g0 {

    /* JADX INFO: renamed from: b */
    public final C2222a0 f8911b;

    /* JADX INFO: renamed from: c */
    public int f8912c;

    /* JADX INFO: renamed from: d */
    public byte f8913d;

    /* JADX INFO: renamed from: e */
    public int f8914e;

    /* JADX INFO: renamed from: f */
    public int f8915f;

    /* JADX INFO: renamed from: g */
    public short f8916g;

    public C3114f(C2222a0 c2222a0) {
        this.f8911b = c2222a0;
    }

    @Override // p130l9.InterfaceC2234g0
    public final long read(C2242l c2242l, long j10) throws EOFException {
        int i10;
        int i11;
        do {
            int i12 = this.f8915f;
            C2222a0 c2222a0 = this.f8911b;
            if (i12 == 0) {
                c2222a0.skip(this.f8916g);
                this.f8916g = (short) 0;
                if ((this.f8913d & 4) == 0) {
                    i10 = this.f8914e;
                    int iM4967a = C3118j.m4967a(c2222a0);
                    this.f8915f = iM4967a;
                    this.f8912c = iM4967a;
                    byte b10 = (byte) (c2222a0.readByte() & UByte.MAX_VALUE);
                    this.f8913d = (byte) (c2222a0.readByte() & UByte.MAX_VALUE);
                    Logger logger = C3118j.f8928a;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(AbstractC3115g.m4957a(true, this.f8914e, this.f8912c, b10, this.f8913d));
                    }
                    i11 = c2222a0.readInt() & Integer.MAX_VALUE;
                    this.f8914e = i11;
                    if (b10 != 9) {
                        C3118j.m4969c("%s != TYPE_CONTINUATION", Byte.valueOf(b10));
                        throw null;
                    }
                }
            } else {
                long j11 = c2222a0.read(c2242l, Math.min(j10, i12));
                if (j11 != -1) {
                    this.f8915f -= (int) j11;
                    return j11;
                }
            }
            return -1L;
        } while (i11 == i10);
        C3118j.m4969c("TYPE_CONTINUATION streamId changed", new Object[0]);
        throw null;
    }

    @Override // p130l9.InterfaceC2234g0
    public final C2240j0 timeout() {
        return this.f8911b.f5845b.timeout();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
