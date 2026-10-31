package okhttp3.internal.ws;

import java.io.IOException;
import kotlin.Metadata;
import okhttp3.HttpUrl;
import okhttp3.internal.concurrent.Task;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$WriterTask;", "Lokhttp3/internal/concurrent/Task;", "(Lokhttp3/internal/ws/RealWebSocket;)V", "runOnce", HttpUrl.FRAGMENT_ENCODE_SET, "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RealWebSocket$WriterTask extends Task {
    final /* synthetic */ RealWebSocket this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealWebSocket$WriterTask(RealWebSocket realWebSocket) {
        super(RealWebSocket.access$getName$p(realWebSocket) + " writer", false, 2, null);
        this.this$0 = realWebSocket;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.concurrent.Task
    public long runOnce() {
        try {
            return this.this$0.writeOneFrame$okhttp() ? 0L : -1L;
        } catch (IOException e) {
            this.this$0.failWebSocket(e, null);
            return -1L;
        }
    }
}
