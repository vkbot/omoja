package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import l9.o;
import okhttp3.HttpUrl;
import w7.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\bB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\rJ$\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lokhttp3/internal/http2/Header;", HttpUrl.FRAGMENT_ENCODE_SET, "Ll9/o;", "name", "value", "<init>", "(Ll9/o;Ll9/o;)V", HttpUrl.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;Ljava/lang/String;)V", "(Ll9/o;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "component1", "()Ll9/o;", "component2", "copy", "(Ll9/o;Ll9/o;)Lokhttp3/internal/http2/Header;", HttpUrl.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", HttpUrl.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ll9/o;", "hpackSize", "I", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Header {
    public static final Header$Companion Companion = new Header$Companion(null);

    @JvmField
    public static final o PSEUDO_PREFIX;

    @JvmField
    public static final o RESPONSE_STATUS;
    public static final String RESPONSE_STATUS_UTF8 = ":status";

    @JvmField
    public static final o TARGET_AUTHORITY;
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";

    @JvmField
    public static final o TARGET_METHOD;
    public static final String TARGET_METHOD_UTF8 = ":method";

    @JvmField
    public static final o TARGET_PATH;
    public static final String TARGET_PATH_UTF8 = ":path";

    @JvmField
    public static final o TARGET_SCHEME;
    public static final String TARGET_SCHEME_UTF8 = ":scheme";

    @JvmField
    public final int hpackSize;

    @JvmField
    public final o name;

    @JvmField
    public final o value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        o oVar = o.e;
        PSEUDO_PREFIX = c.k(":");
        RESPONSE_STATUS = c.k(RESPONSE_STATUS_UTF8);
        TARGET_METHOD = c.k(TARGET_METHOD_UTF8);
        TARGET_PATH = c.k(TARGET_PATH_UTF8);
        TARGET_SCHEME = c.k(TARGET_SCHEME_UTF8);
        TARGET_AUTHORITY = c.k(TARGET_AUTHORITY_UTF8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Header(o oVar, o oVar2) {
        oVar.getClass();
        oVar2.getClass();
        this.name = oVar;
        this.value = oVar2;
        this.hpackSize = oVar2.c() + oVar.c() + 32;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Header copy$default(Header header, o oVar, o oVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            oVar = header.name;
        }
        if ((i & 2) != 0) {
            oVar2 = header.value;
        }
        return header.copy(oVar, oVar2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final o getName() {
        return this.name;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final o getValue() {
        return this.value;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Header copy(o name, o value) {
        name.getClass();
        value.getClass();
        return new Header(name, value);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Header)) {
            return false;
        }
        Header header = (Header) other;
        return Intrinsics.areEqual(this.name, header.name) && Intrinsics.areEqual(this.value, header.value);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.value.hashCode() + (this.name.hashCode() * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.name.l() + ": " + this.value.l();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(String str, String str2) {
        this(c.k(str), c.k(str2));
        str.getClass();
        str2.getClass();
        o oVar = o.e;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(o oVar, String str) {
        this(oVar, c.k(str));
        oVar.getClass();
        str.getClass();
        o oVar2 = o.e;
    }
}
