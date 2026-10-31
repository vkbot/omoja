package p203t7;

import com.google.protobuf.AbstractC1169n;
import com.google.protobuf.C1160k;
import com.google.protobuf.InterfaceC1200x0;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.logging.Logger;
import p099j1.C1929i;
import p148n7.InterfaceC2501d0;
import p250y5.C3652g;

/* JADX INFO: renamed from: t7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3265a extends InputStream implements InterfaceC2501d0 {

    /* JADX INFO: renamed from: b */
    public C3652g f9555b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC1200x0 f9556c;

    /* JADX INFO: renamed from: d */
    public ByteArrayInputStream f9557d;

    public C3265a(C3652g c3652g, InterfaceC1200x0 interfaceC1200x0) {
        this.f9555b = c3652g;
        this.f9556c = interfaceC1200x0;
    }

    @Override // java.io.InputStream
    public final int available() {
        C3652g c3652g = this.f9555b;
        if (c3652g != null) {
            return c3652g.mo1893a(null);
        }
        ByteArrayInputStream byteArrayInputStream = this.f9557d;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.available();
        }
        return 0;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        C3652g c3652g = this.f9555b;
        if (c3652g != null) {
            int iMo1893a = c3652g.mo1893a(null);
            if (iMo1893a == 0) {
                this.f9555b = null;
                this.f9557d = null;
                return -1;
            }
            if (i11 >= iMo1893a) {
                Logger logger = AbstractC1169n.f2730b;
                C1160k c1160k = new C1160k(bArr, i10, iMo1893a);
                this.f9555b.mo1895c(c1160k);
                if (c1160k.m2011B() != 0) {
                    C1929i.m3030l("Did not write as much data as expected.");
                    return 0;
                }
                this.f9555b = null;
                this.f9557d = null;
                return iMo1893a;
            }
            this.f9557d = new ByteArrayInputStream(this.f9555b.m1894b());
            this.f9555b = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.f9557d;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read(bArr, i10, i11);
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.f9555b != null) {
            this.f9557d = new ByteArrayInputStream(this.f9555b.m1894b());
            this.f9555b = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.f9557d;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read();
        }
        return -1;
    }
}
