package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import org.apache.commons.io.ByteOrderMark;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class BOMInputStream extends ProxyInputStream {
    private static final Comparator<ByteOrderMark> ByteOrderMarkLengthComparator = Comparator.comparing(new ai.onnxruntime.d(4)).reversed();
    private final List<ByteOrderMark> bomList;
    private ByteOrderMark byteOrderMark;
    private int fbIndex;
    private int[] firstBytes;
    private final boolean include;
    private int markFbIndex;
    private boolean markedAtStart;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private BOMInputStream(BOMInputStream$Builder bOMInputStream$Builder) {
        super(bOMInputStream$Builder);
        if (IOUtils.length(BOMInputStream$Builder.access$100(bOMInputStream$Builder)) == 0) {
            j1.i.k("No ByteOrderMark specified.");
            throw null;
        }
        this.include = BOMInputStream$Builder.access$200(bOMInputStream$Builder);
        List<ByteOrderMark> listAsList = Arrays.asList(BOMInputStream$Builder.access$100(bOMInputStream$Builder));
        listAsList.sort(ByteOrderMarkLengthComparator);
        this.bomList = listAsList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean b(BOMInputStream bOMInputStream, ByteOrderMark byteOrderMark) {
        return bOMInputStream.matches(byteOrderMark);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BOMInputStream$Builder builder() {
        return new BOMInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ByteOrderMark find() {
        return this.bomList.stream().filter(new i7.c(5, this)).findFirst().orElse(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean matches(ByteOrderMark byteOrderMark) {
        return byteOrderMark.matches(this.firstBytes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ByteOrderMark readBom() throws IOException {
        int length = this.bomList.get(0).length();
        int[] iArr = new int[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = ((FilterInputStream) this).in.read();
            iArr[i2] = i3;
            afterRead(i3);
            i++;
            if (iArr[i2] < 0) {
                break;
            }
        }
        this.firstBytes = Arrays.copyOf(iArr, i);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int readFirstBytes() {
        getBOM();
        int i = this.fbIndex;
        int[] iArr = this.firstBytes;
        if (i >= iArr.length) {
            return -1;
        }
        this.fbIndex = i + 1;
        return iArr[i];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteOrderMark getBOM() {
        if (this.firstBytes == null) {
            this.byteOrderMark = readBom();
        }
        return this.byteOrderMark;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getBOMCharsetName() {
        getBOM();
        ByteOrderMark byteOrderMark = this.byteOrderMark;
        if (byteOrderMark == null) {
            return null;
        }
        return byteOrderMark.getCharsetName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasBOM(ByteOrderMark byteOrderMark) {
        if (this.bomList.contains(byteOrderMark)) {
            return Objects.equals(getBOM(), byteOrderMark);
        }
        androidx.navigation.b.t(byteOrderMark, "Stream not configured to detect ");
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.markFbIndex = this.fbIndex;
        this.markedAtStart = this.firstBytes == null;
        ((FilterInputStream) this).in.mark(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        int firstBytes = 0;
        if (i2 == 0) {
            return 0;
        }
        int i3 = 0;
        while (i2 > 0 && firstBytes >= 0) {
            firstBytes = readFirstBytes();
            if (firstBytes >= 0) {
                bArr[i] = (byte) (firstBytes & 255);
                i2--;
                i3++;
                i++;
            }
        }
        int i4 = ((FilterInputStream) this).in.read(bArr, i, i2);
        afterRead(i4);
        if (i4 >= 0) {
            return i3 + i4;
        }
        if (i3 > 0) {
            return i3;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long j2;
        int i = 0;
        while (true) {
            j2 = i;
            if (j <= j2 || readFirstBytes() < 0) {
                break;
            }
            i++;
        }
        return ((FilterInputStream) this).in.skip(j - j2) + j2;
    }

    public boolean hasBOM() {
        return getBOM() != null;
    }

    public /* synthetic */ BOMInputStream(BOMInputStream$Builder bOMInputStream$Builder, BOMInputStream$1 bOMInputStream$1) {
        this(bOMInputStream$Builder);
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream) {
        this(inputStream, false, BOMInputStream$Builder.access$300());
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream, boolean z) {
        this(inputStream, z, BOMInputStream$Builder.access$300());
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream, boolean z, ByteOrderMark... byteOrderMarkArr) {
        super(inputStream);
        if (IOUtils.length(byteOrderMarkArr) != 0) {
            this.include = z;
            List<ByteOrderMark> listAsList = Arrays.asList(byteOrderMarkArr);
            listAsList.sort(ByteOrderMarkLengthComparator);
            this.bomList = listAsList;
            return;
        }
        j1.i.k("No BOMs specified");
        throw null;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        checkOpen();
        int firstBytes = readFirstBytes();
        return firstBytes >= 0 ? firstBytes : ((FilterInputStream) this).in.read();
    }

    @Deprecated
    public BOMInputStream(InputStream inputStream, ByteOrderMark... byteOrderMarkArr) {
        this(inputStream, false, byteOrderMarkArr);
    }
}
