package org.apache.commons.net.p162io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SocketInputStream extends FilterInputStream {
    private final Socket socket;

    public SocketInputStream(Socket socket, InputStream inputStream) {
        super(inputStream);
        this.socket = socket;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.socket.close();
    }
}
