package okhttp3;

import ai.onnxruntime.a;
import j1.i;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import n0.b;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.http.DatesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0018\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0000J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u0000J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lokhttp3/Cookie$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "domain", HttpUrl.FRAGMENT_ENCODE_SET, "expiresAt", HttpUrl.FRAGMENT_ENCODE_SET, "hostOnly", HttpUrl.FRAGMENT_ENCODE_SET, "httpOnly", "name", "path", "persistent", "secure", "value", "build", "Lokhttp3/Cookie;", "hostOnlyDomain", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCookie.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cookie.kt\nokhttp3/Cookie$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,614:1\n1#2:615\n*E\n"})
public final class Cookie$Builder {
    private String domain;
    private boolean hostOnly;
    private boolean httpOnly;
    private String name;
    private boolean persistent;
    private boolean secure;
    private String value;
    private long expiresAt = DatesKt.MAX_DATE;
    private String path = "/";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Cookie$Builder domain(String domain, boolean hostOnly) {
        String canonicalHost = HostnamesKt.toCanonicalHost(domain);
        if (canonicalHost == null) {
            i.k(a.l("unexpected domain: ", domain));
            return null;
        }
        this.domain = canonicalHost;
        this.hostOnly = hostOnly;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cookie build() {
        String str = this.name;
        if (str == null) {
            b.n("builder.name == null");
            return null;
        }
        String str2 = this.value;
        if (str2 == null) {
            b.n("builder.value == null");
            return null;
        }
        long j = this.expiresAt;
        String str3 = this.domain;
        if (str3 != null) {
            return new Cookie(str, str2, j, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
        }
        b.n("builder.domain == null");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cookie$Builder expiresAt(long expiresAt) {
        if (expiresAt <= 0) {
            expiresAt = Long.MIN_VALUE;
        }
        if (expiresAt > DatesKt.MAX_DATE) {
            expiresAt = 253402300799999L;
        }
        this.expiresAt = expiresAt;
        this.persistent = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cookie$Builder hostOnlyDomain(String domain) {
        domain.getClass();
        return domain(domain, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cookie$Builder httpOnly() {
        this.httpOnly = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cookie$Builder name(String name) {
        name.getClass();
        if (Intrinsics.areEqual(StringsKt.R(name).toString(), name)) {
            this.name = name;
            return this;
        }
        i.k("name is not trimmed");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cookie$Builder path(String path) {
        path.getClass();
        if (StringsKt.M(path, "/")) {
            this.path = path;
            return this;
        }
        i.k("path must start with '/'");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cookie$Builder secure() {
        this.secure = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cookie$Builder value(String value) {
        value.getClass();
        if (Intrinsics.areEqual(StringsKt.R(value).toString(), value)) {
            this.value = value;
            return this;
        }
        i.k("value is not trimmed");
        return null;
    }

    public final Cookie$Builder domain(String domain) {
        domain.getClass();
        return domain(domain, false);
    }
}
