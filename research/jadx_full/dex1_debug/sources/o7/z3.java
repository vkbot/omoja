package o7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f4528b;
    public final Collection c;
    public final Collection d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c4 f4529f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f4530g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f4531h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z3(List list, Collection collection, Collection collection2, c4 c4Var, boolean z8, boolean z9, boolean z10, int i9) {
        this.f4528b = list;
        o4.b.i(collection, "drainedSubstreams");
        this.c = collection;
        this.f4529f = c4Var;
        this.d = collection2;
        this.f4530g = z8;
        this.f4527a = z9;
        this.f4531h = z10;
        this.e = i9;
        o4.b.m(!z9 || list == null, "passThrough should imply buffer is null");
        o4.b.m((z9 && c4Var == null) ? false : true, "passThrough should imply winningSubstream != null");
        o4.b.m(!z9 || (collection.size() == 1 && collection.contains(c4Var)) || (collection.size() == 0 && c4Var.f4178b), "passThrough should imply winningSubstream is drained");
        o4.b.m((z8 && c4Var == null) ? false : true, "cancelled should imply committed");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final z3 a(c4 c4Var) {
        Collection collectionUnmodifiableCollection;
        o4.b.m(!this.f4531h, "hedging frozen");
        o4.b.m(this.f4529f == null, "already committed");
        Collection collection = this.d;
        if (collection == null) {
            collectionUnmodifiableCollection = Collections.singleton(c4Var);
        } else {
            ArrayList arrayList = new ArrayList(collection);
            arrayList.add(c4Var);
            collectionUnmodifiableCollection = Collections.unmodifiableCollection(arrayList);
        }
        return new z3(this.f4528b, this.c, collectionUnmodifiableCollection, this.f4529f, this.f4530g, this.f4527a, this.f4531h, this.e + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final z3 b(c4 c4Var) {
        ArrayList arrayList = new ArrayList(this.d);
        arrayList.remove(c4Var);
        return new z3(this.f4528b, this.c, Collections.unmodifiableCollection(arrayList), this.f4529f, this.f4530g, this.f4527a, this.f4531h, this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final z3 c(c4 c4Var, c4 c4Var2) {
        ArrayList arrayList = new ArrayList(this.d);
        arrayList.remove(c4Var);
        arrayList.add(c4Var2);
        return new z3(this.f4528b, this.c, Collections.unmodifiableCollection(arrayList), this.f4529f, this.f4530g, this.f4527a, this.f4531h, this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final z3 d(c4 c4Var) {
        c4Var.f4178b = true;
        Collection collection = this.c;
        if (!collection.contains(c4Var)) {
            return this;
        }
        ArrayList arrayList = new ArrayList(collection);
        arrayList.remove(c4Var);
        return new z3(this.f4528b, Collections.unmodifiableCollection(arrayList), this.d, this.f4529f, this.f4530g, this.f4527a, this.f4531h, this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final z3 e(c4 c4Var) {
        List list;
        o4.b.m(!this.f4527a, "Already passThrough");
        boolean z8 = c4Var.f4178b;
        Collection collectionUnmodifiableCollection = this.c;
        if (!z8) {
            if (collectionUnmodifiableCollection.isEmpty()) {
                collectionUnmodifiableCollection = Collections.singletonList(c4Var);
            } else {
                ArrayList arrayList = new ArrayList(collectionUnmodifiableCollection);
                arrayList.add(c4Var);
                collectionUnmodifiableCollection = Collections.unmodifiableCollection(arrayList);
            }
        }
        Collection collection = collectionUnmodifiableCollection;
        c4 c4Var2 = this.f4529f;
        boolean z9 = c4Var2 != null;
        if (z9) {
            o4.b.m(c4Var2 == c4Var, "Another RPC attempt has already committed");
            list = null;
        } else {
            list = this.f4528b;
        }
        return new z3(list, collection, this.d, this.f4529f, this.f4530g, z9, this.f4531h, this.e);
    }
}
