package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import l9.m;
import l9.n;
import l9.o;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.nntp.NNTP;
import org.apache.commons.net.telnet.TelnetCommand;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\"B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000b¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0017\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lokhttp3/internal/http2/Huffman;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", HttpUrl.FRAGMENT_ENCODE_SET, "symbol", "code", "codeBitCount", HttpUrl.FRAGMENT_ENCODE_SET, "addCode", "(III)V", "Ll9/o;", "source", "Ll9/m;", "sink", "encode", "(Ll9/o;Ll9/m;)V", "bytes", "encodedLength", "(Ll9/o;)I", "Ll9/n;", HttpUrl.FRAGMENT_ENCODE_SET, "byteCount", "decode", "(Ll9/n;JLl9/m;)V", HttpUrl.FRAGMENT_ENCODE_SET, "CODES", "[I", HttpUrl.FRAGMENT_ENCODE_SET, "CODE_BIT_COUNTS", "[B", "Lokhttp3/internal/http2/Huffman$Node;", "root", "Lokhttp3/internal/http2/Huffman$Node;", "Node", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Huffman {
    public static final Huffman INSTANCE = new Huffman();
    private static final int[] CODES = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, TelnetCommand.EL, 2042, 1018, 1019, TelnetCommand.GA, 2043, 250, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, TelnetCommand.WONT, 115, TelnetCommand.DO, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, NNTP.DEFAULT_PORT, FTPReply.SERVICE_NOT_READY, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};
    private static final byte[] CODE_BIT_COUNTS = {13, 23, 28, 28, 28, 28, 28, 28, 28, 24, 30, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 28, 6, 10, 10, 12, 13, 6, 8, 11, 10, 10, 8, 11, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, 15, 6, 12, 10, 13, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, 13, 19, 13, 14, 6, 15, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, 15, 11, 14, 13, 28, 20, 22, 20, 20, 22, 22, 22, 23, 22, 23, 23, 23, 23, 23, 24, 23, 24, 24, 22, 23, 24, 23, 23, 23, 23, 21, 22, 23, 22, 23, 23, 24, 22, 21, 20, 22, 22, 23, 23, 21, 23, 22, 22, 24, 21, 22, 23, 23, 21, 21, 22, 21, 23, 22, 23, 23, 20, 22, 22, 22, 23, 22, 22, 23, 26, 26, 20, 19, 22, 23, 22, 25, 26, 26, 26, 27, 27, 26, 24, 25, 19, 21, 26, 27, 27, 26, 27, 24, 21, 21, 26, 26, 28, 27, 27, 27, 20, 24, 20, 21, 22, 21, 21, 23, 22, 22, 25, 25, 24, 24, 26, 23, 26, 27, 26, 26, 27, 27, 27, 27, 27, 28, 27, 27, 27, 27, 27, 26};
    private static final Huffman$Node root = new Huffman$Node();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        for (int i = 0; i < 256; i++) {
            INSTANCE.addCode(i, CODES[i], CODE_BIT_COUNTS[i]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Huffman() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void addCode(int symbol, int code, int codeBitCount) {
        Huffman$Node huffman$Node = new Huffman$Node(symbol, codeBitCount);
        Huffman$Node huffman$Node2 = root;
        while (codeBitCount > 8) {
            codeBitCount -= 8;
            int i = (code >>> codeBitCount) & 255;
            Huffman$Node[] children = huffman$Node2.getChildren();
            children.getClass();
            Huffman$Node huffman$Node3 = children[i];
            if (huffman$Node3 == null) {
                huffman$Node3 = new Huffman$Node();
                children[i] = huffman$Node3;
            }
            huffman$Node2 = huffman$Node3;
        }
        int i2 = 8 - codeBitCount;
        int i3 = (code << i2) & 255;
        Huffman$Node[] children2 = huffman$Node2.getChildren();
        children2.getClass();
        ArraysKt.fill(children2, huffman$Node, i3, (1 << i2) + i3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void decode(n source, long byteCount, m sink) {
        source.getClass();
        sink.getClass();
        Huffman$Node huffman$Node = root;
        int iAnd = 0;
        int terminalBitCount = 0;
        for (long j = 0; j < byteCount; j++) {
            iAnd = (iAnd << 8) | Util.and(source.readByte(), 255);
            terminalBitCount += 8;
            while (terminalBitCount >= 8) {
                Huffman$Node[] children = huffman$Node.getChildren();
                children.getClass();
                huffman$Node = children[(iAnd >>> (terminalBitCount - 8)) & 255];
                huffman$Node.getClass();
                if (huffman$Node.getChildren() == null) {
                    sink.writeByte(huffman$Node.getSymbol());
                    terminalBitCount -= huffman$Node.getTerminalBitCount();
                    huffman$Node = root;
                } else {
                    terminalBitCount -= 8;
                }
            }
        }
        while (terminalBitCount > 0) {
            Huffman$Node[] children2 = huffman$Node.getChildren();
            children2.getClass();
            Huffman$Node huffman$Node2 = children2[(iAnd << (8 - terminalBitCount)) & 255];
            huffman$Node2.getClass();
            if (huffman$Node2.getChildren() != null || huffman$Node2.getTerminalBitCount() > terminalBitCount) {
                return;
            }
            sink.writeByte(huffman$Node2.getSymbol());
            terminalBitCount -= huffman$Node2.getTerminalBitCount();
            huffman$Node = root;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void encode(o source, m sink) {
        source.getClass();
        sink.getClass();
        int iC = source.c();
        long j = 0;
        int i = 0;
        for (int i2 = 0; i2 < iC; i2++) {
            int iAnd = Util.and(source.f(i2), 255);
            int i3 = CODES[iAnd];
            byte b = CODE_BIT_COUNTS[iAnd];
            j = (j << b) | ((long) i3);
            i += b;
            while (i >= 8) {
                i -= 8;
                sink.writeByte((int) (j >> i));
            }
        }
        if (i > 0) {
            sink.writeByte((int) ((j << (8 - i)) | (255 >>> i)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int encodedLength(o bytes) {
        bytes.getClass();
        int iC = bytes.c();
        long j = 0;
        for (int i = 0; i < iC; i++) {
            j += (long) CODE_BIT_COUNTS[Util.and(bytes.f(i), 255)];
        }
        return (int) ((j + ((long) 7)) >> 3);
    }
}
