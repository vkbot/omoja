package p130l9;

import java.io.IOException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;

/* JADX INFO: renamed from: l9.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2248r implements InterfaceC2234g0 {
    private final InterfaceC2234g0 delegate;

    public AbstractC2248r(InterfaceC2234g0 interfaceC2234g0) {
        interfaceC2234g0.getClass();
        this.delegate = interfaceC2234g0;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "delegate", imports = {}))
    @JvmName(name = "-deprecated_delegate")
    /* JADX INFO: renamed from: -deprecated_delegate, reason: not valid java name */
    public final InterfaceC2234g0 m7553deprecated_delegate() {
        return this.delegate;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @JvmName(name = "delegate")
    public final InterfaceC2234g0 delegate() {
        return this.delegate;
    }

    @Override // p130l9.InterfaceC2234g0
    public long read(C2242l c2242l, long j10) {
        c2242l.getClass();
        return this.delegate.read(c2242l, j10);
    }

    @Override // p130l9.InterfaceC2234g0
    public C2240j0 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
