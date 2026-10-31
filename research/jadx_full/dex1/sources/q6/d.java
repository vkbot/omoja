package q6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class d extends o.b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(StringBuilder sb, int i9) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        c(sb, i9, length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(StringBuilder sb, int i9, int i10) {
        for (int i11 = 0; i11 < 4; i11++) {
            int iH = a5.h.h((i11 * 10) + i9, 10, (f6.a) ((a5.h) this.c).c);
            if (iH / 100 == 0) {
                sb.append('0');
            }
            if (iH / 10 == 0) {
                sb.append('0');
            }
            sb.append(iH);
        }
        int i12 = 0;
        for (int i13 = 0; i13 < 13; i13++) {
            int iCharAt = sb.charAt(i13 + i10) - '0';
            if ((i13 & 1) == 0) {
                iCharAt *= 3;
            }
            i12 += iCharAt;
        }
        int i14 = 10 - (i12 % 10);
        sb.append(i14 != 10 ? i14 : 0);
    }
}
