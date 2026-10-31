package org.apache.commons.net.ftp;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class DeflateSocket extends DelegateSocket {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DeflateSocket(Socket socket) {
        super(socket);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.DelegateSocket, java.net.Socket
    public InputStream getInputStream() {
        return new InflaterInputStream(this.delegate.getInputStream());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.DelegateSocket, java.net.Socket
    public OutputStream getOutputStream() {
        return new DeflaterOutputStream(this.delegate.getOutputStream());
    }
}
