package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class DemuxInputStream extends InputStream {
    private final InheritableThreadLocal<InputStream> inputStreamLocal = new InheritableThreadLocal<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream bindStream(InputStream inputStream) {
        InputStream inputStream2 = this.inputStreamLocal.get();
        this.inputStreamLocal.set(inputStream);
        return inputStream2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        IOUtils.close(this.inputStreamLocal.get());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read() {
        InputStream inputStream = this.inputStreamLocal.get();
        if (inputStream != null) {
            return inputStream.read();
        }
        return -1;
    }
}
