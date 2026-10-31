package kotlin.text;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.ExperimentalStdlibApi;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000<\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a2\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\n\u0010\u000b\u001a\u001c\u0010\f\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\r\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u000e2\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001c\u0010\u0011\u001a\u00020\u000e*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u0012\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00132\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001c\u0010\u0016\u001a\u00020\u0013*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u0017\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00182\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001c\u0010\u001b\u001a\u00020\u0018*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u001d2\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001c\u0010 \u001a\u00020\u001d*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010!¨\u0006\""}, m3159d2 = {"toHexString", "", "Lkotlin/UByteArray;", "format", "Lkotlin/text/HexFormat;", "toHexString-zHuV2wU", "([BLkotlin/text/HexFormat;)Ljava/lang/String;", "startIndex", "", "endIndex", "toHexString-lZCiFrA", "([BIILkotlin/text/HexFormat;)Ljava/lang/String;", "hexToUByteArray", "(Ljava/lang/String;Lkotlin/text/HexFormat;)[B", "Lkotlin/UByte;", "toHexString-ZQbaR00", "(BLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToUByte", "(Ljava/lang/String;Lkotlin/text/HexFormat;)B", "Lkotlin/UShort;", "toHexString-r3ox_E0", "(SLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToUShort", "(Ljava/lang/String;Lkotlin/text/HexFormat;)S", "Lkotlin/UInt;", "toHexString-8M7LxHw", "(ILkotlin/text/HexFormat;)Ljava/lang/String;", "hexToUInt", "(Ljava/lang/String;Lkotlin/text/HexFormat;)I", "Lkotlin/ULong;", "toHexString-8UJCm-I", "(JLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToULong", "(Ljava/lang/String;Lkotlin/text/HexFormat;)J", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class UHexExtensionsKt {
    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final byte hexToUByte(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return UByte.m6106constructorimpl(HexExtensionsKt.hexToByte(str, hexFormat));
    }

    public static /* synthetic */ byte hexToUByte$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        str.getClass();
        hexFormat.getClass();
        return UByte.m6106constructorimpl(HexExtensionsKt.hexToByte(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    private static final byte[] hexToUByteArray(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return UByteArray.m6159constructorimpl(HexExtensionsKt.hexToByteArray(str, hexFormat));
    }

    public static /* synthetic */ byte[] hexToUByteArray$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        str.getClass();
        hexFormat.getClass();
        return UByteArray.m6159constructorimpl(HexExtensionsKt.hexToByteArray(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int hexToUInt(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return UInt.m6183constructorimpl(HexExtensionsKt.hexToInt(str, hexFormat));
    }

    public static /* synthetic */ int hexToUInt$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        str.getClass();
        hexFormat.getClass();
        return UInt.m6183constructorimpl(HexExtensionsKt.hexToInt(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final long hexToULong(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return ULong.m6262constructorimpl(HexExtensionsKt.hexToLong(str, hexFormat));
    }

    public static /* synthetic */ long hexToULong$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        str.getClass();
        hexFormat.getClass();
        return ULong.m6262constructorimpl(HexExtensionsKt.hexToLong(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final short hexToUShort(String str, HexFormat hexFormat) {
        str.getClass();
        hexFormat.getClass();
        return UShort.m6369constructorimpl(HexExtensionsKt.hexToShort(str, hexFormat));
    }

    public static /* synthetic */ short hexToUShort$default(String str, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        str.getClass();
        hexFormat.getClass();
        return UShort.m6369constructorimpl(HexExtensionsKt.hexToShort(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: toHexString-8M7LxHw, reason: not valid java name */
    private static final String m7386toHexString8M7LxHw(int i10, HexFormat hexFormat) {
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(i10, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-8M7LxHw$default, reason: not valid java name */
    public static /* synthetic */ String m7387toHexString8M7LxHw$default(int i10, HexFormat hexFormat, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(i10, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: toHexString-8UJCm-I, reason: not valid java name */
    private static final String m7388toHexString8UJCmI(long j10, HexFormat hexFormat) {
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(j10, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-8UJCm-I$default, reason: not valid java name */
    public static /* synthetic */ String m7389toHexString8UJCmI$default(long j10, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(j10, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: toHexString-ZQbaR00, reason: not valid java name */
    private static final String m7390toHexStringZQbaR00(byte b10, HexFormat hexFormat) {
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(b10, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-ZQbaR00$default, reason: not valid java name */
    public static /* synthetic */ String m7391toHexStringZQbaR00$default(byte b10, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(b10, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    /* JADX INFO: renamed from: toHexString-lZCiFrA, reason: not valid java name */
    private static final String m7392toHexStringlZCiFrA(byte[] bArr, int i10, int i11, HexFormat hexFormat) {
        bArr.getClass();
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(bArr, i10, i11, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-lZCiFrA$default, reason: not valid java name */
    public static /* synthetic */ String m7393toHexStringlZCiFrA$default(byte[] bArr, int i10, int i11, HexFormat hexFormat, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = UByteArray.m6165getSizeimpl(bArr);
        }
        if ((i12 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        bArr.getClass();
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(bArr, i10, i11, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: toHexString-r3ox_E0, reason: not valid java name */
    private static final String m7394toHexStringr3ox_E0(short s5, HexFormat hexFormat) {
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(s5, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-r3ox_E0$default, reason: not valid java name */
    public static /* synthetic */ String m7395toHexStringr3ox_E0$default(short s5, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(s5, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    /* JADX INFO: renamed from: toHexString-zHuV2wU, reason: not valid java name */
    private static final String m7396toHexStringzHuV2wU(byte[] bArr, HexFormat hexFormat) {
        bArr.getClass();
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(bArr, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-zHuV2wU$default, reason: not valid java name */
    public static /* synthetic */ String m7397toHexStringzHuV2wU$default(byte[] bArr, HexFormat hexFormat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        bArr.getClass();
        hexFormat.getClass();
        return HexExtensionsKt.toHexString(bArr, hexFormat);
    }
}
