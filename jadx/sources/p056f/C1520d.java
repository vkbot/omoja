package p056f;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import p099j1.C1929i;

/* JADX INFO: renamed from: f.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1520d extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1521e f3732b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1520d(C1521e c1521e, int i10) {
        super(i10);
        this.f3732b = c1521e;
    }

    @Override // java.io.ByteArrayOutputStream
    public final String toString() {
        int i10 = ((ByteArrayOutputStream) this).count;
        if (i10 > 0) {
            int i11 = i10 - 1;
            if (((ByteArrayOutputStream) this).buf[i11] == 13) {
                i10 = i11;
            }
        }
        try {
            return new String(((ByteArrayOutputStream) this).buf, 0, i10, this.f3732b.f3734c.name());
        } catch (UnsupportedEncodingException e) {
            C1929i.m3023e(e);
            return null;
        }
    }
}
