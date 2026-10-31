package org.apache.commons.net.bsd;

import ai.onnxruntime.AbstractC0074a;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.p162io.SocketInputStream;
import org.apache.commons.p161io.IOUtils;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class RExecClient extends SocketClient {
    public static final int DEFAULT_PORT = 512;
    protected static final char NULL_CHAR = 0;
    protected InputStream _errorStream_ = null;
    private boolean remoteVerificationEnabled;

    public RExecClient() {
        setDefaultPort(512);
    }

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
            C2467b.m3820A(AbstractC0074a.m161l("Security violation: unexpected connection attempt by ", hostAddress));
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

    @Override // org.apache.commons.net.SocketClient
    public void disconnect() throws IOException {
        IOUtils.close(this._errorStream_);
        this._errorStream_ = null;
        super.disconnect();
    }

    public InputStream getErrorStream() {
        return this._errorStream_;
    }

    public InputStream getInputStream() {
        return this._input_;
    }

    public OutputStream getOutputStream() {
        return this._output_;
    }

    public final boolean isRemoteVerificationEnabled() {
        return this.remoteVerificationEnabled;
    }

    public void rexec(String str, String str2, String str3, boolean z9) throws IOException {
        if (z9) {
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
        int i10 = this._input_.read();
        if (i10 <= 0) {
            if (i10 >= 0) {
                return;
            }
            C2467b.m3820A("Server closed connection.");
        } else {
            StringBuilder sb = new StringBuilder();
            while (true) {
                int i11 = this._input_.read();
                if (i11 == -1 || i11 == 10) {
                    break;
                } else {
                    sb.append((char) i11);
                }
            }
            throw new IOException(sb.toString());
        }
    }

    public final void setRemoteVerificationEnabled(boolean z9) {
        this.remoteVerificationEnabled = z9;
    }

    public void rexec(String str, String str2, String str3) throws IOException {
        rexec(str, str2, str3, false);
    }
}
