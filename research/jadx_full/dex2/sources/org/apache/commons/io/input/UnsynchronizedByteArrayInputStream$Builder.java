package org.apache.commons.io.input;

import java.util.Objects;
import org.apache.commons.io.build.AbstractOriginSupplier;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class UnsynchronizedByteArrayInputStream$Builder extends AbstractStreamBuilder<UnsynchronizedByteArrayInputStream, UnsynchronizedByteArrayInputStream$Builder> {
    private int length;
    private int offset;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte[] access$100(UnsynchronizedByteArrayInputStream$Builder unsynchronizedByteArrayInputStream$Builder) {
        return unsynchronizedByteArrayInputStream$Builder.checkOriginByteArray();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$200(UnsynchronizedByteArrayInputStream$Builder unsynchronizedByteArrayInputStream$Builder) {
        return unsynchronizedByteArrayInputStream$Builder.offset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$300(UnsynchronizedByteArrayInputStream$Builder unsynchronizedByteArrayInputStream$Builder) {
        return unsynchronizedByteArrayInputStream$Builder.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte[] checkOriginByteArray() {
        return checkOrigin().getByteArray();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public UnsynchronizedByteArrayInputStream get() {
        return new UnsynchronizedByteArrayInputStream(this, (UnsynchronizedByteArrayInputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOriginSupplier
    public UnsynchronizedByteArrayInputStream$Builder setByteArray(byte[] bArr) {
        Objects.requireNonNull(bArr, "origin");
        this.length = bArr.length;
        return (UnsynchronizedByteArrayInputStream$Builder) super.setByteArray(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UnsynchronizedByteArrayInputStream$Builder setLength(int i) {
        if (i >= 0) {
            this.length = i;
            return this;
        }
        j1.i.k("length cannot be negative");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UnsynchronizedByteArrayInputStream$Builder setOffset(int i) {
        if (i >= 0) {
            this.offset = i;
            return this;
        }
        j1.i.k("offset cannot be negative");
        return null;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    @Override // org.apache.commons.io.build.AbstractOriginSupplier
    public /* bridge */ /* synthetic */ AbstractOriginSupplier setByteArray(byte[] bArr) {
        return setByteArray(bArr);
    }
}
