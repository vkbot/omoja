package org.apache.commons.net.p162io;

import java.io.BufferedReader;
import java.io.Reader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class CRLFLineReader extends BufferedReader {

    /* JADX INFO: renamed from: CR */
    private static final char f8133CR = '\r';

    /* JADX INFO: renamed from: LF */
    private static final char f8134LF = '\n';

    public CRLFLineReader(Reader reader) {
        super(reader);
    }

    @Override // java.io.BufferedReader
    public String readLine() {
        StringBuilder sb = new StringBuilder();
        synchronized (((BufferedReader) this).lock) {
            boolean z9 = false;
            while (true) {
                try {
                    int i10 = read();
                    if (i10 == -1) {
                        String string = sb.toString();
                        if (string.isEmpty()) {
                            return null;
                        }
                        return string;
                    }
                    if (z9 && i10 == 10) {
                        return sb.substring(0, sb.length() - 1);
                    }
                    z9 = i10 == 13;
                    sb.append((char) i10);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
