package org.apache.commons.net.ftp;

import ai.onnxruntime.AbstractC0074a;
import androidx.exifinterface.media.ExifInterface;
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
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.ProtocolCommandSupport;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.p162io.CRLFLineReader;
import org.apache.commons.net.util.NetConstants;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.FilenameUtils;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
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

    /* JADX INFO: renamed from: SP */
    private static final char f8125SP = ' ';
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

    public FTP() {
        setDefaultPort(21);
        this._replyLines = new ArrayList<>();
        this._newReplyString = false;
        this._replyString = null;
        this._controlEncoding = DEFAULT_CONTROL_ENCODING;
        this._commandSupport_ = new ProtocolCommandSupport(this);
    }

    private String buildMessage(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        if (str2 != null) {
            sb.append(f8125SP);
            sb.append(str2);
        }
        sb.append(SocketClient.NETASCII_EOL);
        return sb.toString();
    }

    private int checkMode(int i10) {
        if (i10 < 14) {
            return i10;
        }
        C1929i.m3029k("Unknown mode");
        return 0;
    }

    private int getReply(boolean z9) throws IOException {
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
                    throw new MalformedServerReplyException(AbstractC0074a.m162m("Invalid server reply: '", line, "'"));
                }
            } else if (isStrictReplyParsing()) {
                throw new MalformedServerReplyException(AbstractC0074a.m162m("Truncated server reply: '", line, "'"));
            }
            if (z9) {
                fireReplyReceived(this._replyCode, getReplyString());
            }
            int i10 = this._replyCode;
            if (i10 != 421) {
                return i10;
            }
            throw new FTPConnectionClosedException("FTP response 421 received. Server closed connection.");
        } catch (NumberFormatException unused) {
            throw new MalformedServerReplyException("Could not parse response code.\nServer Reply: ".concat(line));
        }
    }

    private boolean lenientCheck(String str) {
        return str.length() <= 3 || str.charAt(3) == '-' || !Character.isDigit(str.charAt(0));
    }

    private char modeCharAt(int i10) {
        return MODES.charAt(checkMode(i10));
    }

    private String modeStringAt(int i10) {
        checkMode(i10);
        return MODES.substring(i10, i10 + 1);
    }

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

    private boolean strictCheck(String str, String str2) {
        return (str.startsWith(str2) && str.charAt(3) == ' ') ? false : true;
    }

    public void __getReplyNoReport() throws IOException {
        getReply(false);
    }

    public void __noop() {
        send(buildMessage(FTPCmd.NOOP.getCommand(), null));
        __getReplyNoReport();
    }

    public void _connectAction_(Reader reader) {
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

    public int abor() {
        return sendCommand(FTPCmd.ABOR);
    }

    public int acct(String str) {
        return sendCommand(FTPCmd.ACCT, str);
    }

    public int allo(int i10, int i11) {
        return sendCommand(FTPCmd.ALLO, Integer.toString(i10) + " R " + Integer.toString(i11));
    }

    public int appe(String str) {
        return sendCommand(FTPCmd.APPE, str);
    }

    public int cdup() {
        return sendCommand(FTPCmd.CDUP);
    }

    public int cwd(String str) {
        return sendCommand(FTPCmd.CWD, str);
    }

    public int dele(String str) {
        return sendCommand(FTPCmd.DELE, str);
    }

    @Override // org.apache.commons.net.SocketClient
    public void disconnect() {
        super.disconnect();
        this._controlInput_ = null;
        this._controlOutput_ = null;
        this._newReplyString = false;
        this._replyString = null;
    }

    public int eprt(InetAddress inetAddress, int i10) {
        String hostAddress = inetAddress.getHostAddress();
        int iIndexOf = hostAddress.indexOf(37);
        if (iIndexOf > 0) {
            hostAddress = hostAddress.substring(0, iIndexOf);
        }
        StringBuilder sb = new StringBuilder("|");
        if (inetAddress instanceof Inet4Address) {
            sb.append("1");
        } else if (inetAddress instanceof Inet6Address) {
            sb.append(ExifInterface.GPS_MEASUREMENT_2D);
        }
        sb.append("|");
        sb.append(hostAddress);
        sb.append("|");
        sb.append(i10);
        sb.append("|");
        return sendCommand(FTPCmd.EPRT, sb.toString());
    }

    public int epsv() {
        return sendCommand(FTPCmd.EPSV);
    }

    public int feat() {
        return sendCommand(FTPCmd.FEAT);
    }

    @Override // org.apache.commons.net.SocketClient
    public ProtocolCommandSupport getCommandSupport() {
        return this._commandSupport_;
    }

    public String getControlEncoding() {
        return this._controlEncoding;
    }

    public int getReplyCode() {
        return this._replyCode;
    }

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

    public String[] getReplyStrings() {
        return (String[]) this._replyLines.toArray(NetConstants.EMPTY_STRING_ARRAY);
    }

    public int help() {
        return sendCommand(FTPCmd.HELP);
    }

    public boolean isStrictMultilineParsing() {
        return this.strictMultilineParsing;
    }

    public boolean isStrictReplyParsing() {
        return this.strictReplyParsing;
    }

    public int list() {
        return sendCommand(FTPCmd.LIST);
    }

    public int mdtm(String str) {
        return sendCommand(FTPCmd.MDTM, str);
    }

    public int mfmt(String str, String str2) {
        return sendCommand(FTPCmd.MFMT, str2 + f8125SP + str);
    }

    public int mkd(String str) {
        return sendCommand(FTPCmd.MKD, str);
    }

    public int mlsd() {
        return sendCommand(FTPCmd.MLSD);
    }

    public int mlst() {
        return sendCommand(FTPCmd.MLST);
    }

    public int mode(int i10) {
        return sendCommand(FTPCmd.MODE, modeStringAt(i10));
    }

    public int nlst() {
        return sendCommand(FTPCmd.NLST);
    }

    public int noop() {
        return sendCommand(FTPCmd.NOOP);
    }

    public int opts(String... strArr) {
        FTPCmd fTPCmd = FTPCmd.OPTS;
        StringBuilder sb = new StringBuilder();
        if (strArr.length > 0) {
            sb.append((CharSequence) strArr[0]);
            for (int i10 = 1; i10 < strArr.length; i10++) {
                sb.append((CharSequence) " ");
                sb.append((CharSequence) strArr[i10]);
            }
        }
        return sendCommand(fTPCmd, sb.toString());
    }

    public int pass(String str) {
        return sendCommand(FTPCmd.PASS, str);
    }

    public int pasv() {
        return sendCommand(FTPCmd.PASV);
    }

    public int port(InetAddress inetAddress, int i10) {
        StringBuilder sb = new StringBuilder(24);
        sb.append(inetAddress.getHostAddress().replace(FilenameUtils.EXTENSION_SEPARATOR, ','));
        sb.append(',');
        sb.append(i10 >>> 8);
        sb.append(',');
        sb.append(i10 & 255);
        return sendCommand(FTPCmd.PORT, sb.toString());
    }

    public int pwd() {
        return sendCommand(FTPCmd.PWD);
    }

    public int quit() {
        return sendCommand(FTPCmd.QUIT);
    }

    public int rein() {
        return sendCommand(FTPCmd.REIN);
    }

    public int rest(String str) {
        return sendCommand(FTPCmd.REST, str);
    }

    public int retr(String str) {
        return sendCommand(FTPCmd.RETR, str);
    }

    public int rmd(String str) {
        return sendCommand(FTPCmd.RMD, str);
    }

    public int rnfr(String str) {
        return sendCommand(FTPCmd.RNFR, str);
    }

    public int rnto(String str) {
        return sendCommand(FTPCmd.RNTO, str);
    }

    public int sendCommand(String str, String str2) throws IOException {
        if (this._controlOutput_ == null) {
            C2467b.m3820A("Connection is not open");
            return 0;
        }
        String strBuildMessage = buildMessage(str, str2);
        send(strBuildMessage);
        fireCommandSent(str, strBuildMessage);
        return getReply();
    }

    public void setControlEncoding(Charset charset) {
        this._controlEncoding = Charsets.toCharset(charset).name();
    }

    public void setStrictMultilineParsing(boolean z9) {
        this.strictMultilineParsing = z9;
    }

    public void setStrictReplyParsing(boolean z9) {
        this.strictReplyParsing = z9;
    }

    public int site(String str) {
        return sendCommand(FTPCmd.SITE, str);
    }

    public int size(String str) {
        return sendCommand(FTPCmd.SIZE, str);
    }

    public int smnt(String str) {
        return sendCommand(FTPCmd.SMNT, str);
    }

    public int stat() {
        return sendCommand(FTPCmd.STAT);
    }

    public int stor(String str) {
        return sendCommand(FTPCmd.STOR, str);
    }

    public int stou() {
        return sendCommand(FTPCmd.STOU);
    }

    public int stru(int i10) {
        return sendCommand(FTPCmd.STRU, modeStringAt(i10));
    }

    public int syst() {
        return sendCommand(FTPCmd.SYST);
    }

    public int type(int i10, int i11) {
        StringBuilder sb = new StringBuilder();
        sb.append(modeCharAt(i10));
        sb.append(f8125SP);
        if (i10 == 3) {
            sb.append(i11);
        } else {
            sb.append(modeCharAt(i11));
        }
        return sendCommand(FTPCmd.TYPE, sb.toString());
    }

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

    public int sendCommand(int i10) {
        return sendCommand(i10, (String) null);
    }

    @Deprecated
    public int sendCommand(int i10, String str) {
        return sendCommand(FTPCommand.getCommand(i10), str);
    }

    public int sendCommand(String str) {
        return sendCommand(str, (String) null);
    }

    public int sendCommand(FTPCmd fTPCmd) {
        return sendCommand(fTPCmd, (String) null);
    }

    public int allo(int i10) {
        return sendCommand(FTPCmd.ALLO, Integer.toString(i10));
    }

    public int allo(long j10) {
        return sendCommand(FTPCmd.ALLO, Long.toString(j10));
    }

    public int allo(long j10, int i10) {
        return sendCommand(FTPCmd.ALLO, Long.toString(j10) + " R " + Integer.toString(i10));
    }

    public int opts(String str, String str2) {
        return opts(str + f8125SP + str2);
    }

    public int type(int i10) {
        return sendCommand(FTPCmd.TYPE, modeStringAt(i10));
    }

    public String getReplyString(int i10) {
        return this._replyLines.get(i10);
    }

    @Override // org.apache.commons.net.SocketClient
    public void _connectAction_() {
        _connectAction_(null);
    }

    public int getReply() {
        return getReply(true);
    }
}
