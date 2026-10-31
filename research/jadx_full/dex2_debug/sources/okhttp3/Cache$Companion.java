package okhttp3;

import java.io.IOException;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import l9.n;
import l9.o;
import n0.b;
import okhttp3.internal.Util;
import w7.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010\u001f\u001a\u00020\u001c*\u00020\u0017¢\u0006\u0004\b\u001f\u0010 J\u0011\u0010\u000b\u001a\u00020\u0004*\u00020\u0017¢\u0006\u0004\b\u000b\u0010!R\u0014\u0010\"\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010#R\u0014\u0010%\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010#R\u0014\u0010&\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010#¨\u0006'"}, d2 = {"Lokhttp3/Cache$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "Lokhttp3/Headers;", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "varyFields", "(Lokhttp3/Headers;)Ljava/util/Set;", "requestHeaders", "responseHeaders", "varyHeaders", "(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;", "Lokhttp3/HttpUrl;", "url", "key", "(Lokhttp3/HttpUrl;)Ljava/lang/String;", "Ll9/n;", "source", HttpUrl.FRAGMENT_ENCODE_SET, "readInt$okhttp", "(Ll9/n;)I", "readInt", "Lokhttp3/Response;", "cachedResponse", "cachedRequest", "Lokhttp3/Request;", "newRequest", HttpUrl.FRAGMENT_ENCODE_SET, "varyMatches", "(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z", "hasVaryAll", "(Lokhttp3/Response;)Z", "(Lokhttp3/Response;)Lokhttp3/Headers;", "ENTRY_BODY", "I", "ENTRY_COUNT", "ENTRY_METADATA", "VERSION", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,788:1\n2624#2,3:789\n*S KotlinDebug\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n*L\n729#1:789,3\n*E\n"})
public final class Cache$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Cache$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Set<String> varyFields(Headers headers) {
        int size = headers.size();
        TreeSet treeSet = null;
        for (int i = 0; i < size; i++) {
            if (StringsKt.s("Vary", headers.name(i))) {
                String strValue = headers.value(i);
                if (treeSet == null) {
                    treeSet = new TreeSet(StringsKt.getCASE_INSENSITIVE_ORDER(StringCompanionObject.INSTANCE));
                }
                Iterator it = StringsKt.H(strValue, new char[]{','}).iterator();
                while (it.hasNext()) {
                    treeSet.add(StringsKt.R((String) it.next()).toString());
                }
            }
        }
        return treeSet == null ? SetsKt.emptySet() : treeSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Headers varyHeaders(Headers requestHeaders, Headers responseHeaders) {
        Set<String> setVaryFields = varyFields(responseHeaders);
        if (setVaryFields.isEmpty()) {
            return Util.EMPTY_HEADERS;
        }
        Headers$Builder headers$Builder = new Headers$Builder();
        int size = requestHeaders.size();
        for (int i = 0; i < size; i++) {
            String strName = requestHeaders.name(i);
            if (setVaryFields.contains(strName)) {
                headers$Builder.add(strName, requestHeaders.value(i));
            }
        }
        return headers$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean hasVaryAll(Response response) {
        response.getClass();
        return varyFields(response.headers()).contains("*");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final String key(HttpUrl url) {
        url.getClass();
        o oVar = o.e;
        return c.k(url.getUrl()).b("MD5").d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int readInt$okhttp(n source) throws IOException {
        source.getClass();
        try {
            long jO = source.o();
            String strL = source.L();
            if (jO >= 0 && jO <= 2147483647L && strL.length() <= 0) {
                return (int) jO;
            }
            throw new IOException("expected an int but was \"" + jO + strL + Typography.quote);
        } catch (NumberFormatException e) {
            b.A(e.getMessage());
            return 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean varyMatches(Response cachedResponse, Headers cachedRequest, Request newRequest) {
        cachedResponse.getClass();
        cachedRequest.getClass();
        newRequest.getClass();
        Set<String> setVaryFields = varyFields(cachedResponse.headers());
        if (setVaryFields != null && setVaryFields.isEmpty()) {
            return true;
        }
        for (String str : setVaryFields) {
            if (!Intrinsics.areEqual(cachedRequest.values(str), newRequest.headers(str))) {
                return false;
            }
        }
        return true;
    }

    private Cache$Companion() {
    }

    public final Headers varyHeaders(Response response) {
        response.getClass();
        Response responseNetworkResponse = response.networkResponse();
        responseNetworkResponse.getClass();
        return varyHeaders(responseNetworkResponse.request().headers(), response.headers());
    }
}
