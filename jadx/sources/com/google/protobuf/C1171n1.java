package com.google.protobuf;

import java.util.AbstractList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.protobuf.n1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1171n1 extends AbstractList implements InterfaceC1149g0, RandomAccess {

    /* JADX INFO: renamed from: b */
    public final C1146f0 f2735b;

    public C1171n1(C1146f0 c1146f0) {
        this.f2735b = c1146f0;
    }

    @Override // com.google.protobuf.InterfaceC1149g0
    /* JADX INFO: renamed from: V */
    public final Object mo1952V(int i10) {
        return this.f2735b.f2676c.get(i10);
    }

    @Override // com.google.protobuf.InterfaceC1149g0
    /* JADX INFO: renamed from: b */
    public final void mo1953b(C1148g c1148g) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        return (String) this.f2735b.get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        C1168m1 c1168m1 = new C1168m1();
        c1168m1.f2729b = this.f2735b.iterator();
        return c1168m1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i10) {
        C1165l1 c1165l1 = new C1165l1();
        c1165l1.f2721b = this.f2735b.listIterator(i10);
        return c1165l1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2735b.f2676c.size();
    }

    @Override // com.google.protobuf.InterfaceC1149g0
    /* JADX INFO: renamed from: y */
    public final List mo1954y() {
        return Collections.unmodifiableList(this.f2735b.f2676c);
    }

    @Override // com.google.protobuf.InterfaceC1149g0
    /* JADX INFO: renamed from: S */
    public final InterfaceC1149g0 mo1951S() {
        return this;
    }
}
