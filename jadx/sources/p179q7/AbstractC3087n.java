package p179q7;

import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* JADX INFO: renamed from: q7.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3087n {

    /* JADX INFO: renamed from: a */
    public static final String[] f8771a = new String[0];

    /* JADX INFO: renamed from: b */
    public static final Charset f8772b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a */
    public static Object[] m4922a(Object[] objArr, Object[] objArr2) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            for (Object obj2 : objArr2) {
                if (obj.equals(obj2)) {
                    arrayList.add(obj2);
                    break;
                }
            }
        }
        return arrayList.toArray((Object[]) Array.newInstance((Class<?>) String.class, arrayList.size()));
    }
}
