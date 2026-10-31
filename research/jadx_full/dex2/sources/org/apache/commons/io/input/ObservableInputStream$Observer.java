package org.apache.commons.io.input;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class ObservableInputStream$Observer {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    public void data(byte[] bArr, int i, int i2) {
    }

    public void closed() {
    }

    public void finished() {
    }

    public void data(int i) {
    }

    public void error(IOException iOException) throws IOException {
        throw iOException;
    }
}
