package okhttp3.internal.http2;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import l9.a0;
import l9.g0;
import l9.l;
import l9.n;
import l9.o;
import n0.b;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0006\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u000fJ\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0015\u0010\u000bJ\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0018\u0010\u000bJ\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010!\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0004H\u0002¢\u0006\u0004\b#\u0010$J\u0013\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001f0%¢\u0006\u0004\b&\u0010'J\r\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010$J\r\u0010(\u001a\u00020\t¢\u0006\u0004\b(\u0010\u000bJ\u001d\u0010+\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0004¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020\u0019¢\u0006\u0004\b-\u0010.R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010/R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010/R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00020\u001f008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u0010\u0003\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00104R\u001e\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u00108\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u0010/R\u0016\u00109\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b9\u0010/R\u0016\u0010:\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b:\u0010/¨\u0006;"}, d2 = {"Lokhttp3/internal/http2/Hpack$Reader;", HttpUrl.FRAGMENT_ENCODE_SET, "Ll9/g0;", "source", HttpUrl.FRAGMENT_ENCODE_SET, "headerTableSizeSetting", "maxDynamicTableByteCount", "<init>", "(Ll9/g0;II)V", HttpUrl.FRAGMENT_ENCODE_SET, "adjustDynamicTableByteCount", "()V", "clearDynamicTable", "bytesToRecover", "evictToRecoverBytes", "(I)I", "index", "readIndexedHeader", "(I)V", "dynamicTableIndex", "readLiteralHeaderWithoutIndexingIndexedName", "readLiteralHeaderWithoutIndexingNewName", "nameIndex", "readLiteralHeaderWithIncrementalIndexingIndexedName", "readLiteralHeaderWithIncrementalIndexingNewName", "Ll9/o;", "getName", "(I)Ll9/o;", HttpUrl.FRAGMENT_ENCODE_SET, "isStaticHeader", "(I)Z", "Lokhttp3/internal/http2/Header;", "entry", "insertIntoDynamicTable", "(ILokhttp3/internal/http2/Header;)V", "readByte", "()I", HttpUrl.FRAGMENT_ENCODE_SET, "getAndResetHeaderList", "()Ljava/util/List;", "readHeaders", "firstByte", "prefixMask", "readInt", "(II)I", "readByteString", "()Ll9/o;", "I", HttpUrl.FRAGMENT_ENCODE_SET, "headerList", "Ljava/util/List;", "Ll9/n;", "Ll9/n;", HttpUrl.FRAGMENT_ENCODE_SET, "dynamicTable", "[Lokhttp3/internal/http2/Header;", "nextHeaderIndex", "headerCount", "dynamicTableByteCount", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Hpack$Reader {

    @JvmField
    public Header[] dynamicTable;

    @JvmField
    public int dynamicTableByteCount;

    @JvmField
    public int headerCount;
    private final List<Header> headerList;
    private final int headerTableSizeSetting;
    private int maxDynamicTableByteCount;
    private int nextHeaderIndex;
    private final n source;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public Hpack$Reader(g0 g0Var, int i, int i2) {
        g0Var.getClass();
        this.headerTableSizeSetting = i;
        this.maxDynamicTableByteCount = i2;
        this.headerList = new ArrayList();
        this.source = new a0(g0Var);
        this.dynamicTable = new Header[8];
        this.nextHeaderIndex = 7;
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
    private final int dynamicTableIndex(int index) {
        return this.nextHeaderIndex + 1 + index;
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
                int i3 = header.hpackSize;
                bytesToRecover -= i3;
                this.dynamicTableByteCount -= i3;
                this.headerCount--;
                i2++;
            }
            Header[] headerArr = this.dynamicTable;
            System.arraycopy(headerArr, i + 1, headerArr, i + 1 + i2, this.headerCount);
            this.nextHeaderIndex += i2;
        }
        return i2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final o getName(int index) {
        if (isStaticHeader(index)) {
            return Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[index].name;
        }
        int iDynamicTableIndex = dynamicTableIndex(index - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
        if (iDynamicTableIndex >= 0) {
            Header[] headerArr = this.dynamicTable;
            if (iDynamicTableIndex < headerArr.length) {
                Header header = headerArr[iDynamicTableIndex];
                header.getClass();
                return header.name;
            }
        }
        b.y(index + 1, "Header index too large ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void insertIntoDynamicTable(int index, Header entry) {
        this.headerList.add(entry);
        int i = entry.hpackSize;
        if (index != -1) {
            Header header = this.dynamicTable[dynamicTableIndex(index)];
            header.getClass();
            i -= header.hpackSize;
        }
        int i2 = this.maxDynamicTableByteCount;
        if (i > i2) {
            clearDynamicTable();
            return;
        }
        int iEvictToRecoverBytes = evictToRecoverBytes((this.dynamicTableByteCount + i) - i2);
        if (index == -1) {
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
        } else {
            this.dynamicTable[dynamicTableIndex(index) + iEvictToRecoverBytes + index] = entry;
        }
        this.dynamicTableByteCount += i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean isStaticHeader(int index) {
        return index >= 0 && index <= Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int readByte() {
        return Util.and(this.source.readByte(), 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readIndexedHeader(int index) {
        if (isStaticHeader(index)) {
            this.headerList.add(Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[index]);
            return;
        }
        int iDynamicTableIndex = dynamicTableIndex(index - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
        if (iDynamicTableIndex >= 0) {
            Header[] headerArr = this.dynamicTable;
            if (iDynamicTableIndex < headerArr.length) {
                List<Header> list = this.headerList;
                Header header = headerArr[iDynamicTableIndex];
                header.getClass();
                list.add(header);
                return;
            }
        }
        b.y(index + 1, "Header index too large ");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readLiteralHeaderWithIncrementalIndexingIndexedName(int nameIndex) {
        insertIntoDynamicTable(-1, new Header(getName(nameIndex), readByteString()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readLiteralHeaderWithIncrementalIndexingNewName() {
        insertIntoDynamicTable(-1, new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readLiteralHeaderWithoutIndexingIndexedName(int index) {
        this.headerList.add(new Header(getName(index), readByteString()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readLiteralHeaderWithoutIndexingNewName() {
        this.headerList.add(new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Header> getAndResetHeaderList() {
        List<Header> list = CollectionsKt.toList(this.headerList);
        this.headerList.clear();
        return list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: maxDynamicTableByteCount, reason: from getter */
    public final int getMaxDynamicTableByteCount() {
        return this.maxDynamicTableByteCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o readByteString() {
        int i = readByte();
        boolean z = (i & 128) == 128;
        long j = readInt(i, 127);
        if (!z) {
            return this.source.f(j);
        }
        l lVar = new l();
        Huffman.INSTANCE.decode(this.source, j, lVar);
        return lVar.f(lVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void readHeaders() {
        while (!this.source.k()) {
            int iAnd = Util.and(this.source.readByte(), 255);
            if (iAnd == 128) {
                b.A("index == 0");
                return;
            }
            if ((iAnd & 128) == 128) {
                readIndexedHeader(readInt(iAnd, 127) - 1);
            } else if (iAnd == 64) {
                readLiteralHeaderWithIncrementalIndexingNewName();
            } else if ((iAnd & 64) == 64) {
                readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(iAnd, 63) - 1);
            } else if ((iAnd & 32) == 32) {
                int i = readInt(iAnd, 31);
                this.maxDynamicTableByteCount = i;
                if (i < 0 || i > this.headerTableSizeSetting) {
                    b.y(this.maxDynamicTableByteCount, "Invalid dynamic table size update ");
                    return;
                }
                adjustDynamicTableByteCount();
            } else if (iAnd == 16 || iAnd == 0) {
                readLiteralHeaderWithoutIndexingNewName();
            } else {
                readLiteralHeaderWithoutIndexingIndexedName(readInt(iAnd, 15) - 1);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int readInt(int firstByte, int prefixMask) {
        int i = firstByte & prefixMask;
        if (i < prefixMask) {
            return i;
        }
        int i2 = 0;
        while (true) {
            int i3 = readByte();
            if ((i3 & 128) == 0) {
                return prefixMask + (i3 << i2);
            }
            prefixMask += (i3 & 127) << i2;
            i2 += 7;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public Hpack$Reader(g0 g0Var, int i) {
        this(g0Var, i, 0, 4, null);
        g0Var.getClass();
    }

    public /* synthetic */ Hpack$Reader(g0 g0Var, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(g0Var, i, (i3 & 4) != 0 ? i : i2);
    }
}
