package okhttp3.internal.ws;

import java.io.IOException;
import kotlin.Metadata;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"okhttp3/internal/ws/RealWebSocket$connect$1", "Lokhttp3/Callback;", "onFailure", HttpUrl.FRAGMENT_ENCODE_SET, "call", "Lokhttp3/Call;", "e", "Ljava/io/IOException;", "onResponse", "response", "Lokhttp3/Response;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RealWebSocket$connect$1 implements Callback {
    final /* synthetic */ Request $request;
    final /* synthetic */ RealWebSocket this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RealWebSocket$connect$1(RealWebSocket realWebSocket, Request request) {
        this.this$0 = realWebSocket;
        this.$request = request;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException e) {
        call.getClass();
        e.getClass();
        this.this$0.failWebSocket(e, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws Throwable {
        call.getClass();
        response.getClass();
        Exchange exchange = response.getExchange();
        try {
            this.this$0.checkUpgradeSuccess$okhttp(response, exchange);
            exchange.getClass();
            RealWebSocket$Streams realWebSocket$StreamsNewWebSocketStreams = exchange.newWebSocketStreams();
            WebSocketExtensions webSocketExtensions = WebSocketExtensions.Companion.parse(response.headers());
            RealWebSocket.access$setExtensions$p(this.this$0, webSocketExtensions);
            if (!RealWebSocket.access$isValid(this.this$0, webSocketExtensions)) {
                RealWebSocket realWebSocket = this.this$0;
                synchronized (realWebSocket) {
                    RealWebSocket.access$getMessageAndCloseQueue$p(realWebSocket).clear();
                    realWebSocket.close(1010, "unexpected Sec-WebSocket-Extensions in response header");
                }
            }
            try {
                this.this$0.initReaderAndWriter(Util.okHttpName + " WebSocket " + this.$request.url().redact(), realWebSocket$StreamsNewWebSocketStreams);
                this.this$0.getListener().onOpen(this.this$0, response);
                this.this$0.loopReader();
            } catch (Exception e) {
                this.this$0.failWebSocket(e, null);
            }
        } catch (IOException e2) {
            this.this$0.failWebSocket(e2, response);
            Util.closeQuietly(response);
            if (exchange != null) {
                exchange.webSocketUpgradeFailed();
            }
        }
    }
}
