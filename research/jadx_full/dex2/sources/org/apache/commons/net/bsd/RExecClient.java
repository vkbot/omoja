package org.apache.commons.net.bsd;

import ai.onnxruntime.a;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import n0.b;
import org.apache.commons.io.IOUtils;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.io.SocketInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class RExecClient extends SocketClient {
    public static final int DEFAULT_PORT = 512;
    protected static final char NULL_CHAR = 0;
    protected InputStream _errorStream_ = null;
    private boolean remoteVerificationEnabled;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RExecClient() {
        setDefaultPort(512);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream createErrorStream() throws IOException {
        ServerSocket serverSocketCreateServerSocket = this._serverSocketFactory_.createServerSocket(0, 1, getLocalAddress());
        try {
            this._output_.write(Integer.toString(serverSocketCreateServerSocket.getLocalPort()).getBytes(StandardCharsets.UTF_8));
            this._output_.write(0);
            this._output_.flush();
            Socket socketAccept = serverSocketCreateServerSocket.accept();
            serverSocketCreateServerSocket.close();
            if (!this.remoteVerificationEnabled || verifyRemote(socketAccept)) {
                return new SocketInputStream(socketAccept, socketAccept.getInputStream());
            }
            String hostAddress = SocketClient.getHostAddress(socketAccept);
            IOUtils.closeQuietly(socketAccept);
            b.A(a.l("Security violation: unexpected connection attempt by ", hostAddress));
            return null;
        } catch (Throwable th) {
            if (serverSocketCreateServerSocket != null) {
                try {
                    serverSocketCreateServerSocket.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.SocketClient
    public void disconnect() throws IOException {
        IOUtils.close(this._errorStream_);
        this._errorStream_ = null;
        super.disconnect();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream getErrorStream() {
        return this._errorStream_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream getInputStream() {
        return this._input_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OutputStream getOutputStream() {
        return this._output_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isRemoteVerificationEnabled() {
        return this.remoteVerificationEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void rexec(String str, String str2, String str3, boolean z) throws IOException {
        if (z) {
            this._errorStream_ = createErrorStream();
        } else {
            this._output_.write(0);
        }
        this._output_.write(str.getBytes(getCharset()));
        this._output_.write(0);
        this._output_.write(str2.getBytes(getCharset()));
        this._output_.write(0);
        this._output_.write(str3.getBytes(getCharset()));
        this._output_.write(0);
        this._output_.flush();
        int i = this._input_.read();
        if (i <= 0) {
            if (i >= 0) {
                return;
            }
            b.A("Server closed connection.");
        } else {
            StringBuilder sb = new StringBuilder();
            while (true) {
                int i2 = this._input_.read();
                if (i2 == -1 || i2 == 10) {
                    break;
                } else {
                    sb.append((char) i2);
                }
            }
            throw new IOException(sb.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setRemoteVerificationEnabled(boolean z) {
        this.remoteVerificationEnabled = z;
    }

    public void rexec(String str, String str2, String str3) throws IOException {
        rexec(str, str2, str3, false);
    }
}
