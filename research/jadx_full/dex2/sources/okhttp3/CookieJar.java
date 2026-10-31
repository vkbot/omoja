package okhttp3;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H&¨\u0006\u000b"}, d2 = {"Lokhttp3/CookieJar;", HttpUrl.FRAGMENT_ENCODE_SET, "loadForRequest", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/Cookie;", "url", "Lokhttp3/HttpUrl;", "saveFromResponse", HttpUrl.FRAGMENT_ENCODE_SET, "cookies", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface CookieJar {
    public static final CookieJar$Companion Companion = CookieJar$Companion.$$INSTANCE;

    @JvmField
    public static final CookieJar NO_COOKIES = new CookieJar$Companion$NoCookies();

    List<Cookie> loadForRequest(HttpUrl url);

    void saveFromResponse(HttpUrl url, List<Cookie> cookies);
}
