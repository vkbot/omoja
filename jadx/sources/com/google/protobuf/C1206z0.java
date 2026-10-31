package com.google.protobuf;

import ai.onnxruntime.AbstractC0074a;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
import kotlin.text.C2174b;
import p130l9.C2237i;

/* JADX INFO: renamed from: com.google.protobuf.z0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1206z0 extends AbstractC1132b implements RandomAccess {

    /* JADX INFO: renamed from: e */
    public static final C1206z0 f2798e = new C1206z0(0, new Object[0], false);

    /* JADX INFO: renamed from: c */
    public Object[] f2799c;

    /* JADX INFO: renamed from: d */
    public int f2800d;

    public C1206z0(int i10, Object[] objArr, boolean z9) {
        super(z9);
        this.f2799c = objArr;
        this.f2800d = i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        m1898a();
        if (i10 < 0 || i10 > (i11 = this.f2800d)) {
            C2174b.m3446a(AbstractC0074a.m166q(i10, "Index:", ", Size:"), this.f2800d);
            return;
        }
        Object[] objArr = this.f2799c;
        if (i11 < objArr.length) {
            System.arraycopy(objArr, i10, objArr, i10 + 1, i11 - i10);
        } else {
            Object[] objArr2 = new Object[((i11 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i10);
            System.arraycopy(this.f2799c, i10, objArr2, i10 + 1, this.f2800d - i10);
            this.f2799c = objArr2;
        }
        this.f2799c[i10] = obj;
        this.f2800d++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.InterfaceC1129a0
    /* JADX INFO: renamed from: c */
    public final InterfaceC1129a0 mo1896c(int i10) {
        if (i10 >= this.f2800d) {
            return new C1206z0(this.f2800d, Arrays.copyOf(this.f2799c, i10), true);
        }
        C2237i.m3594a();
        return null;
    }

    /* JADX INFO: renamed from: d */
    public final void m2181d(int i10) {
        if (i10 < 0 || i10 >= this.f2800d) {
            C2174b.m3446a(AbstractC0074a.m166q(i10, "Index:", ", Size:"), this.f2800d);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        m2181d(i10);
        return this.f2799c[i10];
    }

    @Override // com.google.protobuf.AbstractC1132b, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        m1898a();
        m2181d(i10);
        Object[] objArr = this.f2799c;
        Object obj = objArr[i10];
        int i11 = this.f2800d;
        if (i10 < i11 - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (i11 - i10) - 1);
        }
        this.f2800d--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        m1898a();
        m2181d(i10);
        Object[] objArr = this.f2799c;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2800d;
    }

    @Override // com.google.protobuf.AbstractC1132b, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m1898a();
        int i10 = this.f2800d;
        Object[] objArr = this.f2799c;
        if (i10 == objArr.length) {
            this.f2799c = Arrays.copyOf(objArr, ((i10 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f2799c;
        int i11 = this.f2800d;
        this.f2800d = i11 + 1;
        objArr2[i11] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
