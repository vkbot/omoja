package kotlin.text;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u001b\u001a\u00020\u001cH\u0000¢\u0006\u0002\b\u001dR$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R,\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00148\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0016\u0010\u0003\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "value", HttpUrl.FRAGMENT_ENCODE_SET, "prefix", "getPrefix", "()Ljava/lang/String;", "setPrefix", "(Ljava/lang/String;)V", "suffix", "getSuffix", "setSuffix", "removeLeadingZeros", HttpUrl.FRAGMENT_ENCODE_SET, "getRemoveLeadingZeros", "()Z", "setRemoveLeadingZeros", "(Z)V", HttpUrl.FRAGMENT_ENCODE_SET, "minLength", "getMinLength$annotations", "getMinLength", "()I", "setMinLength", "(I)V", "build", "Lkotlin/text/HexFormat$NumberHexFormat;", "build$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHexFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexFormat.kt\nkotlin/text/HexFormat$NumberHexFormat$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,845:1\n1#2:846\n*E\n"})
public final class HexFormat$NumberHexFormat$Builder {
    private int minLength;
    private String prefix;
    private boolean removeLeadingZeros;
    private String suffix;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HexFormat$NumberHexFormat$Builder() {
        HexFormat$NumberHexFormat$Companion hexFormat$NumberHexFormat$Companion = HexFormat$NumberHexFormat.Companion;
        this.prefix = hexFormat$NumberHexFormat$Companion.getDefault$kotlin_stdlib().getPrefix();
        this.suffix = hexFormat$NumberHexFormat$Companion.getDefault$kotlin_stdlib().getSuffix();
        this.removeLeadingZeros = hexFormat$NumberHexFormat$Companion.getDefault$kotlin_stdlib().getRemoveLeadingZeros();
        this.minLength = hexFormat$NumberHexFormat$Companion.getDefault$kotlin_stdlib().getMinLength();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HexFormat$NumberHexFormat build$kotlin_stdlib() {
        return new HexFormat$NumberHexFormat(this.prefix, this.suffix, this.removeLeadingZeros, this.minLength);
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
    public final void setMinLength(int i) {
        if (i > 0) {
            this.minLength = i;
        } else {
            l9.i.d(ai.onnxruntime.a.e(i, "Non-positive values are prohibited for minLength, but was "));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setPrefix(String str) {
        str.getClass();
        if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
            j1.i.k(ai.onnxruntime.a.l("LF and CR characters are prohibited in prefix, but was ", str));
        } else {
            this.prefix = str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setRemoveLeadingZeros(boolean z) {
        this.removeLeadingZeros = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSuffix(String str) {
        str.getClass();
        if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
            j1.i.k(ai.onnxruntime.a.l("LF and CR characters are prohibited in suffix, but was ", str));
        } else {
            this.suffix = str;
        }
    }

    @SinceKotlin(version = "2.0")
    public static /* synthetic */ void getMinLength$annotations() {
    }
}
