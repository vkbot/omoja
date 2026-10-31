package com.google.protobuf;

import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h1 implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1510b = -1;
    public boolean c;
    public Iterator d;
    public final /* synthetic */ d1 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h1(d1 d1Var) {
        this.e = d1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Iterator a() {
        if (this.d == null) {
            this.d = this.e.d.entrySet().iterator();
        }
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i9 = this.f1510b + 1;
        d1 d1Var = this.e;
        return i9 < d1Var.c.size() || (!d1Var.d.isEmpty() && a().hasNext());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public final Object next() {
        this.c = true;
        int i9 = this.f1510b + 1;
        this.f1510b = i9;
        d1 d1Var = this.e;
        return i9 < d1Var.c.size() ? (Map$Entry) d1Var.c.get(this.f1510b) : (Map$Entry) a().next();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public final void remove() {
        if (!this.c) {
            j1.i.l("remove() was called before next()");
            return;
        }
        this.c = false;
        int i9 = d1.f1488h;
        d1 d1Var = this.e;
        d1Var.b();
        if (this.f1510b >= d1Var.c.size()) {
            a().remove();
            return;
        }
        int i10 = this.f1510b;
        this.f1510b = i10 - 1;
        d1Var.g(i10);
    }
}
