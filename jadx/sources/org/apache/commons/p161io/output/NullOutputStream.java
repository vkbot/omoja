package org.apache.commons.p161io.output;

import java.io.OutputStream;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class NullOutputStream extends OutputStream {
    public static final NullOutputStream INSTANCE;

    @Deprecated
    public static final NullOutputStream NULL_OUTPUT_STREAM;

    static {
        NullOutputStream nullOutputStream = new NullOutputStream();
        INSTANCE = nullOutputStream;
        NULL_OUTPUT_STREAM = nullOutputStream;
    }

    @Deprecated
    public NullOutputStream() {
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
    }
}
