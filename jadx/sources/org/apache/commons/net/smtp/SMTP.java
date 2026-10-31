package org.apache.commons.net.smtp;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.ProtocolCommandListener;
import org.apache.commons.net.ProtocolCommandSupport;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.p162io.CRLFLineReader;
import org.apache.commons.net.util.NetConstants;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SMTP extends SocketClient {
    private static final String DEFAULT_ENCODING = StandardCharsets.ISO_8859_1.name();
    public static final int DEFAULT_PORT = 25;
    protected ProtocolCommandSupport _commandSupport_;
    protected final String encoding;
    private boolean newReplyString;
    BufferedReader reader;
    private int replyCode;
    private final ArrayList<String> replyLines;
    private String replyString;
    BufferedWriter writer;

    public SMTP(String str) {
        setDefaultPort(25);
        this.replyLines = new ArrayList<>();
        this.newReplyString = false;
        this.replyString = null;
        this._commandSupport_ = new ProtocolCommandSupport(this);
        this.encoding = str;
    }

    private int sendCommand(String str, String str2, boolean z9) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        if (str2 != null) {
            if (z9) {
                sb.append(' ');
            }
            sb.append(str2);
        }
        sb.append(SocketClient.NETASCII_EOL);
        String string = sb.toString();
        this.writer.write(string);
        this.writer.flush();
        fireCommandSent(str, string);
        return getReply();
    }

    @Override // org.apache.commons.net.SocketClient
    public void _connectAction_() throws IOException {
        super._connectAction_();
        this.reader = new CRLFLineReader(new InputStreamReader(this._input_, this.encoding));
        this.writer = new BufferedWriter(new OutputStreamWriter(this._output_, this.encoding));
        getReply();
    }

    public int data() {
        return sendCommand(3);
    }

    @Override // org.apache.commons.net.SocketClient
    public void disconnect() {
        super.disconnect();
        this.reader = null;
        this.writer = null;
        this.replyString = null;
        this.replyLines.clear();
        this.newReplyString = false;
    }

    public int expn(String str) {
        return sendCommand(9, str);
    }

    @Override // org.apache.commons.net.SocketClient
    public ProtocolCommandSupport getCommandSupport() {
        return this._commandSupport_;
    }

    public int getReply() throws IOException {
        this.newReplyString = true;
        this.replyLines.clear();
        String line = this.reader.readLine();
        if (line == null) {
            throw new SMTPConnectionClosedException("Connection closed without indication.");
        }
        int length = line.length();
        if (length < 3) {
            throw new MalformedServerReplyException("Truncated server reply: ".concat(line));
        }
        try {
            this.replyCode = Integer.parseInt(line.substring(0, 3));
            this.replyLines.add(line);
            if (length > 3 && line.charAt(3) == '-') {
                while (true) {
                    String line2 = this.reader.readLine();
                    if (line2 == null) {
                        throw new SMTPConnectionClosedException("Connection closed without indication.");
                    }
                    this.replyLines.add(line2);
                    if (line2.length() >= 4 && line2.charAt(3) != '-' && Character.isDigit(line2.charAt(0))) {
                        break;
                    }
                }
            }
            fireReplyReceived(this.replyCode, getReplyString());
            int i10 = this.replyCode;
            if (i10 != 421) {
                return i10;
            }
            throw new SMTPConnectionClosedException("SMTP response 421 received.  Server closed connection.");
        } catch (NumberFormatException unused) {
            throw new MalformedServerReplyException("Could not parse response code.\nServer Reply: ".concat(line));
        }
    }

    public int getReplyCode() {
        return this.replyCode;
    }

    public String getReplyString() {
        if (!this.newReplyString) {
            return this.replyString;
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList = this.replyLines;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            String str = arrayList.get(i10);
            i10++;
            sb.append(str);
            sb.append(SocketClient.NETASCII_EOL);
        }
        this.newReplyString = false;
        String string = sb.toString();
        this.replyString = string;
        return string;
    }

    public String[] getReplyStrings() {
        return (String[]) this.replyLines.toArray(NetConstants.EMPTY_STRING_ARRAY);
    }

    public int helo(String str) {
        return sendCommand(0, str);
    }

    public int help() {
        return sendCommand(10);
    }

    public int mail(String str) {
        return sendCommand(1, str, false);
    }

    public int noop() {
        return sendCommand(11);
    }

    public int quit() {
        return sendCommand(13);
    }

    public int rcpt(String str) {
        return sendCommand(2, str, false);
    }

    public void removeProtocolCommandistener(ProtocolCommandListener protocolCommandListener) {
        removeProtocolCommandListener(protocolCommandListener);
    }

    public int rset() {
        return sendCommand(7);
    }

    public int saml(String str) {
        return sendCommand(6, str);
    }

    public int send(String str) {
        return sendCommand(4, str);
    }

    public int soml(String str) {
        return sendCommand(5, str);
    }

    public int turn() {
        return sendCommand(12);
    }

    public int vrfy(String str) {
        return sendCommand(8, str);
    }

    public int help(String str) {
        return sendCommand(10, str);
    }

    public SMTP() {
        this(DEFAULT_ENCODING);
    }

    public int sendCommand(int i10, String str) {
        return sendCommand(SMTPCommand.getCommand(i10), str);
    }

    private int sendCommand(int i10, String str, boolean z9) {
        return sendCommand(SMTPCommand.getCommand(i10), str, z9);
    }

    public int sendCommand(String str) {
        return sendCommand(str, (String) null);
    }

    public int sendCommand(String str, String str2) {
        return sendCommand(str, str2, true);
    }

    public int sendCommand(int i10) {
        return sendCommand(i10, (String) null);
    }
}
