package org.apache.commons.net;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ServerSocket;
import java.net.Socket;
import javax.net.SocketFactory;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class DefaultSocketFactory extends SocketFactory {
    private final Proxy connProxy;

    public DefaultSocketFactory(Proxy proxy) {
        this.connProxy = proxy;
    }

    public ServerSocket createServerSocket(int i10) {
        return new ServerSocket(i10);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        if (this.connProxy == null) {
            return new Socket(inetAddress, i10, inetAddress2, i11);
        }
        Socket socket = new Socket(this.connProxy);
        socket.bind(new InetSocketAddress(inetAddress2, i11));
        socket.connect(new InetSocketAddress(inetAddress, i10));
        return socket;
    }

    public DefaultSocketFactory() {
        this(null);
    }

    public ServerSocket createServerSocket(int i10, int i11) {
        return new ServerSocket(i10, i11);
    }

    public ServerSocket createServerSocket(int i10, int i11, InetAddress inetAddress) {
        return new ServerSocket(i10, i11, inetAddress);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10) throws IOException {
        if (this.connProxy != null) {
            Socket socket = new Socket(this.connProxy);
            socket.connect(new InetSocketAddress(inetAddress, i10));
            return socket;
        }
        return new Socket(inetAddress, i10);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        if (this.connProxy != null) {
            return new Socket(this.connProxy);
        }
        return new Socket();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) throws IOException {
        if (this.connProxy != null) {
            Socket socket = new Socket(this.connProxy);
            socket.connect(new InetSocketAddress(str, i10));
            return socket;
        }
        return new Socket(str, i10);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        if (this.connProxy != null) {
            Socket socket = new Socket(this.connProxy);
            socket.bind(new InetSocketAddress(inetAddress, i11));
            socket.connect(new InetSocketAddress(str, i10));
            return socket;
        }
        return new Socket(str, i10, inetAddress, i11);
    }
}
