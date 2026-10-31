package org.apache.commons.net.ftp;

import ai.onnxruntime.b;
import ai.onnxruntime.d;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.file.e;
import org.apache.commons.io.filefilter.f;
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.ftp.parser.DefaultFTPFileEntryParserFactory;
import org.apache.commons.net.ftp.parser.FTPFileEntryParserFactory;
import org.apache.commons.net.ftp.parser.MLSxEntryParser;
import org.apache.commons.net.io.CRLFLineReader;
import org.apache.commons.net.io.CopyStreamAdapter;
import org.apache.commons.net.io.CopyStreamListener;
import org.apache.commons.net.io.FromNetASCIIInputStream;
import org.apache.commons.net.io.SocketInputStream;
import org.apache.commons.net.io.SocketOutputStream;
import org.apache.commons.net.io.ToNetASCIIOutputStream;
import org.apache.commons.net.io.Util;
import org.apache.commons.net.util.NetConstants;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FTPClient extends FTP implements Configurable {
    public static final int ACTIVE_LOCAL_DATA_CONNECTION_MODE = 0;
    public static final int ACTIVE_REMOTE_DATA_CONNECTION_MODE = 1;
    public static final String FTP_IP_ADDRESS_FROM_PASV_RESPONSE = "org.apache.commons.net.ftp.ipAddressFromPasvResponse";
    public static final String FTP_SYSTEM_TYPE = "org.apache.commons.net.ftp.systemType";
    public static final String FTP_SYSTEM_TYPE_DEFAULT = "org.apache.commons.net.ftp.systemType.default";
    private static final Pattern PARMS_PAT = Pattern.compile("(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})");
    public static final int PASSIVE_LOCAL_DATA_CONNECTION_MODE = 2;
    public static final int PASSIVE_REMOTE_DATA_CONNECTION_MODE = 3;
    public static final String SYSTEM_TYPE_PROPERTIES = "/systemType.properties";
    private InetAddress activeExternalHost;
    private int activeMaxPort;
    private int activeMinPort;
    private boolean autoDetectEncoding;
    private int bufferSize;
    private CopyStreamListener copyStreamListener;
    private int[] cslDebug;
    private int dataConnectionMode;
    private FTPFileEntryParser entryParser;
    private String entryParserKey;
    private HashMap<String, Set<String>> featuresMap;
    private int fileStructure;
    private int fileTransferMode;
    private int fileType;
    private int formatOrByteSize;
    private FTPClientConfig ftpClientConfig;
    private boolean listHiddenFiles;
    private String passiveHost;
    private InetAddress passiveLocalHost;
    private int passivePort;
    private int receiveDataSocketBufferSize;
    private InetAddress reportActiveExternalHost;
    private long restartOffset;
    private int sendDataSocketBufferSize;
    private String systemName;
    private boolean useEPSVwithIPv4;
    private Duration dataTimeout = f.z();
    private final Random random = new Random();
    private boolean remoteVerificationEnabled = true;
    private FTPFileEntryParserFactory parserFactory = new DefaultFTPFileEntryParserFactory();
    private Duration controlKeepAliveTimeout = f.h();
    private Duration controlKeepAliveReplyTimeout = f.B();
    private FTPClient$HostnameResolver passiveNatWorkaroundStrategy = new FTPClient$NatServerResolverImpl(this);
    private boolean ipAddressFromPasvResponse = Boolean.getBoolean(FTP_IP_ADDRESS_FROM_PASV_RESPONSE);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPClient() {
        initDefaults();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Set a(String str) {
        return lambda$initFeatureMap$0(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private InputStream getBufferedInputStream(InputStream inputStream) {
        return this.bufferSize > 0 ? new BufferedInputStream(inputStream, this.bufferSize) : new BufferedInputStream(inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OutputStream getBufferedOutputStream(OutputStream outputStream) {
        return this.bufferSize > 0 ? new BufferedOutputStream(outputStream, this.bufferSize) : new BufferedOutputStream(outputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Properties getOverrideProperties() {
        return FTPClient$PropertiesSingleton.PROPERTIES;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initDefaults() {
        this.dataConnectionMode = 0;
        this.passiveHost = null;
        this.passivePort = -1;
        this.activeExternalHost = null;
        this.reportActiveExternalHost = null;
        this.activeMinPort = 0;
        this.activeMaxPort = 0;
        this.fileType = 0;
        this.fileStructure = 7;
        this.formatOrByteSize = 4;
        this.fileTransferMode = 10;
        this.restartOffset = 0L;
        this.systemName = null;
        this.entryParser = null;
        this.entryParserKey = HttpUrl.FRAGMENT_ENCODE_SET;
        this.featuresMap = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean initFeatureMap() {
        String strSubstring;
        String strSubstring2;
        if (this.featuresMap == null) {
            int iFeat = feat();
            int i = 0;
            if (iFeat == 530) {
                return false;
            }
            boolean zIsPositiveCompletion = FTPReply.isPositiveCompletion(iFeat);
            this.featuresMap = new HashMap<>();
            if (!zIsPositiveCompletion) {
                return false;
            }
            ArrayList<String> arrayList = this._replyLines;
            int size = arrayList.size();
            while (i < size) {
                String str = arrayList.get(i);
                i++;
                String str2 = str;
                if (str2.startsWith(" ")) {
                    int iIndexOf = str2.indexOf(32, 1);
                    if (iIndexOf > 0) {
                        strSubstring = str2.substring(1, iIndexOf);
                        strSubstring2 = str2.substring(iIndexOf + 1);
                    } else {
                        strSubstring = str2.substring(1);
                        strSubstring2 = HttpUrl.FRAGMENT_ENCODE_SET;
                    }
                    this.featuresMap.computeIfAbsent(strSubstring.toUpperCase(Locale.ENGLISH), new d(6)).add(strSubstring2);
                }
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FTPListParseEngine initiateListParsing(FTPFileEntryParser fTPFileEntryParser, String str) {
        Socket socket_openDataConnection_ = _openDataConnection_(FTPCmd.LIST, getListArguments(str));
        FTPListParseEngine fTPListParseEngine = new FTPListParseEngine(fTPFileEntryParser, this.ftpClientConfig);
        if (socket_openDataConnection_ == null) {
            return fTPListParseEngine;
        }
        try {
            fTPListParseEngine.readServerList(socket_openDataConnection_.getInputStream(), getControlEncoding());
            IOUtils.closeQuietly(socket_openDataConnection_);
            completePendingCommand();
            return fTPListParseEngine;
        } catch (Throwable th) {
            IOUtils.closeQuietly(socket_openDataConnection_);
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Set lambda$initFeatureMap$0(String str) {
        return new HashSet();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Properties loadResourceProperties(String str) throws Throwable {
        Properties properties;
        Throwable th;
        Properties properties2 = null;
        if (str == null) {
            return null;
        }
        try {
            InputStream resourceAsStream = FTPClient.class.getResourceAsStream(str);
            if (resourceAsStream != null) {
                try {
                    properties = new Properties();
                    try {
                        properties.load(resourceAsStream);
                        properties2 = properties;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            try {
                                resourceAsStream.close();
                            } catch (IOException unused) {
                                return properties;
                            }
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    properties = null;
                    th = th4;
                }
            }
            if (resourceAsStream == null) {
                return properties2;
            }
            resourceAsStream.close();
            return properties2;
        } catch (IOException unused2) {
            return properties2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CopyStreamListener mergeListeners(CopyStreamListener copyStreamListener) {
        CopyStreamListener copyStreamListener2 = this.copyStreamListener;
        if (copyStreamListener == null) {
            return copyStreamListener2;
        }
        if (copyStreamListener2 == null) {
            return copyStreamListener;
        }
        CopyStreamAdapter copyStreamAdapter = new CopyStreamAdapter();
        copyStreamAdapter.addCopyStreamListener(copyStreamListener);
        copyStreamAdapter.addCopyStreamListener(this.copyStreamListener);
        return copyStreamAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String parsePathname(String str) {
        String strSubstring = str.substring(4);
        if (!strSubstring.startsWith("\"")) {
            return strSubstring;
        }
        StringBuilder sb = new StringBuilder(strSubstring.length());
        boolean z = false;
        for (int i = 1; i < strSubstring.length(); i++) {
            char cCharAt = strSubstring.charAt(i);
            if (cCharAt != '\"') {
                if (z) {
                    return sb.toString();
                }
                sb.append(cCharAt);
            } else if (z) {
                sb.append(cCharAt);
                z = false;
            } else {
                z = true;
            }
        }
        return z ? sb.toString() : strSubstring;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean storeFile(FTPCmd fTPCmd, String str, InputStream inputStream) {
        return _storeFile(fTPCmd.getCommand(), str, inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OutputStream storeFileStream(FTPCmd fTPCmd, String str) {
        return _storeFileStream(fTPCmd.getCommand(), str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Socket wrapOnDeflate(Socket socket) {
        return this.fileTransferMode != 13 ? socket : new DeflateSocket(socket);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.FTP
    public void _connectAction_(Reader reader) throws SocketException {
        super._connectAction_(reader);
        initDefaults();
        if (this.autoDetectEncoding) {
            ArrayList arrayList = new ArrayList(this._replyLines);
            int i = this._replyCode;
            Charset charset = StandardCharsets.UTF_8;
            if (hasFeature("UTF8") || hasFeature(charset.name())) {
                setControlEncoding(charset);
                this._controlInput_ = new CRLFLineReader(new InputStreamReader(this._input_, getControlEncoding()));
                this._controlOutput_ = new BufferedWriter(new OutputStreamWriter(this._output_, getControlEncoding()));
            }
            this._replyLines.clear();
            this._replyLines.addAll(arrayList);
            this._replyCode = i;
            this._newReplyString = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Socket _openDataConnection_(String str, String str2) throws IOException {
        Socket socketWrapOnDeflate;
        int i = this.dataConnectionMode;
        if (i != 0 && i != 2) {
            return null;
        }
        boolean z = getRemoteAddress() instanceof Inet6Address;
        int millisInt = DurationUtils.toMillisInt(this.dataTimeout);
        if (this.dataConnectionMode == 0) {
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
                long j = this.restartOffset;
                if ((j > 0 && !restart(j)) || !FTPReply.isPositivePreliminary(sendCommand(str, str2))) {
                    if (serverSocketCreateServerSocket != null) {
                        serverSocketCreateServerSocket.close();
                    }
                    return null;
                }
                if (millisInt >= 0) {
                    serverSocketCreateServerSocket.setSoTimeout(millisInt);
                }
                socketWrapOnDeflate = wrapOnDeflate(serverSocketCreateServerSocket.accept());
                if (millisInt >= 0) {
                    socketWrapOnDeflate.setSoTimeout(millisInt);
                }
                int i2 = this.receiveDataSocketBufferSize;
                if (i2 > 0) {
                    socketWrapOnDeflate.setReceiveBufferSize(i2);
                }
                int i3 = this.sendDataSocketBufferSize;
                if (i3 > 0) {
                    socketWrapOnDeflate.setSendBufferSize(i3);
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
            Socket socketWrapOnDeflate2 = wrapOnDeflate(this._socketFactory_.createSocket());
            int i4 = this.receiveDataSocketBufferSize;
            if (i4 > 0) {
                socketWrapOnDeflate2.setReceiveBufferSize(i4);
            }
            int i5 = this.sendDataSocketBufferSize;
            if (i5 > 0) {
                socketWrapOnDeflate2.setSendBufferSize(i5);
            }
            if (this.passiveLocalHost != null) {
                socketWrapOnDeflate2.bind(new InetSocketAddress(this.passiveLocalHost, 0));
            }
            if (millisInt >= 0) {
                socketWrapOnDeflate2.setSoTimeout(millisInt);
            }
            socketWrapOnDeflate2.connect(new InetSocketAddress(this.passiveHost, this.passivePort), this.connectTimeout);
            long j2 = this.restartOffset;
            if ((j2 > 0 && !restart(j2)) || !FTPReply.isPositivePreliminary(sendCommand(str, str2))) {
                socketWrapOnDeflate2.close();
                return null;
            }
            socketWrapOnDeflate = socketWrapOnDeflate2;
        }
        if (!this.remoteVerificationEnabled || verifyRemote(socketWrapOnDeflate)) {
            return socketWrapOnDeflate;
        }
        String hostAddress = SocketClient.getHostAddress(socketWrapOnDeflate);
        String hostAddress2 = SocketClient.getHostAddress(this._socket_);
        IOUtils.closeQuietly(socketWrapOnDeflate);
        b.m("Host attempting data connection ", hostAddress, " is not same as server ", hostAddress2);
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void _parseExtendedPassiveModeReply(String str) throws MalformedServerReplyException {
        String strTrim = str.substring(str.indexOf(40) + 1, str.indexOf(41)).trim();
        char cCharAt = strTrim.charAt(0);
        char cCharAt2 = strTrim.charAt(1);
        char cCharAt3 = strTrim.charAt(2);
        char cCharAt4 = strTrim.charAt(strTrim.length() - 1);
        if (cCharAt != cCharAt2 || cCharAt2 != cCharAt3 || cCharAt3 != cCharAt4) {
            throw new MalformedServerReplyException("Could not parse extended passive host information.\nServer Reply: ".concat(strTrim));
        }
        try {
            int i = Integer.parseInt(strTrim.substring(3, strTrim.length() - 1));
            this.passiveHost = getRemoteAddress().getHostAddress();
            this.passivePort = i;
        } catch (NumberFormatException unused) {
            throw new MalformedServerReplyException("Could not parse extended passive host information.\nServer Reply: ".concat(strTrim));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void _parsePassiveModeReply(String str) throws MalformedServerReplyException {
        Matcher matcher = PARMS_PAT.matcher(str);
        if (!matcher.find()) {
            throw new MalformedServerReplyException(ai.onnxruntime.a.l("Could not parse passive host information.\nServer Reply: ", str));
        }
        String hostAddress = "0,0,0,0".equals(matcher.group(1)) ? this._socket_.getInetAddress().getHostAddress() : matcher.group(1).replace(',', FilenameUtils.EXTENSION_SEPARATOR);
        try {
            int i = Integer.parseInt(matcher.group(3)) | (Integer.parseInt(matcher.group(2)) << 8);
            if (isIpAddressFromPasvResponse()) {
                FTPClient$HostnameResolver fTPClient$HostnameResolver = this.passiveNatWorkaroundStrategy;
                if (fTPClient$HostnameResolver != null) {
                    try {
                        String strResolve = fTPClient$HostnameResolver.resolve(hostAddress);
                        if (!hostAddress.equals(strResolve)) {
                            fireReplyReceived(0, "[Replacing PASV mode reply address " + this.passiveHost + " with " + strResolve + "]\n");
                            hostAddress = strResolve;
                        }
                    } catch (UnknownHostException unused) {
                        throw new MalformedServerReplyException(ai.onnxruntime.a.l("Could not parse passive host information.\nServer Reply: ", str));
                    }
                }
            } else {
                Socket socket = this._socket_;
                hostAddress = socket == null ? null : socket.getInetAddress().getHostAddress();
            }
            this.passiveHost = hostAddress;
            this.passivePort = i;
        } catch (NumberFormatException unused2) {
            throw new MalformedServerReplyException(ai.onnxruntime.a.l("Could not parse passive port information.\nServer Reply: ", str));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:34:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:? A[SYNTHETIC] */
    public boolean _retrieveFile(String str, String str2, OutputStream outputStream) throws Throwable {
        FTPClient$CSL fTPClient$CSL;
        Throwable th;
        Socket socket_openDataConnection_ = _openDataConnection_(str, str2);
        if (socket_openDataConnection_ == null) {
            return false;
        }
        InputStream inputStream = null;
        FTPClient$CSL fTPClient$CSL2 = null;
        try {
            InputStream fromNetASCIIInputStream = this.fileType == 0 ? new FromNetASCIIInputStream(getBufferedInputStream(socket_openDataConnection_.getInputStream())) : getBufferedInputStream(socket_openDataConnection_.getInputStream());
            try {
                fTPClient$CSL2 = DurationUtils.isPositive(this.controlKeepAliveTimeout) ? new FTPClient$CSL(this, this.controlKeepAliveTimeout, this.controlKeepAliveReplyTimeout) : null;
                Util.copyStream(fromNetASCIIInputStream, outputStream, getBufferSize(), -1L, mergeListeners(fTPClient$CSL2), false);
                try {
                    IOUtils.closeQuietly(fromNetASCIIInputStream);
                    boolean zCompletePendingCommand = completePendingCommand();
                    IOUtils.closeQuietly(socket_openDataConnection_);
                    if (fTPClient$CSL2 != null) {
                        this.cslDebug = fTPClient$CSL2.cleanUp();
                    }
                    return zCompletePendingCommand;
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(socket_openDataConnection_);
                    if (fTPClient$CSL2 != null) {
                        throw th;
                    }
                    this.cslDebug = fTPClient$CSL2.cleanUp();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fTPClient$CSL = fTPClient$CSL2;
                inputStream = fromNetASCIIInputStream;
                try {
                    IOUtils.closeQuietly(inputStream);
                    throw th;
                } catch (Throwable th4) {
                    FTPClient$CSL fTPClient$CSL3 = fTPClient$CSL;
                    th = th4;
                    fTPClient$CSL2 = fTPClient$CSL3;
                    IOUtils.closeQuietly(socket_openDataConnection_);
                    if (fTPClient$CSL2 != null) {
                        throw th;
                    }
                    this.cslDebug = fTPClient$CSL2.cleanUp();
                    throw th;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            fTPClient$CSL = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream _retrieveFileStream(String str, String str2) throws IOException {
        Socket socket_openDataConnection_ = _openDataConnection_(str, str2);
        if (socket_openDataConnection_ == null) {
            return null;
        }
        return new SocketInputStream(socket_openDataConnection_, this.fileType == 0 ? new FromNetASCIIInputStream(getBufferedInputStream(socket_openDataConnection_.getInputStream())) : socket_openDataConnection_.getInputStream());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:31:0x0072  */
    /* JADX WARN: Code duplicated, block: B:38:? A[SYNTHETIC] */
    public boolean _storeFile(String str, String str2, InputStream inputStream) throws Throwable {
        Throwable th;
        FTPClient$CSL fTPClient$CSL;
        Socket socket_openDataConnection_ = _openDataConnection_(str, str2);
        if (socket_openDataConnection_ == null) {
            return false;
        }
        FTPClient$CSL fTPClient$CSL2 = null;
        fTPClient$CSL2 = null;
        OutputStream outputStream = null;
        try {
            try {
                OutputStream toNetASCIIOutputStream = this.fileType == 0 ? new ToNetASCIIOutputStream(getBufferedOutputStream(socket_openDataConnection_.getOutputStream())) : getBufferedOutputStream(socket_openDataConnection_.getOutputStream());
                try {
                    fTPClient$CSL2 = DurationUtils.isPositive(this.controlKeepAliveTimeout) ? new FTPClient$CSL(this, this.controlKeepAliveTimeout, this.controlKeepAliveReplyTimeout) : null;
                    Util.copyStream(inputStream, toNetASCIIOutputStream, getBufferSize(), -1L, mergeListeners(fTPClient$CSL2), false);
                    toNetASCIIOutputStream.close();
                    socket_openDataConnection_.close();
                    boolean zCompletePendingCommand = completePendingCommand();
                    if (fTPClient$CSL2 != null) {
                        this.cslDebug = fTPClient$CSL2.cleanUp();
                    }
                    return zCompletePendingCommand;
                } catch (IOException e) {
                    e = e;
                    fTPClient$CSL = fTPClient$CSL2;
                    outputStream = toNetASCIIOutputStream;
                    try {
                        IOUtils.closeQuietly(outputStream);
                        IOUtils.closeQuietly(socket_openDataConnection_);
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        fTPClient$CSL2 = fTPClient$CSL;
                        if (fTPClient$CSL2 != null) {
                            throw th;
                        }
                        this.cslDebug = fTPClient$CSL2.cleanUp();
                        throw th;
                    }
                }
            } catch (IOException e2) {
                e = e2;
                fTPClient$CSL = null;
            }
        } catch (Throwable th3) {
            th = th3;
            if (fTPClient$CSL2 != null) {
                throw th;
            }
            this.cslDebug = fTPClient$CSL2.cleanUp();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OutputStream _storeFileStream(String str, String str2) throws IOException {
        Socket socket_openDataConnection_ = _openDataConnection_(str, str2);
        if (socket_openDataConnection_ == null) {
            return null;
        }
        return new SocketOutputStream(socket_openDataConnection_, this.fileType == 0 ? new ToNetASCIIOutputStream(getBufferedOutputStream(socket_openDataConnection_.getOutputStream())) : socket_openDataConnection_.getOutputStream());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean abort() {
        return FTPReply.isPositiveCompletion(abor());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean allocate(int i) {
        return FTPReply.isPositiveCompletion(allo(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean appendFile(String str, InputStream inputStream) {
        return storeFile(FTPCmd.APPE, str, inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OutputStream appendFileStream(String str) {
        return storeFileStream(FTPCmd.APPE, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean changeToParentDirectory() {
        return FTPReply.isPositiveCompletion(cdup());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean changeWorkingDirectory(String str) {
        return FTPReply.isPositiveCompletion(cwd(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean completePendingCommand() {
        return FTPReply.isPositiveCompletion(getReply());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.Configurable
    public void configure(FTPClientConfig fTPClientConfig) {
        this.ftpClientConfig = fTPClientConfig;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createParser(String str) {
        if (this.entryParser == null || !(str == null || this.entryParserKey.equals(str))) {
            if (str != null) {
                this.entryParser = this.parserFactory.createFileEntryParser(str);
                this.entryParserKey = str;
                return;
            }
            FTPClientConfig fTPClientConfig = this.ftpClientConfig;
            if (fTPClientConfig != null && !fTPClientConfig.getServerSystemKey().isEmpty()) {
                this.entryParser = this.parserFactory.createFileEntryParser(this.ftpClientConfig);
                this.entryParserKey = this.ftpClientConfig.getServerSystemKey();
                return;
            }
            String systemTypeOverride = getSystemTypeOverride();
            FTPClientConfig fTPClientConfig2 = this.ftpClientConfig;
            FTPFileEntryParserFactory fTPFileEntryParserFactory = this.parserFactory;
            if (fTPClientConfig2 != null) {
                this.entryParser = fTPFileEntryParserFactory.createFileEntryParser(new FTPClientConfig(systemTypeOverride, this.ftpClientConfig));
            } else {
                this.entryParser = fTPFileEntryParserFactory.createFileEntryParser(systemTypeOverride);
            }
            this.entryParserKey = systemTypeOverride;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean deleteFile(String str) {
        return FTPReply.isPositiveCompletion(dele(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void disconnect() {
        super.disconnect();
        initDefaults();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean doCommand(String str, String str2) {
        return FTPReply.isPositiveCompletion(sendCommand(str, str2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] doCommandAsStrings(String str, String str2) {
        if (FTPReply.isPositiveCompletion(sendCommand(str, str2))) {
            return getReplyStrings();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void enterLocalActiveMode() {
        this.dataConnectionMode = 0;
        this.passiveHost = null;
        this.passivePort = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void enterLocalPassiveMode() {
        this.dataConnectionMode = 2;
        this.passiveHost = null;
        this.passivePort = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean enterRemoteActiveMode(InetAddress inetAddress, int i) {
        if (!FTPReply.isPositiveCompletion(port(inetAddress, i))) {
            return false;
        }
        this.dataConnectionMode = 1;
        this.passiveHost = null;
        this.passivePort = -1;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean enterRemotePassiveMode() throws MalformedServerReplyException {
        if (pasv() != 227) {
            return false;
        }
        this.dataConnectionMode = 3;
        _parsePassiveModeReply(this._replyLines.get(0));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String featureValue(String str) {
        String[] strArrFeatureValues = featureValues(str);
        if (strArrFeatureValues != null) {
            return strArrFeatureValues[0];
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] featureValues(String str) {
        Set<String> set;
        if (initFeatureMap() && (set = this.featuresMap.get(str.toUpperCase(Locale.ENGLISH))) != null) {
            return (String[]) set.toArray(NetConstants.EMPTY_STRING_ARRAY);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean features() {
        return FTPReply.isPositiveCompletion(feat());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getActivePort() {
        int i;
        int i2 = this.activeMinPort;
        if (i2 <= 0 || (i = this.activeMaxPort) < i2) {
            return 0;
        }
        return i == i2 ? i : this.random.nextInt((i - i2) + 1) + this.activeMinPort;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getAutodetectUTF8() {
        return this.autoDetectEncoding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBufferSize() {
        return this.bufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getControlKeepAliveReplyTimeout() {
        return DurationUtils.toMillisInt(this.controlKeepAliveReplyTimeout);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getControlKeepAliveReplyTimeoutDuration() {
        return this.controlKeepAliveReplyTimeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public long getControlKeepAliveTimeout() {
        return org.apache.commons.net.util.a.e(this.controlKeepAliveTimeout);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getControlKeepAliveTimeoutDuration() {
        return this.controlKeepAliveTimeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CopyStreamListener getCopyStreamListener() {
        return this.copyStreamListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int[] getCslDebug() {
        return this.cslDebug;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDataConnectionMode() {
        return this.dataConnectionMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getDataTimeout() {
        return this.dataTimeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPFileEntryParser getEntryParser() {
        return this.entryParser;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InetAddress getHostAddress() {
        InetAddress inetAddress = this.activeExternalHost;
        return inetAddress != null ? inetAddress : getLocalAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getListArguments(String str) {
        if (getListHiddenFiles()) {
            return str != null ? ai.onnxruntime.a.p(new StringBuilder(str.length() + 3), "-a ", str) : "-a";
        }
        return str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getListHiddenFiles() {
        return this.listHiddenFiles;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getModificationTime(String str) {
        if (FTPReply.isPositiveCompletion(mdtm(str))) {
            return getReplyString(0).substring(4);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getPassiveHost() {
        return this.passiveHost;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InetAddress getPassiveLocalIPAddress() {
        return this.passiveLocalHost;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPassivePort() {
        return this.passivePort;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getReceiveDataSocketBufferSize() {
        return this.receiveDataSocketBufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InetAddress getReportHostAddress() {
        InetAddress inetAddress = this.reportActiveExternalHost;
        return inetAddress != null ? inetAddress : getHostAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getRestartOffset() {
        return this.restartOffset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSendDataSocketBufferSize() {
        return this.sendDataSocketBufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getSize(String str) {
        if (FTPReply.isPositiveCompletion(size(str))) {
            return getReplyString(0).substring(4);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getStatus() {
        if (FTPReply.isPositiveCompletion(stat())) {
            return getReplyString();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public String getSystemName() {
        if (this.systemName == null && FTPReply.isPositiveCompletion(syst())) {
            ArrayList<String> arrayList = this._replyLines;
            this.systemName = arrayList.get(arrayList.size() - 1).substring(4);
        }
        return this.systemName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getSystemType() {
        if (this.systemName == null) {
            if (FTPReply.isPositiveCompletion(syst())) {
                ArrayList<String> arrayList = this._replyLines;
                this.systemName = arrayList.get(arrayList.size() - 1).substring(4);
            } else {
                String property = System.getProperty(FTP_SYSTEM_TYPE_DEFAULT);
                if (property == null) {
                    b.w(getReplyString(), "Unable to determine system type - response: ");
                    return null;
                }
                this.systemName = property;
            }
        }
        return this.systemName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getSystemTypeOverride() {
        String property;
        String property2 = System.getProperty(FTP_SYSTEM_TYPE);
        if (property2 == null) {
            property2 = getSystemType();
            Properties overrideProperties = getOverrideProperties();
            if (overrideProperties != null && (property = overrideProperties.getProperty(property2)) != null) {
                return property;
            }
        }
        return property2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasFeature(String str, String str2) {
        Set<String> set;
        if (initFeatureMap() && (set = this.featuresMap.get(str.toUpperCase(Locale.ENGLISH))) != null) {
            return set.contains(str2);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPListParseEngine initiateMListParsing(String str) {
        Socket socket_openDataConnection_ = _openDataConnection_(FTPCmd.MLSD, str);
        FTPListParseEngine fTPListParseEngine = new FTPListParseEngine(MLSxEntryParser.getInstance(), this.ftpClientConfig);
        if (socket_openDataConnection_ == null) {
            return fTPListParseEngine;
        }
        try {
            fTPListParseEngine.readServerList(socket_openDataConnection_.getInputStream(), getControlEncoding());
            return fTPListParseEngine;
        } finally {
            IOUtils.closeQuietly(socket_openDataConnection_);
            completePendingCommand();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isIpAddressFromPasvResponse() {
        return this.ipAddressFromPasvResponse;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isRemoteVerificationEnabled() {
        return this.remoteVerificationEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isUseEPSVwithIPv4() {
        return this.useEPSVwithIPv4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPFile[] listDirectories(String str) {
        return listFiles(str, FTPFileFilters.DIRECTORIES);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPFile[] listFiles(String str) {
        return initiateListParsing((String) null, str).getFiles();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String listHelp() {
        if (FTPReply.isPositiveCompletion(help())) {
            return getReplyString();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] listNames(String str) throws IOException {
        Socket socket_openDataConnection_ = _openDataConnection_(FTPCmd.NLST, getListArguments(str));
        if (socket_openDataConnection_ == null) {
            if (socket_openDataConnection_ != null) {
                socket_openDataConnection_.close();
            }
            return null;
        }
        try {
            InputStream inputStream = socket_openDataConnection_.getInputStream();
            try {
                List<String> lines = IOUtils.readLines(inputStream, getControlEncoding());
                if (inputStream != null) {
                    inputStream.close();
                }
                socket_openDataConnection_.close();
                if (completePendingCommand()) {
                    return (String[]) lines.toArray(NetConstants.EMPTY_STRING_ARRAY);
                }
                return null;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                socket_openDataConnection_.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean login(String str, String str2, String str3) {
        user(str);
        if (FTPReply.isPositiveCompletion(this._replyCode)) {
            return true;
        }
        if (!FTPReply.isPositiveIntermediate(this._replyCode)) {
            return false;
        }
        pass(str2);
        if (FTPReply.isPositiveCompletion(this._replyCode)) {
            return true;
        }
        if (FTPReply.isPositiveIntermediate(this._replyCode)) {
            return FTPReply.isPositiveCompletion(acct(str3));
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean logout() {
        return FTPReply.isPositiveCompletion(quit());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean makeDirectory(String str) {
        return FTPReply.isPositiveCompletion(mkd(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Calendar mdtmCalendar(String str) {
        String modificationTime = getModificationTime(str);
        if (modificationTime != null) {
            return MLSxEntryParser.parseGMTdateTime(modificationTime);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPFile mdtmFile(String str) {
        String modificationTime = getModificationTime(str);
        if (modificationTime == null) {
            return null;
        }
        FTPFile fTPFile = new FTPFile();
        fTPFile.setName(str);
        fTPFile.setRawListing(modificationTime);
        fTPFile.setTimestamp(MLSxEntryParser.parseGMTdateTime(modificationTime));
        return fTPFile;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Instant mdtmInstant(String str) {
        String modificationTime = getModificationTime(str);
        if (modificationTime != null) {
            return MLSxEntryParser.parseGmtInstant(modificationTime);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPFile[] mlistDir(String str) {
        return initiateMListParsing(str).getFiles();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPFile mlistFile(String str) throws MalformedServerReplyException {
        if (!FTPReply.isPositiveCompletion(sendCommand(FTPCmd.MLST, str))) {
            return null;
        }
        String replyString = getReplyString(1);
        if (replyString.charAt(0) != ' ') {
            replyString = " ".concat(replyString);
        }
        if (replyString.length() >= 3) {
            return MLSxEntryParser.parseEntry(replyString.replaceAll("^\\s+", HttpUrl.FRAGMENT_ENCODE_SET));
        }
        throw new MalformedServerReplyException(ai.onnxruntime.a.m("Invalid server reply (MLST): '", replyString, "'"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String printWorkingDirectory() {
        if (pwd() != 257) {
            return null;
        }
        ArrayList<String> arrayList = this._replyLines;
        return parsePathname(arrayList.get(arrayList.size() - 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean reinitialize() {
        rein();
        if (!FTPReply.isPositiveCompletion(this._replyCode) && (!FTPReply.isPositivePreliminary(this._replyCode) || !FTPReply.isPositiveCompletion(getReply()))) {
            return false;
        }
        initDefaults();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean remoteAppend(String str) {
        int i = this.dataConnectionMode;
        if (i == 1 || i == 3) {
            return FTPReply.isPositivePreliminary(appe(str));
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean remoteRetrieve(String str) {
        int i = this.dataConnectionMode;
        if (i == 1 || i == 3) {
            return FTPReply.isPositivePreliminary(retr(str));
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean remoteStore(String str) {
        int i = this.dataConnectionMode;
        if (i == 1 || i == 3) {
            return FTPReply.isPositivePreliminary(stor(str));
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean remoteStoreUnique() {
        int i = this.dataConnectionMode;
        if (i == 1 || i == 3) {
            return FTPReply.isPositivePreliminary(stou());
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean removeDirectory(String str) {
        return FTPReply.isPositiveCompletion(rmd(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean rename(String str, String str2) {
        if (FTPReply.isPositiveIntermediate(rnfr(str))) {
            return FTPReply.isPositiveCompletion(rnto(str2));
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean restart(long j) {
        this.restartOffset = 0L;
        return FTPReply.isPositiveIntermediate(rest(Long.toString(j)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean retrieveFile(String str, OutputStream outputStream) {
        return _retrieveFile(FTPCmd.RETR.getCommand(), str, outputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream retrieveFileStream(String str) {
        return _retrieveFileStream(FTPCmd.RETR.getCommand(), str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean sendNoOp() {
        return FTPReply.isPositiveCompletion(noop());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean sendSiteCommand(String str) {
        return FTPReply.isPositiveCompletion(site(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setActiveExternalIPAddress(String str) {
        this.activeExternalHost = InetAddress.getByName(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setActivePortRange(int i, int i2) {
        this.activeMinPort = i;
        this.activeMaxPort = i2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAutodetectUTF8(boolean z) {
        this.autoDetectEncoding = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBufferSize(int i) {
        this.bufferSize = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setControlKeepAliveReplyTimeout(int i) {
        this.controlKeepAliveReplyTimeout = e.o(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setControlKeepAliveTimeout(Duration duration) {
        this.controlKeepAliveTimeout = DurationUtils.zeroIfNull(duration);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCopyStreamListener(CopyStreamListener copyStreamListener) {
        this.copyStreamListener = copyStreamListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setDataTimeout(int i) {
        this.dataTimeout = e.o(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setFileStructure(int i) {
        if (!FTPReply.isPositiveCompletion(stru(i))) {
            return false;
        }
        this.fileStructure = i;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setFileTransferMode(int i) {
        if (!FTPReply.isPositiveCompletion(mode(i))) {
            return false;
        }
        this.fileTransferMode = i;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setFileType(int i) {
        if (!FTPReply.isPositiveCompletion(type(i))) {
            return false;
        }
        this.fileType = i;
        this.formatOrByteSize = 4;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIpAddressFromPasvResponse(boolean z) {
        this.ipAddressFromPasvResponse = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setListHiddenFiles(boolean z) {
        this.listHiddenFiles = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setModificationTime(String str, String str2) {
        return FTPReply.isPositiveCompletion(mfmt(str, str2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setParserFactory(FTPFileEntryParserFactory fTPFileEntryParserFactory) {
        this.parserFactory = fTPFileEntryParserFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPassiveLocalIPAddress(String str) {
        this.passiveLocalHost = InetAddress.getByName(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setPassiveNatWorkaround(boolean z) {
        this.passiveNatWorkaroundStrategy = z ? new FTPClient$NatServerResolverImpl(this) : null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPassiveNatWorkaroundStrategy(FTPClient$HostnameResolver fTPClient$HostnameResolver) {
        this.passiveNatWorkaroundStrategy = fTPClient$HostnameResolver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setReceieveDataSocketBufferSize(int i) {
        this.receiveDataSocketBufferSize = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRemoteVerificationEnabled(boolean z) {
        this.remoteVerificationEnabled = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setReportActiveExternalIPAddress(String str) {
        this.reportActiveExternalHost = InetAddress.getByName(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRestartOffset(long j) {
        if (j >= 0) {
            this.restartOffset = j;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSendDataSocketBufferSize(int i) {
        this.sendDataSocketBufferSize = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUseEPSVwithIPv4(boolean z) {
        this.useEPSVwithIPv4 = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean storeUniqueFile(InputStream inputStream) {
        return storeFile(FTPCmd.STOU, null, inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OutputStream storeUniqueFileStream() {
        return storeFileStream(FTPCmd.STOU, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean structureMount(String str) {
        return FTPReply.isPositiveCompletion(smnt(str));
    }

    public FTPFile[] listDirectories() {
        return listDirectories(null);
    }

    @Deprecated
    public void setControlKeepAliveTimeout(long j) {
        this.controlKeepAliveTimeout = kotlin.io.path.f.n(j);
    }

    public void setPassiveLocalIPAddress(InetAddress inetAddress) {
        this.passiveLocalHost = inetAddress;
    }

    public void setControlKeepAliveReplyTimeout(Duration duration) {
        this.controlKeepAliveReplyTimeout = DurationUtils.zeroIfNull(duration);
    }

    public void setDataTimeout(Duration duration) {
        this.dataTimeout = DurationUtils.zeroIfNull(duration);
    }

    public boolean storeUniqueFile(String str, InputStream inputStream) {
        return storeFile(FTPCmd.STOU, str, inputStream);
    }

    public OutputStream storeUniqueFileStream(String str) {
        return storeFileStream(FTPCmd.STOU, str);
    }

    public boolean allocate(int i, int i2) {
        return FTPReply.isPositiveCompletion(allo(i, i2));
    }

    public FTPFile[] mlistDir() {
        return mlistDir(null);
    }

    public boolean storeFile(String str, InputStream inputStream) {
        return storeFile(FTPCmd.STOR, str, inputStream);
    }

    public OutputStream storeFileStream(String str) {
        return storeFileStream(FTPCmd.STOR, str);
    }

    public boolean allocate(long j) {
        return FTPReply.isPositiveCompletion(allo(j));
    }

    public FTPFile[] listFiles() {
        return listFiles(null);
    }

    public FTPFile[] mlistDir(String str, FTPFileFilter fTPFileFilter) {
        return initiateMListParsing(str).getFiles(fTPFileFilter);
    }

    public boolean allocate(long j, int i) {
        return FTPReply.isPositiveCompletion(allo(j, i));
    }

    public FTPFile[] listFiles(String str, FTPFileFilter fTPFileFilter) {
        return initiateListParsing((String) null, str).getFiles(fTPFileFilter);
    }

    public String getStatus(String str) {
        if (FTPReply.isPositiveCompletion(stat(str))) {
            return getReplyString();
        }
        return null;
    }

    public String listHelp(String str) {
        if (FTPReply.isPositiveCompletion(help(str))) {
            return getReplyString();
        }
        return null;
    }

    public boolean setFileType(int i, int i2) {
        if (!FTPReply.isPositiveCompletion(type(i, i2))) {
            return false;
        }
        this.fileType = i;
        this.formatOrByteSize = i2;
        return true;
    }

    public boolean remoteStoreUnique(String str) {
        int i = this.dataConnectionMode;
        if (i == 1 || i == 3) {
            return FTPReply.isPositivePreliminary(stou(str));
        }
        return false;
    }

    public boolean hasFeature(String str) {
        if (initFeatureMap()) {
            return this.featuresMap.containsKey(str.toUpperCase(Locale.ENGLISH));
        }
        return false;
    }

    public boolean hasFeature(FTPCmd fTPCmd) {
        return hasFeature(fTPCmd.name());
    }

    public FTPListParseEngine initiateListParsing() {
        return initiateListParsing(null);
    }

    public FTPListParseEngine initiateListParsing(String str) {
        return initiateListParsing((String) null, str);
    }

    public FTPListParseEngine initiateListParsing(String str, String str2) {
        createParser(str);
        return initiateListParsing(this.entryParser, str2);
    }

    public FTPListParseEngine initiateMListParsing() {
        return initiateMListParsing(null);
    }

    public boolean login(String str, String str2) {
        user(str);
        if (FTPReply.isPositiveCompletion(this._replyCode)) {
            return true;
        }
        if (FTPReply.isPositiveIntermediate(this._replyCode)) {
            return FTPReply.isPositiveCompletion(pass(str2));
        }
        return false;
    }

    public String[] listNames() {
        return listNames(null);
    }

    @Override // org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void _connectAction_() throws SocketException {
        _connectAction_(null);
    }

    @Deprecated
    public Socket _openDataConnection_(int i, String str) {
        return _openDataConnection_(FTPCommand.getCommand(i), str);
    }

    public Socket _openDataConnection_(FTPCmd fTPCmd, String str) {
        return _openDataConnection_(fTPCmd.getCommand(), str);
    }
}
