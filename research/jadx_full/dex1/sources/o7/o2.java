package o7;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o2 implements q.m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InputStream f4360b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o2(InputStream inputStream) {
        this.f4360b = inputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream a() {
        InputStream inputStream = this.f4360b;
        this.f4360b = null;
        return inputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.m
    public int c() {
        return (e() << 8) | e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.m
    public short e() throws IOException {
        int i9 = this.f4360b.read();
        if (i9 != -1) {
            return (short) i9;
        }
        throw new q.l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.m
    public int read(byte[] bArr, int i9) throws q.l {
        int i10 = 0;
        int i11 = 0;
        while (i10 < i9 && (i11 = this.f4360b.read(bArr, i10, i9 - i10)) != -1) {
            i10 += i11;
        }
        if (i10 == 0 && i11 == -1) {
            throw new q.l();
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.m
    public long skip(long j9) throws IOException {
        InputStream inputStream = this.f4360b;
        if (j9 < 0) {
            return 0L;
        }
        long j10 = j9;
        while (j10 > 0) {
            long jSkip = inputStream.skip(j10);
            if (jSkip <= 0) {
                if (inputStream.read() == -1) {
                    break;
                }
                jSkip = 1;
            }
            j10 -= jSkip;
        }
        return j9 - j10;
    }
}
