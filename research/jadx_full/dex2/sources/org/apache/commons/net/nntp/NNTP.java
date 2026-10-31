package org.apache.commons.net.nntp;

import ai.onnxruntime.a;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.text.Typography;
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.ProtocolCommandSupport;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.io.CRLFLineReader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class NNTP extends SocketClient {
    private static final Charset DEFAULT_ENCODING = StandardCharsets.ISO_8859_1;
    public static final int DEFAULT_PORT = 119;
    protected ProtocolCommandSupport _commandSupport_;
    boolean _isAllowedToPost;
    protected BufferedReader _reader_;
    protected BufferedWriter _writer_;
    private int replyCode;
    private String replyString;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NNTP() {
        setDefaultPort(DEFAULT_PORT);
        this.replyString = null;
        this._reader_ = null;
        this._writer_ = null;
        this._isAllowedToPost = false;
        this._commandSupport_ = new ProtocolCommandSupport(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.SocketClient
    public void _connectAction_() throws IOException {
        super._connectAction_();
        InputStream inputStream = this._input_;
        Charset charset = DEFAULT_ENCODING;
        this._reader_ = new CRLFLineReader(new InputStreamReader(inputStream, charset));
        this._writer_ = new BufferedWriter(new OutputStreamWriter(this._output_, charset));
        getReply();
        this._isAllowedToPost = this.replyCode == 200;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int article(long j) {
        return sendCommand(0, Long.toString(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int authinfoPass(String str) {
        return sendCommand(15, "PASS " + str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int authinfoUser(String str) {
        return sendCommand(15, "USER " + str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int body(long j) {
        return sendCommand(1, Long.toString(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.SocketClient
    public void disconnect() {
        super.disconnect();
        this._reader_ = null;
        this._writer_ = null;
        this.replyString = null;
        this._isAllowedToPost = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.SocketClient
    public ProtocolCommandSupport getCommandSupport() {
        return this._commandSupport_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getReply() throws IOException {
        String line = this._reader_.readLine();
        this.replyString = line;
        if (line == null) {
            throw new NNTPConnectionClosedException("Connection closed without indication.");
        }
        int length = line.length();
        String str = this.replyString;
        if (length < 3) {
            throw new MalformedServerReplyException(a.l("Truncated server reply: ", str));
        }
        try {
            int i = Integer.parseInt(str.substring(0, 3));
            this.replyCode = i;
            fireReplyReceived(i, this.replyString + SocketClient.NETASCII_EOL);
            int i2 = this.replyCode;
            if (i2 != 400) {
                return i2;
            }
            throw new NNTPConnectionClosedException("NNTP response 400 received.  Server closed connection.");
        } catch (NumberFormatException unused) {
            throw new MalformedServerReplyException("Could not parse response code.\nServer Reply: " + this.replyString);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getReplyCode() {
        return this.replyCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getReplyString() {
        return this.replyString;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int group(String str) {
        return sendCommand(2, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int head(long j) {
        return sendCommand(3, Long.toString(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int help() {
        return sendCommand(4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int ihave(String str) {
        return sendCommand(5, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAllowedToPost() {
        return this._isAllowedToPost;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int last() {
        return sendCommand(6);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int list() {
        return sendCommand(7);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int listActive(String str) {
        return sendCommand(7, "ACTIVE " + str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int newgroups(String str, String str2, boolean z, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(' ');
        sb.append(str2);
        if (z) {
            sb.append(" GMT");
        }
        if (str3 != null) {
            sb.append(" <");
            sb.append(str3);
            sb.append(Typography.greater);
        }
        return sendCommand(8, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int newnews(String str, String str2, String str3, boolean z, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(' ');
        sb.append(str2);
        sb.append(' ');
        sb.append(str3);
        if (z) {
            sb.append(" GMT");
        }
        if (str4 != null) {
            sb.append(" <");
            sb.append(str4);
            sb.append(Typography.greater);
        }
        return sendCommand(9, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int next() {
        return sendCommand(10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int post() {
        return sendCommand(11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int quit() {
        return sendCommand(12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int sendCommand(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        if (str2 != null) {
            sb.append(' ');
            sb.append(str2);
        }
        sb.append(SocketClient.NETASCII_EOL);
        BufferedWriter bufferedWriter = this._writer_;
        String string = sb.toString();
        bufferedWriter.write(string);
        this._writer_.flush();
        fireCommandSent(str, string);
        return getReply();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int stat(long j) {
        return sendCommand(14, Long.toString(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int xhdr(String str, String str2) {
        return sendCommand(17, str + " " + str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int xover(String str) {
        return sendCommand(16, str);
    }

    @Deprecated
    public int article(int i) {
        return article(i);
    }

    @Deprecated
    public int body(int i) {
        return body(i);
    }

    @Deprecated
    public int head(int i) {
        return head(i);
    }

    public int article() {
        return sendCommand(0);
    }

    public int body() {
        return sendCommand(1);
    }

    public int head() {
        return sendCommand(3);
    }

    @Deprecated
    public int stat(int i) {
        return stat(i);
    }

    public int article(String str) {
        return sendCommand(0, str);
    }

    public int body(String str) {
        return sendCommand(1, str);
    }

    public int head(String str) {
        return sendCommand(3, str);
    }

    public int stat() {
        return sendCommand(14);
    }

    public int stat(String str) {
        return sendCommand(14, str);
    }

    public int sendCommand(int i, String str) {
        return sendCommand(NNTPCommand.getCommand(i), str);
    }

    public int sendCommand(String str) {
        return sendCommand(str, (String) null);
    }

    public int sendCommand(int i) {
        return sendCommand(i, (String) null);
    }
}
