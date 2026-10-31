package org.apache.commons.net.io;

import java.io.BufferedReader;
import java.io.Reader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class CRLFLineReader extends BufferedReader {
    private static final char CR = '\r';
    private static final char LF = '\n';

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CRLFLineReader(Reader reader) {
        super(reader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader
    public String readLine() {
        StringBuilder sb = new StringBuilder();
        synchronized (((BufferedReader) this).lock) {
            boolean z = false;
            while (true) {
                try {
                    int i = read();
                    if (i == -1) {
                        String string = sb.toString();
                        if (string.isEmpty()) {
                            return null;
                        }
                        return string;
                    }
                    if (z && i == 10) {
                        return sb.substring(0, sb.length() - 1);
                    }
                    z = i == 13;
                    sb.append((char) i);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
