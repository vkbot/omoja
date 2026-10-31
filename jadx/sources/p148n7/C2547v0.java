package p148n7;

import com.google.protobuf.AbstractC1178q;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.logging.Logger;
import p091i4.AbstractC1744b;
import p113k4.C2044c;
import p113k4.C2046e;
import p142n0.C2467b;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.v0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2547v0 {

    /* JADX INFO: renamed from: c */
    public static final Logger f7037c = Logger.getLogger(C2547v0.class.getName());

    /* JADX INFO: renamed from: d */
    public static final C2512h f7038d = new C2512h(8);

    /* JADX INFO: renamed from: e */
    public static final C2044c f7039e;

    /* JADX INFO: renamed from: a */
    public Object[] f7040a;

    /* JADX INFO: renamed from: b */
    public int f7041b;

    static {
        C2044c c2044c = C2046e.f5600d;
        if (c2044c.f5603b != null) {
            c2044c = new C2044c(c2044c.f5602a, (Character) null);
        }
        f7039e = c2044c;
    }

    /* JADX INFO: renamed from: a */
    public final void m3987a(AbstractC2541s0 abstractC2541s0) {
        if (this.f7041b == 0) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = this.f7041b;
            if (i10 >= i12) {
                Arrays.fill(this.f7040a, i11 * 2, i12 * 2, (Object) null);
                this.f7041b = i11;
                return;
            }
            int i13 = i10 * 2;
            if (!Arrays.equals(abstractC2541s0.f7022b, (byte[]) this.f7040a[i13])) {
                Object[] objArr = this.f7040a;
                int i14 = i11 * 2;
                objArr[i14] = (byte[]) objArr[i13];
                Object obj = objArr[i13 + 1];
                if (objArr instanceof byte[][]) {
                    m3988b(objArr.length);
                }
                this.f7040a[i14 + 1] = obj;
                i11++;
            }
            i10++;
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m3988b(int i10) {
        Object[] objArr = new Object[i10];
        int i11 = this.f7041b;
        if (i11 != 0) {
            System.arraycopy(this.f7040a, 0, objArr, 0, i11 * 2);
        }
        this.f7040a = objArr;
    }

    /* JADX INFO: renamed from: c */
    public final Object m3989c(AbstractC2541s0 abstractC2541s0) {
        for (int i10 = this.f7041b - 1; i10 >= 0; i10--) {
            int i11 = i10 * 2;
            if (Arrays.equals(abstractC2541s0.f7022b, (byte[]) this.f7040a[i11])) {
                Object obj = this.f7040a[i11 + 1];
                if (obj instanceof byte[]) {
                    return abstractC2541s0.mo3967a((byte[]) obj);
                }
                obj.getClass();
                C2467b.m3822a();
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public final void m3990d(C2547v0 c2547v0) {
        int i10 = c2547v0.f7041b;
        if (i10 == 0) {
            return;
        }
        Object[] objArr = this.f7040a;
        int length = objArr != null ? objArr.length : 0;
        int i11 = this.f7041b;
        int i12 = length - (i11 * 2);
        if (i11 == 0 || i12 < i10 * 2) {
            m3988b((i10 * 2) + (i11 * 2));
        }
        System.arraycopy(c2547v0.f7040a, 0, this.f7040a, this.f7041b * 2, c2547v0.f7041b * 2);
        this.f7041b += c2547v0.f7041b;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0019  */
    /* JADX INFO: renamed from: e */
    public final void m3991e(AbstractC2541s0 abstractC2541s0, Object obj) {
        AbstractC2587b.m4042i(abstractC2541s0, "key");
        AbstractC2587b.m4042i(obj, "value");
        int i10 = this.f7041b;
        int i11 = i10 * 2;
        if (i11 == 0) {
            m3988b(Math.max(i10 * 4, 8));
        } else {
            Object[] objArr = this.f7040a;
            if (i11 == (objArr != null ? objArr.length : 0)) {
                m3988b(Math.max(i10 * 4, 8));
            }
        }
        int i12 = this.f7041b;
        this.f7040a[i12 * 2] = abstractC2541s0.f7022b;
        this.f7040a[(i12 * 2) + 1] = abstractC2541s0.mo3968b(obj);
        this.f7041b++;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Metadata(");
        for (int i10 = 0; i10 < this.f7041b; i10++) {
            if (i10 != 0) {
                sb.append(',');
            }
            int i11 = i10 * 2;
            byte[] bArr = (byte[]) this.f7040a[i11];
            Charset charset = AbstractC1744b.f4558a;
            String str = new String(bArr, charset);
            sb.append(str);
            sb.append('=');
            boolean zEndsWith = str.endsWith("-bin");
            Object[] objArr = this.f7040a;
            if (zEndsWith) {
                Object obj = objArr[i11 + 1];
                if (!(obj instanceof byte[])) {
                    AbstractC1178q.m2083q(obj);
                    throw null;
                }
                sb.append(f7039e.m3145c((byte[]) obj));
            } else {
                Object obj2 = objArr[i11 + 1];
                if (!(obj2 instanceof byte[])) {
                    AbstractC1178q.m2083q(obj2);
                    throw null;
                }
                sb.append(new String((byte[]) obj2, charset));
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
