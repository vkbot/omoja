package org.apache.commons.io.input;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class Tailer$RandomAccessFileBridge implements Tailer$RandomAccessResourceBridge {
    private final RandomAccessFile randomAccessFile;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Tailer$RandomAccessFileBridge(File file, String str) {
        this.randomAccessFile = new RandomAccessFile(file, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.randomAccessFile.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.Tailer$RandomAccessResourceBridge
    public long getPointer() {
        return this.randomAccessFile.getFilePointer();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.Tailer$RandomAccessResourceBridge
    public int read(byte[] bArr) {
        return this.randomAccessFile.read(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.Tailer$RandomAccessResourceBridge
    public void seek(long j) throws IOException {
        this.randomAccessFile.seek(j);
    }

    public /* synthetic */ Tailer$RandomAccessFileBridge(File file, String str, Tailer$1 tailer$1) {
        this(file, str);
    }
}
