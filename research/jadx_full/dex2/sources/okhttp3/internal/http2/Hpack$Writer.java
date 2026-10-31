package okhttp3.internal.http2;

import java.io.EOFException;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import l9.l;
import l9.o;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0006\u0018\u00002\u00020\u0001B%\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\fJ\u001b\u0010\u0017\u001a\u00020\n2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00100\u0015¢\u0006\u0004\b\u0017\u0010\u0018J%\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\"\u0010#R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010$R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010%R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010&R\u0016\u0010'\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010$R\u0016\u0010(\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010%R\u0016\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010$R\u001e\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100*8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010-\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010$R\u0016\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b.\u0010$R\u0016\u0010/\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b/\u0010$¨\u00060"}, d2 = {"Lokhttp3/internal/http2/Hpack$Writer;", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "headerTableSizeSetting", HttpUrl.FRAGMENT_ENCODE_SET, "useCompression", "Ll9/l;", "out", "<init>", "(IZLl9/l;)V", HttpUrl.FRAGMENT_ENCODE_SET, "clearDynamicTable", "()V", "bytesToRecover", "evictToRecoverBytes", "(I)I", "Lokhttp3/internal/http2/Header;", "entry", "insertIntoDynamicTable", "(Lokhttp3/internal/http2/Header;)V", "adjustDynamicTableByteCount", HttpUrl.FRAGMENT_ENCODE_SET, "headerBlock", "writeHeaders", "(Ljava/util/List;)V", "value", "prefixMask", "bits", "writeInt", "(III)V", "Ll9/o;", "data", "writeByteString", "(Ll9/o;)V", "resizeHeaderTable", "(I)V", "I", "Z", "Ll9/l;", "smallestHeaderTableSizeSetting", "emitDynamicTableSizeUpdate", "maxDynamicTableByteCount", HttpUrl.FRAGMENT_ENCODE_SET, "dynamicTable", "[Lokhttp3/internal/http2/Header;", "nextHeaderIndex", "headerCount", "dynamicTableByteCount", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Hpack$Writer {

    @JvmField
    public Header[] dynamicTable;

    @JvmField
    public int dynamicTableByteCount;
    private boolean emitDynamicTableSizeUpdate;

    @JvmField
    public int headerCount;

    @JvmField
    public int headerTableSizeSetting;

    @JvmField
    public int maxDynamicTableByteCount;
    private int nextHeaderIndex;
    private final l out;
    private int smallestHeaderTableSizeSetting;
    private final boolean useCompression;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public Hpack$Writer(int i, boolean z, l lVar) {
        lVar.getClass();
        this.headerTableSizeSetting = i;
        this.useCompression = z;
        this.out = lVar;
        this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
        this.maxDynamicTableByteCount = i;
        Header[] headerArr = new Header[8];
        this.dynamicTable = headerArr;
        this.nextHeaderIndex = headerArr.length - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void adjustDynamicTableByteCount() {
        int i = this.maxDynamicTableByteCount;
        int i2 = this.dynamicTableByteCount;
        if (i < i2) {
            if (i == 0) {
                clearDynamicTable();
            } else {
                evictToRecoverBytes(i2 - i);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void clearDynamicTable() {
        ArraysKt.w(this.dynamicTable);
        this.nextHeaderIndex = this.dynamicTable.length - 1;
        this.headerCount = 0;
        this.dynamicTableByteCount = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:5:0x0008 */
    private final int evictToRecoverBytes(int bytesToRecover) {
        int i;
        int i2 = 0;
        if (bytesToRecover > 0) {
            int length = this.dynamicTable.length;
            while (true) {
                length--;
                i = this.nextHeaderIndex;
                if (length < i || bytesToRecover <= 0) {
                    break;
                }
                Header header = this.dynamicTable[length];
                header.getClass();
                bytesToRecover -= header.hpackSize;
                int i3 = this.dynamicTableByteCount;
                Header header2 = this.dynamicTable[length];
                header2.getClass();
                this.dynamicTableByteCount = i3 - header2.hpackSize;
                this.headerCount--;
                i2++;
            }
            Header[] headerArr = this.dynamicTable;
            System.arraycopy(headerArr, i + 1, headerArr, i + 1 + i2, this.headerCount);
            Header[] headerArr2 = this.dynamicTable;
            int i4 = this.nextHeaderIndex;
            Arrays.fill(headerArr2, i4 + 1, i4 + 1 + i2, (Object) null);
            this.nextHeaderIndex += i2;
        }
        return i2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void insertIntoDynamicTable(Header entry) {
        int i = entry.hpackSize;
        int i2 = this.maxDynamicTableByteCount;
        if (i > i2) {
            clearDynamicTable();
            return;
        }
        evictToRecoverBytes((this.dynamicTableByteCount + i) - i2);
        int i3 = this.headerCount + 1;
        Header[] headerArr = this.dynamicTable;
        if (i3 > headerArr.length) {
            Header[] headerArr2 = new Header[headerArr.length * 2];
            System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.dynamicTable = headerArr2;
        }
        int i4 = this.nextHeaderIndex;
        this.nextHeaderIndex = i4 - 1;
        this.dynamicTable[i4] = entry;
        this.headerCount++;
        this.dynamicTableByteCount += i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void resizeHeaderTable(int headerTableSizeSetting) {
        this.headerTableSizeSetting = headerTableSizeSetting;
        int iMin = Math.min(headerTableSizeSetting, Http2.INITIAL_MAX_FRAME_SIZE);
        int i = this.maxDynamicTableByteCount;
        if (i == iMin) {
            return;
        }
        if (iMin < i) {
            this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, iMin);
        }
        this.emitDynamicTableSizeUpdate = true;
        this.maxDynamicTableByteCount = iMin;
        adjustDynamicTableByteCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void writeByteString(o data) throws EOFException {
        data.getClass();
        if (this.useCompression) {
            Huffman huffman = Huffman.INSTANCE;
            if (huffman.encodedLength(data) < data.c()) {
                l lVar = new l();
                huffman.encode(data, lVar);
                o oVarF = lVar.f(lVar.c);
                writeInt(oVarF.c(), 127, 128);
                this.out.l0(oVarF);
                return;
            }
        }
        writeInt(data.c(), 127, 0);
        this.out.l0(data);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:22:0x0075  */
    public final void writeHeaders(List<Header> headerBlock) throws EOFException {
        int length;
        int length2;
        headerBlock.getClass();
        if (this.emitDynamicTableSizeUpdate) {
            int i = this.smallestHeaderTableSizeSetting;
            if (i < this.maxDynamicTableByteCount) {
                writeInt(i, 31, 32);
            }
            this.emitDynamicTableSizeUpdate = false;
            this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
            writeInt(this.maxDynamicTableByteCount, 31, 32);
        }
        int size = headerBlock.size();
        for (int i2 = 0; i2 < size; i2++) {
            Header header = headerBlock.get(i2);
            o oVarJ = header.name.j();
            o oVar = header.value;
            Hpack hpack = Hpack.INSTANCE;
            Integer num = hpack.getNAME_TO_FIRST_INDEX().get(oVarJ);
            if (num != null) {
                int iIntValue = num.intValue();
                length2 = iIntValue + 1;
                if (2 > length2 || length2 >= 8) {
                    length = length2;
                    length2 = -1;
                } else if (Intrinsics.areEqual(hpack.getSTATIC_HEADER_TABLE()[iIntValue].value, oVar)) {
                    length = length2;
                } else if (Intrinsics.areEqual(hpack.getSTATIC_HEADER_TABLE()[length2].value, oVar)) {
                    length = length2;
                    length2 = iIntValue + 2;
                } else {
                    length = length2;
                    length2 = -1;
                }
            } else {
                length = -1;
                length2 = -1;
            }
            if (length2 == -1) {
                int length3 = this.dynamicTable.length;
                for (int i3 = this.nextHeaderIndex + 1; i3 < length3; i3++) {
                    Header header2 = this.dynamicTable[i3];
                    header2.getClass();
                    if (Intrinsics.areEqual(header2.name, oVarJ)) {
                        Header header3 = this.dynamicTable[i3];
                        header3.getClass();
                        if (Intrinsics.areEqual(header3.value, oVar)) {
                            length2 = Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length + (i3 - this.nextHeaderIndex);
                            break;
                        } else if (length == -1) {
                            length = (i3 - this.nextHeaderIndex) + Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length;
                        }
                    }
                }
            }
            if (length2 != -1) {
                writeInt(length2, 127, 128);
            } else if (length == -1) {
                this.out.m0(64);
                writeByteString(oVarJ);
                writeByteString(oVar);
                insertIntoDynamicTable(header);
            } else {
                o oVar2 = Header.PSEUDO_PREFIX;
                oVarJ.getClass();
                oVar2.getClass();
                if (!oVarJ.i(oVar2, oVar2.c()) || Intrinsics.areEqual(Header.TARGET_AUTHORITY, oVarJ)) {
                    writeInt(length, 63, 64);
                    writeByteString(oVar);
                    insertIntoDynamicTable(header);
                } else {
                    writeInt(length, 15, 0);
                    writeByteString(oVar);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void writeInt(int value, int prefixMask, int bits) {
        l lVar = this.out;
        if (value < prefixMask) {
            lVar.m0(value | bits);
            return;
        }
        lVar.m0(bits | prefixMask);
        int i = value - prefixMask;
        while (true) {
            l lVar2 = this.out;
            if (i < 128) {
                lVar2.m0(i);
                return;
            } else {
                lVar2.m0(128 | (i & 127));
                i >>>= 7;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public Hpack$Writer(l lVar) {
        this(0, false, lVar, 3, null);
        lVar.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public Hpack$Writer(int i, l lVar) {
        this(i, false, lVar, 2, null);
        lVar.getClass();
    }

    public /* synthetic */ Hpack$Writer(int i, boolean z, l lVar, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 4096 : i, (i2 & 2) != 0 ? true : z, lVar);
    }
}
