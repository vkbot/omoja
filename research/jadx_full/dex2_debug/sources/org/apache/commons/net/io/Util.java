package org.apache.commons.net.io;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class Util {
    public static final int DEFAULT_COPY_BUFFER_SIZE = 8192;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Util() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static void closeQuietly(Closeable closeable) {
        IOUtils.closeQuietly(closeable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long copyReader(Reader reader, Writer writer, int i, long j, CopyStreamListener copyStreamListener) throws CopyStreamException {
        AtomicLong atomicLong = new AtomicLong();
        if (copyStreamListener != null) {
            try {
                writer = new Util$1(writer, writer, copyStreamListener, atomicLong, j);
            } catch (IOException e) {
                throw new CopyStreamException("IOException caught while copying.", atomicLong.get(), e);
            }
        }
        if (i <= 0) {
            i = 8192;
        }
        return IOUtils.copyLarge(reader, writer, new char[i]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long copyStream(InputStream inputStream, OutputStream outputStream, int i, long j, CopyStreamListener copyStreamListener, boolean z) throws CopyStreamException {
        AtomicLong atomicLong = new AtomicLong();
        if (copyStreamListener != null) {
            try {
                outputStream = new Util$2(outputStream, z, outputStream, copyStreamListener, atomicLong, j);
            } catch (IOException e) {
                throw new CopyStreamException("IOException caught while copying.", atomicLong.get(), e);
            }
        }
        if (i <= 0) {
            i = 8192;
        }
        return IOUtils.copyLarge(inputStream, outputStream, new byte[i]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static PrintWriter newPrintWriter(PrintStream printStream) {
        return new PrintWriter(new OutputStreamWriter(printStream, Charset.defaultCharset()));
    }

    @Deprecated
    public static void closeQuietly(Socket socket) {
        IOUtils.closeQuietly(socket);
    }

    public static long copyReader(Reader reader, Writer writer, int i) {
        return copyReader(reader, writer, i, -1L, null);
    }

    @Deprecated
    public static long copyReader(Reader reader, Writer writer) {
        return copyReader(reader, writer, 8192);
    }

    public static long copyStream(InputStream inputStream, OutputStream outputStream, int i) {
        return copyStream(inputStream, outputStream, i, -1L, null);
    }

    public static long copyStream(InputStream inputStream, OutputStream outputStream, int i, long j, CopyStreamListener copyStreamListener) {
        return copyStream(inputStream, outputStream, i, j, copyStreamListener, true);
    }

    public static long copyStream(InputStream inputStream, OutputStream outputStream) {
        return copyStream(inputStream, outputStream, 8192);
    }
}
