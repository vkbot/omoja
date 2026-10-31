package org.apache.commons.net.ftp;

import j1.i;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import n0.b;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.ProtocolCommandSupport;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.io.CRLFLineReader;
import org.apache.commons.net.util.NetConstants;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FTP extends SocketClient {
    public static final int ASCII_FILE_TYPE = 0;
    public static final int BINARY_FILE_TYPE = 2;
    public static final int BLOCK_TRANSFER_MODE = 11;
    public static final int CARRIAGE_CONTROL_TEXT_FORMAT = 6;
    public static final int COMPRESSED_TRANSFER_MODE = 12;
    public static final String DEFAULT_CONTROL_ENCODING = StandardCharsets.ISO_8859_1.name();
    public static final int DEFAULT_DATA_PORT = 20;
    public static final int DEFAULT_PORT = 21;
    public static final int DEFLATE_TRANSFER_MODE = 13;
    public static final int EBCDIC_FILE_TYPE = 1;
    public static final int FILE_STRUCTURE = 7;
    public static final int LOCAL_FILE_TYPE = 3;
    private static final String MODES = "AEILNTCFRPSBCZ";
    public static final int NON_PRINT_TEXT_FORMAT = 4;
    public static final int PAGE_STRUCTURE = 9;
    public static final int RECORD_STRUCTURE = 8;
    public static final int REPLY_CODE_LEN = 3;
    private static final char SP = ' ';
    public static final int STREAM_TRANSFER_MODE = 10;
    public static final int TELNET_TEXT_FORMAT = 5;
    protected ProtocolCommandSupport _commandSupport_;
    protected String _controlEncoding;
    protected BufferedReader _controlInput_;
    protected BufferedWriter _controlOutput_;
    protected boolean _newReplyString;
    protected int _replyCode;
    protected ArrayList<String> _replyLines;
    protected String _replyString;
    protected boolean strictMultilineParsing;
    private boolean strictReplyParsing = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTP() {
        setDefaultPort(21);
        this._replyLines = new ArrayList<>();
        this._newReplyString = false;
        this._replyString = null;
        this._controlEncoding = DEFAULT_CONTROL_ENCODING;
        this._commandSupport_ = new ProtocolCommandSupport(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String buildMessage(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        if (str2 != null) {
            sb.append(SP);
            sb.append(str2);
        }
        sb.append(SocketClient.NETASCII_EOL);
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int checkMode(int i) {
        if (i < 14) {
            return i;
        }
        i.k("Unknown mode");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getReply(boolean z) throws IOException {
        this._newReplyString = true;
        this._replyLines.clear();
        String line = this._controlInput_.readLine();
        if (line == null) {
            throw new FTPConnectionClosedException("Connection closed without indication.");
        }
        int length = line.length();
        if (length < 3) {
            throw new MalformedServerReplyException("Truncated server reply: ".concat(line));
        }
        try {
            String strSubstring = line.substring(0, 3);
            this._replyCode = Integer.parseInt(strSubstring);
            this._replyLines.add(line);
            if (length > 3) {
                char cCharAt = line.charAt(3);
                if (cCharAt == '-') {
                    while (true) {
                        String line2 = this._controlInput_.readLine();
                        if (line2 == null) {
                            throw new FTPConnectionClosedException("Connection closed without indication.");
                        }
                        this._replyLines.add(line2);
                        if (isStrictMultilineParsing()) {
                            if (!strictCheck(line2, strSubstring)) {
                                break;
                            }
                        } else if (!lenientCheck(line2)) {
                            break;
                        }
                    }
                } else if (isStrictReplyParsing() && cCharAt != ' ') {
                    throw new MalformedServerReplyException(ai.onnxruntime.a.m("Invalid server reply: '", line, "'"));
                }
            } else if (isStrictReplyParsing()) {
                throw new MalformedServerReplyException(ai.onnxruntime.a.m("Truncated server reply: '", line, "'"));
            }
            if (z) {
                fireReplyReceived(this._replyCode, getReplyString());
            }
            int i = this._replyCode;
            if (i != 421) {
                return i;
            }
            throw new FTPConnectionClosedException("FTP response 421 received. Server closed connection.");
        } catch (NumberFormatException unused) {
            throw new MalformedServerReplyException("Could not parse response code.\nServer Reply: ".concat(line));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean lenientCheck(String str) {
        return str.length() <= 3 || str.charAt(3) == '-' || !Character.isDigit(str.charAt(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private char modeCharAt(int i) {
        return MODES.charAt(checkMode(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String modeStringAt(int i) {
        checkMode(i);
        return MODES.substring(i, i + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void send(String str) throws IOException {
        try {
            this._controlOutput_.write(str);
            this._controlOutput_.flush();
        } catch (SocketException e) {
            if (!isConnected()) {
                throw new FTPConnectionClosedException("Connection unexpectedly closed.");
            }
            throw e;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean strictCheck(String str, String str2) {
        return (str.startsWith(str2) && str.charAt(3) == ' ') ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void __getReplyNoReport() throws IOException {
        getReply(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void __noop() throws IOException {
        send(buildMessage(FTPCmd.NOOP.getCommand(), null));
        __getReplyNoReport();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void _connectAction_(Reader reader) throws SocketException {
        super._connectAction_();
        if (reader == null) {
            this._controlInput_ = new CRLFLineReader(new InputStreamReader(this._input_, getControlEncoding()));
        } else {
            this._controlInput_ = new CRLFLineReader(reader);
        }
        this._controlOutput_ = new BufferedWriter(new OutputStreamWriter(this._output_, getControlEncoding()));
        if (this.connectTimeout <= 0) {
            getReply();
            if (FTPReply.isPositivePreliminary(this._replyCode)) {
                getReply();
                return;
            }
            return;
        }
        int soTimeout = this._socket_.getSoTimeout();
        this._socket_.setSoTimeout(this.connectTimeout);
        try {
            try {
                getReply();
                if (FTPReply.isPositivePreliminary(this._replyCode)) {
                    getReply();
                }
                this._socket_.setSoTimeout(soTimeout);
            } catch (SocketTimeoutException e) {
                throw new IOException("Timed out waiting for initial connect reply", e);
            }
        } catch (Throwable th) {
            this._socket_.setSoTimeout(soTimeout);
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int abor() {
        return sendCommand(FTPCmd.ABOR);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int acct(String str) {
        return sendCommand(FTPCmd.ACCT, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int allo(int i, int i2) {
        return sendCommand(FTPCmd.ALLO, Integer.toString(i) + " R " + Integer.toString(i2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int appe(String str) {
        return sendCommand(FTPCmd.APPE, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int cdup() {
        return sendCommand(FTPCmd.CDUP);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int cwd(String str) {
        return sendCommand(FTPCmd.CWD, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int dele(String str) {
        return sendCommand(FTPCmd.DELE, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.SocketClient
    public void disconnect() {
        super.disconnect();
        this._controlInput_ = null;
        this._controlOutput_ = null;
        this._newReplyString = false;
        this._replyString = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int eprt(InetAddress inetAddress, int i) {
        String hostAddress = inetAddress.getHostAddress();
        int iIndexOf = hostAddress.indexOf(37);
        if (iIndexOf > 0) {
            hostAddress = hostAddress.substring(0, iIndexOf);
        }
        StringBuilder sb = new StringBuilder("|");
        if (inetAddress instanceof Inet4Address) {
            sb.append("1");
        } else if (inetAddress instanceof Inet6Address) {
            sb.append("2");
        }
        sb.append("|");
        sb.append(hostAddress);
        sb.append("|");
        sb.append(i);
        sb.append("|");
        return sendCommand(FTPCmd.EPRT, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int epsv() {
        return sendCommand(FTPCmd.EPSV);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int feat() {
        return sendCommand(FTPCmd.FEAT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.SocketClient
    public ProtocolCommandSupport getCommandSupport() {
        return this._commandSupport_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getControlEncoding() {
        return this._controlEncoding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getReplyCode() {
        return this._replyCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getReplyString() {
        if (!this._newReplyString) {
            return this._replyString;
        }
        this._newReplyString = false;
        ArrayList<String> arrayList = this._replyLines;
        StringBuilder sb = new StringBuilder();
        Iterator<T> it = arrayList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append((CharSequence) SocketClient.NETASCII_EOL);
            }
        }
        String string = sb.toString();
        this._replyString = string;
        return string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getReplyStrings() {
        return (String[]) this._replyLines.toArray(NetConstants.EMPTY_STRING_ARRAY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int help() {
        return sendCommand(FTPCmd.HELP);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isStrictMultilineParsing() {
        return this.strictMultilineParsing;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isStrictReplyParsing() {
        return this.strictReplyParsing;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int list() {
        return sendCommand(FTPCmd.LIST);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int mdtm(String str) {
        return sendCommand(FTPCmd.MDTM, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int mfmt(String str, String str2) {
        return sendCommand(FTPCmd.MFMT, str2 + SP + str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int mkd(String str) {
        return sendCommand(FTPCmd.MKD, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int mlsd() {
        return sendCommand(FTPCmd.MLSD);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int mlst() {
        return sendCommand(FTPCmd.MLST);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int mode(int i) {
        return sendCommand(FTPCmd.MODE, modeStringAt(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int nlst() {
        return sendCommand(FTPCmd.NLST);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int noop() {
        return sendCommand(FTPCmd.NOOP);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int opts(String... strArr) {
        FTPCmd fTPCmd = FTPCmd.OPTS;
        StringBuilder sb = new StringBuilder();
        if (strArr.length > 0) {
            sb.append((CharSequence) strArr[0]);
            for (int i = 1; i < strArr.length; i++) {
                sb.append((CharSequence) " ");
                sb.append((CharSequence) strArr[i]);
            }
        }
        return sendCommand(fTPCmd, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int pass(String str) {
        return sendCommand(FTPCmd.PASS, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int pasv() {
        return sendCommand(FTPCmd.PASV);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int port(InetAddress inetAddress, int i) {
        StringBuilder sb = new StringBuilder(24);
        sb.append(inetAddress.getHostAddress().replace(FilenameUtils.EXTENSION_SEPARATOR, ','));
        sb.append(',');
        sb.append(i >>> 8);
        sb.append(',');
        sb.append(i & 255);
        return sendCommand(FTPCmd.PORT, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int pwd() {
        return sendCommand(FTPCmd.PWD);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int quit() {
        return sendCommand(FTPCmd.QUIT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int rein() {
        return sendCommand(FTPCmd.REIN);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int rest(String str) {
        return sendCommand(FTPCmd.REST, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int retr(String str) {
        return sendCommand(FTPCmd.RETR, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int rmd(String str) {
        return sendCommand(FTPCmd.RMD, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int rnfr(String str) {
        return sendCommand(FTPCmd.RNFR, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int rnto(String str) {
        return sendCommand(FTPCmd.RNTO, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int sendCommand(String str, String str2) throws IOException {
        if (this._controlOutput_ == null) {
            b.A("Connection is not open");
            return 0;
        }
        String strBuildMessage = buildMessage(str, str2);
        send(strBuildMessage);
        fireCommandSent(str, strBuildMessage);
        return getReply();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setControlEncoding(Charset charset) {
        this._controlEncoding = Charsets.toCharset(charset).name();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrictMultilineParsing(boolean z) {
        this.strictMultilineParsing = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrictReplyParsing(boolean z) {
        this.strictReplyParsing = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int site(String str) {
        return sendCommand(FTPCmd.SITE, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size(String str) {
        return sendCommand(FTPCmd.SIZE, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int smnt(String str) {
        return sendCommand(FTPCmd.SMNT, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int stat() {
        return sendCommand(FTPCmd.STAT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int stor(String str) {
        return sendCommand(FTPCmd.STOR, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int stou() {
        return sendCommand(FTPCmd.STOU);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int stru(int i) {
        return sendCommand(FTPCmd.STRU, modeStringAt(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int syst() {
        return sendCommand(FTPCmd.SYST);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int type(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(modeCharAt(i));
        sb.append(SP);
        if (i == 3) {
            sb.append(i2);
        } else {
            sb.append(modeCharAt(i2));
        }
        return sendCommand(FTPCmd.TYPE, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int user(String str) {
        return sendCommand(FTPCmd.USER, str);
    }

    public int help(String str) {
        return sendCommand(FTPCmd.HELP, str);
    }

    public int list(String str) {
        return sendCommand(FTPCmd.LIST, str);
    }

    public int mlsd(String str) {
        return sendCommand(FTPCmd.MLSD, str);
    }

    public int mlst(String str) {
        return sendCommand(FTPCmd.MLST, str);
    }

    public int nlst(String str) {
        return sendCommand(FTPCmd.NLST, str);
    }

    public int stat(String str) {
        return sendCommand(FTPCmd.STAT, str);
    }

    public int stou(String str) {
        return sendCommand(FTPCmd.STOU, str);
    }

    public void setControlEncoding(String str) {
        this._controlEncoding = str;
    }

    public int sendCommand(FTPCmd fTPCmd, String str) {
        return sendCommand(fTPCmd.getCommand(), str);
    }

    public int sendCommand(int i) {
        return sendCommand(i, (String) null);
    }

    @Deprecated
    public int sendCommand(int i, String str) {
        return sendCommand(FTPCommand.getCommand(i), str);
    }

    public int sendCommand(String str) {
        return sendCommand(str, (String) null);
    }

    public int sendCommand(FTPCmd fTPCmd) {
        return sendCommand(fTPCmd, (String) null);
    }

    public int allo(int i) {
        return sendCommand(FTPCmd.ALLO, Integer.toString(i));
    }

    public int allo(long j) {
        return sendCommand(FTPCmd.ALLO, Long.toString(j));
    }

    public int allo(long j, int i) {
        return sendCommand(FTPCmd.ALLO, Long.toString(j) + " R " + Integer.toString(i));
    }

    public int opts(String str, String str2) {
        return opts(str + SP + str2);
    }

    public int type(int i) {
        return sendCommand(FTPCmd.TYPE, modeStringAt(i));
    }

    public String getReplyString(int i) {
        return this._replyLines.get(i);
    }

    @Override // org.apache.commons.net.SocketClient
    public void _connectAction_() throws SocketException {
        _connectAction_(null);
    }

    public int getReply() {
        return getReply(true);
    }
}
