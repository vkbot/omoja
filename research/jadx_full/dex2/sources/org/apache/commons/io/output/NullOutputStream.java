package org.apache.commons.io.output;

import java.io.OutputStream;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class NullOutputStream extends OutputStream {
    public static final NullOutputStream INSTANCE;

    @Deprecated
    public static final NullOutputStream NULL_OUTPUT_STREAM;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        NullOutputStream nullOutputStream = new NullOutputStream();
        INSTANCE = nullOutputStream;
        NULL_OUTPUT_STREAM = nullOutputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public NullOutputStream() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        IOUtils.checkFromIndexSize(bArr, i, i2);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
    }

    @Override // java.io.OutputStream
    public void write(int i) {
    }
}
