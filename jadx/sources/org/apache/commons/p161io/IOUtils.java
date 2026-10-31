package org.apache.commons.p161io;

import ai.onnxruntime.AbstractC0074a;
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
import java.nio.file.Files;
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
import kotlin.text.C2174b;
import org.apache.commons.p161io.channels.FileChannels;
import org.apache.commons.p161io.function.IOConsumer;
import org.apache.commons.p161io.function.IOSupplier;
import org.apache.commons.p161io.function.IOTriFunction;
import org.apache.commons.p161io.input.BoundedInputStream;
import org.apache.commons.p161io.input.CharSequenceReader;
import org.apache.commons.p161io.input.QueueInputStream;
import org.apache.commons.p161io.output.AppendableWriter;
import org.apache.commons.p161io.output.ByteArrayOutputStream;
import org.apache.commons.p161io.output.NullOutputStream;
import org.apache.commons.p161io.output.NullWriter;
import org.apache.commons.p161io.output.StringBuilderWriter;
import org.apache.commons.p161io.output.UnsynchronizedByteArrayOutputStream;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class IOUtils {

    /* JADX INFO: renamed from: CR */
    public static final int f7929CR = 13;
    public static final int DEFAULT_BUFFER_SIZE = 8192;
    public static final char DIR_SEPARATOR_UNIX = '/';
    public static final char DIR_SEPARATOR_WINDOWS = '\\';
    public static final int EOF = -1;

    /* JADX INFO: renamed from: LF */
    public static final int f7930LF = 10;
    public static final int SOFT_MAX_ARRAY_LENGTH = 2147483639;
    public static final char DIR_SEPARATOR = File.separatorChar;
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

    @Deprecated
    public static final String LINE_SEPARATOR = System.lineSeparator();
    public static final String LINE_SEPARATOR_UNIX = StandardLineSeparator.LF.getString();
    public static final String LINE_SEPARATOR_WINDOWS = StandardLineSeparator.CRLF.getString();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class ScratchBytes implements AutoCloseable {
        private final byte[] buffer;
        private static final ThreadLocal<Object[]> LOCAL = new C2928x(new C2927w(0), 0);
        private static final ScratchBytes INSTANCE = new ScratchBytes(null);

        private ScratchBytes(byte[] bArr) {
            this.buffer = bArr;
        }

        public static ScratchBytes get() {
            Object[] objArr = LOCAL.get();
            if (((Boolean) objArr[0]).booleanValue()) {
                return new ScratchBytes(IOUtils.byteArray());
            }
            objArr[0] = Boolean.TRUE;
            return INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Object[] lambda$static$0() {
            return new Object[]{Boolean.FALSE, IOUtils.byteArray()};
        }

        public byte[] array() {
            byte[] bArr = this.buffer;
            return bArr != null ? bArr : (byte[]) LOCAL.get()[1];
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            if (this.buffer == null) {
                Object[] objArr = LOCAL.get();
                Arrays.fill((byte[]) objArr[1], (byte) 0);
                objArr[0] = Boolean.FALSE;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class ScratchChars implements AutoCloseable {
        private final char[] buffer;
        private static final ThreadLocal<Object[]> LOCAL = new C2928x(new C2927w(1), 1);
        private static final ScratchChars INSTANCE = new ScratchChars(null);

        private ScratchChars(char[] cArr) {
            this.buffer = cArr;
        }

        public static ScratchChars get() {
            Object[] objArr = LOCAL.get();
            if (((Boolean) objArr[0]).booleanValue()) {
                return new ScratchChars(IOUtils.charArray());
            }
            objArr[0] = Boolean.TRUE;
            return INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Object[] lambda$static$0() {
            return new Object[]{Boolean.FALSE, IOUtils.charArray()};
        }

        public char[] array() {
            char[] cArr = this.buffer;
            return cArr != null ? cArr : (char[]) LOCAL.get()[1];
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            if (this.buffer == null) {
                Object[] objArr = LOCAL.get();
                Arrays.fill((char[]) objArr[1], (char) 0);
                objArr[0] = Boolean.FALSE;
            }
        }
    }

    @Deprecated
    public IOUtils() {
    }

    public static BufferedInputStream buffer(InputStream inputStream) {
        Objects.requireNonNull(inputStream, "inputStream");
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream);
    }

    public static byte[] byteArray() {
        return byteArray(8192);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static char[] charArray() {
        return charArray(8192);
    }

    public static void checkFromIndexSize(int i10, int i11, int i12) {
        if ((i10 | i11 | i12) < 0 || i12 - i11 < i10) {
            throw new IndexOutOfBoundsException(String.format("Range [%s, %<s + %s) out of bounds for length %s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)));
        }
    }

    public static void checkFromToIndex(int i10, int i11, int i12) {
        if (i10 < 0 || i11 < i10 || i12 < i11) {
            C2174b.m3446a(AbstractC0074a.m171v("Range [", i10, i11, ", ", ") out of bounds for length "), i12);
        }
    }

    public static void clear() {
        ScratchBytes.LOCAL.remove();
        ScratchChars.LOCAL.remove();
    }

    public static void close(Closeable closeable, IOConsumer<IOException> iOConsumer) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                if (iOConsumer != null) {
                    iOConsumer.accept(e);
                }
            } catch (Exception e6) {
                if (iOConsumer != null) {
                    iOConsumer.accept(new IOException(e6));
                }
            }
        }
    }

    private static void closeQ(Closeable closeable) {
        closeQuietly(closeable, null);
    }

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

    public static long consume(InputStream inputStream) {
        return copyLarge(inputStream, NullOutputStream.INSTANCE);
    }

    public static boolean contentEquals(Reader reader, Reader reader2) {
        int i10;
        boolean z9;
        int i11;
        if (reader == reader2) {
            return true;
        }
        if (reader == null || reader2 == null) {
            return false;
        }
        ScratchChars scratchChars = ScratchChars.get();
        try {
            char[] cArrArray = scratchChars.array();
            char[] cArrCharArray = charArray();
            while (true) {
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                while (i12 < 8192) {
                    if (i13 == i12) {
                        do {
                            i11 = reader.read(cArrArray, i13, 8192 - i13);
                        } while (i11 == 0);
                        if (i11 == -1) {
                            z9 = i14 == i12 && reader2.read() == -1;
                            scratchChars.close();
                            return z9;
                        }
                        i13 += i11;
                    }
                    if (i14 == i12) {
                        do {
                            i10 = reader2.read(cArrCharArray, i14, 8192 - i14);
                        } while (i10 == 0);
                        if (i10 == -1) {
                            z9 = i13 == i12 && reader.read() == -1;
                            scratchChars.close();
                            return z9;
                        }
                        i14 += i10;
                    }
                    if (cArrArray[i12] != cArrCharArray[i12]) {
                        scratchChars.close();
                        return false;
                    }
                    i12++;
                }
            }
        } catch (Throwable th) {
            if (scratchChars != null) {
                try {
                    scratchChars.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private static boolean contentEqualsIgnoreEOL(BufferedReader bufferedReader, BufferedReader bufferedReader2) {
        if (bufferedReader == bufferedReader2) {
            return true;
        }
        if (bufferedReader == null || bufferedReader2 == null) {
            return false;
        }
        return contentEquals(bufferedReader.lines(), bufferedReader2.lines());
    }

    public static long copy(URL url, File file) throws IOException {
        Objects.requireNonNull(file, "file");
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(file.toPath(), new OpenOption[0]);
        try {
            long jCopy = copy(url, outputStreamNewOutputStream);
            if (outputStreamNewOutputStream != null) {
                outputStreamNewOutputStream.close();
            }
            return jCopy;
        } catch (Throwable th) {
            if (outputStreamNewOutputStream != null) {
                try {
                    outputStreamNewOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream, long j10, long j11, byte[] bArr) throws IOException {
        long j12 = 0;
        if (j10 > 0) {
            skipFully(inputStream, j10);
        }
        if (j11 == 0) {
            return 0L;
        }
        int length = bArr.length;
        int iMin = (j11 <= 0 || j11 >= ((long) length)) ? length : (int) j11;
        while (iMin > 0) {
            int i10 = inputStream.read(bArr, 0, iMin);
            if (-1 == i10) {
                break;
            }
            outputStream.write(bArr, 0, i10);
            j12 += (long) i10;
            if (j11 > 0) {
                iMin = (int) Math.min(j11 - j12, length);
            }
        }
        return j12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static UnsynchronizedByteArrayOutputStream copyToOutputStream(InputStream inputStream, long j10, int i10) {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = UnsynchronizedByteArrayOutputStream.builder().setBufferSize(i10).get();
        try {
            BoundedInputStream boundedInputStream = ((BoundedInputStream.Builder) ((BoundedInputStream.Builder) ((BoundedInputStream.Builder) BoundedInputStream.builder().setMaxCount(j10)).setPropagateClose(false)).setInputStream(inputStream)).get();
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$toString$0() {
        throw new NullPointerException("input");
    }

    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static LineIterator lineIterator(InputStream inputStream, Charset charset) {
        return new LineIterator(new InputStreamReader(inputStream, Charsets.toCharset(charset)));
    }

    public static int read(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        while (byteBuffer.remaining() > 0 && -1 != readableByteChannel.read(byteBuffer)) {
        }
        return iRemaining - byteBuffer.remaining();
    }

    public static void readFully(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws EOFException {
        int iRemaining = byteBuffer.remaining();
        int i10 = read(readableByteChannel, byteBuffer);
        if (i10 != iRemaining) {
            throw new EOFException(AbstractC0074a.m156g(iRemaining, "Length to read: ", " actual: ", i10));
        }
    }

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

    public static byte[] resourceToByteArray(String str, ClassLoader classLoader) {
        return toByteArray(resourceToURL(str, classLoader));
    }

    public static String resourceToString(String str, Charset charset, ClassLoader classLoader) {
        return toString(resourceToURL(str, classLoader), charset);
    }

    public static URL resourceToURL(String str, ClassLoader classLoader) throws IOException {
        URL resource = classLoader == null ? IOUtils.class.getResource(str) : classLoader.getResource(str);
        if (resource != null) {
            return resource;
        }
        C2467b.m3820A(AbstractC0074a.m161l("Resource not found: ", str));
        return null;
    }

    public static long skip(Reader reader, long j10) {
        if (j10 < 0) {
            C1929i.m3029k(AbstractC0074a.m157h(j10, "Skip count must be non-negative, actual: "));
            return 0L;
        }
        ScratchChars scratchChars = ScratchChars.get();
        try {
            char[] cArrArray = scratchChars.array();
            long j11 = j10;
            while (j11 > 0) {
                long j12 = reader.read(cArrArray, 0, (int) Math.min(j11, cArrArray.length));
                if (j12 < 0) {
                    break;
                }
                j11 -= j12;
            }
            scratchChars.close();
            return j10 - j11;
        } catch (Throwable th) {
            if (scratchChars != null) {
                try {
                    scratchChars.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static void skipFully(InputStream inputStream, long j10, Supplier<byte[]> supplier) throws EOFException {
        if (j10 < 0) {
            C1929i.m3029k(AbstractC0074a.m157h(j10, "Bytes to skip must not be negative: "));
            return;
        }
        long jSkip = skip(inputStream, j10, supplier);
        if (jSkip == j10) {
            return;
        }
        C2786e.m4353e("Bytes to skip: ", j10, jSkip);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) {
        return ByteArrayOutputStream.toBufferedInputStream(inputStream);
    }

    public static BufferedReader toBufferedReader(Reader reader) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
    }

    public static byte[] toByteArray(IOTriFunction<byte[], Integer, Integer, Integer> iOTriFunction, int i10) throws EOFException {
        if (i10 < 0) {
            C2467b.m3832v("size < 0, size = %,d", new Object[]{Integer.valueOf(i10)});
            return null;
        }
        if (i10 == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArrByteArray = byteArray(i10);
        int i11 = 0;
        while (i11 < i10) {
            int iIntValue = iOTriFunction.apply(bArrByteArray, Integer.valueOf(i11), Integer.valueOf(i10 - i11)).intValue();
            if (iIntValue == -1) {
                break;
            }
            i11 += iIntValue;
        }
        if (i11 == i10) {
            return bArrByteArray;
        }
        throw new EOFException(String.format("Expected read size: %,d, actual: %,d", Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    public static char[] toCharArray(InputStream inputStream, Charset charset) {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(inputStream, charArrayWriter, charset);
        return charArrayWriter.toCharArray();
    }

    public static InputStream toInputStream(String str, Charset charset) {
        return new ByteArrayInputStream(str.getBytes(Charsets.toCharset(charset)));
    }

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

    public static void write(String str, OutputStream outputStream, Charset charset) throws IOException {
        if (str != null) {
            Channels.newChannel(outputStream).write(Charsets.toCharset(charset).encode(str));
        }
    }

    public static void writeChunked(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr != null) {
            int length = bArr.length;
            int i10 = 0;
            while (length > 0) {
                int iMin = Math.min(length, 8192);
                outputStream.write(bArr, i10, iMin);
                length -= iMin;
                i10 += iMin;
            }
        }
    }

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

    public static Writer writer(Appendable appendable) {
        Objects.requireNonNull(appendable, "appendable");
        if (appendable instanceof Writer) {
            return (Writer) appendable;
        }
        return appendable instanceof StringBuilder ? new StringBuilderWriter((StringBuilder) appendable) : new AppendableWriter(appendable);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream, int i10) {
        return ByteArrayOutputStream.toBufferedInputStream(inputStream, i10);
    }

    public static byte[] byteArray(int i10) {
        return new byte[i10];
    }

    private static char[] charArray(int i10) {
        return new char[i10];
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

    public static BufferedReader toBufferedReader(Reader reader, int i10) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i10);
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
            iterable.forEach(new C2925u());
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

    public static BufferedInputStream buffer(InputStream inputStream, int i10) {
        Objects.requireNonNull(inputStream, "inputStream");
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i10);
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
            int i10 = 0;
            while (length > 0) {
                int iMin = Math.min(length, 8192);
                writer.write(cArr, i10, iMin);
                length -= iMin;
                i10 += iMin;
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

    public static void checkFromToIndex(CharSequence charSequence, int i10, int i11) {
        checkFromToIndex(i10, i11, charSequence != null ? charSequence.length() : 4);
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
            stream.forEach(new C2925u());
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

    public static int read(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        checkFromIndexSize(bArr, i10, i11);
        int i12 = i11;
        while (i12 > 0) {
            int i13 = inputStream.read(bArr, (i11 - i12) + i10, i12);
            if (-1 == i13) {
                break;
            }
            i12 -= i13;
        }
        return i11 - i12;
    }

    @Deprecated
    public static List<String> readLines(InputStream inputStream) {
        return readLines(inputStream, Charset.defaultCharset());
    }

    public static void write(char[] cArr, OutputStream outputStream, String str) throws IOException {
        write(cArr, outputStream, Charsets.toCharset(str));
    }

    public static BufferedOutputStream buffer(OutputStream outputStream, int i10) {
        Objects.requireNonNull(outputStream, "outputStream");
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i10);
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
        IOConsumer.forAll(new C2920s(2), closeableArr);
    }

    public static int read(InputStream inputStream, byte[] bArr) {
        return read(inputStream, bArr, 0, bArr.length);
    }

    public static void readFully(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = read(inputStream, bArr, i10, i11);
        if (i12 != i11) {
            throw new EOFException(AbstractC0074a.m156g(i11, "Length to read: ", " actual: ", i12));
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

    public static int read(Reader reader, char[] cArr, int i10, int i11) throws IOException {
        checkFromIndexSize(cArr, i10, i11);
        int i12 = i11;
        while (i12 > 0) {
            int i13 = reader.read(cArr, (i11 - i12) + i10, i12);
            if (-1 == i13) {
                break;
            }
            i12 -= i13;
        }
        return i11 - i12;
    }

    public static URL resourceToURL(String str) {
        return resourceToURL(str, null);
    }

    public static void write(CharSequence charSequence, OutputStream outputStream, String str) throws IOException {
        write(charSequence, outputStream, Charsets.toCharset(str));
    }

    public static BufferedReader buffer(Reader reader, int i10) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i10);
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
    public static byte[] readFully(InputStream inputStream, int i10) {
        return toByteArray(inputStream, i10);
    }

    @Deprecated
    public static void write(String str, OutputStream outputStream) throws IOException {
        write(str, outputStream, Charset.defaultCharset());
    }

    public static BufferedWriter buffer(Writer writer, int i10) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i10);
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

    public static void skipFully(InputStream inputStream, long j10) throws EOFException {
        long jSkip = skip(inputStream, j10);
        if (jSkip == j10) {
            return;
        }
        C2786e.m4353e("Bytes to skip: ", j10, jSkip);
    }

    public static void write(String str, OutputStream outputStream, String str2) throws IOException {
        write(str, outputStream, Charsets.toCharset(str2));
    }

    public static void readFully(Reader reader, char[] cArr, int i10, int i11) throws IOException {
        int i12 = read(reader, cArr, i10, i11);
        if (i12 != i11) {
            throw new EOFException(AbstractC0074a.m156g(i11, "Length to read: ", " actual: ", i12));
        }
    }

    public static void write(String str, Writer writer) throws IOException {
        if (str != null) {
            writer.write(str);
        }
    }

    public static void skipFully(ReadableByteChannel readableByteChannel, long j10) throws IOException {
        if (j10 >= 0) {
            long jSkip = skip(readableByteChannel, j10);
            if (jSkip == j10) {
                return;
            }
            C2786e.m4353e("Bytes to skip: ", j10, jSkip);
            return;
        }
        C1929i.m3029k(AbstractC0074a.m157h(j10, "Bytes to skip must not be negative: "));
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

    public static void checkFromIndexSize(char[] cArr, int i10, int i11) {
        Objects.requireNonNull(cArr, "char array");
        checkFromIndexSize(i10, i11, cArr.length);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i10) {
        return copyLarge(inputStream, outputStream, byteArray(i10));
    }

    public static void skipFully(Reader reader, long j10) throws EOFException {
        long jSkip = skip(reader, j10);
        if (jSkip == j10) {
            return;
        }
        C2786e.m4353e("Chars to skip: ", j10, jSkip);
    }

    public static void checkFromIndexSize(byte[] bArr, int i10, int i11) {
        Objects.requireNonNull(bArr, "byte array");
        checkFromIndexSize(i10, i11, bArr.length);
    }

    @Deprecated
    public static void copy(InputStream inputStream, Writer writer) {
        copy(inputStream, writer, Charset.defaultCharset());
    }

    public static void checkFromIndexSize(String str, int i10, int i11) {
        Objects.requireNonNull(str, "str");
        checkFromIndexSize(i10, i11, str.length());
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
        long j10 = 0;
        while (true) {
            int i10 = reader.read(charBuffer);
            if (-1 == i10) {
                return j10;
            }
            charBuffer.flip();
            appendable.append(charBuffer, 0, i10);
            j10 += (long) i10;
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
        long j10 = 0;
        while (true) {
            int i10 = inputStream.read(bArr);
            if (-1 == i10) {
                return j10;
            }
            outputStream.write(bArr, 0, i10);
            j10 += (long) i10;
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
        return toString(iOSupplier, charset, new C2786e());
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

    public static long copyLarge(InputStream inputStream, OutputStream outputStream, long j10, long j11) {
        ScratchBytes scratchBytes = ScratchBytes.get();
        try {
            long jCopyLarge = copyLarge(inputStream, outputStream, j10, j11, scratchBytes.array());
            scratchBytes.close();
            return jCopyLarge;
        } catch (Throwable th) {
            if (scratchBytes == null) {
                throw th;
            }
            try {
                scratchBytes.close();
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
        ScratchChars scratchChars = ScratchChars.get();
        try {
            long jCopyLarge = copyLarge(reader, writer, scratchChars.array());
            scratchChars.close();
            return jCopyLarge;
        } catch (Throwable th) {
            if (scratchChars != null) {
                try {
                    scratchChars.close();
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
        long j10 = 0;
        while (true) {
            int i10 = reader.read(cArr);
            if (-1 == i10) {
                return j10;
            }
            writer.write(cArr, 0, i10);
            j10 += (long) i10;
        }
    }

    @Deprecated
    public static String toString(URL url) {
        return toString(url, Charset.defaultCharset());
    }

    public static String toString(URL url, Charset charset) {
        Objects.requireNonNull(url);
        return toString(new C2919r(0, url), charset);
    }

    public static long copyLarge(Reader reader, Writer writer, long j10, long j11) {
        ScratchChars scratchChars = ScratchChars.get();
        try {
            long jCopyLarge = copyLarge(reader, writer, j10, j11, scratchChars.array());
            scratchChars.close();
            return jCopyLarge;
        } catch (Throwable th) {
            if (scratchChars == null) {
                throw th;
            }
            try {
                scratchChars.close();
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

    public static long skip(InputStream inputStream, long j10, Supplier<byte[]> supplier) {
        if (j10 < 0) {
            C1929i.m3029k(AbstractC0074a.m157h(j10, "Skip count must be non-negative, actual: "));
            return 0L;
        }
        long j11 = j10;
        while (j11 > 0) {
            byte[] bArr = supplier.get();
            long j12 = inputStream.read(bArr, 0, (int) Math.min(j11, bArr.length));
            if (j12 < 0) {
                break;
            }
            j11 -= j12;
        }
        return j10 - j11;
    }

    public static long copyLarge(Reader reader, Writer writer, long j10, long j11, char[] cArr) throws IOException {
        long j12 = 0;
        if (j10 > 0) {
            skipFully(reader, j10);
        }
        if (j11 == 0) {
            return 0L;
        }
        int length = cArr.length;
        if (j11 > 0 && j11 < cArr.length) {
            length = (int) j11;
        }
        while (length > 0) {
            int i10 = reader.read(cArr, 0, length);
            if (-1 == i10) {
                break;
            }
            writer.write(cArr, 0, i10);
            j12 += (long) i10;
            if (j11 > 0) {
                length = (int) Math.min(j11 - j12, cArr.length);
            }
        }
        return j12;
    }

    public static long skip(ReadableByteChannel readableByteChannel, long j10) throws IOException {
        if (j10 >= 0) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) Math.min(j10, 8192L));
            long j11 = j10;
            while (j11 > 0) {
                byteBufferAllocate.position(0);
                byteBufferAllocate.limit((int) Math.min(j11, 8192L));
                int i10 = readableByteChannel.read(byteBufferAllocate);
                if (i10 == -1) {
                    break;
                }
                j11 -= (long) i10;
            }
            return j10 - j11;
        }
        C1929i.m3029k(AbstractC0074a.m157h(j10, "Skip count must be non-negative, actual: "));
        return 0L;
    }

    public static long skip(InputStream inputStream, long j10) {
        ScratchBytes scratchBytes = ScratchBytes.get();
        try {
            Objects.requireNonNull(scratchBytes);
            long jSkip = skip(inputStream, j10, new C2926v(0, scratchBytes));
            scratchBytes.close();
            return jSkip;
        } catch (Throwable th) {
            if (scratchBytes != null) {
                try {
                    scratchBytes.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static byte[] toByteArray(InputStream inputStream, int i10) {
        Objects.requireNonNull(inputStream, "input");
        return toByteArray(new C2919r(1, inputStream), i10);
    }

    public static byte[] toByteArray(InputStream inputStream, int i10, int i11) throws EOFException {
        Objects.requireNonNull(inputStream, "input");
        if (i11 <= 0) {
            C2467b.m3832v("chunkSize <= 0, chunkSize = %,d", new Object[]{Integer.valueOf(i11)});
            return null;
        }
        if (i10 <= i11) {
            return toByteArray(new C2919r(1, inputStream), i10);
        }
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStreamCopyToOutputStream = copyToOutputStream(inputStream, i10, i11);
        int size = unsynchronizedByteArrayOutputStreamCopyToOutputStream.size();
        if (size == i10) {
            return unsynchronizedByteArrayOutputStreamCopyToOutputStream.toByteArray();
        }
        throw new EOFException(String.format("Expected read size: %,d, actual: %,d", Integer.valueOf(i10), Integer.valueOf(size)));
    }

    public static byte[] toByteArray(InputStream inputStream, long j10) {
        if (j10 <= 2147483647L) {
            return toByteArray(inputStream, (int) j10);
        }
        C2467b.m3832v("size > Integer.MAX_VALUE, size = %,d", new Object[]{Long.valueOf(j10)});
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
