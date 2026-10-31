package p130l9;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;

/* JADX INFO: renamed from: l9.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2247q implements InterfaceC2230e0 {
    private final InterfaceC2230e0 delegate;

    public AbstractC2247q(InterfaceC2230e0 interfaceC2230e0) {
        interfaceC2230e0.getClass();
        this.delegate = interfaceC2230e0;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "delegate", imports = {}))
    @JvmName(name = "-deprecated_delegate")
    /* JADX INFO: renamed from: -deprecated_delegate, reason: not valid java name */
    public final InterfaceC2230e0 m7552deprecated_delegate() {
        return this.delegate;
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @JvmName(name = "delegate")
    public final InterfaceC2230e0 delegate() {
        return this.delegate;
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Flushable
    public void flush() {
        this.delegate.flush();
    }

    @Override // p130l9.InterfaceC2230e0
    public C2240j0 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // p130l9.InterfaceC2230e0
    public void write(C2242l c2242l, long j10) {
        c2242l.getClass();
        this.delegate.write(c2242l, j10);
    }
}
