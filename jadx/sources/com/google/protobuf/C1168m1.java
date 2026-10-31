package com.google.protobuf;

import java.util.Iterator;

/* JADX INFO: renamed from: com.google.protobuf.m1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1168m1 implements Iterator {

    /* JADX INFO: renamed from: b */
    public Iterator f2729b;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2729b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return (String) this.f2729b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
