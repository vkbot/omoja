package org.apache.commons.net.bsd;

import ai.onnxruntime.a;
import j1.i;
import java.io.IOException;
import java.io.InputStream;
import java.net.BindException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.nio.charset.StandardCharsets;
import n0.b;
import org.apache.commons.io.IOUtils;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.io.SocketInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class RCommandClient extends RExecClient {
    public static final int DEFAULT_PORT = 514;
    public static final int MAX_CLIENT_PORT = 1023;
    public static final int MIN_CLIENT_PORT = 512;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RCommandClient() {
        setDefaultPort(DEFAULT_PORT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ServerSocket createServer() throws BindException {
        for (int i = MAX_CLIENT_PORT; i >= 512; i--) {
            try {
                return this._serverSocketFactory_.createServerSocket(i, 1, getLocalAddress());
            } catch (SocketException unused) {
            }
        }
        throw new BindException("All ports in use.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void connect(InetAddress inetAddress, int i, InetAddress inetAddress2) throws SocketException {
        int i2 = MAX_CLIENT_PORT;
        while (i2 >= 512) {
            try {
                this._socket_ = this._socketFactory_.createSocket(inetAddress, i, inetAddress2, i2);
                break;
            } catch (SocketException unused) {
                i2--;
            }
        }
        if (i2 < 512) {
            throw new BindException("All ports in use or insufficient permssion.");
        }
        _connectAction_();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.bsd.RExecClient
    public InputStream createErrorStream() throws IOException {
        ServerSocket serverSocketCreateServer = createServer();
        try {
            this._output_.write(Integer.toString(serverSocketCreateServer.getLocalPort()).getBytes(StandardCharsets.UTF_8));
            this._output_.write(0);
            this._output_.flush();
            Socket socketAccept = serverSocketCreateServer.accept();
            serverSocketCreateServer.close();
            if (!isRemoteVerificationEnabled() || verifyRemote(socketAccept)) {
                return new SocketInputStream(socketAccept, socketAccept.getInputStream());
            }
            String hostAddress = SocketClient.getHostAddress(socketAccept);
            IOUtils.closeQuietly(socketAccept);
            b.A(a.l("Security violation: unexpected connection attempt by ", hostAddress));
            return null;
        } catch (Throwable th) {
            if (serverSocketCreateServer != null) {
                try {
                    serverSocketCreateServer.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void rcommand(String str, String str2, String str3) throws IOException {
        rcommand(str, str2, str3, false);
    }

    public void rcommand(String str, String str2, String str3, boolean z) throws IOException {
        rexec(str, str2, str3, z);
    }

    @Override // org.apache.commons.net.SocketClient
    public void connect(InetAddress inetAddress, int i) throws SocketException {
        connect(inetAddress, i, InetAddress.getLocalHost());
    }

    @Override // org.apache.commons.net.SocketClient
    public void connect(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        if (i2 >= 512 && i2 <= 1023) {
            super.connect(inetAddress, i, inetAddress2, i2);
        } else {
            i.k(a.e(i2, "Invalid port number "));
        }
    }

    @Override // org.apache.commons.net.SocketClient
    public void connect(String str, int i) throws SocketException {
        connect(InetAddress.getByName(str), i, InetAddress.getLocalHost());
    }

    public void connect(String str, int i, InetAddress inetAddress) throws SocketException {
        connect(InetAddress.getByName(str), i, inetAddress);
    }

    @Override // org.apache.commons.net.SocketClient
    public void connect(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        if (i2 >= 512 && i2 <= 1023) {
            super.connect(str, i, inetAddress, i2);
        } else {
            i.k(a.e(i2, "Invalid port number "));
        }
    }
}
