package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class ChecksumInputStream extends CountingInputStream {
    private final long countThreshold;
    private final long expectedChecksumValue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Illegal instructions before constructor call */
    private ChecksumInputStream(ChecksumInputStream$Builder checksumInputStream$Builder) {
        InputStream inputStream = checksumInputStream$Builder.getInputStream();
        Checksum checksumAccess$100 = ChecksumInputStream$Builder.access$100(checksumInputStream$Builder);
        Objects.requireNonNull(checksumAccess$100, "builder.checksum");
        super(new CheckedInputStream(inputStream, checksumAccess$100), checksumInputStream$Builder);
        this.countThreshold = ChecksumInputStream$Builder.access$200(checksumInputStream$Builder);
        this.expectedChecksumValue = ChecksumInputStream$Builder.access$300(checksumInputStream$Builder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ChecksumInputStream$Builder builder() {
        return new ChecksumInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Checksum getChecksum() {
        return ((CheckedInputStream) ((FilterInputStream) this).in).getChecksum();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x001c A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:3:0x0001, B:5:0x000c, B:12:0x001c, B:15:0x002b, B:16:0x0032), top: B:21:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x002a  */
    /* JADX WARN: Code duplicated, block: B:15:0x002b A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:3:0x0001, B:5:0x000c, B:12:0x001c, B:15:0x002b, B:16:0x0032), top: B:21:0x0001 }] */
    @Override // org.apache.commons.io.input.CountingInputStream, org.apache.commons.io.input.ProxyInputStream
    public synchronized void afterRead(int i) {
        try {
            super.afterRead(i);
            if (this.countThreshold <= 0 || getByteCount() < this.countThreshold) {
                if (i == -1) {
                    if (this.expectedChecksumValue == getChecksum().getValue()) {
                        throw new IOException("Checksum verification failed.");
                    }
                }
            } else if (this.expectedChecksumValue == getChecksum().getValue()) {
                throw new IOException("Checksum verification failed.");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getRemaining() {
        return this.countThreshold - getByteCount();
    }

    public /* synthetic */ ChecksumInputStream(ChecksumInputStream$Builder checksumInputStream$Builder, ChecksumInputStream$1 checksumInputStream$1) {
        this(checksumInputStream$Builder);
    }
}
