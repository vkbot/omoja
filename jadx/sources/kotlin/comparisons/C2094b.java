package kotlin.comparisons;

import java.util.Comparator;

/* JADX INFO: renamed from: kotlin.comparisons.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2094b implements Comparator {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5633b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Comparator f5634c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Comparator f5635d;

    public /* synthetic */ C2094b(Comparator comparator, Comparator comparator2, int i10) {
        this.f5633b = i10;
        this.f5634c = comparator;
        this.f5635d = comparator2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f5633b) {
            case 0:
                return ComparisonsKt__ComparisonsKt.thenDescending$lambda$2$ComparisonsKt__ComparisonsKt(this.f5634c, this.f5635d, obj, obj2);
            default:
                return ComparisonsKt__ComparisonsKt.then$lambda$1$ComparisonsKt__ComparisonsKt(this.f5634c, this.f5635d, obj, obj2);
        }
    }
}
