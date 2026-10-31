package p076g9;

import ai.onnxruntime.AbstractC0074a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: renamed from: g9.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1629a {

    /* JADX INFO: renamed from: a */
    public final String f4129a;

    /* JADX INFO: renamed from: b */
    public List f4130b = CollectionsKt.emptyList();

    /* JADX INFO: renamed from: c */
    public final ArrayList f4131c = new ArrayList();

    /* JADX INFO: renamed from: d */
    public final HashSet f4132d = new HashSet();

    /* JADX INFO: renamed from: e */
    public final ArrayList f4133e = new ArrayList();

    /* JADX INFO: renamed from: f */
    public final ArrayList f4134f = new ArrayList();

    /* JADX INFO: renamed from: g */
    public final ArrayList f4135g = new ArrayList();

    public C1629a(String str) {
        this.f4129a = str;
    }

    /* JADX INFO: renamed from: a */
    public static void m2716a(C1629a c1629a, String str, InterfaceC1633e interfaceC1633e) {
        List listEmptyList = CollectionsKt.emptyList();
        c1629a.getClass();
        interfaceC1633e.getClass();
        listEmptyList.getClass();
        if (!c1629a.f4132d.add(str)) {
            StringBuilder sbM173x = AbstractC0074a.m173x("Element with name '", str, "' is already registered in ");
            sbM173x.append(c1629a.f4129a);
            throw new IllegalArgumentException(sbM173x.toString().toString());
        }
        c1629a.f4131c.add(str);
        c1629a.f4133e.add(interfaceC1633e);
        c1629a.f4134f.add(listEmptyList);
        c1629a.f4135g.add(false);
    }
}
