package p148n7;

import java.nio.charset.Charset;
import java.util.BitSet;
import p113k4.C2044c;
import p157o7.C2722u2;

/* JADX INFO: renamed from: n7.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2495b0 {

    /* JADX INFO: renamed from: a */
    public static final Charset f6883a = Charset.forName("US-ASCII");

    /* JADX INFO: renamed from: b */
    public static final C2044c f6884b = C2547v0.f7039e;

    /* JADX INFO: renamed from: a */
    public static C2543t0 m3882a(String str, C2722u2 c2722u2) {
        boolean z9 = false;
        if (!str.isEmpty() && str.charAt(0) == ':') {
            z9 = true;
        }
        BitSet bitSet = AbstractC2541s0.f7020d;
        return new C2543t0(str, z9, c2722u2);
    }
}
