package g9;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class a {
    public final String a;
    public List b = CollectionsKt.emptyList();
    public final ArrayList c = new ArrayList();
    public final HashSet d = new HashSet();
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public final ArrayList g = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(String str) {
        this.a = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(a aVar, String str, e eVar) {
        List listEmptyList = CollectionsKt.emptyList();
        aVar.getClass();
        eVar.getClass();
        listEmptyList.getClass();
        if (!aVar.d.add(str)) {
            StringBuilder sbX = ai.onnxruntime.a.x("Element with name '", str, "' is already registered in ");
            sbX.append(aVar.a);
            throw new IllegalArgumentException(sbX.toString().toString());
        }
        aVar.c.add(str);
        aVar.e.add(eVar);
        aVar.f.add(listEmptyList);
        aVar.g.add(false);
    }
}
