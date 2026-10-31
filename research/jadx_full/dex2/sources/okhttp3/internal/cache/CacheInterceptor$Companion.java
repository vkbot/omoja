package okhttp3.internal.cache;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.Headers$Builder;
import okhttp3.HttpUrl;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0014\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "combine", "Lokhttp3/Headers;", "cachedHeaders", "networkHeaders", "isContentSpecificHeader", HttpUrl.FRAGMENT_ENCODE_SET, "fieldName", HttpUrl.FRAGMENT_ENCODE_SET, "isEndToEnd", "stripBody", "Lokhttp3/Response;", "response", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CacheInterceptor$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ CacheInterceptor$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Headers access$combine(CacheInterceptor$Companion cacheInterceptor$Companion, Headers headers, Headers headers2) {
        return cacheInterceptor$Companion.combine(headers, headers2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Response access$stripBody(CacheInterceptor$Companion cacheInterceptor$Companion, Response response) {
        return cacheInterceptor$Companion.stripBody(response);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Headers combine(Headers cachedHeaders, Headers networkHeaders) {
        Headers$Builder headers$Builder = new Headers$Builder();
        int size = cachedHeaders.size();
        for (int i = 0; i < size; i++) {
            String strName = cachedHeaders.name(i);
            String strValue = cachedHeaders.value(i);
            if ((!StringsKt.s("Warning", strName) || !StringsKt.M(strValue, "1")) && (isContentSpecificHeader(strName) || !isEndToEnd(strName) || networkHeaders.get(strName) == null)) {
                headers$Builder.addLenient$okhttp(strName, strValue);
            }
        }
        int size2 = networkHeaders.size();
        for (int i2 = 0; i2 < size2; i2++) {
            String strName2 = networkHeaders.name(i2);
            if (!isContentSpecificHeader(strName2) && isEndToEnd(strName2)) {
                headers$Builder.addLenient$okhttp(strName2, networkHeaders.value(i2));
            }
        }
        return headers$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean isContentSpecificHeader(String fieldName) {
        return StringsKt.s("Content-Length", fieldName) || StringsKt.s("Content-Encoding", fieldName) || StringsKt.s("Content-Type", fieldName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean isEndToEnd(String fieldName) {
        return (StringsKt.s("Connection", fieldName) || StringsKt.s("Keep-Alive", fieldName) || StringsKt.s("Proxy-Authenticate", fieldName) || StringsKt.s("Proxy-Authorization", fieldName) || StringsKt.s("TE", fieldName) || StringsKt.s("Trailers", fieldName) || StringsKt.s("Transfer-Encoding", fieldName) || StringsKt.s("Upgrade", fieldName)) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Response stripBody(Response response) {
        return (response != null ? response.body() : null) != null ? response.newBuilder().body(null).build() : response;
    }

    private CacheInterceptor$Companion() {
    }
}
