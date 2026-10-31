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
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class SocketClient {
    private static final int DEFAULT_CONNECT_TIMEOUT = 60000;
    public static final String NETASCII_EOL = "\r\n";
    private ProtocolCommandSupport commandSupport;
    private Proxy connProxy;
    protected InetSocketAddress remoteInetSocketAddress;
    private static final SocketFactory DEFAULT_SOCKET_FACTORY = SocketFactory.getDefault();
    private static final ServerSocketFactory DEFAULT_SERVER_SOCKET_FACTORY = ServerSocketFactory.getDefault();
    protected int connectTimeout = DEFAULT_CONNECT_TIMEOUT;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void _connect(InetSocketAddress inetSocketAddress, InetAddress inetAddress, int i) throws IOException {
        this.remoteInetSocketAddress = inetSocketAddress;
        Socket socketCreateSocket = this._socketFactory_.createSocket();
        this._socket_ = socketCreateSocket;
        int i2 = this.receiveBufferSize;
        if (i2 != -1) {
            socketCreateSocket.setReceiveBufferSize(i2);
        }
        int i3 = this.sendBufferSize;
        if (i3 != -1) {
            this._socket_.setSendBufferSize(i3);
        }
        if (inetAddress != null) {
            this._socket_.bind(new InetSocketAddress(inetAddress, i));
        }
        this._socket_.connect(inetSocketAddress, this.connectTimeout);
        _connectAction_();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getHostAddress(InetAddress inetAddress) {
        if (inetAddress != null) {
            return inetAddress.getHostAddress();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void _connectAction_() throws SocketException {
        applySocketAttributes();
        this._input_ = this._socket_.getInputStream();
        this._output_ = this._socket_.getOutputStream();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addProtocolCommandListener(ProtocolCommandListener protocolCommandListener) {
        getCommandSupport().addProtocolCommandListener(protocolCommandListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applySocketAttributes() throws SocketException {
        this._socket_.setSoTimeout(this._timeout_);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OutputStream checkOpenOutputStream() {
        OutputStream outputStream = this._output_;
        Objects.requireNonNull(outputStream, "OutputStream");
        return outputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void connect(InetAddress inetAddress, int i) throws IOException {
        this._hostname_ = null;
        _connect(new InetSocketAddress(inetAddress, i), null, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createCommandSupport() {
        this.commandSupport = new ProtocolCommandSupport(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void disconnect() {
        IOUtils.closeQuietly(this._socket_);
        IOUtils.closeQuietly(this._input_);
        IOUtils.closeQuietly(this._output_);
        this._socket_ = null;
        this._hostname_ = null;
        this._input_ = null;
        this._output_ = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fireCommandSent(String str, String str2) {
        getCommandSupport().fireCommandSent(str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fireReplyReceived(int i, String str) {
        getCommandSupport().fireReplyReceived(i, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Charset getCharset() {
        return this.charset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public String getCharsetName() {
        return this.charset.name();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ProtocolCommandSupport getCommandSupport() {
        return this.commandSupport;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDefaultPort() {
        return this._defaultPort_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDefaultTimeout() {
        return this._timeout_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getKeepAlive() {
        return this._socket_.getKeepAlive();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InetAddress getLocalAddress() {
        return this._socket_.getLocalAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLocalPort() {
        return this._socket_.getLocalPort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Proxy getProxy() {
        return this.connProxy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getReceiveBufferSize() {
        return this.receiveBufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InetAddress getRemoteAddress() {
        return this._socket_.getInetAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InetSocketAddress getRemoteInetSocketAddress() {
        return this.remoteInetSocketAddress;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRemotePort() {
        return this._socket_.getPort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSendBufferSize() {
        return this.sendBufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ServerSocketFactory getServerSocketFactory() {
        return this._serverSocketFactory_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSoLinger() {
        return this._socket_.getSoLinger();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSoTimeout() {
        return this._socket_.getSoTimeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getTcpNoDelay() {
        return this._socket_.getTcpNoDelay();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isConnected() {
        Socket socket = this._socket_;
        if (socket == null) {
            return false;
        }
        return socket.isConnected();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeProtocolCommandListener(ProtocolCommandListener protocolCommandListener) {
        getCommandSupport().removeProtocolCommandListener(protocolCommandListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCharset(Charset charset) {
        this.charset = charset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setConnectTimeout(int i) {
        this.connectTimeout = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDefaultPort(int i) {
        this._defaultPort_ = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDefaultTimeout(int i) {
        this._timeout_ = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setKeepAlive(boolean z) throws SocketException {
        this._socket_.setKeepAlive(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setProxy(Proxy proxy) {
        setSocketFactory(new DefaultSocketFactory(proxy));
        this.connProxy = proxy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setReceiveBufferSize(int i) {
        this.receiveBufferSize = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSendBufferSize(int i) {
        this.sendBufferSize = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setServerSocketFactory(ServerSocketFactory serverSocketFactory) {
        if (serverSocketFactory == null) {
            this._serverSocketFactory_ = DEFAULT_SERVER_SOCKET_FACTORY;
        } else {
            this._serverSocketFactory_ = serverSocketFactory;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSoLinger(boolean z, int i) throws SocketException {
        this._socket_.setSoLinger(z, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSoTimeout(int i) throws SocketException {
        this._socket_.setSoTimeout(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSocketFactory(SocketFactory socketFactory) {
        if (socketFactory == null) {
            this._socketFactory_ = DEFAULT_SOCKET_FACTORY;
        } else {
            this._socketFactory_ = socketFactory;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTcpNoDelay(boolean z) throws SocketException {
        this._socket_.setTcpNoDelay(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    public void connect(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        this._hostname_ = null;
        _connect(new InetSocketAddress(inetAddress, i), inetAddress2, i2);
    }

    public void connect(String str) throws IOException {
        connect(str, this._defaultPort_);
    }

    public void connect(String str, int i) throws IOException {
        connect(str, i, (InetAddress) null, -1);
    }

    public void connect(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        this._hostname_ = str;
        _connect(new InetSocketAddress(str, i), inetAddress, i2);
    }
}
