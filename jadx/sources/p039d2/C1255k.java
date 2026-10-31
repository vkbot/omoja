package p039d2;

import java.io.Closeable;
import p052e5.C1496c;
import p062f5.C1562m;
import p111k2.C2036h;
import p111k2.InterfaceC2032d;
import p204t8.InterfaceC3268a;

/* JADX INFO: renamed from: d2.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1255k implements Closeable {

    /* JADX INFO: renamed from: b */
    public InterfaceC3268a f2967b;

    /* JADX INFO: renamed from: c */
    public C1496c f2968c;

    /* JADX INFO: renamed from: d */
    public InterfaceC3268a f2969d;

    /* JADX INFO: renamed from: e */
    public C1562m f2970e;

    /* JADX INFO: renamed from: f */
    public InterfaceC3268a f2971f;

    /* JADX INFO: renamed from: g */
    public InterfaceC3268a f2972g;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((C2036h) ((InterfaceC2032d) this.f2971f.get())).close();
    }
}
