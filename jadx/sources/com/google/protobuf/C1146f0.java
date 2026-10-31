package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import p130l9.C2237i;

/* JADX INFO: renamed from: com.google.protobuf.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1146f0 extends AbstractC1132b implements InterfaceC1149g0, RandomAccess {

    /* JADX INFO: renamed from: c */
    public final List f2676c;

    static {
        new C1146f0();
    }

    public C1146f0() {
        super(false);
        this.f2676c = Collections.EMPTY_LIST;
    }

    @Override // com.google.protobuf.InterfaceC1149g0
    /* JADX INFO: renamed from: S */
    public final InterfaceC1149g0 mo1951S() {
        return this.f2633b ? new C1171n1(this) : this;
    }

    @Override // com.google.protobuf.InterfaceC1149g0
    /* JADX INFO: renamed from: V */
    public final Object mo1952V(int i10) {
        return this.f2676c.get(i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        m1898a();
        this.f2676c.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC1132b, java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection collection) {
        m1898a();
        if (collection instanceof InterfaceC1149g0) {
            collection = ((InterfaceC1149g0) collection).mo1954y();
        }
        boolean zAddAll = this.f2676c.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.protobuf.InterfaceC1149g0
    /* JADX INFO: renamed from: b */
    public final void mo1953b(C1148g c1148g) {
        m1898a();
        this.f2676c.add(c1148g);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.InterfaceC1129a0
    /* JADX INFO: renamed from: c */
    public final InterfaceC1129a0 mo1896c(int i10) {
        List list = this.f2676c;
        if (i10 < list.size()) {
            C2237i.m3594a();
            return null;
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(list);
        return new C1146f0(arrayList);
    }

    @Override // com.google.protobuf.AbstractC1132b, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m1898a();
        this.f2676c.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        List list = this.f2676c;
        Object obj = list.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof C1148g)) {
            byte[] bArr = (byte[]) obj;
            String str = new String(bArr, AbstractC1133b0.f2634a);
            if (AbstractC1195v1.f2788a.m2159e(bArr, 0, bArr.length) == 0) {
                list.set(i10, str);
            }
            return str;
        }
        C1148g c1148g = (C1148g) obj;
        String str2 = c1148g.size() == 0 ? "" : new String(c1148g.f2680c, c1148g.mo1949f(), c1148g.size(), AbstractC1133b0.f2634a);
        int iMo1949f = c1148g.mo1949f();
        if (AbstractC1195v1.f2788a.m2159e(c1148g.f2680c, iMo1949f, c1148g.size() + iMo1949f) == 0) {
            list.set(i10, str2);
        }
        return str2;
    }

    @Override // com.google.protobuf.AbstractC1132b, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        m1898a();
        Object objRemove = this.f2676c.remove(i10);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof C1148g)) {
            return new String((byte[]) objRemove, AbstractC1133b0.f2634a);
        }
        C1148g c1148g = (C1148g) objRemove;
        return c1148g.size() == 0 ? "" : new String(c1148g.f2680c, c1148g.mo1949f(), c1148g.size(), AbstractC1133b0.f2634a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        m1898a();
        Object obj2 = this.f2676c.set(i10, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof C1148g)) {
            return new String((byte[]) obj2, AbstractC1133b0.f2634a);
        }
        C1148g c1148g = (C1148g) obj2;
        return c1148g.size() == 0 ? "" : new String(c1148g.f2680c, c1148g.mo1949f(), c1148g.size(), AbstractC1133b0.f2634a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2676c.size();
    }

    @Override // com.google.protobuf.InterfaceC1149g0
    /* JADX INFO: renamed from: y */
    public final List mo1954y() {
        return Collections.unmodifiableList(this.f2676c);
    }

    public C1146f0(ArrayList arrayList) {
        super(true);
        this.f2676c = arrayList;
    }

    public C1146f0(int i10) {
        this(new ArrayList(i10));
    }

    @Override // com.google.protobuf.AbstractC1132b, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f2676c.size(), collection);
    }
}
