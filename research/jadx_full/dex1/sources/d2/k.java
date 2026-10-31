package d2;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public t8.a f1685b;
    public e5.c c;
    public t8.a d;
    public f5.m e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public t8.a f1686f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public t8.a f1687g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((k2.h) ((k2.d) this.f1686f.get())).close();
    }
}
