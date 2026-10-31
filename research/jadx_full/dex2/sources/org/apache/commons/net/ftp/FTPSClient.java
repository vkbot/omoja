package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import l9.i;
import okhttp3.HttpUrl;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.filefilter.f;
import org.apache.commons.net.util.SSLContextUtils;
import org.apache.commons.net.util.SSLSocketUtils;
import org.apache.commons.net.util.TrustManagerUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FTPSClient extends FTPClient {
    private static final String CMD_ADAT = "ADAT";
    private static final String CMD_AUTH = "AUTH";
    private static final String CMD_CCC = "CCC";
    private static final String CMD_CONF = "CONF";
    private static final String CMD_ENC = "ENC";
    private static final String CMD_MIC = "MIC";
    private static final String CMD_PBSZ = "PBSZ";
    private static final String CMD_PROT = "PROT";
    public static final int DEFAULT_FTPS_DATA_PORT = 989;
    public static final int DEFAULT_FTPS_PORT = 990;
    private static final String DEFAULT_PROTOCOL = "TLS";

    @Deprecated
    public static String KEYSTORE_ALGORITHM;

    @Deprecated
    public static String PROVIDER;

    @Deprecated
    public static String STORE_TYPE;

    @Deprecated
    public static String TRUSTSTORE_ALGORITHM;
    private String auth;
    private SSLContext context;
    private HostnameVerifier hostnameVerifier;
    private boolean isClientMode;
    private boolean isCreation;
    private final boolean isImplicit;
    private boolean isNeedClientAuth;
    private boolean isWantClientAuth;
    private KeyManager keyManager;
    private Socket plainSocket;
    private final String protocol;
    private String[] protocols;
    private String[] suites;
    private boolean tlsEndpointChecking;
    private TrustManager trustManager;
    private static final String DEFAULT_PROT = "C";
    private static final String[] PROT_COMMAND_VALUE = {DEFAULT_PROT, "E", "S", "P"};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPSClient(String str, boolean z) {
        this.auth = "TLS";
        this.isCreation = true;
        this.isClientMode = true;
        this.trustManager = TrustManagerUtils.getValidateServerCertificateTrustManager();
        this.protocol = str;
        this.isImplicit = z;
        if (z) {
            setDefaultPort(DEFAULT_FTPS_PORT);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean checkPROTValue(String str) {
        for (String str2 : PROT_COMMAND_VALUE) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void closeSockets(Socket socket, Socket socket2) {
        IOUtils.close(socket, socket2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SSLSocket createSSLSocket(Socket socket) {
        if (socket != null) {
            return (SSLSocket) this.context.getSocketFactory().createSocket(socket, this._hostname_, socket.getPort(), false);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String extractPrefixedData(String str, String str2) {
        int iIndexOf = str2.indexOf(str);
        if (iIndexOf == -1) {
            return null;
        }
        return str2.substring(str.length() + iIndexOf).trim();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private KeyManager getKeyManager() {
        return this.keyManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initSslContext() {
        if (this.context == null) {
            this.context = SSLContextUtils.createSSLContext(this.protocol, getKeyManager(), getTrustManager());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Socket openDataSecureConnection(String str, String str2) throws IOException {
        Socket socketAccept;
        Socket socket = null;
        if (getDataConnectionMode() != 0 && getDataConnectionMode() != 2) {
            return null;
        }
        boolean z = getRemoteAddress() instanceof Inet6Address;
        int millisInt = DurationUtils.toMillisInt(getDataTimeout());
        if (getDataConnectionMode() == 0) {
            ServerSocket serverSocketCreateServerSocket = this._serverSocketFactory_.createServerSocket(getActivePort(), 1, getHostAddress());
            try {
                if (z) {
                    if (!FTPReply.isPositiveCompletion(eprt(getReportHostAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                        serverSocketCreateServerSocket.close();
                        return null;
                    }
                } else if (!FTPReply.isPositiveCompletion(port(getReportHostAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                    serverSocketCreateServerSocket.close();
                    return null;
                }
                if ((getRestartOffset() > 0 && !restart(getRestartOffset())) || !FTPReply.isPositivePreliminary(sendCommand(str, str2))) {
                    if (serverSocketCreateServerSocket != null) {
                        serverSocketCreateServerSocket.close();
                    }
                    return null;
                }
                if (millisInt >= 0) {
                    serverSocketCreateServerSocket.setSoTimeout(millisInt);
                }
                socketAccept = serverSocketCreateServerSocket.accept();
                if (millisInt >= 0) {
                    socketAccept.setSoTimeout(millisInt);
                }
                if (getReceiveDataSocketBufferSize() > 0) {
                    socketAccept.setReceiveBufferSize(getReceiveDataSocketBufferSize());
                }
                if (getSendDataSocketBufferSize() > 0) {
                    socketAccept.setSendBufferSize(getSendDataSocketBufferSize());
                }
                serverSocketCreateServerSocket.close();
            } catch (Throwable th) {
                if (serverSocketCreateServerSocket != null) {
                    try {
                        serverSocketCreateServerSocket.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } else {
            if ((isUseEPSVwithIPv4() || z) && epsv() == 229) {
                _parseExtendedPassiveModeReply(this._replyLines.get(0));
            } else {
                if (z || pasv() != 227) {
                    return null;
                }
                _parsePassiveModeReply(this._replyLines.get(0));
            }
            Socket socket2 = getProxy() != null ? new Socket(getProxy()) : this._socketFactory_.createSocket();
            if (getReceiveDataSocketBufferSize() > 0) {
                socket2.setReceiveBufferSize(getReceiveDataSocketBufferSize());
            }
            if (getSendDataSocketBufferSize() > 0) {
                socket2.setSendBufferSize(getSendDataSocketBufferSize());
            }
            if (getPassiveLocalIPAddress() != null) {
                socket2.bind(new InetSocketAddress(getPassiveLocalIPAddress(), 0));
            }
            if (millisInt >= 0) {
                socket2.setSoTimeout(millisInt);
            }
            socket2.connect(new InetSocketAddress(getPassiveHost(), getPassivePort()), this.connectTimeout);
            Socket socketCreateSocket = getProxy() != null ? this.context.getSocketFactory().createSocket(socket2, getPassiveHost(), getPassivePort(), true) : null;
            if ((getRestartOffset() > 0 && !restart(getRestartOffset())) || !FTPReply.isPositivePreliminary(sendCommand(str, str2))) {
                closeSockets(socket2, socketCreateSocket);
                return null;
            }
            socketAccept = socket2;
            socket = socketCreateSocket;
        }
        if (!isRemoteVerificationEnabled() || verifyRemote(socketAccept)) {
            return getProxy() != null ? socket : socketAccept;
        }
        InetAddress inetAddress = socketAccept.getInetAddress();
        closeSockets(socketAccept, socket);
        throw new IOException("Host attempting data connection " + inetAddress.getHostAddress() + " is not same as server " + getRemoteAddress().getHostAddress());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.FTPClient, org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void _connectAction_() throws IOException {
        if (this.isImplicit) {
            applySocketAttributes();
            sslNegotiation();
        }
        super._connectAction_();
        if (this.isImplicit) {
            return;
        }
        execAUTH();
        sslNegotiation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.FTPClient
    public Socket _openDataConnection_(String str, String str2) throws IOException {
        Socket socketOpenDataSecureConnection = openDataSecureConnection(str, str2);
        _prepareDataSocket_(socketOpenDataSecureConnection);
        if (socketOpenDataSecureConnection instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socketOpenDataSecureConnection;
            sSLSocket.setUseClientMode(this.isClientMode);
            sSLSocket.setEnableSessionCreation(this.isCreation);
            if (!this.isClientMode) {
                sSLSocket.setNeedClientAuth(this.isNeedClientAuth);
                sSLSocket.setWantClientAuth(this.isWantClientAuth);
            }
            String[] strArr = this.suites;
            if (strArr != null) {
                sSLSocket.setEnabledCipherSuites(strArr);
            }
            String[] strArr2 = this.protocols;
            if (strArr2 != null) {
                sSLSocket.setEnabledProtocols(strArr2);
            }
            sSLSocket.startHandshake();
        }
        return socketOpenDataSecureConnection;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.FTPClient, org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void disconnect() throws IOException {
        super.disconnect();
        IOUtils.close(this.plainSocket);
        setSocketFactory(null);
        setServerSocketFactory(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int execADAT(byte[] bArr) {
        return bArr != null ? sendCommand(CMD_ADAT, f.d(f.q(), bArr)) : sendCommand(CMD_ADAT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void execAUTH() throws IOException {
        int iSendCommand = sendCommand(CMD_AUTH, this.auth);
        if (334 != iSendCommand && 234 != iSendCommand) {
            throw new SSLException(getReplyString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int execCCC() {
        return sendCommand(CMD_CCC);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int execCONF(byte[] bArr) {
        return bArr != null ? sendCommand(CMD_CONF, f.d(f.q(), bArr)) : sendCommand(CMD_CONF, HttpUrl.FRAGMENT_ENCODE_SET);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int execENC(byte[] bArr) {
        return bArr != null ? sendCommand(CMD_ENC, f.d(f.q(), bArr)) : sendCommand(CMD_ENC, HttpUrl.FRAGMENT_ENCODE_SET);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int execMIC(byte[] bArr) {
        return bArr != null ? sendCommand(CMD_MIC, f.d(f.q(), bArr)) : sendCommand(CMD_MIC, HttpUrl.FRAGMENT_ENCODE_SET);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void execPBSZ(long j) throws SSLException {
        if (j < 0 || 4294967295L < j) {
            i.a();
        } else if (200 != sendCommand(CMD_PBSZ, String.valueOf(j))) {
            throw new SSLException(getReplyString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void execPROT(String str) throws SSLException {
        if (str == null) {
            str = DEFAULT_PROT;
        }
        if (!checkPROTValue(str)) {
            i.a();
            return;
        }
        if (200 != sendCommand(CMD_PROT, str)) {
            throw new SSLException(getReplyString());
        }
        if (DEFAULT_PROT.equals(str)) {
            setSocketFactory(null);
            setServerSocketFactory(null);
        } else {
            setSocketFactory(new FTPSSocketFactory(this.context));
            setServerSocketFactory(new FTPSServerSocketFactory(this.context));
            initSslContext();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getAuthValue() {
        return this.auth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getEnableSessionCreation() {
        Socket socket = this._socket_;
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getEnableSessionCreation();
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getEnabledCipherSuites() {
        Socket socket = this._socket_;
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getEnabledCipherSuites();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getEnabledProtocols() {
        Socket socket = this._socket_;
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getEnabledProtocols();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getNeedClientAuth() {
        Socket socket = this._socket_;
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getNeedClientAuth();
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getProtocol() {
        return this.protocol;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getProtocols() {
        String[] strArr = this.protocols;
        if (strArr == null) {
            return null;
        }
        return (String[]) strArr.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getSuites() {
        String[] strArr = this.suites;
        if (strArr == null) {
            return null;
        }
        return (String[]) strArr.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TrustManager getTrustManager() {
        return this.trustManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getUseClientMode() {
        Socket socket = this._socket_;
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getUseClientMode();
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getWantClientAuth() {
        Socket socket = this._socket_;
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getWantClientAuth();
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isClientMode() {
        return this.isClientMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCreation() {
        return this.isCreation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isEndpointCheckingEnabled() {
        return this.tlsEndpointChecking;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isImplicit() {
        return this.isImplicit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isNeedClientAuth() {
        return this.isNeedClientAuth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isWantClientAuth() {
        return this.isWantClientAuth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] parseADATReply(String str) {
        if (str == null) {
            return null;
        }
        return f.u(f.p(), extractPrefixedData("ADAT=", str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long parsePBSZ(long j) throws SSLException {
        execPBSZ(j);
        String strExtractPrefixedData = extractPrefixedData("PBSZ=", getReplyString());
        if (strExtractPrefixedData != null) {
            long j2 = Long.parseLong(strExtractPrefixedData);
            if (j2 < j) {
                return j2;
            }
        }
        return j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.FTP
    public int sendCommand(String str, String str2) throws IOException {
        int iSendCommand = super.sendCommand(str, str2);
        if (!CMD_CCC.equals(str)) {
            return iSendCommand;
        }
        if (200 != iSendCommand) {
            throw new SSLException(getReplyString());
        }
        this._socket_.close();
        this._socket_ = this.plainSocket;
        this._controlInput_ = new BufferedReader(new InputStreamReader(this._socket_.getInputStream(), getControlEncoding()));
        this._controlOutput_ = new BufferedWriter(new OutputStreamWriter(this._socket_.getOutputStream(), getControlEncoding()));
        return iSendCommand;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAuthValue(String str) {
        this.auth = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEnabledCipherSuites(String[] strArr) {
        this.suites = (String[]) strArr.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEnabledProtocols(String[] strArr) {
        this.protocols = (String[]) strArr.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEnabledSessionCreation(boolean z) {
        this.isCreation = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndpointCheckingEnabled(boolean z) {
        this.tlsEndpointChecking = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.hostnameVerifier = hostnameVerifier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setKeyManager(KeyManager keyManager) {
        this.keyManager = keyManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setNeedClientAuth(boolean z) {
        this.isNeedClientAuth = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTrustManager(TrustManager trustManager) {
        this.trustManager = trustManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUseClientMode(boolean z) {
        this.isClientMode = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWantClientAuth(boolean z) {
        this.isWantClientAuth = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sslNegotiation() throws IOException {
        HostnameVerifier hostnameVerifier;
        this.plainSocket = this._socket_;
        initSslContext();
        SSLSocket sSLSocketCreateSSLSocket = createSSLSocket(this._socket_);
        sSLSocketCreateSSLSocket.setEnableSessionCreation(this.isCreation);
        sSLSocketCreateSSLSocket.setUseClientMode(this.isClientMode);
        if (!this.isClientMode) {
            sSLSocketCreateSSLSocket.setNeedClientAuth(this.isNeedClientAuth);
            sSLSocketCreateSSLSocket.setWantClientAuth(this.isWantClientAuth);
        } else if (this.tlsEndpointChecking) {
            SSLSocketUtils.enableEndpointNameVerification(sSLSocketCreateSSLSocket);
        }
        String[] strArr = this.protocols;
        if (strArr != null) {
            sSLSocketCreateSSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = this.suites;
        if (strArr2 != null) {
            sSLSocketCreateSSLSocket.setEnabledCipherSuites(strArr2);
        }
        sSLSocketCreateSSLSocket.startHandshake();
        this._socket_ = sSLSocketCreateSSLSocket;
        this._controlInput_ = new BufferedReader(new InputStreamReader(sSLSocketCreateSSLSocket.getInputStream(), getControlEncoding()));
        this._controlOutput_ = new BufferedWriter(new OutputStreamWriter(sSLSocketCreateSSLSocket.getOutputStream(), getControlEncoding()));
        if (this.isClientMode && (hostnameVerifier = this.hostnameVerifier) != null && !hostnameVerifier.verify(this._hostname_, sSLSocketCreateSSLSocket.getSession())) {
            throw new SSLHandshakeException("Hostname doesn't match certificate");
        }
    }

    public int execAUTH(String str) {
        return sendCommand(CMD_AUTH, str);
    }

    public FTPSClient(boolean z) {
        this("TLS", z);
    }

    public FTPSClient(boolean z, SSLContext sSLContext) {
        this("TLS", z);
        this.context = sSLContext;
    }

    public FTPSClient(SSLContext sSLContext) {
        this(false, sSLContext);
    }

    public FTPSClient(String str) {
        this(str, false);
    }

    public FTPSClient() {
        this("TLS", false);
    }

    @Override // org.apache.commons.net.ftp.FTPClient
    @Deprecated
    public Socket _openDataConnection_(int i, String str) {
        return _openDataConnection_(FTPCommand.getCommand(i), str);
    }

    public void _prepareDataSocket_(Socket socket) {
    }
}
