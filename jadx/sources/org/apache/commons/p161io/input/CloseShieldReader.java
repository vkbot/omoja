package org.apache.commons.p161io.input;

import java.io.FilterReader;
import java.io.Reader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CloseShieldReader extends ProxyReader {
    @Deprecated
    public CloseShieldReader(Reader reader) {
        super(reader);
    }

    public static CloseShieldReader wrap(Reader reader) {
        return new CloseShieldReader(reader);
    }

    @Override // org.apache.commons.p161io.input.ProxyReader, java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ((FilterReader) this).in = ClosedReader.INSTANCE;
    }
}
