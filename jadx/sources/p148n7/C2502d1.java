package p148n7;

import java.util.Comparator;

/* JADX INFO: renamed from: n7.d1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2502d1 implements Comparator {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2512h f6903b;

    public C2502d1(C2512h c2512h) {
        this.f6903b = c2512h;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        C2512h c2512h = this.f6903b;
        int iM3939c = c2512h.m3939c(obj) - c2512h.m3939c(obj2);
        return iM3939c != 0 ? iM3939c : obj.getClass().getName().compareTo(obj2.getClass().getName());
    }
}
