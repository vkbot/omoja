package kotlin.p118io.encoding;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.C0674b;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.WasExperimental;
import kotlin.collections.AbstractList;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.C2174b;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "2.2")
@Metadata(m3158d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\t\b\u0017\u0018\u0000 B2\u00020\u0001:\u0002ABB)\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\bH\u0007J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J\"\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J=\u0010\u001f\u001a\u0002H \"\f\b\u0000\u0010 *\u00060!j\u0002`\"2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u0002H 2\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006¢\u0006\u0002\u0010#J\"\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J\"\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J%\u0010'\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b(J5\u0010)\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b*J\u0015\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0006H\u0000¢\u0006\u0002\b-J\b\u0010.\u001a\u00020\u0003H\u0002J0\u0010/\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J%\u00100\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b1J%\u00102\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b3J\u0015\u00104\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0000¢\u0006\u0002\b5J(\u00106\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u00107\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0006H\u0002J\u0010\u00109\u001a\u00020:2\u0006\u00107\u001a\u00020\u0006H\u0002J \u0010;\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J%\u0010<\u001a\u00020:2\u0006\u0010,\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b=J \u0010>\u001a\u00020:2\u0006\u0010?\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006H\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006C"}, m3159d2 = {"Lkotlin/io/encoding/Base64;", "", "isUrlSafe", "", "isMimeScheme", "mimeLineLength", "", "paddingOption", "Lkotlin/io/encoding/Base64$PaddingOption;", "<init>", "(ZZILkotlin/io/encoding/Base64$PaddingOption;)V", "isUrlSafe$kotlin_stdlib", "()Z", "isMimeScheme$kotlin_stdlib", "getMimeLineLength$kotlin_stdlib", "()I", "getPaddingOption$kotlin_stdlib", "()Lkotlin/io/encoding/Base64$PaddingOption;", "mimeGroupsPerLine", "withPadding", "option", "encodeToByteArray", "", "source", "startIndex", "endIndex", "encodeIntoByteArray", "destination", "destinationOffset", "encode", "", "encodeToAppendable", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;", "decode", "decodeIntoByteArray", "", "encodeToByteArrayImpl", "encodeToByteArrayImpl$kotlin_stdlib", "encodeIntoByteArrayImpl", "encodeIntoByteArrayImpl$kotlin_stdlib", "encodeSize", "sourceSize", "encodeSize$kotlin_stdlib", "shouldPadOnEncode", "decodeImpl", "decodeSize", "decodeSize$kotlin_stdlib", "charsToBytesImpl", "charsToBytesImpl$kotlin_stdlib", "bytesToStringImpl", "bytesToStringImpl$kotlin_stdlib", "handlePaddingSymbol", "padIndex", "byteStart", "checkPaddingIsAllowed", "", "skipIllegalSymbolsIfMime", "checkSourceBounds", "checkSourceBounds$kotlin_stdlib", "checkDestinationBounds", "destinationSize", "capacityNeeded", "PaddingOption", "Default", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@WasExperimental(markerClass = {ExperimentalEncodingApi.class})
public class Base64 {
    private static final Base64 Mime;
    private static final Base64 Pem;
    private static final Base64 UrlSafe;
    private static final int bitsPerByte = 8;
    private static final int bitsPerSymbol = 6;
    public static final int bytesPerGroup = 3;
    private static final int lineLengthMime = 76;
    private static final int lineLengthPem = 64;
    public static final byte padSymbol = 61;
    public static final int symbolsPerGroup = 4;
    private final boolean isMimeScheme;
    private final boolean isUrlSafe;
    private final int mimeGroupsPerLine;
    private final int mimeLineLength;
    private final PaddingOption paddingOption;

    /* JADX INFO: renamed from: Default, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final byte[] mimeLineSeparatorSymbols = {13, 10};

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @SinceKotlin(version = "2.0")
    @Metadata(m3158d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m3159d2 = {"Lkotlin/io/encoding/Base64$PaddingOption;", "", "<init>", "(Ljava/lang/String;I)V", "PRESENT", "ABSENT", "PRESENT_OPTIONAL", "ABSENT_OPTIONAL", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public enum PaddingOption {
        PRESENT,
        ABSENT,
        PRESENT_OPTIONAL,
        ABSENT_OPTIONAL;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<PaddingOption> getEntries() {
            return $ENTRIES;
        }
    }

    static {
        PaddingOption paddingOption = PaddingOption.PRESENT;
        UrlSafe = new Base64(true, false, -1, paddingOption);
        Mime = new Base64(false, true, lineLengthMime, paddingOption);
        Pem = new Base64(false, true, 64, paddingOption);
    }

    private Base64(boolean z9, boolean z10, int i10, PaddingOption paddingOption) {
        this.isUrlSafe = z9;
        this.isMimeScheme = z10;
        this.mimeLineLength = i10;
        this.paddingOption = paddingOption;
        if (z9 && z10) {
            C1929i.m3029k("Failed requirement.");
            throw null;
        }
        this.mimeGroupsPerLine = i10 / 4;
    }

    private final void checkDestinationBounds(int destinationSize, int destinationOffset, int capacityNeeded) {
        if (destinationOffset < 0 || destinationOffset > destinationSize) {
            throw new IndexOutOfBoundsException(AbstractC0074a.m156g(destinationOffset, "destination offset: ", ", destination size: ", destinationSize));
        }
        int i10 = destinationOffset + capacityNeeded;
        if (i10 < 0 || i10 > destinationSize) {
            C2174b.m3446a(AbstractC0074a.m171v("The destination array does not have enough capacity, destination offset: ", destinationOffset, destinationSize, ", destination size: ", ", capacity needed: "), capacityNeeded);
        }
    }

    private final void checkPaddingIsAllowed(int padIndex) {
        if (this.paddingOption != PaddingOption.ABSENT) {
            return;
        }
        C1929i.m3029k(AbstractC0074a.m154e(padIndex, "The padding option is set to ABSENT, but the input has a pad character at index "));
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, CharSequence charSequence, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: decode");
            return null;
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = charSequence.length();
        }
        return base64.decode(charSequence, i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0081  */
    /* JADX WARN: Code duplicated, block: B:22:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00be A[SYNTHETIC] */
    private final int decodeImpl(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int[] iArr = this.isUrlSafe ? Base64Kt.base64UrlDecodeMap : Base64Kt.base64DecodeMap;
        int i16 = destinationOffset;
        int iHandlePaddingSymbol = startIndex;
        int i17 = -8;
        int i18 = 0;
        while (true) {
            if (iHandlePaddingSymbol >= endIndex) {
                i10 = 8;
                i11 = 0;
                break;
            }
            if (i17 != -8 || iHandlePaddingSymbol + 3 >= endIndex) {
                i10 = 8;
                i12 = 1;
                i13 = source[iHandlePaddingSymbol] & UByte.MAX_VALUE;
                i14 = iArr[i13];
                if (i14 < 0) {
                    iHandlePaddingSymbol++;
                    i18 = (i18 << 6) | i14;
                    i15 = i17 + 6;
                    if (i15 >= 0) {
                        destination[i16] = (byte) (i18 >>> i15);
                        i18 &= (i12 << i15) - 1;
                        i17 -= 2;
                        i16++;
                    } else {
                        i17 = i15;
                    }
                } else {
                    if (i14 == -2) {
                        iHandlePaddingSymbol = handlePaddingSymbol(source, iHandlePaddingSymbol, endIndex, i17);
                        i11 = i12;
                        break;
                    }
                    if (this.isMimeScheme) {
                        char c = (char) i13;
                        String string = Integer.toString(i13, CharsKt.checkRadix(i10));
                        string.getClass();
                        throw new IllegalArgumentException("Invalid symbol '" + c + "'(" + string + ") at index " + iHandlePaddingSymbol);
                    }
                    iHandlePaddingSymbol++;
                }
            } else {
                i10 = 8;
                int i19 = iHandlePaddingSymbol + 4;
                i12 = 1;
                int i20 = (iArr[source[iHandlePaddingSymbol] & UByte.MAX_VALUE] << 18) | (iArr[source[iHandlePaddingSymbol + 1] & UByte.MAX_VALUE] << 12) | (iArr[source[iHandlePaddingSymbol + 2] & UByte.MAX_VALUE] << 6) | iArr[source[iHandlePaddingSymbol + 3] & UByte.MAX_VALUE];
                if (i20 >= 0) {
                    destination[i16] = (byte) (i20 >> 16);
                    int i21 = i16 + 2;
                    destination[i16 + 1] = (byte) (i20 >> 8);
                    i16 += 3;
                    destination[i21] = (byte) i20;
                    iHandlePaddingSymbol = i19;
                } else {
                    i13 = source[iHandlePaddingSymbol] & UByte.MAX_VALUE;
                    i14 = iArr[i13];
                    if (i14 < 0) {
                        iHandlePaddingSymbol++;
                        i18 = (i18 << 6) | i14;
                        i15 = i17 + 6;
                        if (i15 >= 0) {
                            destination[i16] = (byte) (i18 >>> i15);
                            i18 &= (i12 << i15) - 1;
                            i17 -= 2;
                            i16++;
                        } else {
                            i17 = i15;
                        }
                    } else {
                        if (i14 == -2) {
                            iHandlePaddingSymbol = handlePaddingSymbol(source, iHandlePaddingSymbol, endIndex, i17);
                            i11 = i12;
                            break;
                        }
                        if (this.isMimeScheme) {
                            char c10 = (char) i13;
                            String string2 = Integer.toString(i13, CharsKt.checkRadix(i10));
                            string2.getClass();
                            throw new IllegalArgumentException("Invalid symbol '" + c10 + "'(" + string2 + ") at index " + iHandlePaddingSymbol);
                        }
                        iHandlePaddingSymbol++;
                    }
                }
            }
        }
        if (i17 == -2) {
            C1929i.m3029k("The last unit of input does not have enough bits");
            return 0;
        }
        if (i17 != -8 && i11 == 0 && this.paddingOption == PaddingOption.PRESENT) {
            C1929i.m3029k("The padding option is set to PRESENT, but the input is not properly padded");
            return 0;
        }
        if (i18 != 0) {
            C1929i.m3029k("The pad bits must be zeros");
            return 0;
        }
        int iSkipIllegalSymbolsIfMime = skipIllegalSymbolsIfMime(source, iHandlePaddingSymbol, endIndex);
        if (iSkipIllegalSymbolsIfMime >= endIndex) {
            return i16 - destinationOffset;
        }
        int i22 = source[iSkipIllegalSymbolsIfMime] & UByte.MAX_VALUE;
        char c11 = (char) i22;
        String string3 = Integer.toString(i22, CharsKt.checkRadix(i10));
        string3.getClass();
        StringBuilder sb = new StringBuilder("Symbol '");
        sb.append(c11);
        sb.append("'(");
        sb.append(string3);
        sb.append(") at index ");
        sb.append(iSkipIllegalSymbolsIfMime - 1);
        sb.append(" is prohibited after the pad character");
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, CharSequence charSequence, byte[] bArr, int i10, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
            return 0;
        }
        if ((i13 & 4) != 0) {
            i10 = 0;
        }
        if ((i13 & 8) != 0) {
            i11 = 0;
        }
        if ((i13 & 16) != 0) {
            i12 = charSequence.length();
        }
        return base64.decodeIntoByteArray(charSequence, bArr, i10, i11, i12);
    }

    public static /* synthetic */ String encode$default(Base64 base64, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: encode");
            return null;
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return base64.encode(bArr, i10, i11);
    }

    public static /* synthetic */ int encodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: encodeIntoByteArray");
            return 0;
        }
        if ((i13 & 4) != 0) {
            i10 = 0;
        }
        if ((i13 & 8) != 0) {
            i11 = 0;
        }
        if ((i13 & 16) != 0) {
            i12 = bArr.length;
        }
        return base64.encodeIntoByteArray(bArr, bArr2, i10, i11, i12);
    }

    public static /* synthetic */ Appendable encodeToAppendable$default(Base64 base64, byte[] bArr, Appendable appendable, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: encodeToAppendable");
            return null;
        }
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        if ((i12 & 8) != 0) {
            i11 = bArr.length;
        }
        return base64.encodeToAppendable(bArr, appendable, i10, i11);
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(Base64 base64, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: encodeToByteArray");
            return null;
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return base64.encodeToByteArray(bArr, i10, i11);
    }

    private final int handlePaddingSymbol(byte[] source, int padIndex, int endIndex, int byteStart) {
        if (byteStart == -8) {
            C1929i.m3029k(AbstractC0074a.m154e(padIndex, "Redundant pad character at index "));
            return 0;
        }
        if (byteStart == -6) {
            checkPaddingIsAllowed(padIndex);
            return padIndex + 1;
        }
        if (byteStart != -4) {
            if (byteStart == -2) {
                return padIndex + 1;
            }
            C1929i.m3030l("Unreachable");
            return 0;
        }
        checkPaddingIsAllowed(padIndex);
        int iSkipIllegalSymbolsIfMime = skipIllegalSymbolsIfMime(source, padIndex + 1, endIndex);
        if (iSkipIllegalSymbolsIfMime != endIndex && source[iSkipIllegalSymbolsIfMime] == 61) {
            return iSkipIllegalSymbolsIfMime + 1;
        }
        C1929i.m3029k(AbstractC0074a.m154e(iSkipIllegalSymbolsIfMime, "Missing one pad character at index "));
        return 0;
    }

    private final boolean shouldPadOnEncode() {
        PaddingOption paddingOption = this.paddingOption;
        return paddingOption == PaddingOption.PRESENT || paddingOption == PaddingOption.PRESENT_OPTIONAL;
    }

    private final int skipIllegalSymbolsIfMime(byte[] source, int startIndex, int endIndex) {
        if (!this.isMimeScheme) {
            return startIndex;
        }
        while (startIndex < endIndex) {
            if (Base64Kt.base64DecodeMap[source[startIndex] & UByte.MAX_VALUE] != -1) {
                break;
            }
            startIndex++;
        }
        return startIndex;
    }

    public final String bytesToStringImpl$kotlin_stdlib(byte[] source) {
        source.getClass();
        StringBuilder sb = new StringBuilder(source.length);
        for (byte b10 : source) {
            sb.append((char) b10);
        }
        return sb.toString();
    }

    public final byte[] charsToBytesImpl$kotlin_stdlib(CharSequence source, int startIndex, int endIndex) {
        source.getClass();
        checkSourceBounds$kotlin_stdlib(source.length(), startIndex, endIndex);
        byte[] bArr = new byte[endIndex - startIndex];
        int i10 = 0;
        while (startIndex < endIndex) {
            char cCharAt = source.charAt(startIndex);
            if (cCharAt <= 255) {
                bArr[i10] = (byte) cCharAt;
                i10++;
            } else {
                bArr[i10] = 63;
                i10++;
            }
            startIndex++;
        }
        return bArr;
    }

    public final void checkSourceBounds$kotlin_stdlib(int sourceSize, int startIndex, int endIndex) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(startIndex, endIndex, sourceSize);
    }

    public final byte[] decode(CharSequence source, int startIndex, int endIndex) {
        byte[] bArrCharsToBytesImpl$kotlin_stdlib;
        source.getClass();
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            bArrCharsToBytesImpl$kotlin_stdlib = str.substring(startIndex, endIndex).getBytes(Charsets.ISO_8859_1);
            bArrCharsToBytesImpl$kotlin_stdlib.getClass();
        } else {
            bArrCharsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decode$default(this, bArrCharsToBytesImpl$kotlin_stdlib, 0, 0, 6, (Object) null);
    }

    public final int decodeIntoByteArray(CharSequence source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        byte[] bArrCharsToBytesImpl$kotlin_stdlib;
        source.getClass();
        destination.getClass();
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            bArrCharsToBytesImpl$kotlin_stdlib = str.substring(startIndex, endIndex).getBytes(Charsets.ISO_8859_1);
            bArrCharsToBytesImpl$kotlin_stdlib.getClass();
        } else {
            bArrCharsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decodeIntoByteArray$default(this, bArrCharsToBytesImpl$kotlin_stdlib, destination, destinationOffset, 0, 0, 24, (Object) null);
    }

    public final int decodeSize$kotlin_stdlib(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        int i10 = endIndex - startIndex;
        if (i10 == 0) {
            return 0;
        }
        if (i10 == 1) {
            C1929i.m3029k(AbstractC0074a.m156g(startIndex, "Input should have at least 2 symbols for Base64 decoding, startIndex: ", ", endIndex: ", endIndex));
            return 0;
        }
        if (this.isMimeScheme) {
            while (startIndex < endIndex) {
                int i11 = Base64Kt.base64DecodeMap[source[startIndex] & UByte.MAX_VALUE];
                if (i11 < 0) {
                    if (i11 == -2) {
                        i10 -= endIndex - startIndex;
                        break;
                    }
                    i10--;
                }
                startIndex++;
            }
        } else if (source[endIndex - 1] == 61) {
            i10 = source[endIndex + (-2)] == 61 ? i10 - 2 : i10 - 1;
        }
        return (int) ((((long) i10) * ((long) 6)) / ((long) 8));
    }

    public final String encode(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        return new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1);
    }

    public final int encodeIntoByteArray(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        source.getClass();
        destination.getClass();
        return encodeIntoByteArrayImpl$kotlin_stdlib(source, destination, destinationOffset, startIndex, endIndex);
    }

    public final int encodeIntoByteArrayImpl$kotlin_stdlib(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        int i10 = startIndex;
        source.getClass();
        destination.getClass();
        checkSourceBounds$kotlin_stdlib(source.length, i10, endIndex);
        checkDestinationBounds(destination.length, destinationOffset, encodeSize$kotlin_stdlib(endIndex - i10));
        byte[] bArr = this.isUrlSafe ? Base64Kt.base64UrlEncodeMap : Base64Kt.base64EncodeMap;
        int i11 = this.isMimeScheme ? this.mimeGroupsPerLine : Integer.MAX_VALUE;
        int i12 = destinationOffset;
        while (i10 + 2 < endIndex) {
            int iMin = Math.min((endIndex - i10) / 3, i11);
            for (int i13 = 0; i13 < iMin; i13++) {
                int i14 = source[i10] & UByte.MAX_VALUE;
                int i15 = i10 + 2;
                int i16 = source[i10 + 1] & UByte.MAX_VALUE;
                i10 += 3;
                int i17 = (i16 << 8) | (i14 << 16) | (source[i15] & UByte.MAX_VALUE);
                destination[i12] = bArr[i17 >>> 18];
                destination[i12 + 1] = bArr[(i17 >>> 12) & 63];
                int i18 = i12 + 3;
                destination[i12 + 2] = bArr[(i17 >>> 6) & 63];
                i12 += 4;
                destination[i18] = bArr[i17 & 63];
            }
            if (iMin == i11 && i10 != endIndex) {
                int i19 = i12 + 1;
                byte[] bArr2 = mimeLineSeparatorSymbols;
                destination[i12] = bArr2[0];
                i12 += 2;
                destination[i19] = bArr2[1];
            }
        }
        int i20 = endIndex - i10;
        if (i20 == 1) {
            int i21 = i10 + 1;
            int i22 = (source[i10] & UByte.MAX_VALUE) << 4;
            destination[i12] = bArr[i22 >>> 6];
            int i23 = i12 + 2;
            destination[i12 + 1] = bArr[i22 & 63];
            if (shouldPadOnEncode()) {
                int i24 = i12 + 3;
                destination[i23] = padSymbol;
                i12 += 4;
                destination[i24] = padSymbol;
                i10 = i21;
            } else {
                i10 = i21;
                i12 = i23;
            }
        } else if (i20 == 2) {
            int i25 = i10 + 1;
            int i26 = source[i10] & UByte.MAX_VALUE;
            i10 += 2;
            int i27 = ((source[i25] & UByte.MAX_VALUE) << 2) | (i26 << 10);
            destination[i12] = bArr[i27 >>> 12];
            destination[i12 + 1] = bArr[(i27 >>> 6) & 63];
            int i28 = i12 + 3;
            destination[i12 + 2] = bArr[i27 & 63];
            if (shouldPadOnEncode()) {
                i12 += 4;
                destination[i28] = padSymbol;
            } else {
                i12 = i28;
            }
        }
        if (i10 == endIndex) {
            return i12 - destinationOffset;
        }
        C1929i.m3030l("Check failed.");
        return 0;
    }

    public final int encodeSize$kotlin_stdlib(int sourceSize) {
        int i10 = sourceSize / 3;
        int i11 = sourceSize % 3;
        int i12 = i10 * 4;
        if (i11 != 0) {
            i12 += shouldPadOnEncode() ? 4 : i11 + 1;
        }
        if (i12 < 0) {
            C1929i.m3029k("Input is too big");
            return 0;
        }
        if (this.isMimeScheme) {
            i12 += ((i12 - 1) / this.mimeLineLength) * 2;
        }
        if (i12 >= 0) {
            return i12;
        }
        C1929i.m3029k("Input is too big");
        return 0;
    }

    public final <A extends Appendable> A encodeToAppendable(byte[] source, A destination, int startIndex, int endIndex) throws IOException {
        source.getClass();
        destination.getClass();
        destination.append(new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1));
        return destination;
    }

    public final byte[] encodeToByteArray(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        return encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex);
    }

    public final byte[] encodeToByteArrayImpl$kotlin_stdlib(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        byte[] bArr = new byte[encodeSize$kotlin_stdlib(endIndex - startIndex)];
        encodeIntoByteArrayImpl$kotlin_stdlib(source, bArr, 0, startIndex, endIndex);
        return bArr;
    }

    /* JADX INFO: renamed from: getMimeLineLength$kotlin_stdlib, reason: from getter */
    public final int getMimeLineLength() {
        return this.mimeLineLength;
    }

    /* JADX INFO: renamed from: getPaddingOption$kotlin_stdlib, reason: from getter */
    public final PaddingOption getPaddingOption() {
        return this.paddingOption;
    }

    /* JADX INFO: renamed from: isMimeScheme$kotlin_stdlib, reason: from getter */
    public final boolean getIsMimeScheme() {
        return this.isMimeScheme;
    }

    /* JADX INFO: renamed from: isUrlSafe$kotlin_stdlib, reason: from getter */
    public final boolean getIsUrlSafe() {
        return this.isUrlSafe;
    }

    @SinceKotlin(version = "2.0")
    public final Base64 withPadding(PaddingOption option) {
        option.getClass();
        return this.paddingOption == option ? this : new Base64(this.isUrlSafe, this.isMimeScheme, this.mimeLineLength, option);
    }

    /* JADX INFO: renamed from: kotlin.io.encoding.Base64$Default, reason: from kotlin metadata */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013¨\u0006\u0018"}, m3159d2 = {"Lkotlin/io/encoding/Base64$Default;", "Lkotlin/io/encoding/Base64;", "<init>", "()V", "bitsPerByte", "", "bitsPerSymbol", "bytesPerGroup", "symbolsPerGroup", "padSymbol", "", "lineLengthMime", "lineLengthPem", "mimeLineSeparatorSymbols", "", "getMimeLineSeparatorSymbols$kotlin_stdlib", "()[B", "UrlSafe", "getUrlSafe", "()Lkotlin/io/encoding/Base64;", "Mime", "getMime", "Pem", "getPem", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion extends Base64 {
        private Companion() {
            super(false, false, -1, PaddingOption.PRESENT, null);
        }

        public final Base64 getMime() {
            return Base64.Mime;
        }

        public final byte[] getMimeLineSeparatorSymbols$kotlin_stdlib() {
            return Base64.mimeLineSeparatorSymbols;
        }

        public final Base64 getPem() {
            return Base64.Pem;
        }

        public final Base64 getUrlSafe() {
            return Base64.UrlSafe;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: decode");
            return null;
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return base64.decode(bArr, i10, i11);
    }

    public /* synthetic */ Base64(boolean z9, boolean z10, int i10, PaddingOption paddingOption, DefaultConstructorMarker defaultConstructorMarker) {
        this(z9, z10, i10, paddingOption);
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
            return 0;
        }
        if ((i13 & 4) != 0) {
            i10 = 0;
        }
        if ((i13 & 8) != 0) {
            i11 = 0;
        }
        if ((i13 & 16) != 0) {
            i12 = bArr.length;
        }
        return base64.decodeIntoByteArray(bArr, bArr2, i10, i11, i12);
    }

    public final byte[] decode(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        int iDecodeSize$kotlin_stdlib = decodeSize$kotlin_stdlib(source, startIndex, endIndex);
        byte[] bArr = new byte[iDecodeSize$kotlin_stdlib];
        if (decodeImpl(source, bArr, 0, startIndex, endIndex) == iDecodeSize$kotlin_stdlib) {
            return bArr;
        }
        C1929i.m3030l("Check failed.");
        return null;
    }

    public final int decodeIntoByteArray(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        source.getClass();
        destination.getClass();
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        checkDestinationBounds(destination.length, destinationOffset, decodeSize$kotlin_stdlib(source, startIndex, endIndex));
        return decodeImpl(source, destination, destinationOffset, startIndex, endIndex);
    }
}
