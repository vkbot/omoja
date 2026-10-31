package org.apache.commons.net.bsd;

import ai.onnxruntime.AbstractC0074a;
import java.io.IOException;
import java.io.InputStream;
import java.net.BindException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.nio.charset.StandardCharsets;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.p162io.SocketInputStream;
import org.apache.commons.p161io.IOUtils;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class RCommandClient extends RExecClient {
    public static final int DEFAULT_PORT = 514;
    public static final int MAX_CLIENT_PORT = 1023;
    public static final int MIN_CLIENT_PORT = 512;

    public RCommandClient() {
        setDefaultPort(DEFAULT_PORT);
    }

    private ServerSocket createServer() throws BindException {
        for (int i10 = MAX_CLIENT_PORT; i10 >= 512; i10--) {
            try {
                return this._serverSocketFactory_.createServerSocket(i10, 1, getLocalAddress());
            } catch (SocketException unused) {
            }
        }
        throw new BindException("All ports in use.");
    }

    public void connect(InetAddress inetAddress, int i10, InetAddress inetAddress2) throws SocketException {
        int i11 = MAX_CLIENT_PORT;
        while (i11 >= 512) {
            try {
                this._socket_ = this._socketFactory_.createSocket(inetAddress, i10, inetAddress2, i11);
                break;
            } catch (SocketException unused) {
                i11--;
            }
        }
        if (i11 < 512) {
            throw new BindException("All ports in use or insufficient permssion.");
        }
        _connectAction_();
    }

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
            C2467b.m3820A(AbstractC0074a.m161l("Security violation: unexpected connection attempt by ", hostAddress));
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

    public void rcommand(String str, String str2, String str3) throws IOException {
        rcommand(str, str2, str3, false);
    }

    public void rcommand(String str, String str2, String str3, boolean z9) throws IOException {
        rexec(str, str2, str3, z9);
    }

    @Override // org.apache.commons.net.SocketClient
    public void connect(InetAddress inetAddress, int i10) throws SocketException {
        connect(inetAddress, i10, InetAddress.getLocalHost());
    }

    @Override // org.apache.commons.net.SocketClient
    public void connect(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        if (i11 >= 512 && i11 <= 1023) {
            super.connect(inetAddress, i10, inetAddress2, i11);
        } else {
            C1929i.m3029k(AbstractC0074a.m154e(i11, "Invalid port number "));
        }
    }

    @Override // org.apache.commons.net.SocketClient
    public void connect(String str, int i10) throws SocketException {
        connect(InetAddress.getByName(str), i10, InetAddress.getLocalHost());
    }

    public void connect(String str, int i10, InetAddress inetAddress) throws SocketException {
        connect(InetAddress.getByName(str), i10, inetAddress);
    }

    @Override // org.apache.commons.net.SocketClient
    public void connect(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        if (i11 >= 512 && i11 <= 1023) {
            super.connect(str, i10, inetAddress, i11);
        } else {
            C1929i.m3029k(AbstractC0074a.m154e(i11, "Invalid port number "));
        }
    }
}
