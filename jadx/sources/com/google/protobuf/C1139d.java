package com.google.protobuf;

import java.util.Iterator;
import p142n0.C2467b;

/* JADX INFO: renamed from: com.google.protobuf.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1139d implements Iterator {

    /* JADX INFO: renamed from: b */
    public int f2651b = 0;

    /* JADX INFO: renamed from: c */
    public final int f2652c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C1148g f2653d;

    public C1139d(C1148g c1148g) {
        this.f2653d = c1148g;
        this.f2652c = c1148g.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2651b < this.f2652c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i10 = this.f2651b;
        if (i10 < this.f2652c) {
            this.f2651b = i10 + 1;
            return Byte.valueOf(this.f2653d.mo1950g(i10));
        }
        C2467b.m3834x();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
