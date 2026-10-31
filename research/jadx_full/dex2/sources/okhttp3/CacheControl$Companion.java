package okhttp3;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u001e\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lokhttp3/CacheControl$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "FORCE_CACHE", "Lokhttp3/CacheControl;", "FORCE_NETWORK", "parse", "headers", "Lokhttp3/Headers;", "indexOfElement", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "characters", "startIndex", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CacheControl$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ CacheControl$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int indexOfElement(String str, String str2, int i) {
        int length = str.length();
        while (i < length) {
            if (StringsKt.n(str2, str.charAt(i))) {
                return i;
            }
            i++;
        }
        return str.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int indexOfElement$default(CacheControl$Companion cacheControl$Companion, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return cacheControl$Companion.indexOfElement(str, str2, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:39:0x00db  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:54:0x0126  */
    /* JADX WARN: Code duplicated, block: B:57:0x0134  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x015b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0100 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x010f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x013d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x014c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x011e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x012e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x0153 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0116 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0107 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x00f8 A[SYNTHETIC] */
    @JvmStatic
    public final CacheControl parse(Headers headers) {
        int iIndexOfElement;
        int iIndexOfElement2;
        String string;
        String string2;
        Headers headers2 = headers;
        headers2.getClass();
        int size = headers2.size();
        int i = 0;
        boolean z = true;
        String str = null;
        boolean z2 = false;
        boolean z3 = false;
        int nonNegativeInt = -1;
        int nonNegativeInt2 = -1;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        int nonNegativeInt3 = -1;
        int nonNegativeInt4 = -1;
        boolean z7 = false;
        boolean z9 = false;
        boolean z10 = false;
        while (i < size) {
            String strName = headers2.name(i);
            String strValue = headers2.value(i);
            if (StringsKt.s(strName, "Cache-Control")) {
                if (str == null) {
                    str = strValue;
                }
                iIndexOfElement = 0;
                while (iIndexOfElement < strValue.length()) {
                    iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                    string = StringsKt.R(strValue.substring(iIndexOfElement, iIndexOfElement2)).toString();
                    if (iIndexOfElement2 != strValue.length() || strValue.charAt(iIndexOfElement2) == ',' || strValue.charAt(iIndexOfElement2) == ';') {
                        iIndexOfElement = iIndexOfElement2 + 1;
                        string2 = null;
                    } else {
                        int iIndexOfNonWhitespace = Util.indexOfNonWhitespace(strValue, iIndexOfElement2 + 1);
                        if (iIndexOfNonWhitespace >= strValue.length() || strValue.charAt(iIndexOfNonWhitespace) != '\"') {
                            iIndexOfElement = indexOfElement(strValue, ",;", iIndexOfNonWhitespace);
                            string2 = StringsKt.R(strValue.substring(iIndexOfNonWhitespace, iIndexOfElement)).toString();
                        } else {
                            int i2 = iIndexOfNonWhitespace + 1;
                            int iV = StringsKt.v(strValue, Typography.quote, i2, 4);
                            string2 = strValue.substring(i2, iV);
                            iIndexOfElement = iV + 1;
                        }
                    }
                    if (StringsKt.s("no-cache", string)) {
                        z2 = true;
                    } else if (StringsKt.s("no-store", string)) {
                        z3 = true;
                    } else if (StringsKt.s("max-age", string)) {
                        nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                    } else if (StringsKt.s("s-maxage", string)) {
                        nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                    } else if (StringsKt.s("private", string)) {
                        z4 = true;
                    } else if (StringsKt.s("public", string)) {
                        z5 = true;
                    } else if (StringsKt.s("must-revalidate", string)) {
                        z6 = true;
                    } else if (StringsKt.s("max-stale", string)) {
                        nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                    } else if (StringsKt.s("min-fresh", string)) {
                        nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                    } else if (StringsKt.s("only-if-cached", string)) {
                        z7 = true;
                    } else if (StringsKt.s("no-transform", string)) {
                        z9 = true;
                    } else if (StringsKt.s("immutable", string)) {
                        z10 = true;
                    }
                }
                i++;
                headers2 = headers;
            } else {
                if (StringsKt.s(strName, "Pragma")) {
                }
                i++;
                headers2 = headers;
            }
            z = false;
            iIndexOfElement = 0;
            while (iIndexOfElement < strValue.length()) {
                iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                string = StringsKt.R(strValue.substring(iIndexOfElement, iIndexOfElement2)).toString();
                if (iIndexOfElement2 != strValue.length()) {
                    iIndexOfElement = iIndexOfElement2 + 1;
                    string2 = null;
                } else {
                    iIndexOfElement = iIndexOfElement2 + 1;
                    string2 = null;
                }
                if (StringsKt.s("no-cache", string)) {
                    z2 = true;
                } else if (StringsKt.s("no-store", string)) {
                    z3 = true;
                } else if (StringsKt.s("max-age", string)) {
                    nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                } else if (StringsKt.s("s-maxage", string)) {
                    nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                } else if (StringsKt.s("private", string)) {
                    z4 = true;
                } else if (StringsKt.s("public", string)) {
                    z5 = true;
                } else if (StringsKt.s("must-revalidate", string)) {
                    z6 = true;
                } else if (StringsKt.s("max-stale", string)) {
                    nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                } else if (StringsKt.s("min-fresh", string)) {
                    nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                } else if (StringsKt.s("only-if-cached", string)) {
                    z7 = true;
                } else if (StringsKt.s("no-transform", string)) {
                    z9 = true;
                } else if (StringsKt.s("immutable", string)) {
                    z10 = true;
                }
            }
            i++;
            headers2 = headers;
        }
        return new CacheControl(z2, z3, nonNegativeInt, nonNegativeInt2, z4, z5, z6, nonNegativeInt3, nonNegativeInt4, z7, z9, z10, !z ? null : str, null);
    }

    private CacheControl$Companion() {
    }
}
