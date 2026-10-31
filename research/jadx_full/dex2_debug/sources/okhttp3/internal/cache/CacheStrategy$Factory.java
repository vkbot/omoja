package okhttp3.internal.cache;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Headers$Builder;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Response$Builder;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0017\u001a\u00020\u0003H\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\u001b\u001a\u00020\u0003H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\b\u0010\u001e\u001a\u00020\u001dH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Factory;", HttpUrl.FRAGMENT_ENCODE_SET, "nowMillis", HttpUrl.FRAGMENT_ENCODE_SET, "request", "Lokhttp3/Request;", "cacheResponse", "Lokhttp3/Response;", "(JLokhttp3/Request;Lokhttp3/Response;)V", "ageSeconds", HttpUrl.FRAGMENT_ENCODE_SET, "etag", HttpUrl.FRAGMENT_ENCODE_SET, "expires", "Ljava/util/Date;", "lastModified", "lastModifiedString", "receivedResponseMillis", "getRequest$okhttp", "()Lokhttp3/Request;", "sentRequestMillis", "servedDate", "servedDateString", "cacheResponseAge", "compute", "Lokhttp3/internal/cache/CacheStrategy;", "computeCandidate", "computeFreshnessLifetime", "hasConditions", HttpUrl.FRAGMENT_ENCODE_SET, "isFreshnessLifetimeHeuristic", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CacheStrategy$Factory {
    private int ageSeconds;
    private final Response cacheResponse;
    private String etag;
    private Date expires;
    private Date lastModified;
    private String lastModifiedString;
    private final long nowMillis;
    private long receivedResponseMillis;
    private final Request request;
    private long sentRequestMillis;
    private Date servedDate;
    private String servedDateString;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CacheStrategy$Factory(long j, Request request, Response response) {
        request.getClass();
        this.nowMillis = j;
        this.request = request;
        this.cacheResponse = response;
        this.ageSeconds = -1;
        if (response != null) {
            this.sentRequestMillis = response.sentRequestAtMillis();
            this.receivedResponseMillis = response.receivedResponseAtMillis();
            Headers headers = response.headers();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String strName = headers.name(i);
                String strValue = headers.value(i);
                if (StringsKt.s(strName, "Date")) {
                    this.servedDate = DatesKt.toHttpDateOrNull(strValue);
                    this.servedDateString = strValue;
                } else if (StringsKt.s(strName, "Expires")) {
                    this.expires = DatesKt.toHttpDateOrNull(strValue);
                } else if (StringsKt.s(strName, "Last-Modified")) {
                    this.lastModified = DatesKt.toHttpDateOrNull(strValue);
                    this.lastModifiedString = strValue;
                } else if (StringsKt.s(strName, "ETag")) {
                    this.etag = strValue;
                } else if (StringsKt.s(strName, "Age")) {
                    this.ageSeconds = Util.toNonNegativeInt(strValue, -1);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final long cacheResponseAge() {
        Date date = this.servedDate;
        long jMax = date != null ? Math.max(0L, this.receivedResponseMillis - date.getTime()) : 0L;
        int i = this.ageSeconds;
        if (i != -1) {
            jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i));
        }
        long j = this.receivedResponseMillis;
        return jMax + (j - this.sentRequestMillis) + (this.nowMillis - j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final CacheStrategy computeCandidate() {
        String str;
        if (this.cacheResponse == null) {
            return new CacheStrategy(this.request, null);
        }
        if (this.request.isHttps() && this.cacheResponse.handshake() == null) {
            return new CacheStrategy(this.request, null);
        }
        if (!CacheStrategy.Companion.isCacheable(this.cacheResponse, this.request)) {
            return new CacheStrategy(this.request, null);
        }
        CacheControl cacheControl = this.request.cacheControl();
        if (cacheControl.noCache() || hasConditions(this.request)) {
            return new CacheStrategy(this.request, null);
        }
        CacheControl cacheControl2 = this.cacheResponse.cacheControl();
        long jCacheResponseAge = cacheResponseAge();
        long jComputeFreshnessLifetime = computeFreshnessLifetime();
        int iMaxAgeSeconds = cacheControl.maxAgeSeconds();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        if (iMaxAgeSeconds != -1) {
            jComputeFreshnessLifetime = Math.min(jComputeFreshnessLifetime, timeUnit.toMillis(cacheControl.maxAgeSeconds()));
        }
        long millis = 0;
        long millis2 = cacheControl.minFreshSeconds() != -1 ? timeUnit.toMillis(cacheControl.minFreshSeconds()) : 0L;
        if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
            millis = timeUnit.toMillis(cacheControl.maxStaleSeconds());
        }
        if (!cacheControl2.noCache()) {
            long j = millis2 + jCacheResponseAge;
            if (j < millis + jComputeFreshnessLifetime) {
                Response$Builder response$BuilderNewBuilder = this.cacheResponse.newBuilder();
                if (j >= jComputeFreshnessLifetime) {
                    response$BuilderNewBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                }
                if (jCacheResponseAge > 86400000 && isFreshnessLifetimeHeuristic()) {
                    response$BuilderNewBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                }
                return new CacheStrategy(null, response$BuilderNewBuilder.build());
            }
        }
        String str2 = this.etag;
        if (str2 != null) {
            str = "If-None-Match";
        } else {
            if (this.lastModified != null) {
                str2 = this.lastModifiedString;
            } else {
                if (this.servedDate == null) {
                    return new CacheStrategy(this.request, null);
                }
                str2 = this.servedDateString;
            }
            str = "If-Modified-Since";
        }
        Headers$Builder headers$BuilderNewBuilder = this.request.headers().newBuilder();
        str2.getClass();
        headers$BuilderNewBuilder.addLenient$okhttp(str, str2);
        return new CacheStrategy(this.request.newBuilder().headers(headers$BuilderNewBuilder.build()).build(), this.cacheResponse);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final long computeFreshnessLifetime() {
        Response response = this.cacheResponse;
        response.getClass();
        CacheControl cacheControl = response.cacheControl();
        if (cacheControl.maxAgeSeconds() != -1) {
            return TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds());
        }
        Date date = this.expires;
        if (date != null) {
            Date date2 = this.servedDate;
            long time = date.getTime() - (date2 != null ? date2.getTime() : this.receivedResponseMillis);
            if (time > 0) {
                return time;
            }
            return 0L;
        }
        if (this.lastModified != null && this.cacheResponse.request().url().query() == null) {
            Date date3 = this.servedDate;
            long time2 = date3 != null ? date3.getTime() : this.sentRequestMillis;
            Date date4 = this.lastModified;
            date4.getClass();
            long time3 = time2 - date4.getTime();
            if (time3 > 0) {
                return time3 / ((long) 10);
            }
        }
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean hasConditions(Request request) {
        return (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean isFreshnessLifetimeHeuristic() {
        Response response = this.cacheResponse;
        response.getClass();
        return response.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CacheStrategy compute() {
        CacheStrategy cacheStrategyComputeCandidate = computeCandidate();
        return (cacheStrategyComputeCandidate.getNetworkRequest() == null || !this.request.cacheControl().onlyIfCached()) ? cacheStrategyComputeCandidate : new CacheStrategy(null, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getRequest$okhttp, reason: from getter */
    public final Request getRequest() {
        return this.request;
    }
}
