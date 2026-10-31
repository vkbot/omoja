package org.apache.commons.net.ftp;

import java.net.InetAddress;
import java.net.ServerSocket;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLServerSocketFactory;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FTPSServerSocketFactory extends ServerSocketFactory {
    private final SSLContext sslContext;

    public FTPSServerSocketFactory(SSLContext sSLContext) {
        this.sslContext = sSLContext;
    }

    private SSLServerSocketFactory getServerSocketFactory() {
        return this.sslContext.getServerSocketFactory();
    }

    @Override // javax.net.ServerSocketFactory
    public ServerSocket createServerSocket() {
        return init(getServerSocketFactory().createServerSocket());
    }

    public ServerSocket init(ServerSocket serverSocket) {
        ((SSLServerSocket) serverSocket).setUseClientMode(true);
        return serverSocket;
    }

    @Override // javax.net.ServerSocketFactory
    public ServerSocket createServerSocket(int i10) {
        return init(getServerSocketFactory().createServerSocket(i10));
    }

    @Override // javax.net.ServerSocketFactory
    public ServerSocket createServerSocket(int i10, int i11) {
        return init(getServerSocketFactory().createServerSocket(i10, i11));
    }

    @Override // javax.net.ServerSocketFactory
    public ServerSocket createServerSocket(int i10, int i11, InetAddress inetAddress) {
        return init(getServerSocketFactory().createServerSocket(i10, i11, inetAddress));
    }
}
