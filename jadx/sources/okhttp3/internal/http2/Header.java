package okhttp3.internal.http2;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import p130l9.C2245o;
import p232w7.C3537c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\bB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\rJ$\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, m3159d2 = {"Lokhttp3/internal/http2/Header;", "", "Ll9/o;", "name", "value", "<init>", "(Ll9/o;Ll9/o;)V", "", "(Ljava/lang/String;Ljava/lang/String;)V", "(Ll9/o;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "component1", "()Ll9/o;", "component2", "copy", "(Ll9/o;Ll9/o;)Lokhttp3/internal/http2/Header;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ll9/o;", "hpackSize", "I", "Companion", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final /* data */ class Header {

    @JvmField
    public static final C2245o PSEUDO_PREFIX;

    @JvmField
    public static final C2245o RESPONSE_STATUS;
    public static final String RESPONSE_STATUS_UTF8 = ":status";

    @JvmField
    public static final C2245o TARGET_AUTHORITY;
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";

    @JvmField
    public static final C2245o TARGET_METHOD;
    public static final String TARGET_METHOD_UTF8 = ":method";

    @JvmField
    public static final C2245o TARGET_PATH;
    public static final String TARGET_PATH_UTF8 = ":path";

    @JvmField
    public static final C2245o TARGET_SCHEME;
    public static final String TARGET_SCHEME_UTF8 = ":scheme";

    @JvmField
    public final int hpackSize;

    @JvmField
    public final C2245o name;

    @JvmField
    public final C2245o value;

    static {
        C2245o c2245o = C2245o.f5879e;
        PSEUDO_PREFIX = C3537c.m5648k(":");
        RESPONSE_STATUS = C3537c.m5648k(RESPONSE_STATUS_UTF8);
        TARGET_METHOD = C3537c.m5648k(TARGET_METHOD_UTF8);
        TARGET_PATH = C3537c.m5648k(TARGET_PATH_UTF8);
        TARGET_SCHEME = C3537c.m5648k(TARGET_SCHEME_UTF8);
        TARGET_AUTHORITY = C3537c.m5648k(TARGET_AUTHORITY_UTF8);
    }

    public Header(C2245o c2245o, C2245o c2245o2) {
        c2245o.getClass();
        c2245o2.getClass();
        this.name = c2245o;
        this.value = c2245o2;
        this.hpackSize = c2245o2.mo3585c() + c2245o.mo3585c() + 32;
    }

    public static /* synthetic */ Header copy$default(Header header, C2245o c2245o, C2245o c2245o2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c2245o = header.name;
        }
        if ((i10 & 2) != 0) {
            c2245o2 = header.value;
        }
        return header.copy(c2245o, c2245o2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final C2245o getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final C2245o getValue() {
        return this.value;
    }

    public final Header copy(C2245o name, C2245o value) {
        name.getClass();
        value.getClass();
        return new Header(name, value);
    }

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

    public int hashCode() {
        return this.value.hashCode() + (this.name.hashCode() * 31);
    }

    public String toString() {
        return this.name.m3636l() + ": " + this.value.m3636l();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(String str, String str2) {
        this(C3537c.m5648k(str), C3537c.m5648k(str2));
        str.getClass();
        str2.getClass();
        C2245o c2245o = C2245o.f5879e;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(C2245o c2245o, String str) {
        this(c2245o, C3537c.m5648k(str));
        c2245o.getClass();
        str.getClass();
        C2245o c2245o2 = C2245o.f5879e;
    }
}
