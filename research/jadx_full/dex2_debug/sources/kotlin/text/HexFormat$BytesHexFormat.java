package kotlin.text;

import kotlin.Metadata;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 %2\u00020\u0001:\u0002$%B9\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u001c\u001a\u00020\u0006H\u0016J'\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\n\u0010 \u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010!\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\"\u0010#R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u0015X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u0015X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017¨\u0006&"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat;", HttpUrl.FRAGMENT_ENCODE_SET, "bytesPerLine", HttpUrl.FRAGMENT_ENCODE_SET, "bytesPerGroup", "groupSeparator", HttpUrl.FRAGMENT_ENCODE_SET, "byteSeparator", "bytePrefix", "byteSuffix", "<init>", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBytesPerLine", "()I", "getBytesPerGroup", "getGroupSeparator", "()Ljava/lang/String;", "getByteSeparator", "getBytePrefix", "getByteSuffix", "noLineAndGroupSeparator", HttpUrl.FRAGMENT_ENCODE_SET, "getNoLineAndGroupSeparator$kotlin_stdlib", "()Z", "shortByteSeparatorNoPrefixAndSuffix", "getShortByteSeparatorNoPrefixAndSuffix$kotlin_stdlib", "ignoreCase", "getIgnoreCase$kotlin_stdlib", "toString", "appendOptionsTo", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "indent", "appendOptionsTo$kotlin_stdlib", "(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;", "Builder", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class HexFormat$BytesHexFormat {
    public static final HexFormat$BytesHexFormat$Companion Companion = new HexFormat$BytesHexFormat$Companion(null);
    private static final HexFormat$BytesHexFormat Default = new HexFormat$BytesHexFormat(Integer.MAX_VALUE, Integer.MAX_VALUE, "  ", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET);
    private final String bytePrefix;
    private final String byteSeparator;
    private final String byteSuffix;
    private final int bytesPerGroup;
    private final int bytesPerLine;
    private final String groupSeparator;
    private final boolean ignoreCase;
    private final boolean noLineAndGroupSeparator;
    private final boolean shortByteSeparatorNoPrefixAndSuffix;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HexFormat$BytesHexFormat(int i, int i2, String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        this.bytesPerLine = i;
        this.bytesPerGroup = i2;
        this.groupSeparator = str;
        this.byteSeparator = str2;
        this.bytePrefix = str3;
        this.byteSuffix = str4;
        this.noLineAndGroupSeparator = i == Integer.MAX_VALUE && i2 == Integer.MAX_VALUE;
        this.shortByteSeparatorNoPrefixAndSuffix = str3.length() == 0 && str4.length() == 0 && str2.length() <= 1;
        this.ignoreCase = HexFormatKt.access$isCaseSensitive(str) || HexFormatKt.access$isCaseSensitive(str2) || HexFormatKt.access$isCaseSensitive(str3) || HexFormatKt.access$isCaseSensitive(str4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ HexFormat$BytesHexFormat access$getDefault$cp() {
        return Default;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final StringBuilder appendOptionsTo$kotlin_stdlib(StringBuilder sb, String indent) {
        sb.getClass();
        indent.getClass();
        sb.append(indent);
        sb.append("bytesPerLine = ");
        sb.append(this.bytesPerLine);
        sb.append(",");
        sb.append('\n');
        sb.append(indent);
        sb.append("bytesPerGroup = ");
        sb.append(this.bytesPerGroup);
        sb.append(",");
        sb.append('\n');
        sb.append(indent);
        sb.append("groupSeparator = \"");
        sb.append(this.groupSeparator);
        sb.append("\",");
        sb.append('\n');
        sb.append(indent);
        sb.append("byteSeparator = \"");
        sb.append(this.byteSeparator);
        sb.append("\",");
        sb.append('\n');
        sb.append(indent);
        sb.append("bytePrefix = \"");
        sb.append(this.bytePrefix);
        sb.append("\",");
        sb.append('\n');
        sb.append(indent);
        sb.append("byteSuffix = \"");
        sb.append(this.byteSuffix);
        sb.append("\"");
        return sb;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getBytePrefix() {
        return this.bytePrefix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getByteSeparator() {
        return this.byteSeparator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getByteSuffix() {
        return this.byteSuffix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getBytesPerGroup() {
        return this.bytesPerGroup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getBytesPerLine() {
        return this.bytesPerLine;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getGroupSeparator() {
        return this.groupSeparator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getIgnoreCase$kotlin_stdlib, reason: from getter */
    public final boolean getIgnoreCase() {
        return this.ignoreCase;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getNoLineAndGroupSeparator$kotlin_stdlib, reason: from getter */
    public final boolean getNoLineAndGroupSeparator() {
        return this.noLineAndGroupSeparator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getShortByteSeparatorNoPrefixAndSuffix$kotlin_stdlib, reason: from getter */
    public final boolean getShortByteSeparatorNoPrefixAndSuffix() {
        return this.shortByteSeparatorNoPrefixAndSuffix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sbU = ai.onnxruntime.a.u("BytesHexFormat(\n");
        appendOptionsTo$kotlin_stdlib(sbU, "    ").append('\n');
        sbU.append(")");
        return sbU.toString();
    }
}
