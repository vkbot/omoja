package org.apache.commons.net.ftp;

import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLServerSocket;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FTPSSocketFactory extends SocketFactory {
    private final SSLContext context;

    public FTPSSocketFactory(SSLContext sSLContext) {
        this.context = sSLContext;
    }

    @Deprecated
    public ServerSocket createServerSocket(int i10) {
        return init(this.context.getServerSocketFactory().createServerSocket(i10));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        return this.context.getSocketFactory().createSocket();
    }

    @Deprecated
    public ServerSocket init(ServerSocket serverSocket) {
        ((SSLServerSocket) serverSocket).setUseClientMode(true);
        return serverSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10) {
        return this.context.getSocketFactory().createSocket(inetAddress, i10);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) {
        return this.context.getSocketFactory().createSocket(inetAddress, i10, inetAddress2, i11);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) {
        return this.context.getSocketFactory().createSocket(str, i10);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) {
        return this.context.getSocketFactory().createSocket(str, i10, inetAddress, i11);
    }

    @Deprecated
    public ServerSocket createServerSocket(int i10, int i11) {
        return init(this.context.getServerSocketFactory().createServerSocket(i10, i11));
    }

    @Deprecated
    public ServerSocket createServerSocket(int i10, int i11, InetAddress inetAddress) {
        return init(this.context.getServerSocketFactory().createServerSocket(i10, i11, inetAddress));
    }
}
