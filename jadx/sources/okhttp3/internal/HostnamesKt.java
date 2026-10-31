package okhttp3.internal;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.net.IDN;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p130l9.C2242l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H\u0002\u001a\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\f\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\f\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u0003¨\u0006\u000f"}, m3159d2 = {"decodeIpv4Suffix", "", "input", "", "pos", "", "limit", "address", "", "addressOffset", "decodeIpv6", "Ljava/net/InetAddress;", "inet6AddressToAscii", "containsInvalidHostnameAsciiCodes", "toCanonicalHost", "okhttp"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (Intrinsics.compare((int) cCharAt, 31) <= 0 || Intrinsics.compare((int) cCharAt, 127) >= 0 || StringsKt__StringsKt.indexOf$default(" #%/:?@[\\]", cCharAt, 0, false, 6, (Object) null) != -1) {
                return true;
            }
        }
        return false;
    }

    private static final boolean decodeIpv4Suffix(String str, int i10, int i11, byte[] bArr, int i12) {
        int i13 = i12;
        while (i10 < i11) {
            if (i13 == bArr.length) {
                return false;
            }
            if (i13 != i12) {
                if (str.charAt(i10) != '.') {
                    return false;
                }
                i10++;
            }
            int i14 = i10;
            int i15 = 0;
            while (i14 < i11) {
                char cCharAt = str.charAt(i14);
                if (Intrinsics.compare((int) cCharAt, 48) < 0 || Intrinsics.compare((int) cCharAt, 57) > 0) {
                    break;
                }
                if ((i15 == 0 && i10 != i14) || (i15 = ((i15 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i14++;
            }
            if (i14 - i10 == 0) {
                return false;
            }
            bArr[i13] = (byte) i15;
            i13++;
            i10 = i14;
        }
        return i13 == i12 + 4;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0057 A[LOOP:1: B:28:0x004b->B:31:0x0057, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x005d A[EDGE_INSN: B:53:0x005d->B:32:0x005d BREAK  A[LOOP:1: B:28:0x004b->B:31:0x0057], SYNTHETIC] */
    private static final InetAddress decodeIpv6(String str, int i10, int i11) {
        int i12;
        int i13;
        int hexDigit;
        byte[] bArr = new byte[16];
        int i14 = 0;
        int i15 = -1;
        int i16 = -1;
        while (i10 < i11) {
            if (i14 == 16) {
                return null;
            }
            int i17 = i10 + 2;
            if (i17 <= i11 && StringsKt__StringsJVMKt.startsWith$default(str, "::", i10, false, 4, null)) {
                if (i15 != -1) {
                    return null;
                }
                i14 += 2;
                i15 = i14;
                if (i17 == i11) {
                    break;
                }
                i16 = i17;
                i12 = 0;
                i10 = i16;
                while (i10 < i11) {
                    hexDigit = Util.parseHexDigit(str.charAt(i10));
                    if (hexDigit != -1) {
                        break;
                        break;
                    }
                    i12 = (i12 << 4) + hexDigit;
                    i10++;
                }
                i13 = i10 - i16;
                return i13 == 0 ? null : null;
            }
            if (i14 != 0) {
                if (!StringsKt__StringsJVMKt.startsWith$default(str, ":", i10, false, 4, null)) {
                    if (!StringsKt__StringsJVMKt.startsWith$default(str, ".", i10, false, 4, null) || !decodeIpv4Suffix(str, i16, i11, bArr, i14 - 2)) {
                        return null;
                    }
                    i14 += 2;
                    break;
                }
                i10++;
            }
            i16 = i10;
            i12 = 0;
            i10 = i16;
            while (i10 < i11) {
                hexDigit = Util.parseHexDigit(str.charAt(i10));
                if (hexDigit != -1) {
                    break;
                }
                i12 = (i12 << 4) + hexDigit;
                i10++;
            }
            i13 = i10 - i16;
            if (i13 == 0 && i13 <= 4) {
                int i18 = i14 + 1;
                bArr[i14] = (byte) ((i12 >>> 8) & 255);
                i14 += 2;
                bArr[i18] = (byte) (i12 & 255);
            }
        }
        if (i14 != 16) {
            if (i15 == -1) {
                return null;
            }
            int i19 = i14 - i15;
            System.arraycopy(bArr, i15, bArr, 16 - i19, i19);
            Arrays.fill(bArr, i15, (16 - i14) + i15, (byte) 0);
        }
        return InetAddress.getByAddress(bArr);
    }

    private static final String inet6AddressToAscii(byte[] bArr) {
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < bArr.length) {
            int i14 = i12;
            while (i14 < 16 && bArr[i14] == 0 && bArr[i14 + 1] == 0) {
                i14 += 2;
            }
            int i15 = i14 - i12;
            if (i15 > i13 && i15 >= 4) {
                i10 = i12;
                i13 = i15;
            }
            i12 = i14 + 2;
        }
        C2242l c2242l = new C2242l();
        while (i11 < bArr.length) {
            if (i11 == i10) {
                c2242l.m3621m0(58);
                i11 += i13;
                if (i11 == 16) {
                    c2242l.m3621m0(58);
                }
            } else {
                if (i11 > 0) {
                    c2242l.m3621m0(58);
                }
                c2242l.m3624o0((Util.and(bArr[i11], 255) << 8) | Util.and(bArr[i11 + 1], 255));
                i11 += 2;
            }
        }
        return c2242l.m3616h0();
    }

    public static final String toCanonicalHost(String str) {
        str.getClass();
        if (!StringsKt__StringsKt.contains$default(str, (CharSequence) ":", false, 2, (Object) null)) {
            try {
                String ascii = IDN.toASCII(str);
                ascii.getClass();
                Locale locale = Locale.US;
                locale.getClass();
                String lowerCase = ascii.toLowerCase(locale);
                lowerCase.getClass();
                if (lowerCase.length() == 0 || containsInvalidHostnameAsciiCodes(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressDecodeIpv6 = (StringsKt__StringsJVMKt.startsWith$default(str, "[", false, 2, null) && StringsKt__StringsJVMKt.endsWith$default(str, "]", false, 2, null)) ? decodeIpv6(str, 1, str.length() - 1) : decodeIpv6(str, 0, str.length());
        if (inetAddressDecodeIpv6 == null) {
            return null;
        }
        byte[] address = inetAddressDecodeIpv6.getAddress();
        if (address.length == 16) {
            return inet6AddressToAscii(address);
        }
        if (address.length == 4) {
            return inetAddressDecodeIpv6.getHostAddress();
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
    }
}
