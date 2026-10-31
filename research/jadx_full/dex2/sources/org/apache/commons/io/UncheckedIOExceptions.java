package org.apache.commons.io;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class UncheckedIOExceptions {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private UncheckedIOExceptions() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UncheckedIOException create(Object obj) {
        String string = Objects.toString(obj);
        return new UncheckedIOException(string, new IOException(string));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UncheckedIOException wrap(IOException iOException, Object obj) {
        return new UncheckedIOException(Objects.toString(obj), iOException);
    }
}
