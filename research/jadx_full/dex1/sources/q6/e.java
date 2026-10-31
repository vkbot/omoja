package q6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class e extends d {
    public abstract void d(StringBuilder sb, int i9);

    public abstract int e(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(StringBuilder sb, int i9, int i10) {
        int iH = a5.h.h(i9, i10, (f6.a) ((a5.h) this.c).c);
        d(sb, iH);
        int iE = e(iH);
        int i11 = 100000;
        for (int i12 = 0; i12 < 5; i12++) {
            if (iE / i11 == 0) {
                sb.append('0');
            }
            i11 /= 10;
        }
        sb.append(iE);
    }
}
