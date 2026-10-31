package p106j8;

import java.util.Iterator;
import p045d8.AbstractC1314b;
import p054e8.InterfaceC1499b;
import p242x7.InterfaceC3591h;

/* JADX INFO: renamed from: j8.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2006i implements InterfaceC1499b {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3591h f5477b;

    /* JADX INFO: renamed from: c */
    public final Iterator f5478c;

    /* JADX INFO: renamed from: d */
    public volatile boolean f5479d;

    /* JADX INFO: renamed from: e */
    public boolean f5480e;

    /* JADX INFO: renamed from: f */
    public boolean f5481f;

    /* JADX INFO: renamed from: g */
    public boolean f5482g;

    public C2006i(InterfaceC3591h interfaceC3591h, Iterator it) {
        this.f5477b = interfaceC3591h;
        this.f5478c = it;
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        this.f5481f = true;
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        this.f5479d = true;
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        this.f5480e = true;
        return 1;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return this.f5481f;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        if (this.f5481f) {
            return null;
        }
        boolean z9 = this.f5482g;
        Iterator it = this.f5478c;
        if (!z9) {
            this.f5482g = true;
        } else if (!it.hasNext()) {
            this.f5481f = true;
            return null;
        }
        Object next = it.next();
        AbstractC1314b.m2356a(next, "The iterator returned a null value");
        return next;
    }
}
