package org.apache.commons.io.input;

import org.apache.commons.io.ByteOrderMark;
import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class BOMInputStream$Builder extends ProxyInputStream$AbstractBuilder<BOMInputStream, BOMInputStream$Builder> {
    private static final ByteOrderMark[] DEFAULT = {ByteOrderMark.UTF_8};
    private ByteOrderMark[] byteOrderMarks = DEFAULT;
    private boolean include;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ByteOrderMark[] access$100(BOMInputStream$Builder bOMInputStream$Builder) {
        return bOMInputStream$Builder.byteOrderMarks;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$200(BOMInputStream$Builder bOMInputStream$Builder) {
        return bOMInputStream$Builder.include;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ByteOrderMark[] access$300() {
        return DEFAULT;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ByteOrderMark getDefaultByteOrderMark() {
        return DEFAULT[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public BOMInputStream get() {
        return new BOMInputStream(this, (BOMInputStream$1) null);
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
    public BOMInputStream$Builder setByteOrderMarks(ByteOrderMark... byteOrderMarkArr) {
        this.byteOrderMarks = byteOrderMarkArr != null ? (ByteOrderMark[]) byteOrderMarkArr.clone() : DEFAULT;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BOMInputStream$Builder setInclude(boolean z) {
        this.include = z;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}
