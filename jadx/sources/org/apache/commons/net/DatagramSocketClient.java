package org.apache.commons.net;

import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.nio.charset.Charset;
import java.time.Duration;
import java.util.Objects;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class DatagramSocketClient implements AutoCloseable {
    private static final DatagramSocketFactory DEFAULT_SOCKET_FACTORY = new DefaultDatagramSocketFactory();
    protected boolean _isOpen_;
    protected DatagramSocket _socket_;
    protected int _timeout_;
    private Charset charset = Charset.defaultCharset();
    protected DatagramSocketFactory _socketFactory_ = DEFAULT_SOCKET_FACTORY;

    public DatagramSocket checkOpen() {
        DatagramSocket datagramSocket = this._socket_;
        Objects.requireNonNull(datagramSocket, "DatagramSocket");
        return datagramSocket;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        IOUtils.closeQuietly(this._socket_);
        this._socket_ = null;
        this._isOpen_ = false;
    }

    public Charset getCharset() {
        return this.charset;
    }

    @Deprecated
    public String getCharsetName() {
        return this.charset.name();
    }

    @Deprecated
    public int getDefaultTimeout() {
        return this._timeout_;
    }

    public Duration getDefaultTimeoutDuration() {
        return Duration.ofMillis(this._timeout_);
    }

    public InetAddress getLocalAddress() {
        return checkOpen().getLocalAddress();
    }

    public int getLocalPort() {
        return checkOpen().getLocalPort();
    }

    @Deprecated
    public int getSoTimeout() {
        return checkOpen().getSoTimeout();
    }

    public Duration getSoTimeoutDuration() {
        return Duration.ofMillis(checkOpen().getSoTimeout());
    }

    public boolean isOpen() {
        return this._isOpen_;
    }

    public void open() throws SocketException {
        DatagramSocket datagramSocketCreateDatagramSocket = this._socketFactory_.createDatagramSocket();
        this._socket_ = datagramSocketCreateDatagramSocket;
        datagramSocketCreateDatagramSocket.setSoTimeout(this._timeout_);
        this._isOpen_ = true;
    }

    public void setCharset(Charset charset) {
        this.charset = charset;
    }

    public void setDatagramSocketFactory(DatagramSocketFactory datagramSocketFactory) {
        if (datagramSocketFactory == null) {
            this._socketFactory_ = DEFAULT_SOCKET_FACTORY;
        } else {
            this._socketFactory_ = datagramSocketFactory;
        }
    }

    public void setDefaultTimeout(Duration duration) {
        this._timeout_ = Math.toIntExact(duration.toMillis());
    }

    public void setSoTimeout(Duration duration) throws SocketException {
        checkOpen().setSoTimeout(Math.toIntExact(duration.toMillis()));
    }

    @Deprecated
    public void setDefaultTimeout(int i10) {
        this._timeout_ = i10;
    }

    @Deprecated
    public void setSoTimeout(int i10) throws SocketException {
        checkOpen().setSoTimeout(i10);
    }

    public void open(int i10) throws SocketException {
        DatagramSocket datagramSocketCreateDatagramSocket = this._socketFactory_.createDatagramSocket(i10);
        this._socket_ = datagramSocketCreateDatagramSocket;
        datagramSocketCreateDatagramSocket.setSoTimeout(this._timeout_);
        this._isOpen_ = true;
    }

    public void open(int i10, InetAddress inetAddress) throws SocketException {
        DatagramSocket datagramSocketCreateDatagramSocket = this._socketFactory_.createDatagramSocket(i10, inetAddress);
        this._socket_ = datagramSocketCreateDatagramSocket;
        datagramSocketCreateDatagramSocket.setSoTimeout(this._timeout_);
        this._isOpen_ = true;
    }
}
