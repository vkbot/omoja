package r7;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.UByte;
import l9.l;
import l9.o;
import l9.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z f5023b;
    public final l c;
    public final d d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5024f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(z zVar) {
        this.f5023b = zVar;
        l lVar = new l();
        this.c = lVar;
        this.d = new d(lVar);
        this.e = 16384;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9, int i10, byte b9, byte b10) {
        Logger logger = j.f5025a;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(g.a(false, i9, i10, b9, b10));
        }
        int i11 = this.e;
        if (i10 > i11) {
            Locale locale = Locale.US;
            j1.i.k(ai.onnxruntime.a.g(i11, "FRAME_SIZE_ERROR length > ", ": ", i10));
            return;
        }
        if ((Integer.MIN_VALUE & i9) != 0) {
            Locale locale2 = Locale.US;
            j1.i.k(ai.onnxruntime.a.e(i9, "reserved bit set: "));
            return;
        }
        z zVar = this.f5023b;
        zVar.writeByte((i10 >>> 16) & 255);
        zVar.writeByte((i10 >>> 8) & 255);
        zVar.writeByte(i10 & 255);
        zVar.writeByte(b9 & UByte.MAX_VALUE);
        zVar.writeByte(b10 & UByte.MAX_VALUE);
        zVar.writeInt(i9 & Integer.MAX_VALUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:19:0x0058  */
    public final void c(boolean z8, int i9, List list) throws IOException {
        int length;
        int length2;
        if (this.f5024f) {
            n0.b.A("closed");
            return;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) list.get(i10);
            o oVarJ = bVar.f5006a.j();
            o oVar = bVar.f5007b;
            Integer num = (Integer) e.c.get(oVarJ);
            if (num != null) {
                int iIntValue = num.intValue();
                length2 = iIntValue + 1;
                if (length2 < 2 || length2 > 7) {
                    length = length2;
                    length2 = -1;
                } else {
                    b[] bVarArr = e.f5016b;
                    if (bVarArr[iIntValue].f5007b.equals(oVar)) {
                        length = length2;
                    } else if (bVarArr[length2].f5007b.equals(oVar)) {
                        length2 = iIntValue + 2;
                        length = length2;
                    } else {
                        length = length2;
                        length2 = -1;
                    }
                }
            } else {
                length = -1;
                length2 = -1;
            }
            d dVar = this.d;
            if (length2 == -1) {
                int i11 = dVar.d + 1;
                while (true) {
                    b[] bVarArr2 = dVar.f5014b;
                    if (i11 >= bVarArr2.length) {
                        break;
                    }
                    if (bVarArr2[i11].f5006a.equals(oVarJ)) {
                        if (dVar.f5014b[i11].f5007b.equals(oVar)) {
                            length2 = (i11 - dVar.d) + e.f5016b.length;
                            break;
                        } else if (length == -1) {
                            length = (i11 - dVar.d) + e.f5016b.length;
                        }
                    }
                    i11++;
                }
            }
            if (length2 != -1) {
                dVar.c(length2, 127, 128);
            } else if (length == -1) {
                dVar.f5013a.m0(64);
                dVar.b(oVarJ);
                dVar.b(oVar);
                dVar.a(bVar);
            } else {
                o oVar2 = e.f5015a;
                oVarJ.getClass();
                oVar2.getClass();
                if (!oVarJ.i(oVar2, oVar2.c()) || b.f5005h.equals(oVarJ)) {
                    dVar.c(length, 63, 64);
                    dVar.b(oVar);
                    dVar.a(bVar);
                } else {
                    dVar.c(length, 15, 0);
                    dVar.b(oVar);
                }
            }
        }
        l lVar = this.c;
        long j9 = lVar.c;
        int iMin = (int) Math.min(this.e, j9);
        long j10 = iMin;
        byte b9 = j9 == j10 ? (byte) 4 : (byte) 0;
        if (z8) {
            b9 = (byte) (b9 | 1);
        }
        b(i9, iMin, (byte) 1, b9);
        z zVar = this.f5023b;
        zVar.write(lVar, j10);
        if (j9 > j10) {
            long j11 = j9 - j10;
            while (j11 > 0) {
                int iMin2 = (int) Math.min(this.e, j11);
                long j12 = iMin2;
                j11 -= j12;
                b(i9, iMin2, (byte) 9, j11 == 0 ? (byte) 4 : (byte) 0);
                zVar.write(lVar, j12);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f5024f = true;
        this.f5023b.close();
    }
}
