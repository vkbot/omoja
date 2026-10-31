package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f0 extends b implements g0, RandomAccess {
    public final List c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        new f0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f0() {
        super(false);
        this.c = Collections.EMPTY_LIST;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.g0
    public final g0 S() {
        return this.f1472b ? new n1(this) : this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.g0
    public final Object V(int i9) {
        return this.c.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public final void add(int i9, Object obj) {
        a();
        this.c.add(i9, (String) obj);
        ((AbstractList) this).modCount++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b, java.util.AbstractList, java.util.List
    public final boolean addAll(int i9, Collection collection) {
        a();
        if (collection instanceof g0) {
            collection = ((g0) collection).y();
        }
        boolean zAddAll = this.c.addAll(i9, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.g0
    public final void b(g gVar) {
        a();
        this.c.add(gVar);
        ((AbstractList) this).modCount++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.a0
    public final a0 c(int i9) {
        List list = this.c;
        if (i9 < list.size()) {
            l9.i.a();
            return null;
        }
        ArrayList arrayList = new ArrayList(i9);
        arrayList.addAll(list);
        return new f0(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.c.clear();
        ((AbstractList) this).modCount++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i9) {
        List list = this.c;
        Object obj = list.get(i9);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof g)) {
            byte[] bArr = (byte[]) obj;
            String str = new String(bArr, b0.f1473a);
            if (v1.f1577a.e(bArr, 0, bArr.length) == 0) {
                list.set(i9, str);
            }
            return str;
        }
        g gVar = (g) obj;
        String str2 = gVar.size() == 0 ? "" : new String(gVar.c, gVar.f(), gVar.size(), b0.f1473a);
        int iF = gVar.f();
        if (v1.f1577a.e(gVar.c, iF, gVar.size() + iF) == 0) {
            list.set(i9, str2);
        }
        return str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b, java.util.AbstractList, java.util.List
    public final Object remove(int i9) {
        a();
        Object objRemove = this.c.remove(i9);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof g)) {
            return new String((byte[]) objRemove, b0.f1473a);
        }
        g gVar = (g) objRemove;
        return gVar.size() == 0 ? "" : new String(gVar.c, gVar.f(), gVar.size(), b0.f1473a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i9, Object obj) {
        a();
        Object obj2 = this.c.set(i9, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof g)) {
            return new String((byte[]) obj2, b0.f1473a);
        }
        g gVar = (g) obj2;
        return gVar.size() == 0 ? "" : new String(gVar.c, gVar.f(), gVar.size(), b0.f1473a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.g0
    public final List y() {
        return Collections.unmodifiableList(this.c);
    }

    public f0(ArrayList arrayList) {
        super(true);
        this.c = arrayList;
    }

    public f0(int i9) {
        this(new ArrayList(i9));
    }

    @Override // com.google.protobuf.b, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.c.size(), collection);
    }
}
