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
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
abstract class DelegateSocket extends Socket {
    protected final Socket delegate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DelegateSocket(Socket socket) {
        Objects.requireNonNull(socket, "delegate");
        this.delegate = socket;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void bind(SocketAddress socketAddress) throws IOException {
        this.delegate.bind(socketAddress);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.delegate.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void connect(SocketAddress socketAddress) throws IOException {
        this.delegate.connect(socketAddress);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public SocketChannel getChannel() {
        return this.delegate.getChannel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public InetAddress getInetAddress() {
        return this.delegate.getInetAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public InputStream getInputStream() {
        return new InflaterInputStream(this.delegate.getInputStream());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public boolean getKeepAlive() {
        return this.delegate.getKeepAlive();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public InetAddress getLocalAddress() {
        return this.delegate.getLocalAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public int getLocalPort() {
        return this.delegate.getLocalPort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public SocketAddress getLocalSocketAddress() {
        return this.delegate.getLocalSocketAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public boolean getOOBInline() {
        return this.delegate.getOOBInline();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public OutputStream getOutputStream() {
        return new DeflaterOutputStream(this.delegate.getOutputStream());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public int getPort() {
        return this.delegate.getPort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public synchronized int getReceiveBufferSize() {
        return this.delegate.getReceiveBufferSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public SocketAddress getRemoteSocketAddress() {
        return this.delegate.getRemoteSocketAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public boolean getReuseAddress() {
        return this.delegate.getReuseAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public synchronized int getSendBufferSize() {
        return this.delegate.getSendBufferSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public int getSoLinger() {
        return this.delegate.getSoLinger();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public synchronized int getSoTimeout() {
        return this.delegate.getSoTimeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public boolean getTcpNoDelay() {
        return this.delegate.getTcpNoDelay();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public int getTrafficClass() {
        return this.delegate.getTrafficClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public boolean isBound() {
        return this.delegate.isBound();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public boolean isClosed() {
        return this.delegate.isClosed();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public boolean isConnected() {
        return this.delegate.isConnected();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public boolean isInputShutdown() {
        return this.delegate.isInputShutdown();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public boolean isOutputShutdown() {
        return this.delegate.isOutputShutdown();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void sendUrgentData(int i) throws IOException {
        this.delegate.sendUrgentData(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void setKeepAlive(boolean z) throws SocketException {
        this.delegate.setKeepAlive(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void setOOBInline(boolean z) throws SocketException {
        this.delegate.setOOBInline(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void setPerformancePreferences(int i, int i2, int i3) {
        this.delegate.setPerformancePreferences(i, i2, i3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public synchronized void setReceiveBufferSize(int i) {
        this.delegate.setReceiveBufferSize(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void setReuseAddress(boolean z) throws SocketException {
        this.delegate.setReuseAddress(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public synchronized void setSendBufferSize(int i) {
        this.delegate.setSendBufferSize(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void setSoLinger(boolean z, int i) throws SocketException {
        this.delegate.setSoLinger(z, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public synchronized void setSoTimeout(int i) {
        this.delegate.setSoTimeout(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void setTcpNoDelay(boolean z) throws SocketException {
        this.delegate.setTcpNoDelay(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void setTrafficClass(int i) throws SocketException {
        this.delegate.setTrafficClass(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void shutdownInput() throws IOException {
        this.delegate.shutdownInput();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public void shutdownOutput() throws IOException {
        this.delegate.shutdownOutput();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.Socket
    public String toString() {
        return this.delegate.toString();
    }

    @Override // java.net.Socket
    public void connect(SocketAddress socketAddress, int i) throws IOException {
        this.delegate.connect(socketAddress, i);
    }
}
