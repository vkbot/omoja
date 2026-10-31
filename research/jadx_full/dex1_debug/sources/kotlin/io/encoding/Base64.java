package kotlin.io.encoding;

import ai.onnxruntime.a;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import j1.i;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.WasExperimental;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@SinceKotlin(version = "2.2")
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\t\b\u0017\u0018\u0000 B2\u00020\u0001:\u0002ABB)\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\bH\u0007J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J\"\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J=\u0010\u001f\u001a\u0002H \"\f\b\u0000\u0010 *\u00060!j\u0002`\"2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u0002H 2\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006¢\u0006\u0002\u0010#J\"\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J\"\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006J%\u0010'\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b(J5\u0010)\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b*J\u0015\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0006H\u0000¢\u0006\u0002\b-J\b\u0010.\u001a\u00020\u0003H\u0002J0\u0010/\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J%\u00100\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b1J%\u00102\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b3J\u0015\u00104\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0000¢\u0006\u0002\b5J(\u00106\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u00107\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0006H\u0002J\u0010\u00109\u001a\u00020:2\u0006\u00107\u001a\u00020\u0006H\u0002J \u0010;\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J%\u0010<\u001a\u00020:2\u0006\u0010,\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000¢\u0006\u0002\b=J \u0010>\u001a\u00020:2\u0006\u0010?\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006H\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lkotlin/io/encoding/Base64;", "", "isUrlSafe", "", "isMimeScheme", "mimeLineLength", "", "paddingOption", "Lkotlin/io/encoding/Base64$PaddingOption;", "<init>", "(ZZILkotlin/io/encoding/Base64$PaddingOption;)V", "isUrlSafe$kotlin_stdlib", "()Z", "isMimeScheme$kotlin_stdlib", "getMimeLineLength$kotlin_stdlib", "()I", "getPaddingOption$kotlin_stdlib", "()Lkotlin/io/encoding/Base64$PaddingOption;", "mimeGroupsPerLine", "withPadding", "option", "encodeToByteArray", "", "source", "startIndex", "endIndex", "encodeIntoByteArray", "destination", "destinationOffset", "encode", "", "encodeToAppendable", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;", "decode", "decodeIntoByteArray", "", "encodeToByteArrayImpl", "encodeToByteArrayImpl$kotlin_stdlib", "encodeIntoByteArrayImpl", "encodeIntoByteArrayImpl$kotlin_stdlib", "encodeSize", "sourceSize", "encodeSize$kotlin_stdlib", "shouldPadOnEncode", "decodeImpl", "decodeSize", "decodeSize$kotlin_stdlib", "charsToBytesImpl", "charsToBytesImpl$kotlin_stdlib", "bytesToStringImpl", "bytesToStringImpl$kotlin_stdlib", "handlePaddingSymbol", "padIndex", "byteStart", "checkPaddingIsAllowed", "", "skipIllegalSymbolsIfMime", "checkSourceBounds", "checkSourceBounds$kotlin_stdlib", "checkDestinationBounds", "destinationSize", "capacityNeeded", "PaddingOption", "Default", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
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
    private final Base64$PaddingOption paddingOption;
    public static final Base64$Default Default = new Base64$Default(null);
    private static final byte[] mimeLineSeparatorSymbols = {13, 10};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Base64$PaddingOption base64$PaddingOption = Base64$PaddingOption.PRESENT;
        UrlSafe = new Base64(true, false, -1, base64$PaddingOption);
        Mime = new Base64(false, true, lineLengthMime, base64$PaddingOption);
        Pem = new Base64(false, true, 64, base64$PaddingOption);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Base64(boolean z8, boolean z9, int i9, Base64$PaddingOption base64$PaddingOption) {
        this.isUrlSafe = z8;
        this.isMimeScheme = z9;
        this.mimeLineLength = i9;
        this.paddingOption = base64$PaddingOption;
        if (z8 && z9) {
            i.k("Failed requirement.");
            throw null;
        }
        this.mimeGroupsPerLine = i9 / 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Base64 access$getMime$cp() {
        return Mime;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ byte[] access$getMimeLineSeparatorSymbols$cp() {
        return mimeLineSeparatorSymbols;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Base64 access$getPem$cp() {
        return Pem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Base64 access$getUrlSafe$cp() {
        return UrlSafe;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void checkDestinationBounds(int destinationSize, int destinationOffset, int capacityNeeded) {
        if (destinationOffset < 0 || destinationOffset > destinationSize) {
            throw new IndexOutOfBoundsException(a.g(destinationOffset, "destination offset: ", ", destination size: ", destinationSize));
        }
        int i9 = destinationOffset + capacityNeeded;
        if (i9 < 0 || i9 > destinationSize) {
            b.a(a.v("The destination array does not have enough capacity, destination offset: ", destinationOffset, destinationSize, ", destination size: ", ", capacity needed: "), capacityNeeded);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void checkPaddingIsAllowed(int padIndex) {
        if (this.paddingOption != Base64$PaddingOption.ABSENT) {
            return;
        }
        i.k(a.e(padIndex, "The padding option is set to ABSENT, but the input has a pad character at index "));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte[] decode$default(Base64 base64, CharSequence charSequence, int i9, int i10, int i11, Object obj) {
        if (obj != null) {
            androidx.navigation.b.g("Super calls with default arguments not supported in this target, function: decode");
            return null;
        }
        if ((i11 & 2) != 0) {
            i9 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = charSequence.length();
        }
        return base64.decode(charSequence, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:20:0x0081  */
    /* JADX WARN: Code duplicated, block: B:22:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00be A[SYNTHETIC] */
    private final int decodeImpl(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArrAccess$getBase64UrlDecodeMap$p = this.isUrlSafe ? Base64Kt.access$getBase64UrlDecodeMap$p() : Base64Kt.access$getBase64DecodeMap$p();
        int i15 = destinationOffset;
        int iHandlePaddingSymbol = startIndex;
        int i16 = -8;
        int i17 = 0;
        while (true) {
            if (iHandlePaddingSymbol >= endIndex) {
                i9 = 8;
                i10 = 0;
                break;
            }
            if (i16 != -8 || iHandlePaddingSymbol + 3 >= endIndex) {
                i9 = 8;
                i11 = 1;
                i12 = source[iHandlePaddingSymbol] & UByte.MAX_VALUE;
                i13 = iArrAccess$getBase64UrlDecodeMap$p[i12];
                if (i13 < 0) {
                    iHandlePaddingSymbol++;
                    i17 = (i17 << 6) | i13;
                    i14 = i16 + 6;
                    if (i14 >= 0) {
                        destination[i15] = (byte) (i17 >>> i14);
                        i17 &= (i11 << i14) - 1;
                        i16 -= 2;
                        i15++;
                    } else {
                        i16 = i14;
                    }
                } else {
                    if (i13 == -2) {
                        iHandlePaddingSymbol = handlePaddingSymbol(source, iHandlePaddingSymbol, endIndex, i16);
                        i10 = i11;
                        break;
                    }
                    if (this.isMimeScheme) {
                        char c = (char) i12;
                        String string = Integer.toString(i12, CharsKt.checkRadix(i9));
                        string.getClass();
                        throw new IllegalArgumentException("Invalid symbol '" + c + "'(" + string + ") at index " + iHandlePaddingSymbol);
                    }
                    iHandlePaddingSymbol++;
                }
            } else {
                i9 = 8;
                int i18 = iHandlePaddingSymbol + 4;
                i11 = 1;
                int i19 = (iArrAccess$getBase64UrlDecodeMap$p[source[iHandlePaddingSymbol] & UByte.MAX_VALUE] << 18) | (iArrAccess$getBase64UrlDecodeMap$p[source[iHandlePaddingSymbol + 1] & UByte.MAX_VALUE] << 12) | (iArrAccess$getBase64UrlDecodeMap$p[source[iHandlePaddingSymbol + 2] & UByte.MAX_VALUE] << 6) | iArrAccess$getBase64UrlDecodeMap$p[source[iHandlePaddingSymbol + 3] & UByte.MAX_VALUE];
                if (i19 >= 0) {
                    destination[i15] = (byte) (i19 >> 16);
                    int i20 = i15 + 2;
                    destination[i15 + 1] = (byte) (i19 >> 8);
                    i15 += 3;
                    destination[i20] = (byte) i19;
                    iHandlePaddingSymbol = i18;
                } else {
                    i12 = source[iHandlePaddingSymbol] & UByte.MAX_VALUE;
                    i13 = iArrAccess$getBase64UrlDecodeMap$p[i12];
                    if (i13 < 0) {
                        iHandlePaddingSymbol++;
                        i17 = (i17 << 6) | i13;
                        i14 = i16 + 6;
                        if (i14 >= 0) {
                            destination[i15] = (byte) (i17 >>> i14);
                            i17 &= (i11 << i14) - 1;
                            i16 -= 2;
                            i15++;
                        } else {
                            i16 = i14;
                        }
                    } else {
                        if (i13 == -2) {
                            iHandlePaddingSymbol = handlePaddingSymbol(source, iHandlePaddingSymbol, endIndex, i16);
                            i10 = i11;
                            break;
                        }
                        if (this.isMimeScheme) {
                            char c9 = (char) i12;
                            String string2 = Integer.toString(i12, CharsKt.checkRadix(i9));
                            string2.getClass();
                            throw new IllegalArgumentException("Invalid symbol '" + c9 + "'(" + string2 + ") at index " + iHandlePaddingSymbol);
                        }
                        iHandlePaddingSymbol++;
                    }
                }
            }
        }
        if (i16 == -2) {
            i.k("The last unit of input does not have enough bits");
            return 0;
        }
        if (i16 != -8 && i10 == 0 && this.paddingOption == Base64$PaddingOption.PRESENT) {
            i.k("The padding option is set to PRESENT, but the input is not properly padded");
            return 0;
        }
        if (i17 != 0) {
            i.k("The pad bits must be zeros");
            return 0;
        }
        int iSkipIllegalSymbolsIfMime = skipIllegalSymbolsIfMime(source, iHandlePaddingSymbol, endIndex);
        if (iSkipIllegalSymbolsIfMime >= endIndex) {
            return i15 - destinationOffset;
        }
        int i21 = source[iSkipIllegalSymbolsIfMime] & UByte.MAX_VALUE;
        char c10 = (char) i21;
        String string3 = Integer.toString(i21, CharsKt.checkRadix(i9));
        string3.getClass();
        StringBuilder sb = new StringBuilder("Symbol '");
        sb.append(c10);
        sb.append("'(");
        sb.append(string3);
        sb.append(") at index ");
        sb.append(iSkipIllegalSymbolsIfMime - 1);
        sb.append(" is prohibited after the pad character");
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, CharSequence charSequence, byte[] bArr, int i9, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            androidx.navigation.b.g("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
            return 0;
        }
        if ((i12 & 4) != 0) {
            i9 = 0;
        }
        if ((i12 & 8) != 0) {
            i10 = 0;
        }
        if ((i12 & 16) != 0) {
            i11 = charSequence.length();
        }
        return base64.decodeIntoByteArray(charSequence, bArr, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String encode$default(Base64 base64, byte[] bArr, int i9, int i10, int i11, Object obj) {
        if (obj != null) {
            androidx.navigation.b.g("Super calls with default arguments not supported in this target, function: encode");
            return null;
        }
        if ((i11 & 2) != 0) {
            i9 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = bArr.length;
        }
        return base64.encode(bArr, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int encodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i9, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            androidx.navigation.b.g("Super calls with default arguments not supported in this target, function: encodeIntoByteArray");
            return 0;
        }
        if ((i12 & 4) != 0) {
            i9 = 0;
        }
        if ((i12 & 8) != 0) {
            i10 = 0;
        }
        if ((i12 & 16) != 0) {
            i11 = bArr.length;
        }
        return base64.encodeIntoByteArray(bArr, bArr2, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Appendable encodeToAppendable$default(Base64 base64, byte[] bArr, Appendable appendable, int i9, int i10, int i11, Object obj) {
        if (obj != null) {
            androidx.navigation.b.g("Super calls with default arguments not supported in this target, function: encodeToAppendable");
            return null;
        }
        if ((i11 & 4) != 0) {
            i9 = 0;
        }
        if ((i11 & 8) != 0) {
            i10 = bArr.length;
        }
        return base64.encodeToAppendable(bArr, appendable, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte[] encodeToByteArray$default(Base64 base64, byte[] bArr, int i9, int i10, int i11, Object obj) {
        if (obj != null) {
            androidx.navigation.b.g("Super calls with default arguments not supported in this target, function: encodeToByteArray");
            return null;
        }
        if ((i11 & 2) != 0) {
            i9 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = bArr.length;
        }
        return base64.encodeToByteArray(bArr, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int handlePaddingSymbol(byte[] source, int padIndex, int endIndex, int byteStart) {
        if (byteStart == -8) {
            i.k(a.e(padIndex, "Redundant pad character at index "));
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
            i.l("Unreachable");
            return 0;
        }
        checkPaddingIsAllowed(padIndex);
        int iSkipIllegalSymbolsIfMime = skipIllegalSymbolsIfMime(source, padIndex + 1, endIndex);
        if (iSkipIllegalSymbolsIfMime != endIndex && source[iSkipIllegalSymbolsIfMime] == 61) {
            return iSkipIllegalSymbolsIfMime + 1;
        }
        i.k(a.e(iSkipIllegalSymbolsIfMime, "Missing one pad character at index "));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean shouldPadOnEncode() {
        Base64$PaddingOption base64$PaddingOption = this.paddingOption;
        return base64$PaddingOption == Base64$PaddingOption.PRESENT || base64$PaddingOption == Base64$PaddingOption.PRESENT_OPTIONAL;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int skipIllegalSymbolsIfMime(byte[] source, int startIndex, int endIndex) {
        if (!this.isMimeScheme) {
            return startIndex;
        }
        while (startIndex < endIndex) {
            if (Base64Kt.access$getBase64DecodeMap$p()[source[startIndex] & UByte.MAX_VALUE] != -1) {
                break;
            }
            startIndex++;
        }
        return startIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String bytesToStringImpl$kotlin_stdlib(byte[] source) {
        source.getClass();
        StringBuilder sb = new StringBuilder(source.length);
        for (byte b9 : source) {
            sb.append((char) b9);
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final byte[] charsToBytesImpl$kotlin_stdlib(CharSequence source, int startIndex, int endIndex) {
        source.getClass();
        checkSourceBounds$kotlin_stdlib(source.length(), startIndex, endIndex);
        byte[] bArr = new byte[endIndex - startIndex];
        int i9 = 0;
        while (startIndex < endIndex) {
            char cCharAt = source.charAt(startIndex);
            if (cCharAt <= 255) {
                bArr[i9] = (byte) cCharAt;
                i9++;
            } else {
                bArr[i9] = 63;
                i9++;
            }
            startIndex++;
        }
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void checkSourceBounds$kotlin_stdlib(int sourceSize, int startIndex, int endIndex) {
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(startIndex, endIndex, sourceSize);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int decodeSize$kotlin_stdlib(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        int i9 = endIndex - startIndex;
        if (i9 == 0) {
            return 0;
        }
        if (i9 == 1) {
            i.k(a.g(startIndex, "Input should have at least 2 symbols for Base64 decoding, startIndex: ", ", endIndex: ", endIndex));
            return 0;
        }
        if (this.isMimeScheme) {
            while (startIndex < endIndex) {
                int i10 = Base64Kt.access$getBase64DecodeMap$p()[source[startIndex] & UByte.MAX_VALUE];
                if (i10 < 0) {
                    if (i10 == -2) {
                        i9 -= endIndex - startIndex;
                        break;
                    }
                    i9--;
                }
                startIndex++;
            }
        } else if (source[endIndex - 1] == 61) {
            i9 = source[endIndex + (-2)] == 61 ? i9 - 2 : i9 - 1;
        }
        return (int) ((((long) i9) * ((long) 6)) / ((long) 8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String encode(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        return new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int encodeIntoByteArray(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        source.getClass();
        destination.getClass();
        return encodeIntoByteArrayImpl$kotlin_stdlib(source, destination, destinationOffset, startIndex, endIndex);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int encodeIntoByteArrayImpl$kotlin_stdlib(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        int i9 = startIndex;
        source.getClass();
        destination.getClass();
        checkSourceBounds$kotlin_stdlib(source.length, i9, endIndex);
        checkDestinationBounds(destination.length, destinationOffset, encodeSize$kotlin_stdlib(endIndex - i9));
        byte[] bArrAccess$getBase64UrlEncodeMap$p = this.isUrlSafe ? Base64Kt.access$getBase64UrlEncodeMap$p() : Base64Kt.access$getBase64EncodeMap$p();
        int i10 = this.isMimeScheme ? this.mimeGroupsPerLine : Integer.MAX_VALUE;
        int i11 = destinationOffset;
        while (i9 + 2 < endIndex) {
            int iMin = Math.min((endIndex - i9) / 3, i10);
            for (int i12 = 0; i12 < iMin; i12++) {
                int i13 = source[i9] & UByte.MAX_VALUE;
                int i14 = i9 + 2;
                int i15 = source[i9 + 1] & UByte.MAX_VALUE;
                i9 += 3;
                int i16 = (i15 << 8) | (i13 << 16) | (source[i14] & UByte.MAX_VALUE);
                destination[i11] = bArrAccess$getBase64UrlEncodeMap$p[i16 >>> 18];
                destination[i11 + 1] = bArrAccess$getBase64UrlEncodeMap$p[(i16 >>> 12) & 63];
                int i17 = i11 + 3;
                destination[i11 + 2] = bArrAccess$getBase64UrlEncodeMap$p[(i16 >>> 6) & 63];
                i11 += 4;
                destination[i17] = bArrAccess$getBase64UrlEncodeMap$p[i16 & 63];
            }
            if (iMin == i10 && i9 != endIndex) {
                int i18 = i11 + 1;
                byte[] bArr = mimeLineSeparatorSymbols;
                destination[i11] = bArr[0];
                i11 += 2;
                destination[i18] = bArr[1];
            }
        }
        int i19 = endIndex - i9;
        if (i19 == 1) {
            int i20 = i9 + 1;
            int i21 = (source[i9] & UByte.MAX_VALUE) << 4;
            destination[i11] = bArrAccess$getBase64UrlEncodeMap$p[i21 >>> 6];
            int i22 = i11 + 2;
            destination[i11 + 1] = bArrAccess$getBase64UrlEncodeMap$p[i21 & 63];
            if (shouldPadOnEncode()) {
                int i23 = i11 + 3;
                destination[i22] = padSymbol;
                i11 += 4;
                destination[i23] = padSymbol;
                i9 = i20;
            } else {
                i9 = i20;
                i11 = i22;
            }
        } else if (i19 == 2) {
            int i24 = i9 + 1;
            int i25 = source[i9] & UByte.MAX_VALUE;
            i9 += 2;
            int i26 = ((source[i24] & UByte.MAX_VALUE) << 2) | (i25 << 10);
            destination[i11] = bArrAccess$getBase64UrlEncodeMap$p[i26 >>> 12];
            destination[i11 + 1] = bArrAccess$getBase64UrlEncodeMap$p[(i26 >>> 6) & 63];
            int i27 = i11 + 3;
            destination[i11 + 2] = bArrAccess$getBase64UrlEncodeMap$p[i26 & 63];
            if (shouldPadOnEncode()) {
                i11 += 4;
                destination[i27] = padSymbol;
            } else {
                i11 = i27;
            }
        }
        if (i9 == endIndex) {
            return i11 - destinationOffset;
        }
        i.l("Check failed.");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int encodeSize$kotlin_stdlib(int sourceSize) {
        int i9 = sourceSize / 3;
        int i10 = sourceSize % 3;
        int i11 = i9 * 4;
        if (i10 != 0) {
            i11 += shouldPadOnEncode() ? 4 : i10 + 1;
        }
        if (i11 < 0) {
            i.k("Input is too big");
            return 0;
        }
        if (this.isMimeScheme) {
            i11 += ((i11 - 1) / this.mimeLineLength) * 2;
        }
        if (i11 >= 0) {
            return i11;
        }
        i.k("Input is too big");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final <A extends Appendable> A encodeToAppendable(byte[] source, A destination, int startIndex, int endIndex) throws IOException {
        source.getClass();
        destination.getClass();
        destination.append(new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1));
        return destination;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final byte[] encodeToByteArray(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        return encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final byte[] encodeToByteArrayImpl$kotlin_stdlib(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        byte[] bArr = new byte[encodeSize$kotlin_stdlib(endIndex - startIndex)];
        encodeIntoByteArrayImpl$kotlin_stdlib(source, bArr, 0, startIndex, endIndex);
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getMimeLineLength$kotlin_stdlib, reason: from getter */
    public final int getMimeLineLength() {
        return this.mimeLineLength;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getPaddingOption$kotlin_stdlib, reason: from getter */
    public final Base64$PaddingOption getPaddingOption() {
        return this.paddingOption;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isMimeScheme$kotlin_stdlib, reason: from getter */
    public final boolean getIsMimeScheme() {
        return this.isMimeScheme;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isUrlSafe$kotlin_stdlib, reason: from getter */
    public final boolean getIsUrlSafe() {
        return this.isUrlSafe;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.0")
    public final Base64 withPadding(Base64$PaddingOption option) {
        option.getClass();
        return this.paddingOption == option ? this : new Base64(this.isUrlSafe, this.isMimeScheme, this.mimeLineLength, option);
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, byte[] bArr, int i9, int i10, int i11, Object obj) {
        if (obj != null) {
            androidx.navigation.b.g("Super calls with default arguments not supported in this target, function: decode");
            return null;
        }
        if ((i11 & 2) != 0) {
            i9 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = bArr.length;
        }
        return base64.decode(bArr, i9, i10);
    }

    public /* synthetic */ Base64(boolean z8, boolean z9, int i9, Base64$PaddingOption base64$PaddingOption, DefaultConstructorMarker defaultConstructorMarker) {
        this(z8, z9, i9, base64$PaddingOption);
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i9, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            androidx.navigation.b.g("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
            return 0;
        }
        if ((i12 & 4) != 0) {
            i9 = 0;
        }
        if ((i12 & 8) != 0) {
            i10 = 0;
        }
        if ((i12 & 16) != 0) {
            i11 = bArr.length;
        }
        return base64.decodeIntoByteArray(bArr, bArr2, i9, i10, i11);
    }

    public final byte[] decode(byte[] source, int startIndex, int endIndex) {
        source.getClass();
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        int iDecodeSize$kotlin_stdlib = decodeSize$kotlin_stdlib(source, startIndex, endIndex);
        byte[] bArr = new byte[iDecodeSize$kotlin_stdlib];
        if (decodeImpl(source, bArr, 0, startIndex, endIndex) == iDecodeSize$kotlin_stdlib) {
            return bArr;
        }
        i.l("Check failed.");
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
