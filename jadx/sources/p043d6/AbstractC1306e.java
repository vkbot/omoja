package p043d6;

import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.regex.Pattern;
import p260z5.EnumC3745a;

/* JADX INFO: renamed from: d6.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1306e {

    /* JADX INFO: renamed from: a */
    public static final Pattern f3113a = Pattern.compile(",");

    /* JADX INFO: renamed from: b */
    public static final HashMap f3114b;

    static {
        EnumSet enumSetOf = EnumSet.of(EnumC3745a.f11163m);
        EnumSet enumSetOf2 = EnumSet.of(EnumC3745a.f11157g);
        EnumSet enumSetOf3 = EnumSet.of(EnumC3745a.f11152b);
        EnumSet enumSetOf4 = EnumSet.of(EnumC3745a.f11162l);
        EnumSet enumSetOf5 = EnumSet.of(EnumC3745a.f11166p, EnumC3745a.f11167q, EnumC3745a.f11159i, EnumC3745a.f11158h, EnumC3745a.f11164n, EnumC3745a.f11165o);
        EnumSet enumSetOf6 = EnumSet.of(EnumC3745a.f11154d, EnumC3745a.f11155e, EnumC3745a.f11156f, EnumC3745a.f11160j, EnumC3745a.f11153c);
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) enumSetOf5);
        enumSetCopyOf.addAll(enumSetOf6);
        HashMap map = new HashMap();
        f3114b = map;
        map.put("ONE_D_MODE", enumSetCopyOf);
        map.put("PRODUCT_MODE", enumSetOf5);
        map.put("QR_CODE_MODE", enumSetOf);
        map.put("DATA_MATRIX_MODE", enumSetOf2);
        map.put("AZTEC_MODE", enumSetOf3);
        map.put("PDF417_MODE", enumSetOf4);
    }
}
