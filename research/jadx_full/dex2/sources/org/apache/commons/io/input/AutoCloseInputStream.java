package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AutoCloseInputStream extends ProxyInputStream {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public AutoCloseInputStream(InputStream inputStream) {
        super(ClosedInputStream.ifNull(inputStream));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AutoCloseInputStream$Builder builder() {
        return new AutoCloseInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream
    public void afterRead(int i) {
        if (i == -1) {
            close();
        }
        super.afterRead(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        ((FilterInputStream) this).in = ClosedInputStream.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void finalize() throws Throwable {
        close();
        super.finalize();
    }

    private AutoCloseInputStream(AutoCloseInputStream$Builder autoCloseInputStream$Builder) {
        super(autoCloseInputStream$Builder);
    }

    public /* synthetic */ AutoCloseInputStream(AutoCloseInputStream$Builder autoCloseInputStream$Builder, AutoCloseInputStream$1 autoCloseInputStream$1) {
        this(autoCloseInputStream$Builder);
    }
}
