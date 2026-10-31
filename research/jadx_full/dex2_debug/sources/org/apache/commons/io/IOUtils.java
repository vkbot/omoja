package org.apache.commons.io;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.CharArrayWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.Selector;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.OpenOption;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.io.channels.FileChannels;
import org.apache.commons.io.function.IOConsumer;
import org.apache.commons.io.function.IOSupplier;
import org.apache.commons.io.function.IOTriFunction;
import org.apache.commons.io.input.BoundedInputStream;
import org.apache.commons.io.input.BoundedInputStream$Builder;
import org.apache.commons.io.input.CharSequenceReader;
import org.apache.commons.io.input.QueueInputStream;
import org.apache.commons.io.output.AppendableWriter;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.commons.io.output.NullOutputStream;
import org.apache.commons.io.output.NullWriter;
import org.apache.commons.io.output.StringBuilderWriter;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class IOUtils {
    public static final int CR = 13;
    public static final int DEFAULT_BUFFER_SIZE = 8192;
    public static final char DIR_SEPARATOR_UNIX = '/';
    public static final char DIR_SEPARATOR_WINDOWS = '\\';
    public static final int EOF = -1;
    public static final int LF = 10;
    public static final int SOFT_MAX_ARRAY_LENGTH = 2147483639;
    public static final char DIR_SEPARATOR = File.separatorChar;
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

    @Deprecated
    public static final String LINE_SEPARATOR = System.lineSeparator();
    public static final String LINE_SEPARATOR_UNIX = StandardLineSeparator.LF.getString();
    public static final String LINE_SEPARATOR_WINDOWS = StandardLineSeparator.CRLF.getString();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public IOUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String a() {
        return lambda$toString$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ char[] access$000() {
        return charArray();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BufferedInputStream buffer(InputStream inputStream) {
        Objects.requireNonNull(inputStream, "inputStream");
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] byteArray() {
        return byteArray(8192);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static char[] charArray() {
        return charArray(8192);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void checkFromIndexSize(int i, int i2, int i3) {
        if ((i | i2 | i3) < 0 || i3 - i2 < i) {
            throw new IndexOutOfBoundsException(String.format("Range [%s, %<s + %s) out of bounds for length %s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void checkFromToIndex(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i3 < i2) {
            kotlin.text.b.a(ai.onnxruntime.a.v("Range [", i, i2, ", ", ") out of bounds for length "), i3);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void clear() {
        IOUtils$ScratchBytes.access$100().remove();
        IOUtils$ScratchChars.access$200().remove();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void close(Closeable closeable, IOConsumer<IOException> iOConsumer) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                if (iOConsumer != null) {
                    iOConsumer.accept(e);
                }
            } catch (Exception e2) {
                if (iOConsumer != null) {
                    iOConsumer.accept(new IOException(e2));
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void closeQ(Closeable closeable) {
        closeQuietly(closeable, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void closeQuietly(Closeable closeable, Consumer<Exception> consumer) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                if (consumer != null) {
                    consumer.accept(e);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long consume(InputStream inputStream) {
        return copyLarge(inputStream, NullOutputStream.INSTANCE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean contentEquals(Reader reader, Reader reader2) {
        int i;
        boolean z;
        int i2;
        if (reader == reader2) {
            return true;
        }
        if (reader == null || reader2 == null) {
            return false;
        }
        IOUtils$ScratchChars iOUtils$ScratchChars = IOUtils$ScratchChars.get();
        try {
            char[] cArrArray = iOUtils$ScratchChars.array();
            char[] cArrCharArray = charArray();
            while (true) {
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (i3 < 8192) {
                    if (i4 == i3) {
                        do {
                            i2 = reader.read(cArrArray, i4, 8192 - i4);
                        } while (i2 == 0);
                        if (i2 == -1) {
                            z = i5 == i3 && reader2.read() == -1;
                            iOUtils$ScratchChars.close();
                            return z;
                        }
                        i4 += i2;
                    }
                    if (i5 == i3) {
                        do {
                            i = reader2.read(cArrCharArray, i5, 8192 - i5);
                        } while (i == 0);
                        if (i == -1) {
                            z = i4 == i3 && reader.read() == -1;
                            iOUtils$ScratchChars.close();
                            return z;
                        }
                        i5 += i;
                    }
                    if (cArrArray[i3] != cArrCharArray[i3]) {
                        iOUtils$ScratchChars.close();
                        return false;
                    }
                    i3++;
                }
            }
        } catch (Throwable th) {
            if (iOUtils$ScratchChars != null) {
                try {
                    iOUtils$ScratchChars.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean contentEqualsIgnoreEOL(BufferedReader bufferedReader, BufferedReader bufferedReader2) {
        if (bufferedReader == bufferedReader2) {
            return true;
        }
        if (bufferedReader == null || bufferedReader2 == null) {
            return false;
        }
        return contentEquals(bufferedReader.lines(), bufferedReader2.lines());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long copy(URL url, File file) throws IOException {
        Objects.requireNonNull(file, "file");
        OutputStream outputStreamF = d.f(c5.h.i(file), new OpenOption[0]);
        try {
            long jCopy = copy(url, outputStreamF);
            if (outputStreamF != null) {
                outputStreamF.close();
            }
            return jCopy;
        } catch (Throwable th) {
            if (outputStreamF != null) {
                try {
                    outputStreamF.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long copyLarge(InputStream inputStream, OutputStream outputStream, long j, long j2, byte[] bArr) throws IOException {
        long j3 = 0;
        if (j > 0) {
            skipFully(inputStream, j);
        }
        if (j2 == 0) {
            return 0L;
        }
        int length = bArr.length;
        int iMin = (j2 <= 0 || j2 >= ((long) length)) ? length : (int) j2;
        while (iMin > 0) {
            int i = inputStream.read(bArr, 0, iMin);
            if (-1 == i) {
                break;
            }
            outputStream.write(bArr, 0, i);
            j3 += (long) i;
            if (j2 > 0) {
                iMin = (int) Math.min(j2 - j3, length);
            }
        }
        return j3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    public static UnsynchronizedByteArrayOutputStream copyToOutputStream(InputStream inputStream, long j, int i) {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = UnsynchronizedByteArrayOutputStream.builder().setBufferSize(i).get();
        try {
            BoundedInputStream boundedInputStream = ((BoundedInputStream$Builder) ((BoundedInputStream$Builder) ((BoundedInputStream$Builder) BoundedInputStream.builder().setMaxCount(j)).setPropagateClose(false)).setInputStream(inputStream)).get();
            try {
                unsynchronizedByteArrayOutputStream.write(boundedInputStream);
                if (boundedInputStream != null) {
                    boundedInputStream.close();
                }
                unsynchronizedByteArrayOutputStream.close();
                return unsynchronizedByteArrayOutputStream;
            } catch (Throwable th) {
                if (boundedInputStream != null) {
                    try {
                        boundedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            if (unsynchronizedByteArrayOutputStream != null) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ String lambda$toString$0() {
        throw new NullPointerException("input");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static LineIterator lineIterator(InputStream inputStream, Charset charset) {
        return new LineIterator(new InputStreamReader(inputStream, Charsets.toCharset(charset)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int read(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        while (byteBuffer.remaining() > 0 && -1 != readableByteChannel.read(byteBuffer)) {
        }
        return iRemaining - byteBuffer.remaining();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void readFully(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws EOFException {
        int iRemaining = byteBuffer.remaining();
        int i = read(readableByteChannel, byteBuffer);
        if (i != iRemaining) {
            throw new EOFException(ai.onnxruntime.a.g(iRemaining, "Length to read: ", " actual: ", i));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List<String> readLines(CharSequence charSequence) {
        CharSequenceReader charSequenceReader = new CharSequenceReader(charSequence);
        try {
            List<String> lines = readLines(charSequenceReader);
            charSequenceReader.close();
            return lines;
        } catch (Throwable th) {
            try {
                charSequenceReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] resourceToByteArray(String str, ClassLoader classLoader) {
        return toByteArray(resourceToURL(str, classLoader));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String resourceToString(String str, Charset charset, ClassLoader classLoader) {
        return toString(resourceToURL(str, classLoader), charset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static URL resourceToURL(String str, ClassLoader classLoader) {
        URL resource = classLoader == null ? IOUtils.class.getResource(str) : classLoader.getResource(str);
        if (resource != null) {
            return resource;
        }
        n0.b.A(ai.onnxruntime.a.l("Resource not found: ", str));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long skip(Reader reader, long j) {
        if (j < 0) {
            j1.i.k(ai.onnxruntime.a.h(j, "Skip count must be non-negative, actual: "));
            return 0L;
        }
        IOUtils$ScratchChars iOUtils$ScratchChars = IOUtils$ScratchChars.get();
        try {
            char[] cArrArray = iOUtils$ScratchChars.array();
            long j2 = j;
            while (j2 > 0) {
                long j3 = reader.read(cArrArray, 0, (int) Math.min(j2, cArrArray.length));
                if (j3 < 0) {
                    break;
                }
                j2 -= j3;
            }
            iOUtils$ScratchChars.close();
            return j - j2;
        } catch (Throwable th) {
            if (iOUtils$ScratchChars != null) {
                try {
                    iOUtils$ScratchChars.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void skipFully(InputStream inputStream, long j, Supplier<byte[]> supplier) {
        if (j < 0) {
            j1.i.k(ai.onnxruntime.a.h(j, "Bytes to skip must not be negative: "));
            return;
        }
        long jSkip = skip(inputStream, j, supplier);
        if (jSkip == j) {
            return;
        }
        e.e("Bytes to skip: ", j, jSkip);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static InputStream toBufferedInputStream(InputStream inputStream) {
        return ByteArrayOutputStream.toBufferedInputStream(inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BufferedReader toBufferedReader(Reader reader) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] toByteArray(IOTriFunction<byte[], Integer, Integer, Integer> iOTriFunction, int i) throws EOFException {
        if (i < 0) {
            n0.b.v("size < 0, size = %,d", new Object[]{Integer.valueOf(i)});
            return null;
        }
        if (i == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArrByteArray = byteArray(i);
        int i2 = 0;
        while (i2 < i) {
            int iIntValue = iOTriFunction.apply(bArrByteArray, Integer.valueOf(i2), Integer.valueOf(i - i2)).intValue();
            if (iIntValue == -1) {
                break;
            }
            i2 += iIntValue;
        }
        if (i2 == i) {
            return bArrByteArray;
        }
        throw new EOFException(String.format("Expected read size: %,d, actual: %,d", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static char[] toCharArray(InputStream inputStream, Charset charset) {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(inputStream, charArrayWriter, charset);
        return charArrayWriter.toCharArray();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static InputStream toInputStream(String str, Charset charset) {
        return new ByteArrayInputStream(str.getBytes(Charsets.toCharset(charset)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String toString(IOSupplier<InputStream> iOSupplier, Charset charset, IOSupplier<String> iOSupplier2) throws IOException {
        if (iOSupplier == null) {
            return iOSupplier2.get();
        }
        InputStream inputStream = iOSupplier.get();
        try {
            String string = inputStream != null ? toString(inputStream, charset) : iOSupplier2.get();
            if (inputStream != null) {
                inputStream.close();
            }
            return string;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void write(String str, OutputStream outputStream, Charset charset) throws IOException {
        if (str != null) {
            Channels.newChannel(outputStream).write(Charsets.toCharset(charset).encode(str));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void writeChunked(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr != null) {
            int length = bArr.length;
            int i = 0;
            while (length > 0) {
                int iMin = Math.min(length, 8192);
                outputStream.write(bArr, i, iMin);
                length -= iMin;
                i += iMin;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void writeLines(Collection<?> collection, String str, OutputStream outputStream, Charset charset) throws IOException {
        if (collection == null) {
            return;
        }
        if (str == null) {
            str = System.lineSeparator();
        }
        if (StandardCharsets.UTF_16.equals(charset)) {
            charset = StandardCharsets.UTF_16BE;
        }
        byte[] bytes = str.getBytes(charset);
        for (Object obj : collection) {
            if (obj != null) {
                write(obj.toString(), outputStream, charset);
            }
            outputStream.write(bytes);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Writer writer(Appendable appendable) {
        Objects.requireNonNull(appendable, "appendable");
        if (appendable instanceof Writer) {
            return (Writer) appendable;
        }
        return appendable instanceof StringBuilder ? new StringBuilderWriter((StringBuilder) appendable) : new AppendableWriter(appendable);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream, int i) {
        return ByteArrayOutputStream.toBufferedInputStream(inputStream, i);
    }

    public static byte[] byteArray(int i) {
        return new byte[i];
    }

    private static char[] charArray(int i) {
        return new char[i];
    }

    public static long consume(Reader reader) {
        return copyLarge(reader, NullWriter.INSTANCE);
    }

    public static int length(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        return cArr.length;
    }

    public static byte[] resourceToByteArray(String str) {
        return resourceToByteArray(str, null);
    }

    public static String resourceToString(String str, Charset charset) {
        return resourceToString(str, charset, null);
    }

    public static int length(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public static int length(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    public static void closeQuietly(Closeable... closeableArr) {
        if (closeableArr != null) {
            closeQuietly((Stream<Closeable>) Arrays.stream(closeableArr));
        }
    }

    public static BufferedReader toBufferedReader(Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    @Deprecated
    public static char[] toCharArray(InputStream inputStream) {
        return toCharArray(inputStream, Charset.defaultCharset());
    }

    public static void closeQuietly(Closeable closeable) {
        closeQuietly(closeable, null);
    }

    public static char[] toCharArray(InputStream inputStream, String str) {
        return toCharArray(inputStream, Charsets.toCharset(str));
    }

    public static InputStream toInputStream(CharSequence charSequence, Charset charset) {
        return toInputStream(charSequence.toString(), charset);
    }

    public static void closeQuietly(InputStream inputStream) {
        closeQ(inputStream);
    }

    public static LineIterator lineIterator(InputStream inputStream, String str) {
        return lineIterator(inputStream, Charsets.toCharset(str));
    }

    public static char[] toCharArray(Reader reader) {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(reader, (Writer) charArrayWriter);
        return charArrayWriter.toCharArray();
    }

    public static InputStream toInputStream(CharSequence charSequence, String str) {
        return toInputStream(charSequence, Charsets.toCharset(str));
    }

    public static void closeQuietly(Iterable<Closeable> iterable) {
        if (iterable != null) {
            iterable.forEach(new u());
        }
    }

    public static LineIterator lineIterator(Reader reader) {
        return new LineIterator(reader);
    }

    @Deprecated
    public static InputStream toInputStream(String str) {
        return toInputStream(str, Charset.defaultCharset());
    }

    public static void closeQuietly(OutputStream outputStream) {
        closeQ(outputStream);
    }

    @Deprecated
    public static InputStream toInputStream(CharSequence charSequence) {
        return toInputStream(charSequence, Charset.defaultCharset());
    }

    public static BufferedInputStream buffer(InputStream inputStream, int i) {
        Objects.requireNonNull(inputStream, "inputStream");
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i);
    }

    public static void closeQuietly(Reader reader) {
        closeQ(reader);
    }

    public static InputStream toInputStream(String str, String str2) {
        return new ByteArrayInputStream(str.getBytes(Charsets.toCharset(str2)));
    }

    @Deprecated
    public static void write(byte[] bArr, Writer writer) throws IOException {
        write(bArr, writer, Charset.defaultCharset());
    }

    public static void closeQuietly(Selector selector) {
        closeQ(selector);
    }

    public static void write(byte[] bArr, Writer writer, Charset charset) throws IOException {
        if (bArr != null) {
            writer.write(new String(bArr, Charsets.toCharset(charset)));
        }
    }

    public static void writeChunked(char[] cArr, Writer writer) throws IOException {
        if (cArr != null) {
            int length = cArr.length;
            int i = 0;
            while (length > 0) {
                int iMin = Math.min(length, 8192);
                writer.write(cArr, i, iMin);
                length -= iMin;
                i += iMin;
            }
        }
    }

    public static void closeQuietly(ServerSocket serverSocket) {
        closeQ(serverSocket);
    }

    public static void write(byte[] bArr, Writer writer, String str) throws IOException {
        write(bArr, writer, Charsets.toCharset(str));
    }

    public static BufferedOutputStream buffer(OutputStream outputStream) {
        Objects.requireNonNull(outputStream, "outputStream");
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream);
    }

    public static void checkFromToIndex(CharSequence charSequence, int i, int i2) {
        checkFromToIndex(i, i2, charSequence != null ? charSequence.length() : 4);
    }

    public static void closeQuietly(Socket socket) {
        closeQ(socket);
    }

    @Deprecated
    public static void write(char[] cArr, OutputStream outputStream) throws IOException {
        write(cArr, outputStream, Charset.defaultCharset());
    }

    public static void closeQuietly(Stream<Closeable> stream) {
        if (stream != null) {
            stream.forEach(new u());
        }
    }

    public static void write(char[] cArr, OutputStream outputStream, Charset charset) throws IOException {
        if (cArr != null) {
            write(new String(cArr), outputStream, charset);
        }
    }

    public static void closeQuietly(Writer writer) {
        closeQ(writer);
    }

    public static int read(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        checkFromIndexSize(bArr, i, i2);
        int i3 = i2;
        while (i3 > 0) {
            int i4 = inputStream.read(bArr, (i2 - i3) + i, i3);
            if (-1 == i4) {
                break;
            }
            i3 -= i4;
        }
        return i2 - i3;
    }

    @Deprecated
    public static List<String> readLines(InputStream inputStream) {
        return readLines(inputStream, Charset.defaultCharset());
    }

    public static void write(char[] cArr, OutputStream outputStream, String str) throws IOException {
        write(cArr, outputStream, Charsets.toCharset(str));
    }

    public static BufferedOutputStream buffer(OutputStream outputStream, int i) {
        Objects.requireNonNull(outputStream, "outputStream");
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i);
    }

    public static boolean contentEqualsIgnoreEOL(Reader reader, Reader reader2) {
        if (reader == reader2) {
            return true;
        }
        if (reader == null || reader2 == null) {
            return false;
        }
        return contentEqualsIgnoreEOL(toBufferedReader(reader), toBufferedReader(reader2));
    }

    public static List<String> readLines(InputStream inputStream, Charset charset) {
        return readLines(new InputStreamReader(inputStream, Charsets.toCharset(charset)));
    }

    public static void write(char[] cArr, Writer writer) throws IOException {
        if (cArr != null) {
            writer.write(cArr);
        }
    }

    public static void close(Closeable... closeableArr) {
        IOConsumer.forAll(new s(2), closeableArr);
    }

    public static int read(InputStream inputStream, byte[] bArr) {
        return read(inputStream, bArr, 0, bArr.length);
    }

    public static void readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = read(inputStream, bArr, i, i2);
        if (i3 != i2) {
            throw new EOFException(ai.onnxruntime.a.g(i2, "Length to read: ", " actual: ", i3));
        }
    }

    public static List<String> readLines(InputStream inputStream, String str) {
        return readLines(inputStream, Charsets.toCharset(str));
    }

    @Deprecated
    public static void write(CharSequence charSequence, OutputStream outputStream) throws IOException {
        write(charSequence, outputStream, Charset.defaultCharset());
    }

    public static void close(Closeable closeable) throws IOException {
        if (closeable != null) {
            closeable.close();
        }
    }

    public static int read(Reader reader, char[] cArr) {
        return read(reader, cArr, 0, cArr.length);
    }

    public static List<String> readLines(Reader reader) {
        return (List) toBufferedReader(reader).lines().collect(Collectors.toList());
    }

    public static void write(CharSequence charSequence, OutputStream outputStream, Charset charset) throws IOException {
        if (charSequence != null) {
            write(charSequence.toString(), outputStream, charset);
        }
    }

    public static BufferedReader buffer(Reader reader) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
    }

    public static void close(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    public static int read(Reader reader, char[] cArr, int i, int i2) throws IOException {
        checkFromIndexSize(cArr, i, i2);
        int i3 = i2;
        while (i3 > 0) {
            int i4 = reader.read(cArr, (i2 - i3) + i, i3);
            if (-1 == i4) {
                break;
            }
            i3 -= i4;
        }
        return i2 - i3;
    }

    public static URL resourceToURL(String str) {
        return resourceToURL(str, null);
    }

    public static void write(CharSequence charSequence, OutputStream outputStream, String str) throws IOException {
        write(charSequence, outputStream, Charsets.toCharset(str));
    }

    public static BufferedReader buffer(Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    public static void write(CharSequence charSequence, Writer writer) throws IOException {
        if (charSequence != null) {
            write(charSequence.toString(), writer);
        }
    }

    public static BufferedWriter buffer(Writer writer) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer);
    }

    @Deprecated
    public static byte[] readFully(InputStream inputStream, int i) {
        return toByteArray(inputStream, i);
    }

    @Deprecated
    public static void write(String str, OutputStream outputStream) throws IOException {
        write(str, outputStream, Charset.defaultCharset());
    }

    public static BufferedWriter buffer(Writer writer, int i) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    public static void readFully(InputStream inputStream, byte[] bArr) throws IOException {
        readFully(inputStream, bArr, 0, bArr.length);
    }

    public static void write(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr != null) {
            outputStream.write(bArr);
        }
    }

    public static void readFully(Reader reader, char[] cArr) throws IOException {
        readFully(reader, cArr, 0, cArr.length);
    }

    public static void skipFully(InputStream inputStream, long j) {
        long jSkip = skip(inputStream, j);
        if (jSkip == j) {
            return;
        }
        e.e("Bytes to skip: ", j, jSkip);
    }

    public static void write(String str, OutputStream outputStream, String str2) throws IOException {
        write(str, outputStream, Charsets.toCharset(str2));
    }

    public static void readFully(Reader reader, char[] cArr, int i, int i2) throws IOException {
        int i3 = read(reader, cArr, i, i2);
        if (i3 != i2) {
            throw new EOFException(ai.onnxruntime.a.g(i2, "Length to read: ", " actual: ", i3));
        }
    }

    public static void write(String str, Writer writer) throws IOException {
        if (str != null) {
            writer.write(str);
        }
    }

    public static void skipFully(ReadableByteChannel readableByteChannel, long j) throws IOException {
        if (j >= 0) {
            long jSkip = skip(readableByteChannel, j);
            if (jSkip == j) {
                return;
            }
            e.e("Bytes to skip: ", j, jSkip);
            return;
        }
        j1.i.k(ai.onnxruntime.a.h(j, "Bytes to skip must not be negative: "));
    }

    @Deprecated
    public static void write(StringBuffer stringBuffer, OutputStream outputStream) throws IOException {
        write(stringBuffer, outputStream, (String) null);
    }

    @Deprecated
    public static void write(StringBuffer stringBuffer, OutputStream outputStream, String str) throws IOException {
        if (stringBuffer != null) {
            write(stringBuffer.toString(), outputStream, Charsets.toCharset(str));
        }
    }

    @Deprecated
    public static void write(StringBuffer stringBuffer, Writer writer) throws IOException {
        if (stringBuffer != null) {
            writer.write(stringBuffer.toString());
        }
    }

    public static void checkFromIndexSize(char[] cArr, int i, int i2) {
        Objects.requireNonNull(cArr, "char array");
        checkFromIndexSize(i, i2, cArr.length);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i) {
        return copyLarge(inputStream, outputStream, byteArray(i));
    }

    public static void skipFully(Reader reader, long j) {
        long jSkip = skip(reader, j);
        if (jSkip == j) {
            return;
        }
        e.e("Chars to skip: ", j, jSkip);
    }

    public static void checkFromIndexSize(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "byte array");
        checkFromIndexSize(i, i2, bArr.length);
    }

    @Deprecated
    public static void copy(InputStream inputStream, Writer writer) {
        copy(inputStream, writer, Charset.defaultCharset());
    }

    public static void checkFromIndexSize(String str, int i, int i2) {
        Objects.requireNonNull(str, "str");
        checkFromIndexSize(i, i2, str.length());
    }

    public static void copy(InputStream inputStream, Writer writer, Charset charset) {
        copy((Reader) new InputStreamReader(inputStream, Charsets.toCharset(charset)), writer);
    }

    public static void copy(InputStream inputStream, Writer writer, String str) {
        copy(inputStream, writer, Charsets.toCharset(str));
    }

    public static QueueInputStream copy(java.io.ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        Objects.requireNonNull(byteArrayOutputStream, "outputStream");
        QueueInputStream queueInputStream = new QueueInputStream();
        byteArrayOutputStream.writeTo(queueInputStream.newQueueOutputStream());
        return queueInputStream;
    }

    public static long copy(Reader reader, Appendable appendable) {
        return copy(reader, appendable, CharBuffer.allocate(8192));
    }

    public static long copy(Reader reader, Appendable appendable, CharBuffer charBuffer) throws IOException {
        long j = 0;
        while (true) {
            int i = reader.read(charBuffer);
            if (-1 == i) {
                return j;
            }
            charBuffer.flip();
            appendable.append(charBuffer, 0, i);
            j += (long) i;
        }
    }

    public static String toString(byte[] bArr, String str) {
        return new String(bArr, Charsets.toCharset(str));
    }

    @Deprecated
    public static String toString(InputStream inputStream) {
        return toString(inputStream, Charset.defaultCharset());
    }

    @Deprecated
    public static void copy(Reader reader, OutputStream outputStream) throws IOException {
        copy(reader, outputStream, Charset.defaultCharset());
    }

    public static String toString(InputStream inputStream, Charset charset) {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter();
        try {
            copy(inputStream, stringBuilderWriter, charset);
            String string = stringBuilderWriter.toString();
            stringBuilderWriter.close();
            return string;
        } catch (Throwable th) {
            try {
                stringBuilderWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void copy(Reader reader, OutputStream outputStream, Charset charset) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charsets.toCharset(charset));
        copy(reader, (Writer) outputStreamWriter);
        outputStreamWriter.flush();
    }

    @Deprecated
    public static void writeLines(Collection<?> collection, String str, OutputStream outputStream) throws IOException {
        writeLines(collection, str, outputStream, Charset.defaultCharset());
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        Objects.requireNonNull(inputStream, "inputStream");
        Objects.requireNonNull(outputStream, "outputStream");
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (-1 == i) {
                return j;
            }
            outputStream.write(bArr, 0, i);
            j += (long) i;
        }
    }

    public static void writeLines(Collection<?> collection, String str, OutputStream outputStream, String str2) throws IOException {
        writeLines(collection, str, outputStream, Charsets.toCharset(str2));
    }

    public static void copy(Reader reader, OutputStream outputStream, String str) throws IOException {
        copy(reader, outputStream, Charsets.toCharset(str));
    }

    public static void writeLines(Collection<?> collection, String str, Writer writer) throws IOException {
        if (collection == null) {
            return;
        }
        if (str == null) {
            str = System.lineSeparator();
        }
        for (Object obj : collection) {
            if (obj != null) {
                writer.write(obj.toString());
            }
            writer.write(str);
        }
    }

    public static int copy(Reader reader, Writer writer) {
        long jCopyLarge = copyLarge(reader, writer);
        if (jCopyLarge > 2147483647L) {
            return -1;
        }
        return (int) jCopyLarge;
    }

    public static String toString(InputStream inputStream, String str) {
        return toString(inputStream, Charsets.toCharset(str));
    }

    public static int copy(InputStream inputStream, OutputStream outputStream) {
        long jCopyLarge = copyLarge(inputStream, outputStream);
        if (jCopyLarge > 2147483647L) {
            return -1;
        }
        return (int) jCopyLarge;
    }

    public static String toString(IOSupplier<InputStream> iOSupplier, Charset charset) {
        return toString(iOSupplier, charset, new e());
    }

    public static long copy(URL url, OutputStream outputStream) throws IOException {
        Objects.requireNonNull(url, "url");
        InputStream inputStreamOpenStream = url.openStream();
        try {
            long jCopyLarge = copyLarge(inputStreamOpenStream, outputStream);
            if (inputStreamOpenStream != null) {
                inputStreamOpenStream.close();
            }
            return jCopyLarge;
        } catch (Throwable th) {
            if (inputStreamOpenStream != null) {
                try {
                    inputStreamOpenStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream, long j, long j2) {
        IOUtils$ScratchBytes iOUtils$ScratchBytes = IOUtils$ScratchBytes.get();
        try {
            long jCopyLarge = copyLarge(inputStream, outputStream, j, j2, iOUtils$ScratchBytes.array());
            iOUtils$ScratchBytes.close();
            return jCopyLarge;
        } catch (Throwable th) {
            if (iOUtils$ScratchBytes == null) {
                throw th;
            }
            try {
                iOUtils$ScratchBytes.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    @Deprecated
    public static String toString(byte[] bArr) {
        return new String(bArr, Charset.defaultCharset());
    }

    public static String toString(Reader reader) {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter();
        try {
            copy(reader, (Writer) stringBuilderWriter);
            String string = stringBuilderWriter.toString();
            stringBuilderWriter.close();
            return string;
        } catch (Throwable th) {
            try {
                stringBuilderWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream) {
        return copy(inputStream, outputStream, 8192);
    }

    public static long copyLarge(Reader reader, Writer writer) {
        IOUtils$ScratchChars iOUtils$ScratchChars = IOUtils$ScratchChars.get();
        try {
            long jCopyLarge = copyLarge(reader, writer, iOUtils$ScratchChars.array());
            iOUtils$ScratchChars.close();
            return jCopyLarge;
        } catch (Throwable th) {
            if (iOUtils$ScratchChars != null) {
                try {
                    iOUtils$ScratchChars.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Deprecated
    public static String toString(URI uri) {
        return toString(uri, Charset.defaultCharset());
    }

    public static String toString(URI uri, Charset charset) {
        return toString(uri.toURL(), Charsets.toCharset(charset));
    }

    public static String toString(URI uri, String str) {
        return toString(uri, Charsets.toCharset(str));
    }

    public static long copyLarge(Reader reader, Writer writer, char[] cArr) throws IOException {
        long j = 0;
        while (true) {
            int i = reader.read(cArr);
            if (-1 == i) {
                return j;
            }
            writer.write(cArr, 0, i);
            j += (long) i;
        }
    }

    @Deprecated
    public static String toString(URL url) {
        return toString(url, Charset.defaultCharset());
    }

    public static String toString(URL url, Charset charset) {
        Objects.requireNonNull(url);
        return toString(new r(0, url), charset);
    }

    public static long copyLarge(Reader reader, Writer writer, long j, long j2) {
        IOUtils$ScratchChars iOUtils$ScratchChars = IOUtils$ScratchChars.get();
        try {
            long jCopyLarge = copyLarge(reader, writer, j, j2, iOUtils$ScratchChars.array());
            iOUtils$ScratchChars.close();
            return jCopyLarge;
        } catch (Throwable th) {
            if (iOUtils$ScratchChars == null) {
                throw th;
            }
            try {
                iOUtils$ScratchChars.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public static String toString(URL url, String str) {
        return toString(url, Charsets.toCharset(str));
    }

    public static long skip(InputStream inputStream, long j, Supplier<byte[]> supplier) {
        if (j < 0) {
            j1.i.k(ai.onnxruntime.a.h(j, "Skip count must be non-negative, actual: "));
            return 0L;
        }
        long j2 = j;
        while (j2 > 0) {
            byte[] bArr = supplier.get();
            long j3 = inputStream.read(bArr, 0, (int) Math.min(j2, bArr.length));
            if (j3 < 0) {
                break;
            }
            j2 -= j3;
        }
        return j - j2;
    }

    public static long copyLarge(Reader reader, Writer writer, long j, long j2, char[] cArr) throws IOException {
        long j3 = 0;
        if (j > 0) {
            skipFully(reader, j);
        }
        if (j2 == 0) {
            return 0L;
        }
        int length = cArr.length;
        if (j2 > 0 && j2 < cArr.length) {
            length = (int) j2;
        }
        while (length > 0) {
            int i = reader.read(cArr, 0, length);
            if (-1 == i) {
                break;
            }
            writer.write(cArr, 0, i);
            j3 += (long) i;
            if (j2 > 0) {
                length = (int) Math.min(j2 - j3, cArr.length);
            }
        }
        return j3;
    }

    public static long skip(ReadableByteChannel readableByteChannel, long j) throws IOException {
        if (j >= 0) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) Math.min(j, 8192L));
            long j2 = j;
            while (j2 > 0) {
                byteBufferAllocate.position(0);
                byteBufferAllocate.limit((int) Math.min(j2, 8192L));
                int i = readableByteChannel.read(byteBufferAllocate);
                if (i == -1) {
                    break;
                }
                j2 -= (long) i;
            }
            return j - j2;
        }
        j1.i.k(ai.onnxruntime.a.h(j, "Skip count must be non-negative, actual: "));
        return 0L;
    }

    public static long skip(InputStream inputStream, long j) {
        IOUtils$ScratchBytes iOUtils$ScratchBytes = IOUtils$ScratchBytes.get();
        try {
            Objects.requireNonNull(iOUtils$ScratchBytes);
            long jSkip = skip(inputStream, j, new v(0, iOUtils$ScratchBytes));
            iOUtils$ScratchBytes.close();
            return jSkip;
        } catch (Throwable th) {
            if (iOUtils$ScratchBytes != null) {
                try {
                    iOUtils$ScratchBytes.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static byte[] toByteArray(InputStream inputStream, int i) {
        Objects.requireNonNull(inputStream, "input");
        return toByteArray(new r(1, inputStream), i);
    }

    public static byte[] toByteArray(InputStream inputStream, int i, int i2) throws EOFException {
        Objects.requireNonNull(inputStream, "input");
        if (i2 <= 0) {
            n0.b.v("chunkSize <= 0, chunkSize = %,d", new Object[]{Integer.valueOf(i2)});
            return null;
        }
        if (i <= i2) {
            return toByteArray(new r(1, inputStream), i);
        }
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStreamCopyToOutputStream = copyToOutputStream(inputStream, i, i2);
        int size = unsynchronizedByteArrayOutputStreamCopyToOutputStream.size();
        if (size == i) {
            return unsynchronizedByteArrayOutputStreamCopyToOutputStream.toByteArray();
        }
        throw new EOFException(String.format("Expected read size: %,d, actual: %,d", Integer.valueOf(i), Integer.valueOf(size)));
    }

    public static byte[] toByteArray(InputStream inputStream, long j) {
        if (j <= 2147483647L) {
            return toByteArray(inputStream, (int) j);
        }
        n0.b.v("size > Integer.MAX_VALUE, size = %,d", new Object[]{Long.valueOf(j)});
        return null;
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStreamCopyToOutputStream = copyToOutputStream(inputStream, 2147483640L, 8192);
        if (unsynchronizedByteArrayOutputStreamCopyToOutputStream.size() <= 2147483639) {
            return unsynchronizedByteArrayOutputStreamCopyToOutputStream.toByteArray();
        }
        throw new IOException(String.format("Cannot read more than %,d into a byte array", Integer.valueOf(SOFT_MAX_ARRAY_LENGTH)));
    }

    @Deprecated
    public static byte[] toByteArray(Reader reader) {
        return toByteArray(reader, Charset.defaultCharset());
    }

    public static byte[] toByteArray(Reader reader, Charset charset) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            copy(reader, byteArrayOutputStream, charset);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static byte[] toByteArray(Reader reader, String str) {
        return toByteArray(reader, Charsets.toCharset(str));
    }

    @Deprecated
    public static byte[] toByteArray(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    public static byte[] toByteArray(URI uri) {
        return toByteArray(uri.toURL());
    }

    public static byte[] toByteArray(URL url) {
        CloseableURLConnection closeableURLConnectionOpen = CloseableURLConnection.open(url);
        try {
            byte[] byteArray = toByteArray(closeableURLConnectionOpen);
            if (closeableURLConnectionOpen != null) {
                closeableURLConnectionOpen.close();
            }
            return byteArray;
        } catch (Throwable th) {
            if (closeableURLConnectionOpen != null) {
                try {
                    closeableURLConnectionOpen.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static byte[] toByteArray(URLConnection uRLConnection) throws IOException {
        InputStream inputStream = uRLConnection.getInputStream();
        try {
            byte[] byteArray = toByteArray(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private static boolean contentEquals(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !Objects.equals(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static boolean contentEquals(InputStream inputStream, InputStream inputStream2) {
        if (inputStream == inputStream2) {
            return true;
        }
        if (inputStream == null || inputStream2 == null) {
            return false;
        }
        return FileChannels.contentEquals(Channels.newChannel(inputStream), Channels.newChannel(inputStream2), 8192);
    }

    private static boolean contentEquals(Stream<?> stream, Stream<?> stream2) {
        if (stream == stream2) {
            return true;
        }
        if (stream == null || stream2 == null) {
            return false;
        }
        return contentEquals(stream.iterator(), stream2.iterator());
    }
}
