package okhttp3;

import ai.onnxruntime.a;
import androidx.navigation.b;
import j1.i;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u00132\u0006\u0010'\u001a\u00020\u0013H\u0016J\b\u0010(\u001a\u00020\u0004H\u0016J\u0010\u0010)\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*H\u0016J\u0014\u0010+\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017J\b\u0010,\u001a\u00020\u0000H\u0016J\b\u0010-\u001a\u00020\u0000H\u0016J\u0018\u0010.\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u00132\u0006\u0010'\u001a\u00020\u0013H\u0016J\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020/H\u0016J\u001a\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u00100\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u00101\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u00102\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u00103\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0013H\u0016J-\u00104\u001a\u00020\u0000\"\u0004\b\u0000\u001052\u000e\u00106\u001a\n\u0012\u0006\b\u0000\u0012\u0002H50\u001a2\b\u00104\u001a\u0004\u0018\u0001H5H\u0016¢\u0006\u0002\u00107J\u0012\u00104\u001a\u00020\u00002\b\u00104\u001a\u0004\u0018\u00010\u0001H\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u000208H\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0013H\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 H\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R*\u0010\u0018\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a\u0012\u0004\u0012\u00020\u00010\u0019X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u00069"}, d2 = {"Lokhttp3/Request$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "request", "Lokhttp3/Request;", "(Lokhttp3/Request;)V", "body", "Lokhttp3/RequestBody;", "getBody$okhttp", "()Lokhttp3/RequestBody;", "setBody$okhttp", "(Lokhttp3/RequestBody;)V", "headers", "Lokhttp3/Headers$Builder;", "getHeaders$okhttp", "()Lokhttp3/Headers$Builder;", "setHeaders$okhttp", "(Lokhttp3/Headers$Builder;)V", "method", HttpUrl.FRAGMENT_ENCODE_SET, "getMethod$okhttp", "()Ljava/lang/String;", "setMethod$okhttp", "(Ljava/lang/String;)V", "tags", HttpUrl.FRAGMENT_ENCODE_SET, "Ljava/lang/Class;", "getTags$okhttp", "()Ljava/util/Map;", "setTags$okhttp", "(Ljava/util/Map;)V", "url", "Lokhttp3/HttpUrl;", "getUrl$okhttp", "()Lokhttp3/HttpUrl;", "setUrl$okhttp", "(Lokhttp3/HttpUrl;)V", "addHeader", "name", "value", "build", "cacheControl", "Lokhttp3/CacheControl;", "delete", "get", "head", "header", "Lokhttp3/Headers;", "patch", "post", "put", "removeHeader", "tag", "T", "type", "(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;", "Ljava/net/URL;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Request.kt\nokhttp3/Request$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,298:1\n1#2:299\n*E\n"})
public class Request$Builder {
    private RequestBody body;
    private Headers$Builder headers;
    private String method;
    private Map<Class<?>, Object> tags;
    private HttpUrl url;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder(Request request) {
        request.getClass();
        this.tags = new LinkedHashMap();
        this.url = request.url();
        this.method = request.method();
        this.body = request.body();
        this.tags = request.getTags$okhttp().isEmpty() ? new LinkedHashMap<>() : MapsKt.toMutableMap(request.getTags$okhttp());
        this.headers = request.headers().newBuilder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Request$Builder delete$default(Request$Builder request$Builder, RequestBody requestBody, int i, Object obj) {
        if (obj != null) {
            b.g("Super calls with default arguments not supported in this target, function: delete");
            return null;
        }
        if ((i & 1) != 0) {
            requestBody = Util.EMPTY_REQUEST;
        }
        return request$Builder.delete(requestBody);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder addHeader(String name, String value) {
        name.getClass();
        value.getClass();
        this.headers.add(name, value);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request build() {
        HttpUrl httpUrl = this.url;
        if (httpUrl != null) {
            return new Request(httpUrl, this.method, this.headers.build(), this.body, Util.toImmutableMap(this.tags));
        }
        i.l("url == null");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder cacheControl(CacheControl cacheControl) {
        cacheControl.getClass();
        String string = cacheControl.toString();
        return string.length() == 0 ? removeHeader("Cache-Control") : header("Cache-Control", string);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final Request$Builder delete() {
        return delete$default(this, null, 1, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder get() {
        return method("GET", null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getBody$okhttp, reason: from getter */
    public final RequestBody getBody() {
        return this.body;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getHeaders$okhttp, reason: from getter */
    public final Headers$Builder getHeaders() {
        return this.headers;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getMethod$okhttp, reason: from getter */
    public final String getMethod() {
        return this.method;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Map<Class<?>, Object> getTags$okhttp() {
        return this.tags;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getUrl$okhttp, reason: from getter */
    public final HttpUrl getUrl() {
        return this.url;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder head() {
        return method("HEAD", null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder header(String name, String value) {
        name.getClass();
        value.getClass();
        this.headers.set(name, value);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder headers(Headers headers) {
        headers.getClass();
        this.headers = headers.newBuilder();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder method(String method, RequestBody body) {
        method.getClass();
        if (method.length() <= 0) {
            i.k("method.isEmpty() == true");
            return null;
        }
        if (body == null) {
            if (HttpMethod.requiresRequestBody(method)) {
                l9.i.d(a.m("method ", method, " must have a request body."));
                return null;
            }
        } else if (!HttpMethod.permitsRequestBody(method)) {
            l9.i.d(a.m("method ", method, " must not have a request body."));
            return null;
        }
        this.method = method;
        this.body = body;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder patch(RequestBody body) {
        body.getClass();
        return method("PATCH", body);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder post(RequestBody body) {
        body.getClass();
        return method("POST", body);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder put(RequestBody body) {
        body.getClass();
        return method("PUT", body);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder removeHeader(String name) {
        name.getClass();
        this.headers.removeAll(name);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setBody$okhttp(RequestBody requestBody) {
        this.body = requestBody;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setHeaders$okhttp(Headers$Builder headers$Builder) {
        headers$Builder.getClass();
        this.headers = headers$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMethod$okhttp(String str) {
        str.getClass();
        this.method = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTags$okhttp(Map<Class<?>, Object> map) {
        map.getClass();
        this.tags = map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setUrl$okhttp(HttpUrl httpUrl) {
        this.url = httpUrl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> Request$Builder tag(Class<? super T> type, T tag) {
        type.getClass();
        Map<Class<?>, Object> map = this.tags;
        if (tag == null) {
            map.remove(type);
            return this;
        }
        if (map.isEmpty()) {
            this.tags = new LinkedHashMap();
        }
        Map<Class<?>, Object> map2 = this.tags;
        T tCast = type.cast(tag);
        tCast.getClass();
        map2.put(type, tCast);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Request$Builder url(String url) {
        url.getClass();
        if (StringsKt.J(url, "ws:")) {
            url = "http:".concat(url.substring(3));
        } else if (StringsKt.J(url, "wss:")) {
            url = "https:".concat(url.substring(4));
        }
        return url(HttpUrl.Companion.get(url));
    }

    @JvmOverloads
    public Request$Builder delete(RequestBody body) {
        return method("DELETE", body);
    }

    public Request$Builder tag(Object tag) {
        return tag(Object.class, tag);
    }

    public Request$Builder url(HttpUrl url) {
        url.getClass();
        this.url = url;
        return this;
    }

    public Request$Builder url(URL url) {
        url.getClass();
        HttpUrl$Companion httpUrl$Companion = HttpUrl.Companion;
        String string = url.toString();
        string.getClass();
        return url(httpUrl$Companion.get(string));
    }

    public Request$Builder() {
        this.tags = new LinkedHashMap();
        this.method = "GET";
        this.headers = new Headers$Builder();
    }
}
