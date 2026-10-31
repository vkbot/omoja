package org.apache.commons.net.ftp;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import ai.onnxruntime.C0077d;
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
import java.net.SocketTimeoutException;
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
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.ftp.parser.DefaultFTPFileEntryParserFactory;
import org.apache.commons.net.ftp.parser.FTPFileEntryParserFactory;
import org.apache.commons.net.ftp.parser.MLSxEntryParser;
import org.apache.commons.net.p162io.CRLFLineReader;
import org.apache.commons.net.p162io.CopyStreamAdapter;
import org.apache.commons.net.p162io.CopyStreamEvent;
import org.apache.commons.net.p162io.CopyStreamListener;
import org.apache.commons.net.p162io.FromNetASCIIInputStream;
import org.apache.commons.net.p162io.SocketInputStream;
import org.apache.commons.net.p162io.SocketOutputStream;
import org.apache.commons.net.p162io.ToNetASCIIOutputStream;
import org.apache.commons.net.p162io.Util;
import org.apache.commons.net.util.NetConstants;
import org.apache.commons.p161io.FilenameUtils;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
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
    private Duration dataTimeout = Duration.ofMillis(-1);
    private final Random random = new Random();
    private boolean remoteVerificationEnabled = true;
    private FTPFileEntryParserFactory parserFactory = new DefaultFTPFileEntryParserFactory();
    private Duration controlKeepAliveTimeout = Duration.ZERO;
    private Duration controlKeepAliveReplyTimeout = Duration.ofSeconds(1);
    private HostnameResolver passiveNatWorkaroundStrategy = new NatServerResolverImpl(this);
    private boolean ipAddressFromPasvResponse = Boolean.getBoolean(FTP_IP_ADDRESS_FROM_PASV_RESPONSE);

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface HostnameResolver {
        String resolve(String str);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class NatServerResolverImpl implements HostnameResolver {
        private final FTPClient client;

        public NatServerResolverImpl(FTPClient fTPClient) {
            this.client = fTPClient;
        }

        @Override // org.apache.commons.net.ftp.FTPClient.HostnameResolver
        public String resolve(String str) {
            if (!InetAddress.getByName(str).isSiteLocalAddress()) {
                return str;
            }
            InetAddress remoteAddress = this.client.getRemoteAddress();
            return !remoteAddress.isSiteLocalAddress() ? remoteAddress.getHostAddress() : str;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class PropertiesSingleton {
        static final Properties PROPERTIES = FTPClient.loadResourceProperties(FTPClient.SYSTEM_TYPE_PROPERTIES);

        private PropertiesSingleton() {
        }
    }

    public FTPClient() {
        initDefaults();
    }

    private InputStream getBufferedInputStream(InputStream inputStream) {
        return this.bufferSize > 0 ? new BufferedInputStream(inputStream, this.bufferSize) : new BufferedInputStream(inputStream);
    }

    private OutputStream getBufferedOutputStream(OutputStream outputStream) {
        return this.bufferSize > 0 ? new BufferedOutputStream(outputStream, this.bufferSize) : new BufferedOutputStream(outputStream);
    }

    private static Properties getOverrideProperties() {
        return PropertiesSingleton.PROPERTIES;
    }

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
        this.entryParserKey = "";
        this.featuresMap = null;
    }

    private boolean initFeatureMap() {
        String strSubstring;
        String strSubstring2;
        if (this.featuresMap == null) {
            int iFeat = feat();
            int i10 = 0;
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
            while (i10 < size) {
                String str = arrayList.get(i10);
                i10++;
                String str2 = str;
                if (str2.startsWith(" ")) {
                    int iIndexOf = str2.indexOf(32, 1);
                    if (iIndexOf > 0) {
                        strSubstring = str2.substring(1, iIndexOf);
                        strSubstring2 = str2.substring(iIndexOf + 1);
                    } else {
                        strSubstring = str2.substring(1);
                        strSubstring2 = "";
                    }
                    this.featuresMap.computeIfAbsent(strSubstring.toUpperCase(Locale.ENGLISH), new C0077d(6)).add(strSubstring2);
                }
            }
        }
        return true;
    }

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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Set lambda$initFeatureMap$0(String str) {
        return new HashSet();
    }

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
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th;
                        } catch (IOException unused) {
                            return properties;
                        }
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

    public static String parsePathname(String str) {
        String strSubstring = str.substring(4);
        if (!strSubstring.startsWith("\"")) {
            return strSubstring;
        }
        StringBuilder sb = new StringBuilder(strSubstring.length());
        boolean z9 = false;
        for (int i10 = 1; i10 < strSubstring.length(); i10++) {
            char cCharAt = strSubstring.charAt(i10);
            if (cCharAt != '\"') {
                if (z9) {
                    return sb.toString();
                }
                sb.append(cCharAt);
            } else if (z9) {
                sb.append(cCharAt);
                z9 = false;
            } else {
                z9 = true;
            }
        }
        return z9 ? sb.toString() : strSubstring;
    }

    private boolean storeFile(FTPCmd fTPCmd, String str, InputStream inputStream) {
        return _storeFile(fTPCmd.getCommand(), str, inputStream);
    }

    private OutputStream storeFileStream(FTPCmd fTPCmd, String str) {
        return _storeFileStream(fTPCmd.getCommand(), str);
    }

    private Socket wrapOnDeflate(Socket socket) {
        return this.fileTransferMode != 13 ? socket : new DeflateSocket(socket);
    }

    @Override // org.apache.commons.net.ftp.FTP
    public void _connectAction_(Reader reader) {
        super._connectAction_(reader);
        initDefaults();
        if (this.autoDetectEncoding) {
            ArrayList arrayList = new ArrayList(this._replyLines);
            int i10 = this._replyCode;
            Charset charset = StandardCharsets.UTF_8;
            if (hasFeature("UTF8") || hasFeature(charset.name())) {
                setControlEncoding(charset);
                this._controlInput_ = new CRLFLineReader(new InputStreamReader(this._input_, getControlEncoding()));
                this._controlOutput_ = new BufferedWriter(new OutputStreamWriter(this._output_, getControlEncoding()));
            }
            this._replyLines.clear();
            this._replyLines.addAll(arrayList);
            this._replyCode = i10;
            this._newReplyString = true;
        }
    }

    public Socket _openDataConnection_(String str, String str2) throws IOException {
        Socket socketWrapOnDeflate;
        int i10 = this.dataConnectionMode;
        if (i10 != 0 && i10 != 2) {
            return null;
        }
        boolean z9 = getRemoteAddress() instanceof Inet6Address;
        int millisInt = DurationUtils.toMillisInt(this.dataTimeout);
        if (this.dataConnectionMode == 0) {
            ServerSocket serverSocketCreateServerSocket = this._serverSocketFactory_.createServerSocket(getActivePort(), 1, getHostAddress());
            try {
                if (z9) {
                    if (!FTPReply.isPositiveCompletion(eprt(getReportHostAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                        serverSocketCreateServerSocket.close();
                        return null;
                    }
                } else if (!FTPReply.isPositiveCompletion(port(getReportHostAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                    serverSocketCreateServerSocket.close();
                    return null;
                }
                long j10 = this.restartOffset;
                if ((j10 > 0 && !restart(j10)) || !FTPReply.isPositivePreliminary(sendCommand(str, str2))) {
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
                int i11 = this.receiveDataSocketBufferSize;
                if (i11 > 0) {
                    socketWrapOnDeflate.setReceiveBufferSize(i11);
                }
                int i12 = this.sendDataSocketBufferSize;
                if (i12 > 0) {
                    socketWrapOnDeflate.setSendBufferSize(i12);
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
            if ((isUseEPSVwithIPv4() || z9) && epsv() == 229) {
                _parseExtendedPassiveModeReply(this._replyLines.get(0));
            } else {
                if (z9 || pasv() != 227) {
                    return null;
                }
                _parsePassiveModeReply(this._replyLines.get(0));
            }
            Socket socketWrapOnDeflate2 = wrapOnDeflate(this._socketFactory_.createSocket());
            int i13 = this.receiveDataSocketBufferSize;
            if (i13 > 0) {
                socketWrapOnDeflate2.setReceiveBufferSize(i13);
            }
            int i14 = this.sendDataSocketBufferSize;
            if (i14 > 0) {
                socketWrapOnDeflate2.setSendBufferSize(i14);
            }
            if (this.passiveLocalHost != null) {
                socketWrapOnDeflate2.bind(new InetSocketAddress(this.passiveLocalHost, 0));
            }
            if (millisInt >= 0) {
                socketWrapOnDeflate2.setSoTimeout(millisInt);
            }
            socketWrapOnDeflate2.connect(new InetSocketAddress(this.passiveHost, this.passivePort), this.connectTimeout);
            long j11 = this.restartOffset;
            if ((j11 > 0 && !restart(j11)) || !FTPReply.isPositivePreliminary(sendCommand(str, str2))) {
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
        C0075b.m188m("Host attempting data connection ", hostAddress, " is not same as server ", hostAddress2);
        return null;
    }

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
            int i10 = Integer.parseInt(strTrim.substring(3, strTrim.length() - 1));
            this.passiveHost = getRemoteAddress().getHostAddress();
            this.passivePort = i10;
        } catch (NumberFormatException unused) {
            throw new MalformedServerReplyException("Could not parse extended passive host information.\nServer Reply: ".concat(strTrim));
        }
    }

    public void _parsePassiveModeReply(String str) throws MalformedServerReplyException {
        Matcher matcher = PARMS_PAT.matcher(str);
        if (!matcher.find()) {
            throw new MalformedServerReplyException(AbstractC0074a.m161l("Could not parse passive host information.\nServer Reply: ", str));
        }
        String hostAddress = "0,0,0,0".equals(matcher.group(1)) ? this._socket_.getInetAddress().getHostAddress() : matcher.group(1).replace(',', FilenameUtils.EXTENSION_SEPARATOR);
        try {
            int i10 = Integer.parseInt(matcher.group(3)) | (Integer.parseInt(matcher.group(2)) << 8);
            if (isIpAddressFromPasvResponse()) {
                HostnameResolver hostnameResolver = this.passiveNatWorkaroundStrategy;
                if (hostnameResolver != null) {
                    try {
                        String strResolve = hostnameResolver.resolve(hostAddress);
                        if (!hostAddress.equals(strResolve)) {
                            fireReplyReceived(0, "[Replacing PASV mode reply address " + this.passiveHost + " with " + strResolve + "]\n");
                            hostAddress = strResolve;
                        }
                    } catch (UnknownHostException unused) {
                        throw new MalformedServerReplyException(AbstractC0074a.m161l("Could not parse passive host information.\nServer Reply: ", str));
                    }
                }
            } else {
                Socket socket = this._socket_;
                hostAddress = socket == null ? null : socket.getInetAddress().getHostAddress();
            }
            this.passiveHost = hostAddress;
            this.passivePort = i10;
        } catch (NumberFormatException unused2) {
            throw new MalformedServerReplyException(AbstractC0074a.m161l("Could not parse passive port information.\nServer Reply: ", str));
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:? A[SYNTHETIC] */
    public boolean _retrieveFile(String str, String str2, OutputStream outputStream) throws Throwable {
        CSL csl;
        Throwable th;
        Socket socket_openDataConnection_ = _openDataConnection_(str, str2);
        if (socket_openDataConnection_ == null) {
            return false;
        }
        InputStream inputStream = null;
        CSL csl2 = null;
        try {
            InputStream fromNetASCIIInputStream = this.fileType == 0 ? new FromNetASCIIInputStream(getBufferedInputStream(socket_openDataConnection_.getInputStream())) : getBufferedInputStream(socket_openDataConnection_.getInputStream());
            try {
                csl2 = DurationUtils.isPositive(this.controlKeepAliveTimeout) ? new CSL(this, this.controlKeepAliveTimeout, this.controlKeepAliveReplyTimeout) : null;
                Util.copyStream(fromNetASCIIInputStream, outputStream, getBufferSize(), -1L, mergeListeners(csl2), false);
                try {
                    IOUtils.closeQuietly(fromNetASCIIInputStream);
                    boolean zCompletePendingCommand = completePendingCommand();
                    IOUtils.closeQuietly(socket_openDataConnection_);
                    if (csl2 != null) {
                        this.cslDebug = csl2.cleanUp();
                    }
                    return zCompletePendingCommand;
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(socket_openDataConnection_);
                    if (csl2 != null) {
                        throw th;
                    }
                    this.cslDebug = csl2.cleanUp();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                csl = csl2;
                inputStream = fromNetASCIIInputStream;
                try {
                    IOUtils.closeQuietly(inputStream);
                    throw th;
                } catch (Throwable th4) {
                    CSL csl3 = csl;
                    th = th4;
                    csl2 = csl3;
                    IOUtils.closeQuietly(socket_openDataConnection_);
                    if (csl2 != null) {
                        throw th;
                    }
                    this.cslDebug = csl2.cleanUp();
                    throw th;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            csl = null;
        }
    }

    public InputStream _retrieveFileStream(String str, String str2) throws IOException {
        Socket socket_openDataConnection_ = _openDataConnection_(str, str2);
        if (socket_openDataConnection_ == null) {
            return null;
        }
        return new SocketInputStream(socket_openDataConnection_, this.fileType == 0 ? new FromNetASCIIInputStream(getBufferedInputStream(socket_openDataConnection_.getInputStream())) : socket_openDataConnection_.getInputStream());
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0072  */
    /* JADX WARN: Code duplicated, block: B:38:? A[SYNTHETIC] */
    public boolean _storeFile(String str, String str2, InputStream inputStream) throws Throwable {
        Throwable th;
        CSL csl;
        Socket socket_openDataConnection_ = _openDataConnection_(str, str2);
        if (socket_openDataConnection_ == null) {
            return false;
        }
        CSL csl2 = null;
        csl2 = null;
        OutputStream outputStream = null;
        try {
            try {
                OutputStream toNetASCIIOutputStream = this.fileType == 0 ? new ToNetASCIIOutputStream(getBufferedOutputStream(socket_openDataConnection_.getOutputStream())) : getBufferedOutputStream(socket_openDataConnection_.getOutputStream());
                try {
                    csl2 = DurationUtils.isPositive(this.controlKeepAliveTimeout) ? new CSL(this, this.controlKeepAliveTimeout, this.controlKeepAliveReplyTimeout) : null;
                    Util.copyStream(inputStream, toNetASCIIOutputStream, getBufferSize(), -1L, mergeListeners(csl2), false);
                    toNetASCIIOutputStream.close();
                    socket_openDataConnection_.close();
                    boolean zCompletePendingCommand = completePendingCommand();
                    if (csl2 != null) {
                        this.cslDebug = csl2.cleanUp();
                    }
                    return zCompletePendingCommand;
                } catch (IOException e) {
                    e = e;
                    csl = csl2;
                    outputStream = toNetASCIIOutputStream;
                    try {
                        IOUtils.closeQuietly(outputStream);
                        IOUtils.closeQuietly(socket_openDataConnection_);
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        csl2 = csl;
                        if (csl2 != null) {
                            throw th;
                        }
                        this.cslDebug = csl2.cleanUp();
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                if (csl2 != null) {
                    throw th;
                }
                this.cslDebug = csl2.cleanUp();
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            csl = null;
        }
    }

    public OutputStream _storeFileStream(String str, String str2) throws IOException {
        Socket socket_openDataConnection_ = _openDataConnection_(str, str2);
        if (socket_openDataConnection_ == null) {
            return null;
        }
        return new SocketOutputStream(socket_openDataConnection_, this.fileType == 0 ? new ToNetASCIIOutputStream(getBufferedOutputStream(socket_openDataConnection_.getOutputStream())) : socket_openDataConnection_.getOutputStream());
    }

    public boolean abort() {
        return FTPReply.isPositiveCompletion(abor());
    }

    public boolean allocate(int i10) {
        return FTPReply.isPositiveCompletion(allo(i10));
    }

    public boolean appendFile(String str, InputStream inputStream) {
        return storeFile(FTPCmd.APPE, str, inputStream);
    }

    public OutputStream appendFileStream(String str) {
        return storeFileStream(FTPCmd.APPE, str);
    }

    public boolean changeToParentDirectory() {
        return FTPReply.isPositiveCompletion(cdup());
    }

    public boolean changeWorkingDirectory(String str) {
        return FTPReply.isPositiveCompletion(cwd(str));
    }

    public boolean completePendingCommand() {
        return FTPReply.isPositiveCompletion(getReply());
    }

    @Override // org.apache.commons.net.ftp.Configurable
    public void configure(FTPClientConfig fTPClientConfig) {
        this.ftpClientConfig = fTPClientConfig;
    }

    public void createParser(String str) throws IOException {
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

    public boolean deleteFile(String str) {
        return FTPReply.isPositiveCompletion(dele(str));
    }

    @Override // org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void disconnect() {
        super.disconnect();
        initDefaults();
    }

    public boolean doCommand(String str, String str2) {
        return FTPReply.isPositiveCompletion(sendCommand(str, str2));
    }

    public String[] doCommandAsStrings(String str, String str2) {
        if (FTPReply.isPositiveCompletion(sendCommand(str, str2))) {
            return getReplyStrings();
        }
        return null;
    }

    public void enterLocalActiveMode() {
        this.dataConnectionMode = 0;
        this.passiveHost = null;
        this.passivePort = -1;
    }

    public void enterLocalPassiveMode() {
        this.dataConnectionMode = 2;
        this.passiveHost = null;
        this.passivePort = -1;
    }

    public boolean enterRemoteActiveMode(InetAddress inetAddress, int i10) {
        if (!FTPReply.isPositiveCompletion(port(inetAddress, i10))) {
            return false;
        }
        this.dataConnectionMode = 1;
        this.passiveHost = null;
        this.passivePort = -1;
        return true;
    }

    public boolean enterRemotePassiveMode() throws MalformedServerReplyException {
        if (pasv() != 227) {
            return false;
        }
        this.dataConnectionMode = 3;
        _parsePassiveModeReply(this._replyLines.get(0));
        return true;
    }

    public String featureValue(String str) {
        String[] strArrFeatureValues = featureValues(str);
        if (strArrFeatureValues != null) {
            return strArrFeatureValues[0];
        }
        return null;
    }

    public String[] featureValues(String str) {
        Set<String> set;
        if (initFeatureMap() && (set = this.featuresMap.get(str.toUpperCase(Locale.ENGLISH))) != null) {
            return (String[]) set.toArray(NetConstants.EMPTY_STRING_ARRAY);
        }
        return null;
    }

    public boolean features() {
        return FTPReply.isPositiveCompletion(feat());
    }

    public int getActivePort() {
        int i10;
        int i11 = this.activeMinPort;
        if (i11 <= 0 || (i10 = this.activeMaxPort) < i11) {
            return 0;
        }
        return i10 == i11 ? i10 : this.random.nextInt((i10 - i11) + 1) + this.activeMinPort;
    }

    public boolean getAutodetectUTF8() {
        return this.autoDetectEncoding;
    }

    public int getBufferSize() {
        return this.bufferSize;
    }

    @Deprecated
    public int getControlKeepAliveReplyTimeout() {
        return DurationUtils.toMillisInt(this.controlKeepAliveReplyTimeout);
    }

    public Duration getControlKeepAliveReplyTimeoutDuration() {
        return this.controlKeepAliveReplyTimeout;
    }

    @Deprecated
    public long getControlKeepAliveTimeout() {
        return this.controlKeepAliveTimeout.getSeconds();
    }

    public Duration getControlKeepAliveTimeoutDuration() {
        return this.controlKeepAliveTimeout;
    }

    public CopyStreamListener getCopyStreamListener() {
        return this.copyStreamListener;
    }

    @Deprecated
    public int[] getCslDebug() {
        return this.cslDebug;
    }

    public int getDataConnectionMode() {
        return this.dataConnectionMode;
    }

    public Duration getDataTimeout() {
        return this.dataTimeout;
    }

    public FTPFileEntryParser getEntryParser() {
        return this.entryParser;
    }

    public InetAddress getHostAddress() {
        InetAddress inetAddress = this.activeExternalHost;
        return inetAddress != null ? inetAddress : getLocalAddress();
    }

    public String getListArguments(String str) {
        if (getListHiddenFiles()) {
            return str != null ? AbstractC0074a.m165p(new StringBuilder(str.length() + 3), "-a ", str) : "-a";
        }
        return str;
    }

    public boolean getListHiddenFiles() {
        return this.listHiddenFiles;
    }

    public String getModificationTime(String str) {
        if (FTPReply.isPositiveCompletion(mdtm(str))) {
            return getReplyString(0).substring(4);
        }
        return null;
    }

    public String getPassiveHost() {
        return this.passiveHost;
    }

    public InetAddress getPassiveLocalIPAddress() {
        return this.passiveLocalHost;
    }

    public int getPassivePort() {
        return this.passivePort;
    }

    public int getReceiveDataSocketBufferSize() {
        return this.receiveDataSocketBufferSize;
    }

    public InetAddress getReportHostAddress() {
        InetAddress inetAddress = this.reportActiveExternalHost;
        return inetAddress != null ? inetAddress : getHostAddress();
    }

    public long getRestartOffset() {
        return this.restartOffset;
    }

    public int getSendDataSocketBufferSize() {
        return this.sendDataSocketBufferSize;
    }

    public String getSize(String str) {
        if (FTPReply.isPositiveCompletion(size(str))) {
            return getReplyString(0).substring(4);
        }
        return null;
    }

    public String getStatus() {
        if (FTPReply.isPositiveCompletion(stat())) {
            return getReplyString();
        }
        return null;
    }

    @Deprecated
    public String getSystemName() {
        if (this.systemName == null && FTPReply.isPositiveCompletion(syst())) {
            ArrayList<String> arrayList = this._replyLines;
            this.systemName = arrayList.get(arrayList.size() - 1).substring(4);
        }
        return this.systemName;
    }

    public String getSystemType() throws IOException {
        if (this.systemName == null) {
            if (FTPReply.isPositiveCompletion(syst())) {
                ArrayList<String> arrayList = this._replyLines;
                this.systemName = arrayList.get(arrayList.size() - 1).substring(4);
            } else {
                String property = System.getProperty(FTP_SYSTEM_TYPE_DEFAULT);
                if (property == null) {
                    C0075b.m198w(getReplyString(), "Unable to determine system type - response: ");
                    return null;
                }
                this.systemName = property;
            }
        }
        return this.systemName;
    }

    public String getSystemTypeOverride() throws IOException {
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

    public boolean hasFeature(String str, String str2) {
        Set<String> set;
        if (initFeatureMap() && (set = this.featuresMap.get(str.toUpperCase(Locale.ENGLISH))) != null) {
            return set.contains(str2);
        }
        return false;
    }

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

    public boolean isIpAddressFromPasvResponse() {
        return this.ipAddressFromPasvResponse;
    }

    public boolean isRemoteVerificationEnabled() {
        return this.remoteVerificationEnabled;
    }

    public boolean isUseEPSVwithIPv4() {
        return this.useEPSVwithIPv4;
    }

    public FTPFile[] listDirectories(String str) {
        return listFiles(str, FTPFileFilters.DIRECTORIES);
    }

    public FTPFile[] listFiles(String str) {
        return initiateListParsing((String) null, str).getFiles();
    }

    public String listHelp() {
        if (FTPReply.isPositiveCompletion(help())) {
            return getReplyString();
        }
        return null;
    }

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

    public boolean logout() {
        return FTPReply.isPositiveCompletion(quit());
    }

    public boolean makeDirectory(String str) {
        return FTPReply.isPositiveCompletion(mkd(str));
    }

    public Calendar mdtmCalendar(String str) {
        String modificationTime = getModificationTime(str);
        if (modificationTime != null) {
            return MLSxEntryParser.parseGMTdateTime(modificationTime);
        }
        return null;
    }

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

    public Instant mdtmInstant(String str) {
        String modificationTime = getModificationTime(str);
        if (modificationTime != null) {
            return MLSxEntryParser.parseGmtInstant(modificationTime);
        }
        return null;
    }

    public FTPFile[] mlistDir(String str) {
        return initiateMListParsing(str).getFiles();
    }

    public FTPFile mlistFile(String str) throws MalformedServerReplyException {
        if (!FTPReply.isPositiveCompletion(sendCommand(FTPCmd.MLST, str))) {
            return null;
        }
        String replyString = getReplyString(1);
        if (replyString.charAt(0) != ' ') {
            replyString = " ".concat(replyString);
        }
        if (replyString.length() >= 3) {
            return MLSxEntryParser.parseEntry(replyString.replaceAll("^\\s+", ""));
        }
        throw new MalformedServerReplyException(AbstractC0074a.m162m("Invalid server reply (MLST): '", replyString, "'"));
    }

    public String printWorkingDirectory() {
        if (pwd() != 257) {
            return null;
        }
        ArrayList<String> arrayList = this._replyLines;
        return parsePathname(arrayList.get(arrayList.size() - 1));
    }

    public boolean reinitialize() {
        rein();
        if (!FTPReply.isPositiveCompletion(this._replyCode) && (!FTPReply.isPositivePreliminary(this._replyCode) || !FTPReply.isPositiveCompletion(getReply()))) {
            return false;
        }
        initDefaults();
        return true;
    }

    public boolean remoteAppend(String str) {
        int i10 = this.dataConnectionMode;
        if (i10 == 1 || i10 == 3) {
            return FTPReply.isPositivePreliminary(appe(str));
        }
        return false;
    }

    public boolean remoteRetrieve(String str) {
        int i10 = this.dataConnectionMode;
        if (i10 == 1 || i10 == 3) {
            return FTPReply.isPositivePreliminary(retr(str));
        }
        return false;
    }

    public boolean remoteStore(String str) {
        int i10 = this.dataConnectionMode;
        if (i10 == 1 || i10 == 3) {
            return FTPReply.isPositivePreliminary(stor(str));
        }
        return false;
    }

    public boolean remoteStoreUnique() {
        int i10 = this.dataConnectionMode;
        if (i10 == 1 || i10 == 3) {
            return FTPReply.isPositivePreliminary(stou());
        }
        return false;
    }

    public boolean removeDirectory(String str) {
        return FTPReply.isPositiveCompletion(rmd(str));
    }

    public boolean rename(String str, String str2) {
        if (FTPReply.isPositiveIntermediate(rnfr(str))) {
            return FTPReply.isPositiveCompletion(rnto(str2));
        }
        return false;
    }

    public boolean restart(long j10) {
        this.restartOffset = 0L;
        return FTPReply.isPositiveIntermediate(rest(Long.toString(j10)));
    }

    public boolean retrieveFile(String str, OutputStream outputStream) {
        return _retrieveFile(FTPCmd.RETR.getCommand(), str, outputStream);
    }

    public InputStream retrieveFileStream(String str) {
        return _retrieveFileStream(FTPCmd.RETR.getCommand(), str);
    }

    public boolean sendNoOp() {
        return FTPReply.isPositiveCompletion(noop());
    }

    public boolean sendSiteCommand(String str) {
        return FTPReply.isPositiveCompletion(site(str));
    }

    public void setActiveExternalIPAddress(String str) {
        this.activeExternalHost = InetAddress.getByName(str);
    }

    public void setActivePortRange(int i10, int i11) {
        this.activeMinPort = i10;
        this.activeMaxPort = i11;
    }

    public void setAutodetectUTF8(boolean z9) {
        this.autoDetectEncoding = z9;
    }

    public void setBufferSize(int i10) {
        this.bufferSize = i10;
    }

    @Deprecated
    public void setControlKeepAliveReplyTimeout(int i10) {
        this.controlKeepAliveReplyTimeout = Duration.ofMillis(i10);
    }

    public void setControlKeepAliveTimeout(Duration duration) {
        this.controlKeepAliveTimeout = DurationUtils.zeroIfNull(duration);
    }

    public void setCopyStreamListener(CopyStreamListener copyStreamListener) {
        this.copyStreamListener = copyStreamListener;
    }

    @Deprecated
    public void setDataTimeout(int i10) {
        this.dataTimeout = Duration.ofMillis(i10);
    }

    public boolean setFileStructure(int i10) {
        if (!FTPReply.isPositiveCompletion(stru(i10))) {
            return false;
        }
        this.fileStructure = i10;
        return true;
    }

    public boolean setFileTransferMode(int i10) {
        if (!FTPReply.isPositiveCompletion(mode(i10))) {
            return false;
        }
        this.fileTransferMode = i10;
        return true;
    }

    public boolean setFileType(int i10) {
        if (!FTPReply.isPositiveCompletion(type(i10))) {
            return false;
        }
        this.fileType = i10;
        this.formatOrByteSize = 4;
        return true;
    }

    public void setIpAddressFromPasvResponse(boolean z9) {
        this.ipAddressFromPasvResponse = z9;
    }

    public void setListHiddenFiles(boolean z9) {
        this.listHiddenFiles = z9;
    }

    public boolean setModificationTime(String str, String str2) {
        return FTPReply.isPositiveCompletion(mfmt(str, str2));
    }

    public void setParserFactory(FTPFileEntryParserFactory fTPFileEntryParserFactory) {
        this.parserFactory = fTPFileEntryParserFactory;
    }

    public void setPassiveLocalIPAddress(String str) {
        this.passiveLocalHost = InetAddress.getByName(str);
    }

    @Deprecated
    public void setPassiveNatWorkaround(boolean z9) {
        this.passiveNatWorkaroundStrategy = z9 ? new NatServerResolverImpl(this) : null;
    }

    public void setPassiveNatWorkaroundStrategy(HostnameResolver hostnameResolver) {
        this.passiveNatWorkaroundStrategy = hostnameResolver;
    }

    public void setReceieveDataSocketBufferSize(int i10) {
        this.receiveDataSocketBufferSize = i10;
    }

    public void setRemoteVerificationEnabled(boolean z9) {
        this.remoteVerificationEnabled = z9;
    }

    public void setReportActiveExternalIPAddress(String str) {
        this.reportActiveExternalHost = InetAddress.getByName(str);
    }

    public void setRestartOffset(long j10) {
        if (j10 >= 0) {
            this.restartOffset = j10;
        }
    }

    public void setSendDataSocketBufferSize(int i10) {
        this.sendDataSocketBufferSize = i10;
    }

    public void setUseEPSVwithIPv4(boolean z9) {
        this.useEPSVwithIPv4 = z9;
    }

    public boolean storeUniqueFile(InputStream inputStream) {
        return storeFile(FTPCmd.STOU, null, inputStream);
    }

    public OutputStream storeUniqueFileStream() {
        return storeFileStream(FTPCmd.STOU, null);
    }

    public boolean structureMount(String str) {
        return FTPReply.isPositiveCompletion(smnt(str));
    }

    public FTPFile[] listDirectories() {
        return listDirectories(null);
    }

    @Deprecated
    public void setControlKeepAliveTimeout(long j10) {
        this.controlKeepAliveTimeout = Duration.ofSeconds(j10);
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

    public boolean allocate(int i10, int i11) {
        return FTPReply.isPositiveCompletion(allo(i10, i11));
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

    public boolean allocate(long j10) {
        return FTPReply.isPositiveCompletion(allo(j10));
    }

    public FTPFile[] listFiles() {
        return listFiles(null);
    }

    public FTPFile[] mlistDir(String str, FTPFileFilter fTPFileFilter) {
        return initiateMListParsing(str).getFiles(fTPFileFilter);
    }

    public boolean allocate(long j10, int i10) {
        return FTPReply.isPositiveCompletion(allo(j10, i10));
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

    public boolean setFileType(int i10, int i11) {
        if (!FTPReply.isPositiveCompletion(type(i10, i11))) {
            return false;
        }
        this.fileType = i10;
        this.formatOrByteSize = i11;
        return true;
    }

    public boolean remoteStoreUnique(String str) {
        int i10 = this.dataConnectionMode;
        if (i10 == 1 || i10 == 3) {
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

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class CSL implements CopyStreamListener {
        private int acksAcked;
        private final int currentSoTimeoutMillis;
        private final long idleMillis;
        private int ioErrors;
        private long lastIdleTimeMillis = System.currentTimeMillis();
        private int notAcked;
        private final FTPClient parent;

        public CSL(FTPClient fTPClient, Duration duration, Duration duration2) throws SocketException {
            this.idleMillis = duration.toMillis();
            this.parent = fTPClient;
            this.currentSoTimeoutMillis = fTPClient.getSoTimeout();
            fTPClient.setSoTimeout(DurationUtils.toMillisInt(duration2));
        }

        @Override // org.apache.commons.net.p162io.CopyStreamListener
        public void bytesTransferred(long j10, int i10, long j11) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.lastIdleTimeMillis > this.idleMillis) {
                try {
                    this.parent.__noop();
                    this.acksAcked++;
                } catch (SocketTimeoutException unused) {
                    this.notAcked++;
                } catch (IOException unused2) {
                    this.ioErrors++;
                }
                this.lastIdleTimeMillis = jCurrentTimeMillis;
            }
        }

        public int[] cleanUp() throws SocketException {
            FTPClient fTPClient;
            int i10 = this.notAcked;
            while (true) {
                try {
                    int i11 = this.notAcked;
                    fTPClient = this.parent;
                    if (i11 <= 0) {
                        break;
                    }
                    fTPClient.getReply();
                    this.notAcked--;
                } catch (SocketTimeoutException unused) {
                    this.parent.setSoTimeout(this.currentSoTimeoutMillis);
                } catch (Throwable th) {
                    this.parent.setSoTimeout(this.currentSoTimeoutMillis);
                    throw th;
                }
            }
            fTPClient.setSoTimeout(this.currentSoTimeoutMillis);
            return new int[]{this.acksAcked, i10, this.notAcked, this.ioErrors};
        }

        @Override // org.apache.commons.net.p162io.CopyStreamListener
        public void bytesTransferred(CopyStreamEvent copyStreamEvent) {
            bytesTransferred(copyStreamEvent.getTotalBytesTransferred(), copyStreamEvent.getBytesTransferred(), copyStreamEvent.getStreamSize());
        }
    }

    public FTPListParseEngine initiateListParsing() {
        return initiateListParsing(null);
    }

    public FTPListParseEngine initiateListParsing(String str) {
        return initiateListParsing((String) null, str);
    }

    public FTPListParseEngine initiateListParsing(String str, String str2) throws IOException {
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
    public void _connectAction_() {
        _connectAction_(null);
    }

    @Deprecated
    public Socket _openDataConnection_(int i10, String str) {
        return _openDataConnection_(FTPCommand.getCommand(i10), str);
    }

    public Socket _openDataConnection_(FTPCmd fTPCmd, String str) {
        return _openDataConnection_(fTPCmd.getCommand(), str);
    }
}
