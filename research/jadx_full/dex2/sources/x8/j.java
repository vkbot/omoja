package x8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class j {
    public static final i a = new i();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b a(int i, int i2) {
        if (i == -2) {
            if (i2 != 1) {
                return new m(1, i2);
            }
            f.a.getClass();
            return new b(e.b);
        }
        if (i == -1) {
            if (i2 == 1) {
                return new m(1, 2);
            }
            j1.i.k("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            return null;
        }
        if (i == 0) {
            return i2 == 1 ? new b(0) : new m(1, i2);
        }
        if (i != Integer.MAX_VALUE) {
            return i2 == 1 ? new b(i) : new m(i, i2);
        }
        return new b(Integer.MAX_VALUE);
    }
}
