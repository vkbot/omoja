package org.apache.commons.p161io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class ChecksumInputStream extends CountingInputStream {
    private final long countThreshold;
    private final long expectedChecksumValue;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends ProxyInputStream.AbstractBuilder<ChecksumInputStream, Builder> {
        private Checksum checksum;
        private long countThreshold = -1;
        private long expectedChecksumValue;

        @Override // org.apache.commons.p161io.function.IOSupplier
        public ChecksumInputStream get() {
            return new ChecksumInputStream(this);
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
            return super.getAfterRead();
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
            return super.setAfterRead(iOIntConsumer);
        }

        public Builder setChecksum(Checksum checksum) {
            this.checksum = checksum;
            return this;
        }

        public Builder setCountThreshold(long j10) {
            this.countThreshold = j10;
            return this;
        }

        public Builder setExpectedChecksumValue(long j10) {
            this.expectedChecksumValue = j10;
            return this;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private ChecksumInputStream(Builder builder) {
        InputStream inputStream = builder.getInputStream();
        Checksum checksum = builder.checksum;
        Objects.requireNonNull(checksum, "builder.checksum");
        super(new CheckedInputStream(inputStream, checksum), builder);
        this.countThreshold = builder.countThreshold;
        this.expectedChecksumValue = builder.expectedChecksumValue;
    }

    public static Builder builder() {
        return new Builder();
    }

    private Checksum getChecksum() {
        return ((CheckedInputStream) ((FilterInputStream) this).in).getChecksum();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001c A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:3:0x0001, B:5:0x000c, B:12:0x001c, B:15:0x002b, B:16:0x0032), top: B:21:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x002a  */
    /* JADX WARN: Code duplicated, block: B:15:0x002b A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:3:0x0001, B:5:0x000c, B:12:0x001c, B:15:0x002b, B:16:0x0032), top: B:21:0x0001 }] */
    @Override // org.apache.commons.p161io.input.CountingInputStream, org.apache.commons.p161io.input.ProxyInputStream
    public synchronized void afterRead(int i10) {
        try {
            super.afterRead(i10);
            if (this.countThreshold <= 0 || getByteCount() < this.countThreshold) {
                if (i10 == -1) {
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

    public long getRemaining() {
        return this.countThreshold - getByteCount();
    }
}
