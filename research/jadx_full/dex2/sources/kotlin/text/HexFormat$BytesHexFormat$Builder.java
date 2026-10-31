package kotlin.text;

import kotlin.Metadata;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u001d\u001a\u00020\u001eH\u0000¢\u0006\u0002\b\u001fR$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R$\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R$\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R$\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013¨\u0006 "}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "value", HttpUrl.FRAGMENT_ENCODE_SET, "bytesPerLine", "getBytesPerLine", "()I", "setBytesPerLine", "(I)V", "bytesPerGroup", "getBytesPerGroup", "setBytesPerGroup", "groupSeparator", HttpUrl.FRAGMENT_ENCODE_SET, "getGroupSeparator", "()Ljava/lang/String;", "setGroupSeparator", "(Ljava/lang/String;)V", "byteSeparator", "getByteSeparator", "setByteSeparator", "bytePrefix", "getBytePrefix", "setBytePrefix", "byteSuffix", "getByteSuffix", "setByteSuffix", "build", "Lkotlin/text/HexFormat$BytesHexFormat;", "build$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class HexFormat$BytesHexFormat$Builder {
    private String bytePrefix;
    private String byteSeparator;
    private String byteSuffix;
    private int bytesPerGroup;
    private int bytesPerLine;
    private String groupSeparator;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HexFormat$BytesHexFormat$Builder() {
        HexFormat$BytesHexFormat$Companion hexFormat$BytesHexFormat$Companion = HexFormat$BytesHexFormat.Companion;
        this.bytesPerLine = hexFormat$BytesHexFormat$Companion.getDefault$kotlin_stdlib().getBytesPerLine();
        this.bytesPerGroup = hexFormat$BytesHexFormat$Companion.getDefault$kotlin_stdlib().getBytesPerGroup();
        this.groupSeparator = hexFormat$BytesHexFormat$Companion.getDefault$kotlin_stdlib().getGroupSeparator();
        this.byteSeparator = hexFormat$BytesHexFormat$Companion.getDefault$kotlin_stdlib().getByteSeparator();
        this.bytePrefix = hexFormat$BytesHexFormat$Companion.getDefault$kotlin_stdlib().getBytePrefix();
        this.byteSuffix = hexFormat$BytesHexFormat$Companion.getDefault$kotlin_stdlib().getByteSuffix();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HexFormat$BytesHexFormat build$kotlin_stdlib() {
        return new HexFormat$BytesHexFormat(this.bytesPerLine, this.bytesPerGroup, this.groupSeparator, this.byteSeparator, this.bytePrefix, this.byteSuffix);
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
    public final void setBytePrefix(String str) {
        str.getClass();
        if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
            j1.i.k(ai.onnxruntime.a.l("LF and CR characters are prohibited in bytePrefix, but was ", str));
        } else {
            this.bytePrefix = str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setByteSeparator(String str) {
        str.getClass();
        if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
            j1.i.k(ai.onnxruntime.a.l("LF and CR characters are prohibited in byteSeparator, but was ", str));
        } else {
            this.byteSeparator = str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setByteSuffix(String str) {
        str.getClass();
        if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
            j1.i.k(ai.onnxruntime.a.l("LF and CR characters are prohibited in byteSuffix, but was ", str));
        } else {
            this.byteSuffix = str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setBytesPerGroup(int i) {
        if (i > 0) {
            this.bytesPerGroup = i;
        } else {
            j1.i.k(ai.onnxruntime.a.e(i, "Non-positive values are prohibited for bytesPerGroup, but was "));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setBytesPerLine(int i) {
        if (i > 0) {
            this.bytesPerLine = i;
        } else {
            j1.i.k(ai.onnxruntime.a.e(i, "Non-positive values are prohibited for bytesPerLine, but was "));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setGroupSeparator(String str) {
        str.getClass();
        this.groupSeparator = str;
    }
}
