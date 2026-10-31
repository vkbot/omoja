package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Inet6Address;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Base64;
import org.apache.commons.net.SocketClient;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FTPHTTPClient extends FTPClient {
    private static final byte[] CRLF = {13, 10};
    private final Charset charset;
    private final String proxyHost;
    private final String proxyPassword;
    private final int proxyPort;
    private final String proxyUserName;
    private String tunnelHost;

    public FTPHTTPClient(String str, int i10, String str2, String str3, Charset charset) {
        this.proxyHost = str;
        this.proxyPort = i10;
        this.proxyUserName = str2;
        this.proxyPassword = str3;
        this.charset = charset;
    }

    private BufferedReader tunnelHandshake(String str, int i10, InputStream inputStream, OutputStream outputStream) throws IOException {
        String str2 = "CONNECT " + str + ":" + i10 + " HTTP/1.1";
        String str3 = "Host: " + str + ":" + i10;
        this.tunnelHost = str;
        outputStream.write(str2.getBytes(this.charset));
        byte[] bArr = CRLF;
        outputStream.write(bArr);
        outputStream.write(str3.getBytes(this.charset));
        outputStream.write(bArr);
        if (this.proxyUserName != null && this.proxyPassword != null) {
            outputStream.write(("Proxy-Authorization: Basic " + Base64.getEncoder().encodeToString((this.proxyUserName + ":" + this.proxyPassword).getBytes(this.charset))).getBytes(this.charset));
            outputStream.write(bArr);
        }
        outputStream.write(bArr);
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, getCharset()));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || line.isEmpty()) {
                break;
            }
            arrayList.add(line);
        }
        if (arrayList.size() == 0) {
            C2467b.m3820A("No response from proxy");
            return null;
        }
        int i11 = 0;
        String str4 = (String) arrayList.get(0);
        if (!str4.startsWith("HTTP/") || str4.length() < 12) {
            C2467b.m3820A("Invalid response from proxy: ".concat(str4));
            return null;
        }
        if ("200".equals(str4.substring(9, 12))) {
            return bufferedReader;
        }
        StringBuilder sb = new StringBuilder(256);
        sb.append("HTTPTunnelConnector: connection failed\r\nResponse received from the proxy:\r\n");
        int size = arrayList.size();
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            sb.append((String) obj);
            sb.append(SocketClient.NETASCII_EOL);
        }
        throw new IOException(sb.toString());
    }

    @Override // org.apache.commons.net.ftp.FTPClient
    public Socket _openDataConnection_(String str, String str2) throws IOException {
        String passiveHost;
        if (getDataConnectionMode() != 2) {
            C1929i.m3030l("Only passive connection mode supported");
            return null;
        }
        boolean z9 = getRemoteAddress() instanceof Inet6Address;
        if ((isUseEPSVwithIPv4() || z9) && epsv() == 229) {
            _parseExtendedPassiveModeReply(this._replyLines.get(0));
            passiveHost = this.tunnelHost;
        } else {
            if (z9 || pasv() != 227) {
                return null;
            }
            _parsePassiveModeReply(this._replyLines.get(0));
            passiveHost = getPassiveHost();
        }
        Socket socketCreateSocket = this._socketFactory_.createSocket(this.proxyHost, this.proxyPort);
        tunnelHandshake(passiveHost, getPassivePort(), socketCreateSocket.getInputStream(), socketCreateSocket.getOutputStream());
        if ((getRestartOffset() <= 0 || restart(getRestartOffset())) && FTPReply.isPositivePreliminary(sendCommand(str, str2))) {
            return socketCreateSocket;
        }
        socketCreateSocket.close();
        return null;
    }

    @Override // org.apache.commons.net.SocketClient
    public void connect(String str, int i10) throws IOException {
        Socket socketCreateSocket = this._socketFactory_.createSocket(this.proxyHost, this.proxyPort);
        this._socket_ = socketCreateSocket;
        this._input_ = socketCreateSocket.getInputStream();
        OutputStream outputStream = this._socket_.getOutputStream();
        this._output_ = outputStream;
        try {
            super._connectAction_(tunnelHandshake(str, i10, this._input_, outputStream));
        } catch (Exception e) {
            throw new IOException("Could not connect to " + str + " using port " + i10, e);
        }
    }

    public FTPHTTPClient(String str, int i10, Charset charset) {
        this(str, i10, null, null, charset);
    }

    public FTPHTTPClient(String str, int i10, String str2, String str3) {
        this(str, i10, str2, str3, StandardCharsets.UTF_8);
    }

    public FTPHTTPClient(String str, int i10) {
        this(str, i10, null, null);
    }

    @Override // org.apache.commons.net.ftp.FTPClient
    @Deprecated
    public Socket _openDataConnection_(int i10, String str) {
        return super._openDataConnection_(i10, str);
    }
}
