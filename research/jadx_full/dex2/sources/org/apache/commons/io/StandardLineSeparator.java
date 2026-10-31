package org.apache.commons.io;

import java.nio.charset.Charset;
import java.util.Objects;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public enum StandardLineSeparator {
    CR("\r"),
    CRLF(SocketClient.NETASCII_EOL),
    LF("\n");

    private final String lineSeparator;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    StandardLineSeparator(String str) {
        Objects.requireNonNull(str, "lineSeparator");
        this.lineSeparator = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] getBytes(Charset charset) {
        return this.lineSeparator.getBytes(charset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getString() {
        return this.lineSeparator;
    }
}
