package okhttp3.internal.publicsuffix;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\f\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\fJ)\u0010\u000e\u001a\u0004\u0018\u00010\u0007*\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "EXCEPTION_MARKER", HttpUrl.FRAGMENT_ENCODE_SET, "PREVAILING_RULE", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "PUBLIC_SUFFIX_RESOURCE", "WILDCARD_LABEL", HttpUrl.FRAGMENT_ENCODE_SET, "instance", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "get", "binarySearch", "labels", HttpUrl.FRAGMENT_ENCODE_SET, "labelIndex", HttpUrl.FRAGMENT_ENCODE_SET, "([B[[BI)Ljava/lang/String;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PublicSuffixDatabase$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ PublicSuffixDatabase$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ String access$binarySearch(PublicSuffixDatabase$Companion publicSuffixDatabase$Companion, byte[] bArr, byte[][] bArr2, int i) {
        return publicSuffixDatabase$Companion.binarySearch(bArr, bArr2, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final String binarySearch(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        int iAnd;
        boolean z;
        int iAnd2;
        int length = bArr.length;
        int i3 = 0;
        while (i3 < length) {
            int i4 = (i3 + length) / 2;
            while (i4 > -1 && bArr[i4] != 10) {
                i4--;
            }
            int i5 = i4 + 1;
            int i6 = 1;
            while (true) {
                i2 = i5 + i6;
                if (bArr[i2] == 10) {
                    break;
                }
                i6++;
            }
            int i7 = i2 - i5;
            int i8 = i;
            boolean z2 = false;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (z2) {
                    iAnd = 46;
                    z = false;
                } else {
                    boolean z3 = z2;
                    iAnd = Util.and(bArr2[i8][i10], 255);
                    z = z3;
                }
                iAnd2 = iAnd - Util.and(bArr[i5 + i11], 255);
                if (iAnd2 != 0) {
                    break;
                }
                i11++;
                i10++;
                if (i11 == i7) {
                    break;
                }
                if (bArr2[i8].length != i10) {
                    z2 = z;
                } else {
                    if (i8 == bArr2.length - 1) {
                        break;
                    }
                    i8++;
                    z2 = true;
                    i10 = -1;
                }
            }
            if (iAnd2 >= 0) {
                if (iAnd2 <= 0) {
                    int i12 = i7 - i11;
                    int length2 = bArr2[i8].length - i10;
                    int length3 = bArr2.length;
                    for (int i13 = i8 + 1; i13 < length3; i13++) {
                        length2 += bArr2[i13].length;
                    }
                    if (length2 >= i12) {
                        if (length2 <= i12) {
                            Charset charset = StandardCharsets.UTF_8;
                            charset.getClass();
                            return new String(bArr, i5, i7, charset);
                        }
                    }
                }
                i3 = i2 + 1;
            }
            length = i4;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final PublicSuffixDatabase get() {
        return PublicSuffixDatabase.access$getInstance$cp();
    }

    private PublicSuffixDatabase$Companion() {
    }
}
