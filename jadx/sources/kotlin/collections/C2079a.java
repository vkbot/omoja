package kotlin.collections;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: renamed from: kotlin.collections.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2079a implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5624b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ KMappedMarker f5625c;

    public /* synthetic */ C2079a(KMappedMarker kMappedMarker, int i10) {
        this.f5624b = i10;
        this.f5625c = kMappedMarker;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5624b) {
            case 0:
                return AbstractCollection.toString$lambda$2((AbstractCollection) this.f5625c, obj);
            default:
                return AbstractMap.toString$lambda$2((AbstractMap) this.f5625c, (Map.Entry) obj);
        }
    }
}
