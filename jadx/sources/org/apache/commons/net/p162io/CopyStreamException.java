package org.apache.commons.net.p162io;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CopyStreamException extends IOException {
    private static final long serialVersionUID = -2602899129433221532L;
    private final long totalBytesTransferred;

    public CopyStreamException(String str, long j10, IOException iOException) {
        super(str, iOException);
        this.totalBytesTransferred = j10;
    }

    public IOException getIOException() {
        return (IOException) getCause();
    }

    public long getTotalBytesTransferred() {
        return this.totalBytesTransferred;
    }
}
