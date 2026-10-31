package okhttp3;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;
import l9.a0;
import l9.g0;
import l9.k;
import l9.l;
import l9.m;
import l9.n;
import l9.o;
import l9.z;
import n0.b;
import okhttp3.internal.cache.DiskLruCache$Editor;
import okhttp3.internal.cache.DiskLruCache$Snapshot;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.platform.Platform$Companion;
import w7.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\b\u0002\u0018\u0000 <2\u00020\u0001:\u0001<B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0018\u001a\u00020\u00122\n\u0010\u0017\u001a\u00060\u0015R\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u0007\u001a\u00020\u00062\n\u0010 \u001a\u00060\u001fR\u00020\u0016¢\u0006\u0004\b\u0007\u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010,\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00101\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010*R\u0014\u00102\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010'R\u0016\u00104\u001a\u0004\u0018\u0001038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u00107\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00108R\u0014\u0010:\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;¨\u0006="}, d2 = {"Lokhttp3/Cache$Entry;", HttpUrl.FRAGMENT_ENCODE_SET, "Ll9/g0;", "rawSource", "<init>", "(Ll9/g0;)V", "Lokhttp3/Response;", "response", "(Lokhttp3/Response;)V", "Ll9/n;", "source", HttpUrl.FRAGMENT_ENCODE_SET, "Ljava/security/cert/Certificate;", "readCertificateList", "(Ll9/n;)Ljava/util/List;", "Ll9/m;", "sink", "certificates", HttpUrl.FRAGMENT_ENCODE_SET, "writeCertList", "(Ll9/m;Ljava/util/List;)V", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "editor", "writeTo", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "Lokhttp3/Request;", "request", HttpUrl.FRAGMENT_ENCODE_SET, "matches", "(Lokhttp3/Request;Lokhttp3/Response;)Z", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "snapshot", "(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;", "Lokhttp3/HttpUrl;", "url", "Lokhttp3/HttpUrl;", "Lokhttp3/Headers;", "varyHeaders", "Lokhttp3/Headers;", HttpUrl.FRAGMENT_ENCODE_SET, "requestMethod", "Ljava/lang/String;", "Lokhttp3/Protocol;", "protocol", "Lokhttp3/Protocol;", HttpUrl.FRAGMENT_ENCODE_SET, "code", "I", "message", "responseHeaders", "Lokhttp3/Handshake;", "handshake", "Lokhttp3/Handshake;", HttpUrl.FRAGMENT_ENCODE_SET, "sentRequestMillis", "J", "receivedResponseMillis", "isHttps", "()Z", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Cache$Entry {
    public static final Cache$Entry$Companion Companion = new Cache$Entry$Companion(null);
    private static final String RECEIVED_MILLIS;
    private static final String SENT_MILLIS;
    private final int code;
    private final Handshake handshake;
    private final String message;
    private final Protocol protocol;
    private final long receivedResponseMillis;
    private final String requestMethod;
    private final Headers responseHeaders;
    private final long sentRequestMillis;
    private final HttpUrl url;
    private final Headers varyHeaders;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        StringBuilder sb = new StringBuilder();
        Platform$Companion platform$Companion = Platform.Companion;
        sb.append(platform$Companion.get().getPrefix());
        sb.append("-Sent-Millis");
        SENT_MILLIS = sb.toString();
        RECEIVED_MILLIS = platform$Companion.get().getPrefix() + "-Received-Millis";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Cache$Entry(g0 g0Var) {
        g0Var.getClass();
        try {
            a0 a0Var = new a0(g0Var);
            String strP = a0Var.p(Long.MAX_VALUE);
            HttpUrl httpUrl = HttpUrl.Companion.parse(strP);
            if (httpUrl == null) {
                IOException iOException = new IOException("Cache corruption for ".concat(strP));
                Platform.Companion.get().log("cache corruption", 5, iOException);
                throw iOException;
            }
            this.url = httpUrl;
            this.requestMethod = a0Var.p(Long.MAX_VALUE);
            Headers$Builder headers$Builder = new Headers$Builder();
            int int$okhttp = Cache.Companion.readInt$okhttp(a0Var);
            for (int i = 0; i < int$okhttp; i++) {
                headers$Builder.addLenient$okhttp(a0Var.p(Long.MAX_VALUE));
            }
            this.varyHeaders = headers$Builder.build();
            StatusLine statusLine = StatusLine.Companion.parse(a0Var.p(Long.MAX_VALUE));
            this.protocol = statusLine.protocol;
            this.code = statusLine.code;
            this.message = statusLine.message;
            Headers$Builder headers$Builder2 = new Headers$Builder();
            int int$okhttp2 = Cache.Companion.readInt$okhttp(a0Var);
            for (int i2 = 0; i2 < int$okhttp2; i2++) {
                headers$Builder2.addLenient$okhttp(a0Var.p(Long.MAX_VALUE));
            }
            String str = SENT_MILLIS;
            String str2 = headers$Builder2.get(str);
            String str3 = RECEIVED_MILLIS;
            String str4 = headers$Builder2.get(str3);
            headers$Builder2.removeAll(str);
            headers$Builder2.removeAll(str3);
            this.sentRequestMillis = str2 != null ? Long.parseLong(str2) : 0L;
            this.receivedResponseMillis = str4 != null ? Long.parseLong(str4) : 0L;
            this.responseHeaders = headers$Builder2.build();
            if (isHttps()) {
                String strP2 = a0Var.p(Long.MAX_VALUE);
                if (strP2.length() > 0) {
                    throw new IOException("expected \"\" but was \"" + strP2 + Typography.quote);
                }
                this.handshake = Handshake.Companion.get(!a0Var.k() ? TlsVersion.Companion.forJavaName(a0Var.p(Long.MAX_VALUE)) : TlsVersion.SSL_3_0, CipherSuite.Companion.forJavaName(a0Var.p(Long.MAX_VALUE)), readCertificateList(a0Var), readCertificateList(a0Var));
            } else {
                this.handshake = null;
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(g0Var, (Throwable) null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(g0Var, th);
                throw th2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean isHttps() {
        return Intrinsics.areEqual(this.url.scheme(), "https");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final List<Certificate> readCertificateList(n source) throws IOException {
        int int$okhttp = Cache.Companion.readInt$okhttp(source);
        if (int$okhttp == -1) {
            return CollectionsKt.emptyList();
        }
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            ArrayList arrayList = new ArrayList(int$okhttp);
            for (int i = 0; i < int$okhttp; i++) {
                String strL = source.L();
                l lVar = new l();
                o oVar = o.e;
                o oVarI = c.i(strL);
                if (oVarI == null) {
                    throw new IOException("Corrupt certificate in cache entry");
                }
                lVar.l0(oVarI);
                arrayList.add(certificateFactory.generateCertificate(new k(lVar, 0)));
            }
            return arrayList;
        } catch (CertificateException e) {
            b.A(e.getMessage());
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void writeCertList(m sink, List<? extends Certificate> certificates) {
        try {
            sink.Z(certificates.size()).writeByte(10);
            Iterator<? extends Certificate> it = certificates.iterator();
            while (it.hasNext()) {
                byte[] encoded = it.next().getEncoded();
                o oVar = o.e;
                encoded.getClass();
                sink.A(c.l(encoded).a()).writeByte(10);
            }
        } catch (CertificateEncodingException e) {
            b.A(e.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean matches(Request request, Response response) {
        request.getClass();
        response.getClass();
        return Intrinsics.areEqual(this.url, request.url()) && Intrinsics.areEqual(this.requestMethod, request.method()) && Cache.Companion.varyMatches(response, this.varyHeaders, request);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Response response(DiskLruCache$Snapshot snapshot) {
        snapshot.getClass();
        String str = this.responseHeaders.get("Content-Type");
        String str2 = this.responseHeaders.get("Content-Length");
        return new Response$Builder().request(new Request$Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new Cache$CacheResponseBody(snapshot, str, str2)).handshake(this.handshake).sentRequestAtMillis(this.sentRequestMillis).receivedResponseAtMillis(this.receivedResponseMillis).build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void writeTo(DiskLruCache$Editor editor) {
        editor.getClass();
        z zVarA = l9.b.a(editor.newSink(0));
        try {
            zVarA.A(this.url.getUrl());
            zVarA.writeByte(10);
            zVarA.A(this.requestMethod);
            zVarA.writeByte(10);
            zVarA.Z(this.varyHeaders.size());
            zVarA.writeByte(10);
            int size = this.varyHeaders.size();
            for (int i = 0; i < size; i++) {
                zVarA.A(this.varyHeaders.name(i));
                zVarA.A(": ");
                zVarA.A(this.varyHeaders.value(i));
                zVarA.writeByte(10);
            }
            zVarA.A(new StatusLine(this.protocol, this.code, this.message).toString());
            zVarA.writeByte(10);
            zVarA.Z(this.responseHeaders.size() + 2);
            zVarA.writeByte(10);
            int size2 = this.responseHeaders.size();
            for (int i2 = 0; i2 < size2; i2++) {
                zVarA.A(this.responseHeaders.name(i2));
                zVarA.A(": ");
                zVarA.A(this.responseHeaders.value(i2));
                zVarA.writeByte(10);
            }
            zVarA.A(SENT_MILLIS);
            zVarA.A(": ");
            zVarA.Z(this.sentRequestMillis);
            zVarA.writeByte(10);
            zVarA.A(RECEIVED_MILLIS);
            zVarA.A(": ");
            zVarA.Z(this.receivedResponseMillis);
            zVarA.writeByte(10);
            if (isHttps()) {
                zVarA.writeByte(10);
                Handshake handshake = this.handshake;
                handshake.getClass();
                zVarA.A(handshake.cipherSuite().javaName());
                zVarA.writeByte(10);
                writeCertList(zVarA, this.handshake.peerCertificates());
                writeCertList(zVarA, this.handshake.localCertificates());
                zVarA.A(this.handshake.tlsVersion().javaName());
                zVarA.writeByte(10);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(zVarA, (Throwable) null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(zVarA, th);
                throw th2;
            }
        }
    }

    public Cache$Entry(Response response) {
        response.getClass();
        this.url = response.request().url();
        this.varyHeaders = Cache.Companion.varyHeaders(response);
        this.requestMethod = response.request().method();
        this.protocol = response.protocol();
        this.code = response.code();
        this.message = response.message();
        this.responseHeaders = response.headers();
        this.handshake = response.handshake();
        this.sentRequestMillis = response.sentRequestAtMillis();
        this.receivedResponseMillis = response.receivedResponseAtMillis();
    }
}
