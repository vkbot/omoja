package n7;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v0 {
    public static final Logger c = Logger.getLogger(v0.class.getName());
    public static final h d = new h(8);
    public static final k4.c e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f3977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3978b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        k4.c cVar = k4.e.d;
        if (cVar.f3199b != null) {
            cVar = new k4.c(cVar.f3198a, (Character) null);
        }
        e = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(s0 s0Var) {
        if (this.f3978b == 0) {
            return;
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = this.f3978b;
            if (i9 >= i11) {
                Arrays.fill(this.f3977a, i10 * 2, i11 * 2, (Object) null);
                this.f3978b = i10;
                return;
            }
            int i12 = i9 * 2;
            if (!Arrays.equals(s0Var.f3971b, (byte[]) this.f3977a[i12])) {
                Object[] objArr = this.f3977a;
                int i13 = i10 * 2;
                objArr[i13] = (byte[]) objArr[i12];
                Object obj = objArr[i12 + 1];
                if (objArr instanceof byte[][]) {
                    b(objArr.length);
                }
                this.f3977a[i13 + 1] = obj;
                i10++;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9) {
        Object[] objArr = new Object[i9];
        int i10 = this.f3978b;
        if (i10 != 0) {
            System.arraycopy(this.f3977a, 0, objArr, 0, i10 * 2);
        }
        this.f3977a = objArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object c(s0 s0Var) {
        for (int i9 = this.f3978b - 1; i9 >= 0; i9--) {
            int i10 = i9 * 2;
            if (Arrays.equals(s0Var.f3971b, (byte[]) this.f3977a[i10])) {
                Object obj = this.f3977a[i10 + 1];
                if (obj instanceof byte[]) {
                    return s0Var.a((byte[]) obj);
                }
                obj.getClass();
                n0.b.a();
                return null;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(v0 v0Var) {
        int i9 = v0Var.f3978b;
        if (i9 == 0) {
            return;
        }
        Object[] objArr = this.f3977a;
        int length = objArr != null ? objArr.length : 0;
        int i10 = this.f3978b;
        int i11 = length - (i10 * 2);
        if (i10 == 0 || i11 < i9 * 2) {
            b((i9 * 2) + (i10 * 2));
        }
        System.arraycopy(v0Var.f3977a, 0, this.f3977a, this.f3978b * 2, v0Var.f3978b * 2);
        this.f3978b += v0Var.f3978b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x0019  */
    public final void e(s0 s0Var, Object obj) {
        o4.b.i(s0Var, "key");
        o4.b.i(obj, "value");
        int i9 = this.f3978b;
        int i10 = i9 * 2;
        if (i10 == 0) {
            b(Math.max(i9 * 4, 8));
        } else {
            Object[] objArr = this.f3977a;
            if (i10 == (objArr != null ? objArr.length : 0)) {
                b(Math.max(i9 * 4, 8));
            }
        }
        int i11 = this.f3978b;
        this.f3977a[i11 * 2] = s0Var.f3971b;
        this.f3977a[(i11 * 2) + 1] = s0Var.b(obj);
        this.f3978b++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("Metadata(");
        for (int i9 = 0; i9 < this.f3978b; i9++) {
            if (i9 != 0) {
                sb.append(',');
            }
            int i10 = i9 * 2;
            byte[] bArr = (byte[]) this.f3977a[i10];
            Charset charset = i4.b.f2657a;
            String str = new String(bArr, charset);
            sb.append(str);
            sb.append('=');
            boolean zEndsWith = str.endsWith("-bin");
            Object[] objArr = this.f3977a;
            if (zEndsWith) {
                Object obj = objArr[i10 + 1];
                if (!(obj instanceof byte[])) {
                    com.google.protobuf.q.q(obj);
                    throw null;
                }
                sb.append(e.c((byte[]) obj));
            } else {
                Object obj2 = objArr[i10 + 1];
                if (!(obj2 instanceof byte[])) {
                    com.google.protobuf.q.q(obj2);
                    throw null;
                }
                sb.append(new String((byte[]) obj2, charset));
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
