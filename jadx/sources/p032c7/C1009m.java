package p032c7;

import java.util.Comparator;
import p022b7.C0925u;

/* JADX INFO: renamed from: c7.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1009m implements Comparator {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C0925u f1011b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC1010n f1012c;

    public C1009m(AbstractC1010n abstractC1010n, C0925u c0925u) {
        this.f1012c = abstractC1010n;
        this.f1011b = c0925u;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        AbstractC1010n abstractC1010n = this.f1012c;
        C0925u c0925u = this.f1011b;
        return Float.compare(abstractC1010n.mo1211a((C0925u) obj2, c0925u), abstractC1010n.mo1211a((C0925u) obj, c0925u));
    }
}
