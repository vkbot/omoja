package p157o7;

import java.io.IOException;
import java.io.InputStream;
import p172q.C3022l;
import p172q.InterfaceC3023m;

/* JADX INFO: renamed from: o7.o2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2686o2 implements InterfaceC3023m {

    /* JADX INFO: renamed from: b */
    public InputStream f7653b;

    public C2686o2(InputStream inputStream) {
        this.f7653b = inputStream;
    }

    /* JADX INFO: renamed from: a */
    public InputStream m4194a() {
        InputStream inputStream = this.f7653b;
        this.f7653b = null;
        return inputStream;
    }

    @Override // p172q.InterfaceC3023m
    /* JADX INFO: renamed from: c */
    public int mo4195c() {
        return (mo4196e() << 8) | mo4196e();
    }

    @Override // p172q.InterfaceC3023m
    /* JADX INFO: renamed from: e */
    public short mo4196e() throws IOException {
        int i10 = this.f7653b.read();
        if (i10 != -1) {
            return (short) i10;
        }
        throw new C3022l();
    }

    @Override // p172q.InterfaceC3023m
    public int read(byte[] bArr, int i10) throws C3022l {
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10 && (i12 = this.f7653b.read(bArr, i11, i10 - i11)) != -1) {
            i11 += i12;
        }
        if (i11 == 0 && i12 == -1) {
            throw new C3022l();
        }
        return i11;
    }

    @Override // p172q.InterfaceC3023m
    public long skip(long j10) throws IOException {
        InputStream inputStream = this.f7653b;
        if (j10 < 0) {
            return 0L;
        }
        long j11 = j10;
        while (j11 > 0) {
            long jSkip = inputStream.skip(j11);
            if (jSkip <= 0) {
                if (inputStream.read() == -1) {
                    break;
                }
                jSkip = 1;
            }
            j11 -= jSkip;
        }
        return j10 - j11;
    }
}
