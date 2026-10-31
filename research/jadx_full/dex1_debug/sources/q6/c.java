package q6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends e {
    public final String d;
    public final String e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(f6.a aVar, String str, String str2) {
        super(aVar);
        this.d = str2;
        this.e = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o.b
    public final String a() throws z5.i {
        if (((f6.a) this.f4002b).c != 84) {
            throw z5.i.d;
        }
        StringBuilder sb = new StringBuilder();
        b(sb, 8);
        f(sb, 48, 20);
        int iH = a5.h.h(68, 16, (f6.a) ((a5.h) this.c).c);
        if (iH != 38400) {
            sb.append('(');
            sb.append(this.d);
            sb.append(')');
            int i9 = iH % 32;
            int i10 = iH / 32;
            int i11 = (i10 % 12) + 1;
            int i12 = i10 / 12;
            if (i12 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i12);
            if (i11 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i11);
            if (i9 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i9);
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q6.e
    public final void d(StringBuilder sb, int i9) {
        sb.append('(');
        sb.append(this.e);
        sb.append(i9 / 100000);
        sb.append(')');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q6.e
    public final int e(int i9) {
        return i9 % 100000;
    }
}
