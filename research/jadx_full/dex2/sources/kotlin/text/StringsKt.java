package kotlin.text;

import java.util.List;
import kotlin.Metadata;
import okhttp3.HttpUrl;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"kotlin/text/StringsKt__AppendableKt", "kotlin/text/StringsKt__IndentKt", "kotlin/text/StringsKt__RegexExtensionsJVMKt", "kotlin/text/StringsKt__RegexExtensionsKt", "kotlin/text/StringsKt__StringBuilderJVMKt", "kotlin/text/StringsKt__StringBuilderKt", "kotlin/text/StringsKt__StringNumberConversionsJVMKt", "kotlin/text/StringsKt__StringNumberConversionsKt", "kotlin/text/StringsKt__StringsJVMKt", "kotlin/text/StringsKt__StringsKt", "kotlin/text/StringsKt___StringsJvmKt", "kotlin/text/StringsKt___StringsKt"}, k = 4, mv = {2, 2, 0}, xi = 49)
public final class StringsKt extends StringsKt___StringsKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private StringsKt() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean A(String str, int i, String str2, int i2, int i3) {
        return StringsKt__StringsJVMKt.regionMatches$default(str, i, str2, i2, i3, false, 16, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String B(String str, String str2) {
        return StringsKt__StringsKt.removePrefix(str, (CharSequence) str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String C(String str) {
        return StringsKt__StringsKt.removeSuffix(str, (CharSequence) "Client");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String D(String str) {
        return StringsKt__StringsKt.removeSurrounding(str, (CharSequence) "\"");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String E(int i, String str) {
        return StringsKt__StringsJVMKt.repeat(str, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String F(String str, char c, char c2) {
        return StringsKt__StringsJVMKt.replace$default(str, c, c2, false, 4, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String G(String str, String str2, String str3) {
        return StringsKt__StringsJVMKt.replace$default(str, str2, str3, false, 4, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ List H(String str, char[] cArr) {
        return StringsKt__StringsKt.split$default((CharSequence) str, cArr, false, 0, 6, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean I(int i, String str, String str2) {
        return StringsKt__StringsJVMKt.startsWith(str, str2, i, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean J(String str, String str2) {
        return StringsKt__StringsJVMKt.startsWith(str, str2, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean K(int i, String str, String str2) {
        return StringsKt__StringsJVMKt.startsWith$default(str, str2, i, false, 4, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean L(String str) {
        return StringsKt__StringsKt.startsWith$default((CharSequence) str, '-', false, 2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean M(String str, String str2) {
        return StringsKt__StringsJVMKt.startsWith$default(str, str2, false, 2, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String N(String str) {
        return StringsKt__StringsKt.substringAfter$default(str, Typography.dollar, (String) null, 2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String O(String str, String str2) {
        return StringsKt__StringsKt.substringAfter$default(str, str2, (String) null, 2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String P(String str) {
        return StringsKt__StringsKt.substringAfterLast(str, FilenameUtils.EXTENSION_SEPARATOR, HttpUrl.FRAGMENT_ENCODE_SET);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String Q(String str) {
        return StringsKt__StringsKt.substringBeforeLast$default(str, ".", (String) null, 2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ CharSequence R(String str) {
        return StringsKt__StringsKt.trim((CharSequence) str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String S(String str) {
        return StringsKt__IndentKt.trimMargin$default(str, null, 1, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String m(char[] cArr, int i) {
        return StringsKt__StringsJVMKt.concatToString(cArr, i, 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean n(CharSequence charSequence, char c) {
        return StringsKt__StringsKt.contains$default(charSequence, c, false, 2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean o(CharSequence charSequence, String str) {
        return StringsKt__StringsKt.contains$default(charSequence, (CharSequence) str, false, 2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String p(String str) {
        return StringsKt___StringsKt.drop(str, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean q(String str, char c) {
        return StringsKt__StringsKt.endsWith$default((CharSequence) str, c, false, 2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean r(String str, String str2) {
        return StringsKt__StringsJVMKt.endsWith$default(str, str2, false, 2, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean s(String str, String str2) {
        return StringsKt__StringsJVMKt.equals(str, str2, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean t(String str, String str2) {
        return StringsKt__StringsJVMKt.equals$default(str, str2, false, 2, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int u(int i, String str, String str2, int i2) {
        return StringsKt__StringsKt.indexOf$default((CharSequence) str, str2, i, false, i2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int v(CharSequence charSequence, char c, int i, int i2) {
        return StringsKt__StringsKt.indexOf$default(charSequence, c, i, false, i2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int w(String str) {
        return StringsKt__StringsKt.lastIndexOf$default((CharSequence) str, "*", 0, false, 6, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int x(String str, char c, int i, int i2) {
        return StringsKt__StringsKt.lastIndexOf$default((CharSequence) str, c, i, false, i2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String y(int i, String str) {
        return StringsKt__StringsKt.padStart(str, i, '0');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean z(int i, int i2, String str) {
        return StringsKt__StringsJVMKt.regionMatches(str, i, "Infinity", 0, i2, true);
    }
}
