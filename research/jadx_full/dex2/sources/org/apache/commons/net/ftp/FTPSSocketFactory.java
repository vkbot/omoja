package org.apache.commons.net.ftp;

import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLServerSocket;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FTPSSocketFactory extends SocketFactory {
    private final SSLContext context;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPSSocketFactory(SSLContext sSLContext) {
        this.context = sSLContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public ServerSocket createServerSocket(int i) {
        return init(this.context.getServerSocketFactory().createServerSocket(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        return this.context.getSocketFactory().createSocket();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public ServerSocket init(ServerSocket serverSocket) {
        ((SSLServerSocket) serverSocket).setUseClientMode(true);
        return serverSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return this.context.getSocketFactory().createSocket(inetAddress, i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return this.context.getSocketFactory().createSocket(inetAddress, i, inetAddress2, i2);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        return this.context.getSocketFactory().createSocket(str, i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return this.context.getSocketFactory().createSocket(str, i, inetAddress, i2);
    }

    @Deprecated
    public ServerSocket createServerSocket(int i, int i2) {
        return init(this.context.getServerSocketFactory().createServerSocket(i, i2));
    }

    @Deprecated
    public ServerSocket createServerSocket(int i, int i2, InetAddress inetAddress) {
        return init(this.context.getServerSocketFactory().createServerSocket(i, i2, inetAddress));
    }
}
