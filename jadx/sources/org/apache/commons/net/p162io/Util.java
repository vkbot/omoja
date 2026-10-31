package org.apache.commons.net.p162io;

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
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.output.ProxyOutputStream;
import org.apache.commons.p161io.output.ProxyWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class Util {
    public static final int DEFAULT_COPY_BUFFER_SIZE = 8192;

    private Util() {
    }

    @Deprecated
    public static void closeQuietly(Closeable closeable) {
        IOUtils.closeQuietly(closeable);
    }

    public static long copyReader(Reader reader, final Writer writer, int i10, final long j10, final CopyStreamListener copyStreamListener) throws CopyStreamException {
        final AtomicLong atomicLong = new AtomicLong();
        if (copyStreamListener != null) {
            try {
                writer = new ProxyWriter(writer) { // from class: org.apache.commons.net.io.Util.1
                    @Override // org.apache.commons.p161io.output.ProxyWriter
                    public void afterWrite(int i11) throws IOException {
                        writer.flush();
                        copyStreamListener.bytesTransferred(atomicLong.addAndGet(i11), i11, j10);
                    }
                };
            } catch (IOException e) {
                throw new CopyStreamException("IOException caught while copying.", atomicLong.get(), e);
            }
        }
        if (i10 <= 0) {
            i10 = 8192;
        }
        return IOUtils.copyLarge(reader, writer, new char[i10]);
    }

    public static long copyStream(InputStream inputStream, final OutputStream outputStream, int i10, final long j10, final CopyStreamListener copyStreamListener, final boolean z9) throws CopyStreamException {
        final AtomicLong atomicLong = new AtomicLong();
        if (copyStreamListener != null) {
            try {
                outputStream = new ProxyOutputStream(outputStream) { // from class: org.apache.commons.net.io.Util.2
                    @Override // org.apache.commons.p161io.output.ProxyOutputStream
                    public void afterWrite(int i11) throws IOException {
                        if (z9) {
                            outputStream.flush();
                        }
                        copyStreamListener.bytesTransferred(atomicLong.addAndGet(i11), i11, j10);
                    }
                };
            } catch (IOException e) {
                throw new CopyStreamException("IOException caught while copying.", atomicLong.get(), e);
            }
        }
        if (i10 <= 0) {
            i10 = 8192;
        }
        return IOUtils.copyLarge(inputStream, outputStream, new byte[i10]);
    }

    public static PrintWriter newPrintWriter(PrintStream printStream) {
        return new PrintWriter(new OutputStreamWriter(printStream, Charset.defaultCharset()));
    }

    @Deprecated
    public static void closeQuietly(Socket socket) {
        IOUtils.closeQuietly(socket);
    }

    public static long copyReader(Reader reader, Writer writer, int i10) {
        return copyReader(reader, writer, i10, -1L, null);
    }

    @Deprecated
    public static long copyReader(Reader reader, Writer writer) {
        return copyReader(reader, writer, 8192);
    }

    public static long copyStream(InputStream inputStream, OutputStream outputStream, int i10) {
        return copyStream(inputStream, outputStream, i10, -1L, null);
    }

    public static long copyStream(InputStream inputStream, OutputStream outputStream, int i10, long j10, CopyStreamListener copyStreamListener) {
        return copyStream(inputStream, outputStream, i10, j10, copyStreamListener, true);
    }

    public static long copyStream(InputStream inputStream, OutputStream outputStream) {
        return copyStream(inputStream, outputStream, 8192);
    }
}
