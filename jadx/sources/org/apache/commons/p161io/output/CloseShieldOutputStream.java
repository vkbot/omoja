package org.apache.commons.p161io.output;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CloseShieldOutputStream extends ProxyOutputStream {
    @Deprecated
    public CloseShieldOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public static CloseShieldOutputStream wrap(OutputStream outputStream) {
        return new CloseShieldOutputStream(outputStream);
    }

    @Override // org.apache.commons.p161io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ((FilterOutputStream) this).out = ClosedOutputStream.INSTANCE;
    }
}
