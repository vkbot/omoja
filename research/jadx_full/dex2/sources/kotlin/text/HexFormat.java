package kotlin.text;

import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@SinceKotlin(version = "2.2")
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0004\u0012\u0013\u0014\u0015B!\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, d2 = {"Lkotlin/text/HexFormat;", HttpUrl.FRAGMENT_ENCODE_SET, "upperCase", HttpUrl.FRAGMENT_ENCODE_SET, "bytes", "Lkotlin/text/HexFormat$BytesHexFormat;", "number", "Lkotlin/text/HexFormat$NumberHexFormat;", "<init>", "(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V", "getUpperCase", "()Z", "getBytes", "()Lkotlin/text/HexFormat$BytesHexFormat;", "getNumber", "()Lkotlin/text/HexFormat$NumberHexFormat;", "toString", HttpUrl.FRAGMENT_ENCODE_SET, "BytesHexFormat", "NumberHexFormat", "Builder", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalStdlibApi.class})
public final class HexFormat {
    public static final HexFormat$Companion Companion = new HexFormat$Companion(null);
    private static final HexFormat Default;
    private static final HexFormat UpperCase;
    private final HexFormat$BytesHexFormat bytes;
    private final HexFormat$NumberHexFormat number;
    private final boolean upperCase;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        HexFormat$BytesHexFormat$Companion hexFormat$BytesHexFormat$Companion = HexFormat$BytesHexFormat.Companion;
        HexFormat$BytesHexFormat default$kotlin_stdlib = hexFormat$BytesHexFormat$Companion.getDefault$kotlin_stdlib();
        HexFormat$NumberHexFormat$Companion hexFormat$NumberHexFormat$Companion = HexFormat$NumberHexFormat.Companion;
        Default = new HexFormat(false, default$kotlin_stdlib, hexFormat$NumberHexFormat$Companion.getDefault$kotlin_stdlib());
        UpperCase = new HexFormat(true, hexFormat$BytesHexFormat$Companion.getDefault$kotlin_stdlib(), hexFormat$NumberHexFormat$Companion.getDefault$kotlin_stdlib());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HexFormat(boolean z, HexFormat$BytesHexFormat hexFormat$BytesHexFormat, HexFormat$NumberHexFormat hexFormat$NumberHexFormat) {
        hexFormat$BytesHexFormat.getClass();
        hexFormat$NumberHexFormat.getClass();
        this.upperCase = z;
        this.bytes = hexFormat$BytesHexFormat;
        this.number = hexFormat$NumberHexFormat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ HexFormat access$getDefault$cp() {
        return Default;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ HexFormat access$getUpperCase$cp() {
        return UpperCase;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HexFormat$BytesHexFormat getBytes() {
        return this.bytes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HexFormat$NumberHexFormat getNumber() {
        return this.number;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getUpperCase() {
        return this.upperCase;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sbU = ai.onnxruntime.a.u("HexFormat(\n    upperCase = ");
        sbU.append(this.upperCase);
        sbU.append(",\n    bytes = BytesHexFormat(\n");
        this.bytes.appendOptionsTo$kotlin_stdlib(sbU, "        ").append('\n');
        sbU.append("    ),");
        sbU.append('\n');
        sbU.append("    number = NumberHexFormat(");
        sbU.append('\n');
        this.number.appendOptionsTo$kotlin_stdlib(sbU, "        ").append('\n');
        sbU.append("    )");
        sbU.append('\n');
        sbU.append(")");
        return sbU.toString();
    }
}
