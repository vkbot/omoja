package kotlin.text;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\t\b\u0001¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\n\u001a\u00020\u00142\u0017\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00140\u0016¢\u0006\u0002\b\u0017H\u0087\bø\u0001\u0000J%\u0010\u000f\u001a\u00020\u00142\u0017\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00140\u0016¢\u0006\u0002\b\u0017H\u0087\bø\u0001\u0000J\b\u0010\u0018\u001a\u00020\u0019H\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001a"}, d2 = {"Lkotlin/text/HexFormat$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "upperCase", HttpUrl.FRAGMENT_ENCODE_SET, "getUpperCase", "()Z", "setUpperCase", "(Z)V", "bytes", "Lkotlin/text/HexFormat$BytesHexFormat$Builder;", "getBytes", "()Lkotlin/text/HexFormat$BytesHexFormat$Builder;", "_bytes", "number", "Lkotlin/text/HexFormat$NumberHexFormat$Builder;", "getNumber", "()Lkotlin/text/HexFormat$NumberHexFormat$Builder;", "_number", HttpUrl.FRAGMENT_ENCODE_SET, "builderAction", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "build", "Lkotlin/text/HexFormat;", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class HexFormat$Builder {
    private HexFormat$BytesHexFormat$Builder _bytes;
    private HexFormat$NumberHexFormat$Builder _number;
    private boolean upperCase = HexFormat.Companion.getDefault().getUpperCase();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @PublishedApi
    public HexFormat$Builder() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final void bytes(Function1<? super HexFormat$BytesHexFormat$Builder, Unit> builderAction) {
        builderAction.getClass();
        builderAction.invoke(getBytes());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final void number(Function1<? super HexFormat$NumberHexFormat$Builder, Unit> builderAction) {
        builderAction.getClass();
        builderAction.invoke(getNumber());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @PublishedApi
    public final HexFormat build() {
        HexFormat$BytesHexFormat default$kotlin_stdlib;
        HexFormat$NumberHexFormat default$kotlin_stdlib2;
        boolean z = this.upperCase;
        HexFormat$BytesHexFormat$Builder hexFormat$BytesHexFormat$Builder = this._bytes;
        if (hexFormat$BytesHexFormat$Builder == null || (default$kotlin_stdlib = hexFormat$BytesHexFormat$Builder.build$kotlin_stdlib()) == null) {
            default$kotlin_stdlib = HexFormat$BytesHexFormat.Companion.getDefault$kotlin_stdlib();
        }
        HexFormat$NumberHexFormat$Builder hexFormat$NumberHexFormat$Builder = this._number;
        if (hexFormat$NumberHexFormat$Builder == null || (default$kotlin_stdlib2 = hexFormat$NumberHexFormat$Builder.build$kotlin_stdlib()) == null) {
            default$kotlin_stdlib2 = HexFormat$NumberHexFormat.Companion.getDefault$kotlin_stdlib();
        }
        return new HexFormat(z, default$kotlin_stdlib, default$kotlin_stdlib2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HexFormat$BytesHexFormat$Builder getBytes() {
        if (this._bytes == null) {
            this._bytes = new HexFormat$BytesHexFormat$Builder();
        }
        HexFormat$BytesHexFormat$Builder hexFormat$BytesHexFormat$Builder = this._bytes;
        hexFormat$BytesHexFormat$Builder.getClass();
        return hexFormat$BytesHexFormat$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HexFormat$NumberHexFormat$Builder getNumber() {
        if (this._number == null) {
            this._number = new HexFormat$NumberHexFormat$Builder();
        }
        HexFormat$NumberHexFormat$Builder hexFormat$NumberHexFormat$Builder = this._number;
        hexFormat$NumberHexFormat$Builder.getClass();
        return hexFormat$NumberHexFormat$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getUpperCase() {
        return this.upperCase;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setUpperCase(boolean z) {
        this.upperCase = z;
    }
}
