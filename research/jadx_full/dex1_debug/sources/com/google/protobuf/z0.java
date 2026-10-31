package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z0 extends b implements RandomAccess {
    public static final z0 e = new z0(0, new Object[0], false);
    public Object[] c;
    public int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z0(int i9, Object[] objArr, boolean z8) {
        super(z8);
        this.c = objArr;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public final void add(int i9, Object obj) {
        int i10;
        a();
        if (i9 < 0 || i9 > (i10 = this.d)) {
            kotlin.text.b.a(ai.onnxruntime.a.q(i9, "Index:", ", Size:"), this.d);
            return;
        }
        Object[] objArr = this.c;
        if (i10 < objArr.length) {
            System.arraycopy(objArr, i9, objArr, i9 + 1, i10 - i9);
        } else {
            Object[] objArr2 = new Object[((i10 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i9);
            System.arraycopy(this.c, i9, objArr2, i9 + 1, this.d - i9);
            this.c = objArr2;
        }
        this.c[i9] = obj;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.a0
    public final a0 c(int i9) {
        if (i9 >= this.d) {
            return new z0(this.d, Arrays.copyOf(this.c, i9), true);
        }
        l9.i.a();
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(int i9) {
        if (i9 < 0 || i9 >= this.d) {
            kotlin.text.b.a(ai.onnxruntime.a.q(i9, "Index:", ", Size:"), this.d);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i9) {
        d(i9);
        return this.c[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b, java.util.AbstractList, java.util.List
    public final Object remove(int i9) {
        a();
        d(i9);
        Object[] objArr = this.c;
        Object obj = objArr[i9];
        int i10 = this.d;
        if (i9 < i10 - 1) {
            System.arraycopy(objArr, i9 + 1, objArr, i9, (i10 - i9) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i9, Object obj) {
        a();
        d(i9);
        Object[] objArr = this.c;
        Object obj2 = objArr[i9];
        objArr[i9] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // com.google.protobuf.b, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        a();
        int i9 = this.d;
        Object[] objArr = this.c;
        if (i9 == objArr.length) {
            this.c = Arrays.copyOf(objArr, ((i9 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.c;
        int i10 = this.d;
        this.d = i10 + 1;
        objArr2[i10] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
