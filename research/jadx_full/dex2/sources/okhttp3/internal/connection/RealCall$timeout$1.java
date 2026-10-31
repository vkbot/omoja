package okhttp3.internal.connection;

import kotlin.Metadata;
import l9.g;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"okhttp3/internal/connection/RealCall$timeout$1", "Ll9/g;", HttpUrl.FRAGMENT_ENCODE_SET, "timedOut", "()V", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RealCall$timeout$1 extends g {
    final /* synthetic */ RealCall this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RealCall$timeout$1(RealCall realCall) {
        this.this$0 = realCall;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g
    public void timedOut() {
        this.this$0.cancel();
    }
}
