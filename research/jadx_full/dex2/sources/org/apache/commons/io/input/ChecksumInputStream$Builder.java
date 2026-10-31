package org.apache.commons.io.input;

import java.util.zip.Checksum;
import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ChecksumInputStream$Builder extends ProxyInputStream$AbstractBuilder<ChecksumInputStream, ChecksumInputStream$Builder> {
    private Checksum checksum;
    private long countThreshold = -1;
    private long expectedChecksumValue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Checksum access$100(ChecksumInputStream$Builder checksumInputStream$Builder) {
        return checksumInputStream$Builder.checksum;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ long access$200(ChecksumInputStream$Builder checksumInputStream$Builder) {
        return checksumInputStream$Builder.countThreshold;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ long access$300(ChecksumInputStream$Builder checksumInputStream$Builder) {
        return checksumInputStream$Builder.expectedChecksumValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public ChecksumInputStream get() {
        return new ChecksumInputStream(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
        return super.getAfterRead();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
        return super.setAfterRead(iOIntConsumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChecksumInputStream$Builder setChecksum(Checksum checksum) {
        this.checksum = checksum;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChecksumInputStream$Builder setCountThreshold(long j) {
        this.countThreshold = j;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChecksumInputStream$Builder setExpectedChecksumValue(long j) {
        this.expectedChecksumValue = j;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}
