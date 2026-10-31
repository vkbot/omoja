package org.apache.commons.net;

import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.nio.charset.Charset;
import java.time.Duration;
import java.util.Objects;
import kotlin.io.path.f;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.file.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class DatagramSocketClient implements AutoCloseable {
    private static final DatagramSocketFactory DEFAULT_SOCKET_FACTORY = new DefaultDatagramSocketFactory();
    protected boolean _isOpen_;
    protected DatagramSocket _socket_;
    protected int _timeout_;
    private Charset charset = Charset.defaultCharset();
    protected DatagramSocketFactory _socketFactory_ = DEFAULT_SOCKET_FACTORY;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DatagramSocket checkOpen() {
        DatagramSocket datagramSocket = this._socket_;
        Objects.requireNonNull(datagramSocket, "DatagramSocket");
        return datagramSocket;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        IOUtils.closeQuietly(this._socket_);
        this._socket_ = null;
        this._isOpen_ = false;
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
    @Deprecated
    public int getDefaultTimeout() {
        return this._timeout_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getDefaultTimeoutDuration() {
        return e.o(this._timeout_);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InetAddress getLocalAddress() {
        return checkOpen().getLocalAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLocalPort() {
        return checkOpen().getLocalPort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getSoTimeout() {
        return checkOpen().getSoTimeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getSoTimeoutDuration() {
        return e.o(checkOpen().getSoTimeout());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isOpen() {
        return this._isOpen_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void open() throws SocketException {
        DatagramSocket datagramSocketCreateDatagramSocket = this._socketFactory_.createDatagramSocket();
        this._socket_ = datagramSocketCreateDatagramSocket;
        datagramSocketCreateDatagramSocket.setSoTimeout(this._timeout_);
        this._isOpen_ = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCharset(Charset charset) {
        this.charset = charset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDatagramSocketFactory(DatagramSocketFactory datagramSocketFactory) {
        if (datagramSocketFactory == null) {
            this._socketFactory_ = DEFAULT_SOCKET_FACTORY;
        } else {
            this._socketFactory_ = datagramSocketFactory;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDefaultTimeout(Duration duration) {
        this._timeout_ = Math.toIntExact(f.c(duration));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSoTimeout(Duration duration) throws SocketException {
        checkOpen().setSoTimeout(Math.toIntExact(f.c(duration)));
    }

    @Deprecated
    public void setDefaultTimeout(int i) {
        this._timeout_ = i;
    }

    @Deprecated
    public void setSoTimeout(int i) throws SocketException {
        checkOpen().setSoTimeout(i);
    }

    public void open(int i) throws SocketException {
        DatagramSocket datagramSocketCreateDatagramSocket = this._socketFactory_.createDatagramSocket(i);
        this._socket_ = datagramSocketCreateDatagramSocket;
        datagramSocketCreateDatagramSocket.setSoTimeout(this._timeout_);
        this._isOpen_ = true;
    }

    public void open(int i, InetAddress inetAddress) throws SocketException {
        DatagramSocket datagramSocketCreateDatagramSocket = this._socketFactory_.createDatagramSocket(i, inetAddress);
        this._socket_ = datagramSocketCreateDatagramSocket;
        datagramSocketCreateDatagramSocket.setSoTimeout(this._timeout_);
        this._isOpen_ = true;
    }
}
