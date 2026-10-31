package p076g9;

import com.bumptech.glide.AbstractC1031d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import p046d9.C1322h;
import p055e9.C1508d;
import p096i9.AbstractC1813d1;
import p096i9.InterfaceC1837l;

/* JADX INFO: renamed from: g9.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1634f implements InterfaceC1633e, InterfaceC1837l {

    /* JADX INFO: renamed from: a */
    public final String f4151a;

    /* JADX INFO: renamed from: b */
    public final AbstractC1031d f4152b;

    /* JADX INFO: renamed from: c */
    public final int f4153c;

    /* JADX INFO: renamed from: d */
    public final List f4154d;

    /* JADX INFO: renamed from: e */
    public final HashSet f4155e;

    /* JADX INFO: renamed from: f */
    public final String[] f4156f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC1633e[] f4157g;

    /* JADX INFO: renamed from: h */
    public final List[] f4158h;

    /* JADX INFO: renamed from: i */
    public final boolean[] f4159i;

    /* JADX INFO: renamed from: j */
    public final Map f4160j;

    /* JADX INFO: renamed from: k */
    public final InterfaceC1633e[] f4161k;

    /* JADX INFO: renamed from: l */
    public final Lazy f4162l;

    public C1634f(String str, AbstractC1031d abstractC1031d, int i10, List list, C1629a c1629a) {
        list.getClass();
        this.f4151a = str;
        this.f4152b = abstractC1031d;
        this.f4153c = i10;
        this.f4154d = c1629a.f4130b;
        ArrayList arrayList = c1629a.f4131c;
        this.f4155e = CollectionsKt___CollectionsKt.toHashSet(arrayList);
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        this.f4156f = strArr;
        this.f4157g = AbstractC1813d1.m2917c(c1629a.f4133e);
        this.f4158h = (List[]) c1629a.f4134f.toArray(new List[0]);
        this.f4159i = CollectionsKt___CollectionsKt.toBooleanArray(c1629a.f4135g);
        Iterable<IndexedValue> iterableWithIndex = ArraysKt.withIndex(strArr);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterableWithIndex, 10));
        for (IndexedValue indexedValue : iterableWithIndex) {
            arrayList2.add(TuplesKt.m3166to(indexedValue.getValue(), Integer.valueOf(indexedValue.getIndex())));
        }
        this.f4160j = MapsKt__MapsKt.toMap(arrayList2);
        this.f4161k = AbstractC1813d1.m2917c(list);
        this.f4162l = LazyKt.lazy(new C1508d(2, this));
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: a */
    public final String mo2717a() {
        return this.f4151a;
    }

    @Override // p096i9.InterfaceC1837l
    /* JADX INFO: renamed from: b */
    public final Set mo2723b() {
        return this.f4155e;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: c */
    public final boolean mo2718c() {
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: d */
    public final int mo2719d() {
        return this.f4153c;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: e */
    public final String mo2720e(int i10) {
        return this.f4156f[i10];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1634f) {
            InterfaceC1633e interfaceC1633e = (InterfaceC1633e) obj;
            if (Intrinsics.areEqual(this.f4151a, interfaceC1633e.mo2717a()) && Arrays.equals(this.f4161k, ((C1634f) obj).f4161k)) {
                int iMo2719d = interfaceC1633e.mo2719d();
                int i10 = this.f4153c;
                if (i10 == iMo2719d) {
                    for (int i11 = 0; i11 < i10; i11++) {
                        InterfaceC1633e[] interfaceC1633eArr = this.f4157g;
                        if (Intrinsics.areEqual(interfaceC1633eArr[i11].mo2717a(), interfaceC1633e.mo2721f(i11).mo2717a()) && Intrinsics.areEqual(interfaceC1633eArr[i11].getKind(), interfaceC1633e.mo2721f(i11).getKind())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: f */
    public final InterfaceC1633e mo2721f(int i10) {
        return this.f4157g[i10];
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: g */
    public final boolean mo2722g(int i10) {
        return this.f4159i[i10];
    }

    @Override // p076g9.InterfaceC1633e
    public final AbstractC1031d getKind() {
        return this.f4152b;
    }

    public final int hashCode() {
        return ((Number) this.f4162l.getValue()).intValue();
    }

    @Override // p076g9.InterfaceC1633e
    public final boolean isInline() {
        return false;
    }

    public final String toString() {
        return CollectionsKt___CollectionsKt.joinToString$default(RangesKt.until(0, this.f4153c), ", ", this.f4151a.concat("("), ")", 0, null, new C1322h(2, this), 24, null);
    }
}
