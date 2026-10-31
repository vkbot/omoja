package com.google.protobuf;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1518b = 100;
    public c3.i c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h d(byte[] bArr, int i9, int i10, boolean z8) {
        h hVar = new h(bArr, i9, i10, z8);
        try {
            hVar.f(i10);
            return hVar;
        } catch (d0 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract void a(int i9);

    public abstract int b();

    public abstract boolean c();

    public abstract void e(int i9);

    public abstract int f(int i9);

    public abstract boolean g();

    public abstract g h();

    public abstract double i();

    public abstract int j();

    public abstract int k();

    public abstract long l();

    public abstract float m();

    public abstract int n();

    public abstract long o();

    public abstract int p();

    public abstract long q();

    public abstract int r();

    public abstract long s();

    public abstract String t();

    public abstract String u();

    public abstract int v();

    public abstract int w();

    public abstract long x();

    public abstract boolean y(int i9);
}
