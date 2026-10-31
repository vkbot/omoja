package kotlin.comparisons;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3214b;
    public final /* synthetic */ Comparator c;
    public final /* synthetic */ Comparator d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(Comparator comparator, Comparator comparator2, int i9) {
        this.f3214b = i9;
        this.c = comparator;
        this.d = comparator2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f3214b) {
            case 0:
                return ComparisonsKt__ComparisonsKt.b(this.c, this.d, obj, obj2);
            default:
                return ComparisonsKt__ComparisonsKt.d(this.c, this.d, obj, obj2);
        }
    }
}
