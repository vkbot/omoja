package n7;

import java.nio.charset.Charset;
import java.util.BitSet;
import o7.u2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f3888a = Charset.forName("US-ASCII");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k4.c f3889b = v0.e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static t0 a(String str, u2 u2Var) {
        boolean z8 = false;
        if (!str.isEmpty() && str.charAt(0) == ':') {
            z8 = true;
        }
        BitSet bitSet = s0.d;
        return new t0(str, z8, u2Var);
    }
}
