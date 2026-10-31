package org.apache.commons.net.ftp;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.Objects;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
abstract class DelegateSocket extends Socket {
    protected final Socket delegate;

    public DelegateSocket(Socket socket) {
        Objects.requireNonNull(socket, "delegate");
        this.delegate = socket;
    }

    @Override // java.net.Socket
    public void bind(SocketAddress socketAddress) throws IOException {
        this.delegate.bind(socketAddress);
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.delegate.close();
    }

    @Override // java.net.Socket
    public void connect(SocketAddress socketAddress) throws IOException {
        this.delegate.connect(socketAddress);
    }

    @Override // java.net.Socket
    public SocketChannel getChannel() {
        return this.delegate.getChannel();
    }

    @Override // java.net.Socket
    public InetAddress getInetAddress() {
        return this.delegate.getInetAddress();
    }

    @Override // java.net.Socket
    public InputStream getInputStream() {
        return new InflaterInputStream(this.delegate.getInputStream());
    }

    @Override // java.net.Socket
    public boolean getKeepAlive() {
        return this.delegate.getKeepAlive();
    }

    @Override // java.net.Socket
    public InetAddress getLocalAddress() {
        return this.delegate.getLocalAddress();
    }

    @Override // java.net.Socket
    public int getLocalPort() {
        return this.delegate.getLocalPort();
    }

    @Override // java.net.Socket
    public SocketAddress getLocalSocketAddress() {
        return this.delegate.getLocalSocketAddress();
    }

    @Override // java.net.Socket
    public boolean getOOBInline() {
        return this.delegate.getOOBInline();
    }

    @Override // java.net.Socket
    public OutputStream getOutputStream() {
        return new DeflaterOutputStream(this.delegate.getOutputStream());
    }

    @Override // java.net.Socket
    public int getPort() {
        return this.delegate.getPort();
    }

    @Override // java.net.Socket
    public synchronized int getReceiveBufferSize() {
        return this.delegate.getReceiveBufferSize();
    }

    @Override // java.net.Socket
    public SocketAddress getRemoteSocketAddress() {
        return this.delegate.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public boolean getReuseAddress() {
        return this.delegate.getReuseAddress();
    }

    @Override // java.net.Socket
    public synchronized int getSendBufferSize() {
        return this.delegate.getSendBufferSize();
    }

    @Override // java.net.Socket
    public int getSoLinger() {
        return this.delegate.getSoLinger();
    }

    @Override // java.net.Socket
    public synchronized int getSoTimeout() {
        return this.delegate.getSoTimeout();
    }

    @Override // java.net.Socket
    public boolean getTcpNoDelay() {
        return this.delegate.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public int getTrafficClass() {
        return this.delegate.getTrafficClass();
    }

    @Override // java.net.Socket
    public boolean isBound() {
        return this.delegate.isBound();
    }

    @Override // java.net.Socket
    public boolean isClosed() {
        return this.delegate.isClosed();
    }

    @Override // java.net.Socket
    public boolean isConnected() {
        return this.delegate.isConnected();
    }

    @Override // java.net.Socket
    public boolean isInputShutdown() {
        return this.delegate.isInputShutdown();
    }

    @Override // java.net.Socket
    public boolean isOutputShutdown() {
        return this.delegate.isOutputShutdown();
    }

    @Override // java.net.Socket
    public void sendUrgentData(int i10) throws IOException {
        this.delegate.sendUrgentData(i10);
    }

    @Override // java.net.Socket
    public void setKeepAlive(boolean z9) throws SocketException {
        this.delegate.setKeepAlive(z9);
    }

    @Override // java.net.Socket
    public void setOOBInline(boolean z9) throws SocketException {
        this.delegate.setOOBInline(z9);
    }

    @Override // java.net.Socket
    public void setPerformancePreferences(int i10, int i11, int i12) {
        this.delegate.setPerformancePreferences(i10, i11, i12);
    }

    @Override // java.net.Socket
    public synchronized void setReceiveBufferSize(int i10) {
        this.delegate.setReceiveBufferSize(i10);
    }

    @Override // java.net.Socket
    public void setReuseAddress(boolean z9) throws SocketException {
        this.delegate.setReuseAddress(z9);
    }

    @Override // java.net.Socket
    public synchronized void setSendBufferSize(int i10) {
        this.delegate.setSendBufferSize(i10);
    }

    @Override // java.net.Socket
    public void setSoLinger(boolean z9, int i10) throws SocketException {
        this.delegate.setSoLinger(z9, i10);
    }

    @Override // java.net.Socket
    public synchronized void setSoTimeout(int i10) {
        this.delegate.setSoTimeout(i10);
    }

    @Override // java.net.Socket
    public void setTcpNoDelay(boolean z9) throws SocketException {
        this.delegate.setTcpNoDelay(z9);
    }

    @Override // java.net.Socket
    public void setTrafficClass(int i10) throws SocketException {
        this.delegate.setTrafficClass(i10);
    }

    @Override // java.net.Socket
    public void shutdownInput() throws IOException {
        this.delegate.shutdownInput();
    }

    @Override // java.net.Socket
    public void shutdownOutput() throws IOException {
        this.delegate.shutdownOutput();
    }

    @Override // java.net.Socket
    public String toString() {
        return this.delegate.toString();
    }

    @Override // java.net.Socket
    public void connect(SocketAddress socketAddress, int i10) throws IOException {
        this.delegate.connect(socketAddress, i10);
    }
}
