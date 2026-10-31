package okhttp3.internal.ws;

import kotlin.Metadata;
import l9.o;
import okhttp3.HttpUrl;
import w7.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\"\u0014\u0010\u0001\u001a\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Ll9/o;", "EMPTY_DEFLATE_BLOCK", "Ll9/o;", HttpUrl.FRAGMENT_ENCODE_SET, "LAST_OCTETS_COUNT_TO_REMOVE_AFTER_DEFLATION", "I", "okhttp"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class MessageDeflaterKt {
    private static final o EMPTY_DEFLATE_BLOCK;
    private static final int LAST_OCTETS_COUNT_TO_REMOVE_AFTER_DEFLATION = 4;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        o oVar = o.e;
        EMPTY_DEFLATE_BLOCK = c.j("000000ffff");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ o access$getEMPTY_DEFLATE_BLOCK$p() {
        return EMPTY_DEFLATE_BLOCK;
    }
}
