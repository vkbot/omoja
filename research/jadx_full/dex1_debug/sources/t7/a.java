package t7;

import com.google.protobuf.k;
import com.google.protobuf.n;
import com.google.protobuf.x0;
import j1.i;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.logging.Logger;
import n7.d0;
import y5.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends InputStream implements d0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public g f5415b;
    public final x0 c;
    public ByteArrayInputStream d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(g gVar, x0 x0Var) {
        this.f5415b = gVar;
        this.c = x0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final int available() {
        g gVar = this.f5415b;
        if (gVar != null) {
            return gVar.a(null);
        }
        ByteArrayInputStream byteArrayInputStream = this.d;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.available();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) {
        g gVar = this.f5415b;
        if (gVar != null) {
            int iA = gVar.a(null);
            if (iA == 0) {
                this.f5415b = null;
                this.d = null;
                return -1;
            }
            if (i10 >= iA) {
                Logger logger = n.f1534b;
                k kVar = new k(bArr, i9, iA);
                this.f5415b.c(kVar);
                if (kVar.B() != 0) {
                    i.l("Did not write as much data as expected.");
                    return 0;
                }
                this.f5415b = null;
                this.d = null;
                return iA;
            }
            this.d = new ByteArrayInputStream(this.f5415b.b());
            this.f5415b = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.d;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read(bArr, i9, i10);
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.f5415b != null) {
            this.d = new ByteArrayInputStream(this.f5415b.b());
            this.f5415b = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.d;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read();
        }
        return -1;
    }
}
