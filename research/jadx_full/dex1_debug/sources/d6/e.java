package d6;

import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f1782a = Pattern.compile(",");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f1783b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        EnumSet enumSetOf = EnumSet.of(z5.a.f6307m);
        EnumSet enumSetOf2 = EnumSet.of(z5.a.f6301g);
        EnumSet enumSetOf3 = EnumSet.of(z5.a.f6299b);
        EnumSet enumSetOf4 = EnumSet.of(z5.a.f6306l);
        EnumSet enumSetOf5 = EnumSet.of(z5.a.f6310p, z5.a.f6311q, z5.a.f6303i, z5.a.f6302h, z5.a.f6308n, z5.a.f6309o);
        EnumSet enumSetOf6 = EnumSet.of(z5.a.d, z5.a.e, z5.a.f6300f, z5.a.f6304j, z5.a.c);
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) enumSetOf5);
        enumSetCopyOf.addAll(enumSetOf6);
        HashMap map = new HashMap();
        f1783b = map;
        map.put("ONE_D_MODE", enumSetCopyOf);
        map.put("PRODUCT_MODE", enumSetOf5);
        map.put("QR_CODE_MODE", enumSetOf);
        map.put("DATA_MATRIX_MODE", enumSetOf2);
        map.put("AZTEC_MODE", enumSetOf3);
        map.put("PDF417_MODE", enumSetOf4);
    }
}
