package p076g9;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import p096i9.C1800a0;

/* JADX INFO: renamed from: g9.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1636h implements Iterable, KMappedMarker {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1800a0 f4165b;

    public C1636h(C1800a0 c1800a0) {
        this.f4165b = c1800a0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C1635g(this.f4165b);
    }
}
