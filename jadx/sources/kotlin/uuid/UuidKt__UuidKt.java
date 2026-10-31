package kotlin.uuid;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.HexExtensionsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a,\u0010\b\u001a\u00020\t*\u00020\u00052\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0001\u001a\u0014\u0010\u000e\u001a\u00020\t*\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u001c\u0010\u0010\u001a\u00020\t*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0000\u001a\u0010\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u000fH\u0001\u001a\u0010\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u000fH\u0001\u001a\u0019\u0010\u0016\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0002\b\u0018\u001a\u0019\u0010\u0016\u001a\u00020\u000f*\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0002\b\u0018¨\u0006\u001a"}, m3159d2 = {"uuidFromRandomBytes", "Lkotlin/uuid/Uuid;", "randomBytes", "", "getLongAtCommonImpl", "", "index", "", "formatBytesIntoCommonImpl", "", "dst", "dstOffset", "startIndex", "endIndex", "checkHyphenAt", "", "setLongAtCommonImpl", "value", "uuidParseHexDashCommonImpl", "hexDashString", "uuidParseHexCommonImpl", "hexString", "truncateForErrorMessage", "maxLength", "truncateForErrorMessage$UuidKt__UuidKt", "maxSize", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/uuid/UuidKt")
@SourceDebugExtension({"SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/UuidKt__UuidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,648:1\n1#2:649\n*E\n"})
class UuidKt__UuidKt extends UuidKt__UuidJVMKt {
    public static final void checkHyphenAt(String str, int i10) {
        str.getClass();
        if (str.charAt(i10) == '-') {
            return;
        }
        StringBuilder sbM166q = AbstractC0074a.m166q(i10, "Expected '-' (hyphen) at index ", ", but was '");
        sbM166q.append(str.charAt(i10));
        sbM166q.append('\'');
        throw new IllegalArgumentException(sbM166q.toString().toString());
    }

    @ExperimentalUuidApi
    public static final void formatBytesIntoCommonImpl(long j10, byte[] bArr, int i10, int i11, int i12) {
        bArr.getClass();
        int i13 = 7 - i11;
        int i14 = 8 - i12;
        if (i14 > i13) {
            return;
        }
        while (true) {
            int i15 = HexExtensionsKt.getBYTE_TO_LOWER_CASE_HEX_DIGITS()[(int) ((j10 >> (i13 << 3)) & 255)];
            int i16 = i10 + 1;
            bArr[i10] = (byte) (i15 >> 8);
            i10 += 2;
            bArr[i16] = (byte) i15;
            if (i13 == i14) {
                return;
            } else {
                i13--;
            }
        }
    }

    public static final long getLongAtCommonImpl(byte[] bArr, int i10) {
        bArr.getClass();
        return (((long) bArr[i10 + 7]) & 255) | ((((long) bArr[i10]) & 255) << 56) | ((((long) bArr[i10 + 1]) & 255) << 48) | ((((long) bArr[i10 + 2]) & 255) << 40) | ((((long) bArr[i10 + 3]) & 255) << 32) | ((((long) bArr[i10 + 4]) & 255) << 24) | ((((long) bArr[i10 + 5]) & 255) << 16) | ((((long) bArr[i10 + 6]) & 255) << 8);
    }

    public static final void setLongAtCommonImpl(byte[] bArr, int i10, long j10) {
        bArr.getClass();
        int i11 = 7;
        while (-1 < i11) {
            bArr[i10] = (byte) (j10 >> (i11 << 3));
            i11--;
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String truncateForErrorMessage$UuidKt__UuidKt(String str, int i10) {
        return str.length() <= i10 ? str : str.substring(0, i10).concat("...");
    }

    @ExperimentalUuidApi
    public static final Uuid uuidFromRandomBytes(byte[] bArr) {
        bArr.getClass();
        byte b10 = (byte) (bArr[6] & 15);
        bArr[6] = b10;
        bArr[6] = (byte) (b10 | 64);
        byte b11 = (byte) (bArr[8] & 63);
        bArr[8] = b11;
        bArr[8] = (byte) (b11 | ByteCompanionObject.MIN_VALUE);
        return Uuid.Companion.fromByteArray(bArr);
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexCommonImpl(String str) {
        str.getClass();
        return Uuid.Companion.fromLongs(HexExtensionsKt.hexToLong$default(str, 0, 16, null, 4, null), HexExtensionsKt.hexToLong$default(str, 16, 32, null, 4, null));
    }

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

    /* JADX INFO: Access modifiers changed from: private */
    public static final String truncateForErrorMessage$UuidKt__UuidKt(byte[] bArr, int i10) {
        return ArraysKt___ArraysKt.joinToString$default(bArr, (CharSequence) null, (CharSequence) "[", (CharSequence) "]", i10, (CharSequence) null, (Function1) null, 49, (Object) null);
    }
}
