package p130l9;

import java.util.RandomAccess;
import kotlin.collections.AbstractList;

/* JADX INFO: renamed from: l9.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2253w extends AbstractList implements RandomAccess {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f5897d = 0;

    /* JADX INFO: renamed from: b */
    public final C2245o[] f5898b;

    /* JADX INFO: renamed from: c */
    public final int[] f5899c;

    public C2253w(C2245o[] c2245oArr, int[] iArr) {
        this.f5898b = c2245oArr;
        this.f5899c = iArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof C2245o) {
            return super.contains((C2245o) obj);
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i10) {
        return this.f5898b[i10];
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public final int get_size() {
        return this.f5898b.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof C2245o) {
            return super.indexOf((C2245o) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof C2245o) {
            return super.lastIndexOf((C2245o) obj);
        }
        return -1;
    }
}
