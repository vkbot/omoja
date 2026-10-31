package okhttp3.internal.http1;

import kotlin.Metadata;
import l9.n;
import okhttp3.Headers;
import okhttp3.Headers$Builder;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lokhttp3/internal/http1/HeadersReader;", HttpUrl.FRAGMENT_ENCODE_SET, "Ll9/n;", "source", "<init>", "(Ll9/n;)V", HttpUrl.FRAGMENT_ENCODE_SET, "readLine", "()Ljava/lang/String;", "Lokhttp3/Headers;", "readHeaders", "()Lokhttp3/Headers;", "Ll9/n;", "getSource", "()Ll9/n;", HttpUrl.FRAGMENT_ENCODE_SET, "headerLimit", "J", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HeadersReader {
    public static final HeadersReader$Companion Companion = new HeadersReader$Companion(null);
    private static final int HEADER_LIMIT = 262144;
    private long headerLimit;
    private final n source;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HeadersReader(n nVar) {
        nVar.getClass();
        this.source = nVar;
        this.headerLimit = 262144L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final n getSource() {
        return this.source;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers readHeaders() {
        Headers$Builder headers$Builder = new Headers$Builder();
        while (true) {
            String line = readLine();
            if (line.length() == 0) {
                return headers$Builder.build();
            }
            headers$Builder.addLenient$okhttp(line);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String readLine() {
        String strP = this.source.p(this.headerLimit);
        this.headerLimit -= (long) strP.length();
        return strP;
    }
}
