package p212u5;

import ai.onnxruntime.C0075b;
import java.util.Iterator;
import p142n0.C2467b;

/* JADX INFO: renamed from: u5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3299b implements Iterator {

    /* JADX INFO: renamed from: b */
    public C3301d f9654b;

    /* JADX INFO: renamed from: c */
    public C3301d f9655c = null;

    /* JADX INFO: renamed from: d */
    public int f9656d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C3302e f9657e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f9658f;

    public C3299b(C3302e c3302e, int i10) {
        this.f9658f = i10;
        this.f9657e = c3302e;
        this.f9654b = c3302e.f9674f.f9664e;
        this.f9656d = c3302e.f9673e;
    }

    /* JADX INFO: renamed from: a */
    public final Object m5221a() {
        return m5222b();
    }

    /* JADX INFO: renamed from: b */
    public final C3301d m5222b() {
        C3301d c3301d = this.f9654b;
        C3302e c3302e = this.f9657e;
        if (c3301d == c3302e.f9674f) {
            C2467b.m3834x();
            return null;
        }
        if (c3302e.f9673e != this.f9656d) {
            C0075b.m176a();
            return null;
        }
        this.f9654b = c3301d.f9664e;
        this.f9655c = c3301d;
        return c3301d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9654b != this.f9657e.f9674f;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.f9658f) {
            case 1:
                return m5222b().f9666g;
            default:
                return m5221a();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        C3301d c3301d = this.f9655c;
        if (c3301d == null) {
            throw new IllegalStateException();
        }
        C3302e c3302e = this.f9657e;
        c3302e.m5225c(c3301d, true);
        this.f9655c = null;
        this.f9656d = c3302e.f9673e;
    }
}
