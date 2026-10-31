package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;
import p099j1.C1929i;

/* JADX INFO: renamed from: com.google.protobuf.h1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1153h1 implements Iterator {

    /* JADX INFO: renamed from: b */
    public int f2692b = -1;

    /* JADX INFO: renamed from: c */
    public boolean f2693c;

    /* JADX INFO: renamed from: d */
    public Iterator f2694d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C1141d1 f2695e;

    public C1153h1(C1141d1 c1141d1) {
        this.f2695e = c1141d1;
    }

    /* JADX INFO: renamed from: a */
    public final Iterator m1992a() {
        if (this.f2694d == null) {
            this.f2694d = this.f2695e.f2658d.entrySet().iterator();
        }
        return this.f2694d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.f2692b + 1;
        C1141d1 c1141d1 = this.f2695e;
        return i10 < c1141d1.f2657c.size() || (!c1141d1.f2658d.isEmpty() && m1992a().hasNext());
    }

    @Override // java.util.Iterator
    public final Object next() {
        this.f2693c = true;
        int i10 = this.f2692b + 1;
        this.f2692b = i10;
        C1141d1 c1141d1 = this.f2695e;
        return i10 < c1141d1.f2657c.size() ? (Map.Entry) c1141d1.f2657c.get(this.f2692b) : (Map.Entry) m1992a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f2693c) {
            C1929i.m3030l("remove() was called before next()");
            return;
        }
        this.f2693c = false;
        int i10 = C1141d1.f2655h;
        C1141d1 c1141d1 = this.f2695e;
        c1141d1.m1942b();
        if (this.f2692b >= c1141d1.f2657c.size()) {
            m1992a().remove();
            return;
        }
        int i11 = this.f2692b;
        this.f2692b = i11 - 1;
        c1141d1.m1947g(i11);
    }
}
