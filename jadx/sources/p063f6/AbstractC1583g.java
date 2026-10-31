package p063f6;

import java.nio.charset.Charset;

/* JADX INFO: renamed from: f6.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1583g {

    /* JADX INFO: renamed from: a */
    public static final String f3930a;

    /* JADX INFO: renamed from: b */
    public static final boolean f3931b;

    static {
        String strName = Charset.defaultCharset().name();
        f3930a = strName;
        f3931b = "SJIS".equalsIgnoreCase(strName) || "EUC_JP".equalsIgnoreCase(strName);
    }
}
