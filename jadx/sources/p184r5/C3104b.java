package p184r5;

import java.util.Iterator;
import java.util.Set;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: renamed from: r5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3104b {

    /* JADX INFO: renamed from: a */
    public final String f8863a;

    /* JADX INFO: renamed from: b */
    public final C3105c f8864b;

    public C3104b(Set set, C3105c c3105c) {
        this.f8863a = m4937a(set);
        this.f8864b = c3105c;
    }

    /* JADX INFO: renamed from: a */
    public static String m4937a(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            C3103a c3103a = (C3103a) it.next();
            sb.append(c3103a.f8861a);
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb.append(c3103a.f8862b);
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }
}
