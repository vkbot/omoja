package kotlin.collections;

import java.util.Map$Entry;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3209b;
    public final /* synthetic */ KMappedMarker c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(KMappedMarker kMappedMarker, int i9) {
        this.f3209b = i9;
        this.c = kMappedMarker;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f3209b) {
            case 0:
                return AbstractCollection.a((AbstractCollection) this.c, obj);
            default:
                return AbstractMap.a((AbstractMap) this.c, (Map$Entry) obj);
        }
    }
}
