package p130l9;

import java.io.Closeable;
import java.io.Flushable;

/* JADX INFO: renamed from: l9.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2230e0 extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();

    C2240j0 timeout();

    void write(C2242l c2242l, long j10);
}
