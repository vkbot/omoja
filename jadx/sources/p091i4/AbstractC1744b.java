package p091i4;

import java.nio.charset.Charset;

/* JADX INFO: renamed from: i4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1744b {

    /* JADX INFO: renamed from: a */
    public static final Charset f4558a = Charset.forName("US-ASCII");

    /* JADX INFO: renamed from: b */
    public static final Charset f4559b;

    static {
        Charset.forName("ISO-8859-1");
        f4559b = Charset.forName("UTF-8");
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName("UTF-16");
    }
}
