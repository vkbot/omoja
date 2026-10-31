package p157o7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.z3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2751z3 {

    /* JADX INFO: renamed from: a */
    public final boolean f7910a;

    /* JADX INFO: renamed from: b */
    public final List f7911b;

    /* JADX INFO: renamed from: c */
    public final Collection f7912c;

    /* JADX INFO: renamed from: d */
    public final Collection f7913d;

    /* JADX INFO: renamed from: e */
    public final int f7914e;

    /* JADX INFO: renamed from: f */
    public final C2616c4 f7915f;

    /* JADX INFO: renamed from: g */
    public final boolean f7916g;

    /* JADX INFO: renamed from: h */
    public final boolean f7917h;

    public C2751z3(List list, Collection collection, Collection collection2, C2616c4 c2616c4, boolean z9, boolean z10, boolean z11, int i10) {
        this.f7911b = list;
        AbstractC2587b.m4042i(collection, "drainedSubstreams");
        this.f7912c = collection;
        this.f7915f = c2616c4;
        this.f7913d = collection2;
        this.f7916g = z9;
        this.f7910a = z10;
        this.f7917h = z11;
        this.f7914e = i10;
        AbstractC2587b.m4046m(!z10 || list == null, "passThrough should imply buffer is null");
        AbstractC2587b.m4046m((z10 && c2616c4 == null) ? false : true, "passThrough should imply winningSubstream != null");
        AbstractC2587b.m4046m(!z10 || (collection.size() == 1 && collection.contains(c2616c4)) || (collection.size() == 0 && c2616c4.f7337b), "passThrough should imply winningSubstream is drained");
        AbstractC2587b.m4046m((z9 && c2616c4 == null) ? false : true, "cancelled should imply committed");
    }

    /* JADX INFO: renamed from: a */
    public final C2751z3 m4267a(C2616c4 c2616c4) {
        Collection collectionUnmodifiableCollection;
        AbstractC2587b.m4046m(!this.f7917h, "hedging frozen");
        AbstractC2587b.m4046m(this.f7915f == null, "already committed");
        Collection collection = this.f7913d;
        if (collection == null) {
            collectionUnmodifiableCollection = Collections.singleton(c2616c4);
        } else {
            ArrayList arrayList = new ArrayList(collection);
            arrayList.add(c2616c4);
            collectionUnmodifiableCollection = Collections.unmodifiableCollection(arrayList);
        }
        return new C2751z3(this.f7911b, this.f7912c, collectionUnmodifiableCollection, this.f7915f, this.f7916g, this.f7910a, this.f7917h, this.f7914e + 1);
    }

    /* JADX INFO: renamed from: b */
    public final C2751z3 m4268b(C2616c4 c2616c4) {
        ArrayList arrayList = new ArrayList(this.f7913d);
        arrayList.remove(c2616c4);
        return new C2751z3(this.f7911b, this.f7912c, Collections.unmodifiableCollection(arrayList), this.f7915f, this.f7916g, this.f7910a, this.f7917h, this.f7914e);
    }

    /* JADX INFO: renamed from: c */
    public final C2751z3 m4269c(C2616c4 c2616c4, C2616c4 c2616c5) {
        ArrayList arrayList = new ArrayList(this.f7913d);
        arrayList.remove(c2616c4);
        arrayList.add(c2616c5);
        return new C2751z3(this.f7911b, this.f7912c, Collections.unmodifiableCollection(arrayList), this.f7915f, this.f7916g, this.f7910a, this.f7917h, this.f7914e);
    }

    /* JADX INFO: renamed from: d */
    public final C2751z3 m4270d(C2616c4 c2616c4) {
        c2616c4.f7337b = true;
        Collection collection = this.f7912c;
        if (!collection.contains(c2616c4)) {
            return this;
        }
        ArrayList arrayList = new ArrayList(collection);
        arrayList.remove(c2616c4);
        return new C2751z3(this.f7911b, Collections.unmodifiableCollection(arrayList), this.f7913d, this.f7915f, this.f7916g, this.f7910a, this.f7917h, this.f7914e);
    }

    /* JADX INFO: renamed from: e */
    public final C2751z3 m4271e(C2616c4 c2616c4) {
        List list;
        AbstractC2587b.m4046m(!this.f7910a, "Already passThrough");
        boolean z9 = c2616c4.f7337b;
        Collection collectionUnmodifiableCollection = this.f7912c;
        if (!z9) {
            if (collectionUnmodifiableCollection.isEmpty()) {
                collectionUnmodifiableCollection = Collections.singletonList(c2616c4);
            } else {
                ArrayList arrayList = new ArrayList(collectionUnmodifiableCollection);
                arrayList.add(c2616c4);
                collectionUnmodifiableCollection = Collections.unmodifiableCollection(arrayList);
            }
        }
        Collection collection = collectionUnmodifiableCollection;
        C2616c4 c2616c5 = this.f7915f;
        boolean z10 = c2616c5 != null;
        if (z10) {
            AbstractC2587b.m4046m(c2616c5 == c2616c4, "Another RPC attempt has already committed");
            list = null;
        } else {
            list = this.f7911b;
        }
        return new C2751z3(list, collection, this.f7913d, this.f7915f, this.f7916g, z10, this.f7917h, this.f7914e);
    }
}
