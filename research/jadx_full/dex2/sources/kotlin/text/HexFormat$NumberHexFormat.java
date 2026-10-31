package kotlin.text;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 #2\u00020\u0001:\u0002\"#B)\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u001a\u001a\u00020\u0003H\u0016J'\u0010\u001b\u001a\u00060\u001cj\u0002`\u001d2\n\u0010\u001e\u001a\u00060\u001cj\u0002`\u001d2\u0006\u0010\u001f\u001a\u00020\u0003H\u0000¢\u0006\u0004\b \u0010!R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0014\u0010\u0018\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u000f¨\u0006$"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat;", HttpUrl.FRAGMENT_ENCODE_SET, "prefix", HttpUrl.FRAGMENT_ENCODE_SET, "suffix", "removeLeadingZeros", HttpUrl.FRAGMENT_ENCODE_SET, "minLength", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;Ljava/lang/String;ZI)V", "getPrefix", "()Ljava/lang/String;", "getSuffix", "getRemoveLeadingZeros", "()Z", "getMinLength$annotations", "()V", "getMinLength", "()I", "isDigitsOnly", "isDigitsOnly$kotlin_stdlib", "isDigitsOnlyAndNoPadding", "isDigitsOnlyAndNoPadding$kotlin_stdlib", "ignoreCase", "getIgnoreCase$kotlin_stdlib", "toString", "appendOptionsTo", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "indent", "appendOptionsTo$kotlin_stdlib", "(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;", "Builder", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class HexFormat$NumberHexFormat {
    public static final HexFormat$NumberHexFormat$Companion Companion = new HexFormat$NumberHexFormat$Companion(null);
    private static final HexFormat$NumberHexFormat Default = new HexFormat$NumberHexFormat(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, false, 1);
    private final boolean ignoreCase;
    private final boolean isDigitsOnly;
    private final boolean isDigitsOnlyAndNoPadding;
    private final int minLength;
    private final String prefix;
    private final boolean removeLeadingZeros;
    private final String suffix;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HexFormat$NumberHexFormat(String str, String str2, boolean z, int i) {
        str.getClass();
        str2.getClass();
        this.prefix = str;
        this.suffix = str2;
        this.removeLeadingZeros = z;
        this.minLength = i;
        boolean z2 = str.length() == 0 && str2.length() == 0;
        this.isDigitsOnly = z2;
        this.isDigitsOnlyAndNoPadding = z2 && i == 1;
        this.ignoreCase = HexFormatKt.access$isCaseSensitive(str) || HexFormatKt.access$isCaseSensitive(str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ HexFormat$NumberHexFormat access$getDefault$cp() {
        return Default;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final StringBuilder appendOptionsTo$kotlin_stdlib(StringBuilder sb, String indent) {
        sb.getClass();
        indent.getClass();
        sb.append(indent);
        sb.append("prefix = \"");
        sb.append(this.prefix);
        sb.append("\",");
        sb.append('\n');
        sb.append(indent);
        sb.append("suffix = \"");
        sb.append(this.suffix);
        sb.append("\",");
        sb.append('\n');
        sb.append(indent);
        sb.append("removeLeadingZeros = ");
        sb.append(this.removeLeadingZeros);
        sb.append(',');
        sb.append('\n');
        sb.append(indent);
        sb.append("minLength = ");
        sb.append(this.minLength);
        return sb;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getIgnoreCase$kotlin_stdlib, reason: from getter */
    public final boolean getIgnoreCase() {
        return this.ignoreCase;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getMinLength() {
        return this.minLength;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getPrefix() {
        return this.prefix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getRemoveLeadingZeros() {
        return this.removeLeadingZeros;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getSuffix() {
        return this.suffix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isDigitsOnly$kotlin_stdlib, reason: from getter */
    public final boolean getIsDigitsOnly() {
        return this.isDigitsOnly;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isDigitsOnlyAndNoPadding$kotlin_stdlib, reason: from getter */
    public final boolean getIsDigitsOnlyAndNoPadding() {
        return this.isDigitsOnlyAndNoPadding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sbU = ai.onnxruntime.a.u("NumberHexFormat(\n");
        appendOptionsTo$kotlin_stdlib(sbU, "    ").append('\n');
        sbU.append(")");
        return sbU.toString();
    }

    @SinceKotlin(version = "2.0")
    public static /* synthetic */ void getMinLength$annotations() {
    }
}
