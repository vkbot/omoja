package org.apache.commons.net;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.net.ServerSocketFactory;
import javax.net.SocketFactory;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class SocketClient {
    private static final int DEFAULT_CONNECT_TIMEOUT = 60000;
    public static final String NETASCII_EOL = "\r\n";
    private ProtocolCommandSupport commandSupport;
    private Proxy connProxy;
    protected InetSocketAddress remoteInetSocketAddress;
    private static final SocketFactory DEFAULT_SOCKET_FACTORY = SocketFactory.getDefault();
    private static final ServerSocketFactory DEFAULT_SERVER_SOCKET_FACTORY = ServerSocketFactory.getDefault();
    protected int connectTimeout = 60000;
    private int receiveBufferSize = -1;
    private int sendBufferSize = -1;
    private Charset charset = Charset.defaultCharset();
    protected Socket _socket_ = null;
    protected String _hostname_ = null;
    protected InputStream _input_ = null;
    protected OutputStream _output_ = null;
    protected int _timeout_ = 0;
    protected int _defaultPort_ = 0;
    protected SocketFactory _socketFactory_ = DEFAULT_SOCKET_FACTORY;
    protected ServerSocketFactory _serverSocketFactory_ = DEFAULT_SERVER_SOCKET_FACTORY;

    private void _connect(InetSocketAddress inetSocketAddress, InetAddress inetAddress, int i10) throws IOException {
        this.remoteInetSocketAddress = inetSocketAddress;
        Socket socketCreateSocket = this._socketFactory_.createSocket();
        this._socket_ = socketCreateSocket;
        int i11 = this.receiveBufferSize;
        if (i11 != -1) {
            socketCreateSocket.setReceiveBufferSize(i11);
        }
        int i12 = this.sendBufferSize;
        if (i12 != -1) {
            this._socket_.setSendBufferSize(i12);
        }
        if (inetAddress != null) {
            this._socket_.bind(new InetSocketAddress(inetAddress, i10));
        }
        this._socket_.connect(inetSocketAddress, this.connectTimeout);
        _connectAction_();
    }

    public static String getHostAddress(InetAddress inetAddress) {
        if (inetAddress != null) {
            return inetAddress.getHostAddress();
        }
        return null;
    }

    public void _connectAction_() throws SocketException {
        applySocketAttributes();
        this._input_ = this._socket_.getInputStream();
        this._output_ = this._socket_.getOutputStream();
    }

    public void addProtocolCommandListener(ProtocolCommandListener protocolCommandListener) {
        getCommandSupport().addProtocolCommandListener(protocolCommandListener);
    }

    public void applySocketAttributes() throws SocketException {
        this._socket_.setSoTimeout(this._timeout_);
    }

    public OutputStream checkOpenOutputStream() {
        OutputStream outputStream = this._output_;
        Objects.requireNonNull(outputStream, "OutputStream");
        return outputStream;
    }

    public void connect(InetAddress inetAddress, int i10) throws IOException {
        this._hostname_ = null;
        _connect(new InetSocketAddress(inetAddress, i10), null, -1);
    }

    public void createCommandSupport() {
        this.commandSupport = new ProtocolCommandSupport(this);
    }

    public void disconnect() {
        IOUtils.closeQuietly(this._socket_);
        IOUtils.closeQuietly(this._input_);
        IOUtils.closeQuietly(this._output_);
        this._socket_ = null;
        this._hostname_ = null;
        this._input_ = null;
        this._output_ = null;
    }

    public void fireCommandSent(String str, String str2) {
        getCommandSupport().fireCommandSent(str, str2);
    }

    public void fireReplyReceived(int i10, String str) {
        getCommandSupport().fireReplyReceived(i10, str);
    }

    public Charset getCharset() {
        return this.charset;
    }

    @Deprecated
    public String getCharsetName() {
        return this.charset.name();
    }

    public ProtocolCommandSupport getCommandSupport() {
        return this.commandSupport;
    }

    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    public int getDefaultPort() {
        return this._defaultPort_;
    }

    public int getDefaultTimeout() {
        return this._timeout_;
    }

    public boolean getKeepAlive() {
        return this._socket_.getKeepAlive();
    }

    public InetAddress getLocalAddress() {
        return this._socket_.getLocalAddress();
    }

    public int getLocalPort() {
        return this._socket_.getLocalPort();
    }

    public Proxy getProxy() {
        return this.connProxy;
    }

    public int getReceiveBufferSize() {
        return this.receiveBufferSize;
    }

    public InetAddress getRemoteAddress() {
        return this._socket_.getInetAddress();
    }

    public InetSocketAddress getRemoteInetSocketAddress() {
        return this.remoteInetSocketAddress;
    }

    public int getRemotePort() {
        return this._socket_.getPort();
    }

    public int getSendBufferSize() {
        return this.sendBufferSize;
    }

    public ServerSocketFactory getServerSocketFactory() {
        return this._serverSocketFactory_;
    }

    public int getSoLinger() {
        return this._socket_.getSoLinger();
    }

    public int getSoTimeout() {
        return this._socket_.getSoTimeout();
    }

    public boolean getTcpNoDelay() {
        return this._socket_.getTcpNoDelay();
    }

    public boolean isAvailable() {
        if (isConnected()) {
            try {
                if (this._socket_.getInetAddress() != null && this._socket_.getPort() != 0 && this._socket_.getRemoteSocketAddress() != null && !this._socket_.isClosed() && !this._socket_.isInputShutdown() && !this._socket_.isOutputShutdown()) {
                    this._socket_.getInputStream();
                    this._socket_.getOutputStream();
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public boolean isConnected() {
        Socket socket = this._socket_;
        if (socket == null) {
            return false;
        }
        return socket.isConnected();
    }

    public void removeProtocolCommandListener(ProtocolCommandListener protocolCommandListener) {
        getCommandSupport().removeProtocolCommandListener(protocolCommandListener);
    }

    public void setCharset(Charset charset) {
        this.charset = charset;
    }

    public void setConnectTimeout(int i10) {
        this.connectTimeout = i10;
    }

    public void setDefaultPort(int i10) {
        this._defaultPort_ = i10;
    }

    public void setDefaultTimeout(int i10) {
        this._timeout_ = i10;
    }

    public void setKeepAlive(boolean z9) throws SocketException {
        this._socket_.setKeepAlive(z9);
    }

    public void setProxy(Proxy proxy) {
        setSocketFactory(new DefaultSocketFactory(proxy));
        this.connProxy = proxy;
    }

    public void setReceiveBufferSize(int i10) {
        this.receiveBufferSize = i10;
    }

    public void setSendBufferSize(int i10) {
        this.sendBufferSize = i10;
    }

    public void setServerSocketFactory(ServerSocketFactory serverSocketFactory) {
        if (serverSocketFactory == null) {
            this._serverSocketFactory_ = DEFAULT_SERVER_SOCKET_FACTORY;
        } else {
            this._serverSocketFactory_ = serverSocketFactory;
        }
    }

    public void setSoLinger(boolean z9, int i10) throws SocketException {
        this._socket_.setSoLinger(z9, i10);
    }

    public void setSoTimeout(int i10) throws SocketException {
        this._socket_.setSoTimeout(i10);
    }

    public void setSocketFactory(SocketFactory socketFactory) {
        if (socketFactory == null) {
            this._socketFactory_ = DEFAULT_SOCKET_FACTORY;
        } else {
            this._socketFactory_ = socketFactory;
        }
    }

    public void setTcpNoDelay(boolean z9) throws SocketException {
        this._socket_.setTcpNoDelay(z9);
    }

    public boolean verifyRemote(Socket socket) {
        return socket != null && Objects.equals(socket.getInetAddress(), getRemoteAddress());
    }

    public static String getHostAddress(Socket socket) {
        return getHostAddress(socket.getInetAddress());
    }

    public void connect(InetAddress inetAddress) throws IOException {
        this._hostname_ = null;
        connect(inetAddress, this._defaultPort_);
    }

    public void connect(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        this._hostname_ = null;
        _connect(new InetSocketAddress(inetAddress, i10), inetAddress2, i11);
    }

    public void connect(String str) throws IOException {
        connect(str, this._defaultPort_);
    }

    public void connect(String str, int i10) throws IOException {
        connect(str, i10, (InetAddress) null, -1);
    }

    public void connect(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        this._hostname_ = str;
        _connect(new InetSocketAddress(str, i10), inetAddress, i11);
    }
}
