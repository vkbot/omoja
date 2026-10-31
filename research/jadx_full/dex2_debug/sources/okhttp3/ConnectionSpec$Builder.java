package okhttp3;

import j1.i;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0019\u001a\u00020\u0000J\u0006\u0010\u001a\u001a\u00020\u0000J\u0006\u0010\u001b\u001a\u00020\u0006J\u001f\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0002\u0010\u001cJ\u001f\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001d0\t\"\u00020\u001d¢\u0006\u0002\u0010\u001eJ\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0003H\u0007J\u001f\u0010\u0016\u001a\u00020\u00002\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0002\u0010\u001cJ\u001f\u0010\u0016\u001a\u00020\u00002\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001f0\t\"\u00020\u001f¢\u0006\u0002\u0010 R$\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0012\"\u0004\b\u0015\u0010\u0004R$\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000e¨\u0006!"}, d2 = {"Lokhttp3/ConnectionSpec$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "tls", HttpUrl.FRAGMENT_ENCODE_SET, "(Z)V", "connectionSpec", "Lokhttp3/ConnectionSpec;", "(Lokhttp3/ConnectionSpec;)V", "cipherSuites", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "getCipherSuites$okhttp", "()[Ljava/lang/String;", "setCipherSuites$okhttp", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "supportsTlsExtensions", "getSupportsTlsExtensions$okhttp", "()Z", "setSupportsTlsExtensions$okhttp", "getTls$okhttp", "setTls$okhttp", "tlsVersions", "getTlsVersions$okhttp", "setTlsVersions$okhttp", "allEnabledCipherSuites", "allEnabledTlsVersions", "build", "([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;", "Lokhttp3/CipherSuite;", "([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;", "Lokhttp3/TlsVersion;", "([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,350:1\n1#2:351\n11065#3:352\n11400#3,3:353\n11065#3:358\n11400#3,3:359\n37#4,2:356\n37#4,2:362\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n*L\n225#1:352\n225#1:353,3\n244#1:358\n244#1:359,3\n225#1:356,2\n244#1:362,2\n*E\n"})
public final class ConnectionSpec$Builder {
    private String[] cipherSuites;
    private boolean supportsTlsExtensions;
    private boolean tls;
    private String[] tlsVersions;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConnectionSpec$Builder(ConnectionSpec connectionSpec) {
        connectionSpec.getClass();
        this.tls = connectionSpec.getIsTls();
        this.cipherSuites = ConnectionSpec.access$getCipherSuitesAsString$p(connectionSpec);
        this.tlsVersions = ConnectionSpec.access$getTlsVersionsAsString$p(connectionSpec);
        this.supportsTlsExtensions = connectionSpec.supportsTlsExtensions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ConnectionSpec$Builder allEnabledCipherSuites() {
        if (this.tls) {
            this.cipherSuites = null;
            return this;
        }
        i.k("no cipher suites for cleartext connections");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ConnectionSpec$Builder allEnabledTlsVersions() {
        if (this.tls) {
            this.tlsVersions = null;
            return this;
        }
        i.k("no TLS versions for cleartext connections");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ConnectionSpec build() {
        return new ConnectionSpec(this.tls, this.supportsTlsExtensions, this.cipherSuites, this.tlsVersions);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ConnectionSpec$Builder cipherSuites(CipherSuite... cipherSuites) {
        cipherSuites.getClass();
        if (!this.tls) {
            i.k("no cipher suites for cleartext connections");
            return null;
        }
        ArrayList arrayList = new ArrayList(cipherSuites.length);
        for (CipherSuite cipherSuite : cipherSuites) {
            arrayList.add(cipherSuite.javaName());
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        return cipherSuites((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getCipherSuites$okhttp, reason: from getter */
    public final String[] getCipherSuites() {
        return this.cipherSuites;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getSupportsTlsExtensions$okhttp, reason: from getter */
    public final boolean getSupportsTlsExtensions() {
        return this.supportsTlsExtensions;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getTls$okhttp, reason: from getter */
    public final boolean getTls() {
        return this.tls;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getTlsVersions$okhttp, reason: from getter */
    public final String[] getTlsVersions() {
        return this.tlsVersions;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCipherSuites$okhttp(String[] strArr) {
        this.cipherSuites = strArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSupportsTlsExtensions$okhttp(boolean z) {
        this.supportsTlsExtensions = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTls$okhttp(boolean z) {
        this.tls = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTlsVersions$okhttp(String[] strArr) {
        this.tlsVersions = strArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated(message = "since OkHttp 3.13 all TLS-connections are expected to support TLS extensions.\nIn a future release setting this to true will be unnecessary and setting it to false\nwill have no effect.")
    public final ConnectionSpec$Builder supportsTlsExtensions(boolean supportsTlsExtensions) {
        if (this.tls) {
            this.supportsTlsExtensions = supportsTlsExtensions;
            return this;
        }
        i.k("no TLS extensions for cleartext connections");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ConnectionSpec$Builder tlsVersions(TlsVersion... tlsVersions) {
        tlsVersions.getClass();
        if (!this.tls) {
            i.k("no TLS versions for cleartext connections");
            return null;
        }
        ArrayList arrayList = new ArrayList(tlsVersions.length);
        for (TlsVersion tlsVersion : tlsVersions) {
            arrayList.add(tlsVersion.javaName());
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        return tlsVersions((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public ConnectionSpec$Builder(boolean z) {
        this.tls = z;
    }

    public final ConnectionSpec$Builder cipherSuites(String... cipherSuites) {
        cipherSuites.getClass();
        if (this.tls) {
            if (!(cipherSuites.length == 0)) {
                this.cipherSuites = (String[]) cipherSuites.clone();
                return this;
            }
            i.k("At least one cipher suite is required");
            return null;
        }
        i.k("no cipher suites for cleartext connections");
        return null;
    }

    public final ConnectionSpec$Builder tlsVersions(String... tlsVersions) {
        tlsVersions.getClass();
        if (this.tls) {
            if (!(tlsVersions.length == 0)) {
                this.tlsVersions = (String[]) tlsVersions.clone();
                return this;
            }
            i.k("At least one TLS version is required");
            return null;
        }
        i.k("no TLS versions for cleartext connections");
        return null;
    }
}
