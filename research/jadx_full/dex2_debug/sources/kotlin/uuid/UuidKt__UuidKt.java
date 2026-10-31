package kotlin.uuid;

import ai.onnxruntime.a;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.HexExtensionsKt;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a,\u0010\b\u001a\u00020\t*\u00020\u00052\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0001\u001a\u0014\u0010\u000e\u001a\u00020\t*\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u001c\u0010\u0010\u001a\u00020\t*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0000\u001a\u0010\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u000fH\u0001\u001a\u0010\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u000fH\u0001\u001a\u0019\u0010\u0016\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0002\b\u0018\u001a\u0019\u0010\u0016\u001a\u00020\u000f*\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0002\b\u0018¨\u0006\u001a"}, d2 = {"uuidFromRandomBytes", "Lkotlin/uuid/Uuid;", "randomBytes", HttpUrl.FRAGMENT_ENCODE_SET, "getLongAtCommonImpl", HttpUrl.FRAGMENT_ENCODE_SET, "index", HttpUrl.FRAGMENT_ENCODE_SET, "formatBytesIntoCommonImpl", HttpUrl.FRAGMENT_ENCODE_SET, "dst", "dstOffset", "startIndex", "endIndex", "checkHyphenAt", HttpUrl.FRAGMENT_ENCODE_SET, "setLongAtCommonImpl", "value", "uuidParseHexDashCommonImpl", "hexDashString", "uuidParseHexCommonImpl", "hexString", "truncateForErrorMessage", "maxLength", "truncateForErrorMessage$UuidKt__UuidKt", "maxSize", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/uuid/UuidKt")
@SourceDebugExtension({"SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/UuidKt__UuidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,648:1\n1#2:649\n*E\n"})
class UuidKt__UuidKt extends UuidKt__UuidJVMKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ String access$truncateForErrorMessage(String str, int i) {
        return truncateForErrorMessage$UuidKt__UuidKt(str, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void checkHyphenAt(String str, int i) {
        str.getClass();
        if (str.charAt(i) == '-') {
            return;
        }
        StringBuilder sbQ = a.q(i, "Expected '-' (hyphen) at index ", ", but was '");
        sbQ.append(str.charAt(i));
        sbQ.append('\'');
        throw new IllegalArgumentException(sbQ.toString().toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final void formatBytesIntoCommonImpl(long j, byte[] bArr, int i, int i2, int i3) {
        bArr.getClass();
        int i4 = 7 - i2;
        int i5 = 8 - i3;
        if (i5 > i4) {
            return;
        }
        while (true) {
            int i6 = HexExtensionsKt.getBYTE_TO_LOWER_CASE_HEX_DIGITS()[(int) ((j >> (i4 << 3)) & 255)];
            int i7 = i + 1;
            bArr[i] = (byte) (i6 >> 8);
            i += 2;
            bArr[i7] = (byte) i6;
            if (i4 == i5) {
                return;
            } else {
                i4--;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final long getLongAtCommonImpl(byte[] bArr, int i) {
        bArr.getClass();
        return (((long) bArr[i + 7]) & 255) | ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void setLongAtCommonImpl(byte[] bArr, int i, long j) {
        bArr.getClass();
        int i2 = 7;
        while (-1 < i2) {
            bArr[i] = (byte) (j >> (i2 << 3));
            i2--;
            i++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final String truncateForErrorMessage$UuidKt__UuidKt(String str, int i) {
        return str.length() <= i ? str : str.substring(0, i).concat("...");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final Uuid uuidFromRandomBytes(byte[] bArr) {
        bArr.getClass();
        byte b = (byte) (bArr[6] & 15);
        bArr[6] = b;
        bArr[6] = (byte) (b | 64);
        byte b2 = (byte) (bArr[8] & 63);
        bArr[8] = b2;
        bArr[8] = (byte) (b2 | 128);
        return Uuid.Companion.fromByteArray(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final Uuid uuidParseHexCommonImpl(String str) {
        str.getClass();
        return Uuid.Companion.fromLongs(HexExtensionsKt.hexToLong$default(str, 0, 16, null, 4, null), HexExtensionsKt.hexToLong$default(str, 16, 32, null, 4, null));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final Uuid uuidParseHexDashCommonImpl(String str) {
        str.getClass();
        long jHexToLong$default = HexExtensionsKt.hexToLong$default(str, 0, 8, null, 4, null);
        checkHyphenAt(str, 8);
        long jHexToLong$default2 = HexExtensionsKt.hexToLong$default(str, 9, 13, null, 4, null);
        checkHyphenAt(str, 13);
        long jHexToLong$default3 = HexExtensionsKt.hexToLong$default(str, 14, 18, null, 4, null);
        checkHyphenAt(str, 18);
        long jHexToLong$default4 = HexExtensionsKt.hexToLong$default(str, 19, 23, null, 4, null);
        checkHyphenAt(str, 23);
        return Uuid.Companion.fromLongs((jHexToLong$default << 32) | (jHexToLong$default2 << 16) | jHexToLong$default3, (jHexToLong$default4 << 48) | HexExtensionsKt.hexToLong$default(str, 24, 36, null, 4, null));
    }

    public static final /* synthetic */ String access$truncateForErrorMessage(byte[] bArr, int i) {
        return truncateForErrorMessage$UuidKt__UuidKt(bArr, i);
    }

    private static final String truncateForErrorMessage$UuidKt__UuidKt(byte[] bArr, int i) {
        return ArraysKt.y(i, bArr);
    }
}
