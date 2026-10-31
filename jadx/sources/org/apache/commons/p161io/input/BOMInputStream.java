package org.apache.commons.p161io.input;

import ai.onnxruntime.C0077d;
import androidx.navigation.C0674b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import org.apache.commons.p161io.ByteOrderMark;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.IOIntConsumer;
import p094i7.C1754c;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class BOMInputStream extends ProxyInputStream {
    private static final Comparator<ByteOrderMark> ByteOrderMarkLengthComparator = Comparator.comparing(new C0077d(4)).reversed();
    private final List<ByteOrderMark> bomList;
    private ByteOrderMark byteOrderMark;
    private int fbIndex;
    private int[] firstBytes;
    private final boolean include;
    private int markFbIndex;
    private boolean markedAtStart;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends ProxyInputStream.AbstractBuilder<BOMInputStream, Builder> {
        private static final ByteOrderMark[] DEFAULT = {ByteOrderMark.UTF_8};
        private ByteOrderMark[] byteOrderMarks = DEFAULT;
        private boolean include;

        public static ByteOrderMark getDefaultByteOrderMark() {
            return DEFAULT[0];
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public BOMInputStream get() {
            return new BOMInputStream(this);
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
            return super.getAfterRead();
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
            return super.setAfterRead(iOIntConsumer);
        }

        public Builder setByteOrderMarks(ByteOrderMark... byteOrderMarkArr) {
            this.byteOrderMarks = byteOrderMarkArr != null ? (ByteOrderMark[]) byteOrderMarkArr.clone() : DEFAULT;
            return this;
        }

        public Builder setInclude(boolean z9) {
            this.include = z9;
            return this;
        }
    }

    private BOMInputStream(Builder builder) {
        super(builder);
        if (IOUtils.length(builder.byteOrderMarks) == 0) {
            C1929i.m3029k("No ByteOrderMark specified.");
            throw null;
        }
        this.include = builder.include;
        List<ByteOrderMark> listAsList = Arrays.asList(builder.byteOrderMarks);
        listAsList.sort(ByteOrderMarkLengthComparator);
        this.bomList = listAsList;
    }

    public static Builder builder() {
        return new Builder();
    }

    private ByteOrderMark find() {
        return this.bomList.stream().filter(new C1754c(5, this)).findFirst().orElse(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean matches(ByteOrderMark byteOrderMark) {
        return byteOrderMark.matches(this.firstBytes);
    }

    private ByteOrderMark readBom() throws IOException {
        int length = this.bomList.get(0).length();
        int[] iArr = new int[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = ((FilterInputStream) this).in.read();
            iArr[i11] = i12;
            afterRead(i12);
            i10++;
            if (iArr[i11] < 0) {
                break;
            }
        }
        this.firstBytes = Arrays.copyOf(iArr, i10);
        ByteOrderMark byteOrderMarkFind = find();
        if (byteOrderMarkFind != null && !this.include) {
            if (byteOrderMarkFind.length() < this.firstBytes.length) {
                this.fbIndex = byteOrderMarkFind.length();
                return byteOrderMarkFind;
            }
            this.firstBytes = new int[0];
        }
        return byteOrderMarkFind;
    }

    private int readFirstBytes() {
        getBOM();
        int i10 = this.fbIndex;
        int[] iArr = this.firstBytes;
        if (i10 >= iArr.length) {
            return -1;
        }
        this.fbIndex = i10 + 1;
        return iArr[i10];
    }

    public ByteOrderMark getBOM() {
        if (this.firstBytes == null) {
            this.byteOrderMark = readBom();
        }
        return this.byteOrderMark;
    }

    public String getBOMCharsetName() {
        getBOM();
        ByteOrderMark byteOrderMark = this.byteOrderMark;
        if (byteOrderMark == null) {
            return null;
        }
        return byteOrderMark.getCharsetName();
    }

    public boolean hasBOM(ByteOrderMark byteOrderMark) {
        if (this.bomList.contains(byteOrderMark)) {
            return Objects.equals(getBOM(), byteOrderMark);
        }
        C0674b.m853t(byteOrderMark, "Stream not configured to detect ");
        return false;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        this.markFbIndex = this.fbIndex;
        this.markedAtStart = this.firstBytes == null;
        ((FilterInputStream) this).in.mark(i10);
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        int firstBytes = 0;
        if (i11 == 0) {
            return 0;
        }
        int i12 = 0;
        while (i11 > 0 && firstBytes >= 0) {
            firstBytes = readFirstBytes();
            if (firstBytes >= 0) {
                bArr[i10] = (byte) (firstBytes & 255);
                i11--;
                i12++;
                i10++;
            }
        }
        int i13 = ((FilterInputStream) this).in.read(bArr, i10, i11);
        afterRead(i13);
        if (i13 >= 0) {
            return i12 + i13;
        }
        if (i12 > 0) {
            return i12;
        }
        return -1;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        try {
            this.fbIndex = this.markFbIndex;
            if (this.markedAtStart) {
                this.firstBytes = null;
            }
            ((FilterInputStream) this).in.reset();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) {
        long j11;
        int i10 = 0;
        while (true) {
            j11 = i10;
            if (j10 <= j11 || readFirstBytes() < 0) {
                break;
            }
            i10++;
        }
        return ((FilterInputStream) this).in.skip(j10 - j11) + j11;
    }

    public boolean hasBOM() {
        return getBOM() != null;
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream) {
        this(inputStream, false, Builder.DEFAULT);
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream, boolean z9) {
        this(inputStream, z9, Builder.DEFAULT);
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream, boolean z9, ByteOrderMark... byteOrderMarkArr) {
        super(inputStream);
        if (IOUtils.length(byteOrderMarkArr) != 0) {
            this.include = z9;
            List<ByteOrderMark> listAsList = Arrays.asList(byteOrderMarkArr);
            listAsList.sort(ByteOrderMarkLengthComparator);
            this.bomList = listAsList;
            return;
        }
        C1929i.m3029k("No BOMs specified");
        throw null;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        checkOpen();
        int firstBytes = readFirstBytes();
        return firstBytes >= 0 ? firstBytes : ((FilterInputStream) this).in.read();
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream, ByteOrderMark... byteOrderMarkArr) {
        this(inputStream, false, byteOrderMarkArr);
    }
}
