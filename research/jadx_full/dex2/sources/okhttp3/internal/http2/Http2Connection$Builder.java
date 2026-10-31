package okhttp3.internal.http2;

import ai.onnxruntime.a;
import java.net.Socket;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import l9.b;
import l9.m;
import l9.n;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.TaskRunner;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b/\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J5\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\t\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cR\"\u0010\u0003\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\"\u001a\u0004\b#\u0010$R\"\u0010\t\u001a\u00020\b8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\t\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010*\u001a\u00020\n8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u0010\r\u001a\u00020\f8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\r\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010\u000f\u001a\u00020\u000e8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\u000f\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010\u0012\u001a\u00020\u00118\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010\u0015\u001a\u00020\u00148\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\"\u0010\u0018\u001a\u00020\u00178\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010H¨\u0006I"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "client", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "Ljava/net/Socket;", "socket", HttpUrl.FRAGMENT_ENCODE_SET, "peerName", "Ll9/n;", "source", "Ll9/m;", "sink", "(Ljava/net/Socket;Ljava/lang/String;Ll9/n;Ll9/m;)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "listener", "(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/PushObserver;", "pushObserver", "(Lokhttp3/internal/http2/PushObserver;)Lokhttp3/internal/http2/Http2Connection$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "pingIntervalMillis", "(I)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/Http2Connection;", "build", "()Lokhttp3/internal/http2/Http2Connection;", "Z", "getClient$okhttp", "()Z", "setClient$okhttp", "(Z)V", "Lokhttp3/internal/concurrent/TaskRunner;", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "setSocket$okhttp", "(Ljava/net/Socket;)V", "connectionName", "Ljava/lang/String;", "getConnectionName$okhttp", "()Ljava/lang/String;", "setConnectionName$okhttp", "(Ljava/lang/String;)V", "Ll9/n;", "getSource$okhttp", "()Ll9/n;", "setSource$okhttp", "(Ll9/n;)V", "Ll9/m;", "getSink$okhttp", "()Ll9/m;", "setSink$okhttp", "(Ll9/m;)V", "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "setListener$okhttp", "(Lokhttp3/internal/http2/Http2Connection$Listener;)V", "Lokhttp3/internal/http2/PushObserver;", "getPushObserver$okhttp", "()Lokhttp3/internal/http2/PushObserver;", "setPushObserver$okhttp", "(Lokhttp3/internal/http2/PushObserver;)V", "I", "getPingIntervalMillis$okhttp", "()I", "setPingIntervalMillis$okhttp", "(I)V", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Http2Connection$Builder {
    private boolean client;
    public String connectionName;
    private Http2Connection$Listener listener;
    private int pingIntervalMillis;
    private PushObserver pushObserver;
    public m sink;
    public Socket socket;
    public n source;
    private final TaskRunner taskRunner;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Http2Connection$Builder(boolean z, TaskRunner taskRunner) {
        taskRunner.getClass();
        this.client = z;
        this.taskRunner = taskRunner;
        this.listener = Http2Connection$Listener.REFUSE_INCOMING_STREAMS;
        this.pushObserver = PushObserver.CANCEL;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Http2Connection$Builder socket$default(Http2Connection$Builder http2Connection$Builder, Socket socket, String str, n nVar, m mVar, int i, Object obj) {
        if ((i & 2) != 0) {
            str = Util.peerName(socket);
        }
        if ((i & 4) != 0) {
            nVar = b.b(b.h(socket));
        }
        if ((i & 8) != 0) {
            mVar = b.a(b.g(socket));
        }
        return http2Connection$Builder.socket(socket, str, nVar, mVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Http2Connection build() {
        return new Http2Connection(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getClient$okhttp, reason: from getter */
    public final boolean getClient() {
        return this.client;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getConnectionName$okhttp() {
        String str = this.connectionName;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("connectionName");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getListener$okhttp, reason: from getter */
    public final Http2Connection$Listener getListener() {
        return this.listener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getPingIntervalMillis$okhttp, reason: from getter */
    public final int getPingIntervalMillis() {
        return this.pingIntervalMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getPushObserver$okhttp, reason: from getter */
    public final PushObserver getPushObserver() {
        return this.pushObserver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final m getSink$okhttp() {
        m mVar = this.sink;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sink");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Socket getSocket$okhttp() {
        Socket socket = this.socket;
        if (socket != null) {
            return socket;
        }
        Intrinsics.throwUninitializedPropertyAccessException("socket");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final n getSource$okhttp() {
        n nVar = this.source;
        if (nVar != null) {
            return nVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("source");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getTaskRunner$okhttp, reason: from getter */
    public final TaskRunner getTaskRunner() {
        return this.taskRunner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Http2Connection$Builder listener(Http2Connection$Listener listener) {
        listener.getClass();
        this.listener = listener;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Http2Connection$Builder pingIntervalMillis(int pingIntervalMillis) {
        this.pingIntervalMillis = pingIntervalMillis;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Http2Connection$Builder pushObserver(PushObserver pushObserver) {
        pushObserver.getClass();
        this.pushObserver = pushObserver;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setClient$okhttp(boolean z) {
        this.client = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setConnectionName$okhttp(String str) {
        str.getClass();
        this.connectionName = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setListener$okhttp(Http2Connection$Listener http2Connection$Listener) {
        http2Connection$Listener.getClass();
        this.listener = http2Connection$Listener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setPingIntervalMillis$okhttp(int i) {
        this.pingIntervalMillis = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setPushObserver$okhttp(PushObserver pushObserver) {
        pushObserver.getClass();
        this.pushObserver = pushObserver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSink$okhttp(m mVar) {
        mVar.getClass();
        this.sink = mVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSocket$okhttp(Socket socket) {
        socket.getClass();
        this.socket = socket;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSource$okhttp(n nVar) {
        nVar.getClass();
        this.source = nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final Http2Connection$Builder socket(Socket socket, String peerName, n source, m sink) {
        String strL;
        socket.getClass();
        peerName.getClass();
        source.getClass();
        sink.getClass();
        setSocket$okhttp(socket);
        if (this.client) {
            strL = Util.okHttpName + ' ' + peerName;
        } else {
            strL = a.l("MockWebServer ", peerName);
        }
        setConnectionName$okhttp(strL);
        setSource$okhttp(source);
        setSink$okhttp(sink);
        return this;
    }

    @JvmOverloads
    public final Http2Connection$Builder socket(Socket socket, String str) {
        socket.getClass();
        str.getClass();
        return socket$default(this, socket, str, null, null, 12, null);
    }

    @JvmOverloads
    public final Http2Connection$Builder socket(Socket socket, String str, n nVar) {
        socket.getClass();
        str.getClass();
        nVar.getClass();
        return socket$default(this, socket, str, nVar, null, 8, null);
    }

    @JvmOverloads
    public final Http2Connection$Builder socket(Socket socket) {
        socket.getClass();
        return socket$default(this, socket, null, null, null, 14, null);
    }
}
