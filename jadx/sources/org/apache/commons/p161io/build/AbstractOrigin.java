package org.apache.commons.p161io.build;

import ai.onnxruntime.AbstractC0074a;
import androidx.navigation.C0674b;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.nio.channels.Channel;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.Arrays;
import java.util.Objects;
import kotlin.internal.jdk8.AbstractC2109a;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.IORandomAccessFile;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.RandomAccessFileMode;
import org.apache.commons.p161io.RandomAccessFiles;
import org.apache.commons.p161io.build.AbstractOrigin;
import org.apache.commons.p161io.channels.ByteArraySeekableByteChannel;
import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.input.BufferedFileChannelInputStream;
import org.apache.commons.p161io.input.CharSequenceInputStream;
import org.apache.commons.p161io.input.CharSequenceReader;
import org.apache.commons.p161io.input.ReaderInputStream;
import org.apache.commons.p161io.output.RandomAccessFileOutputStream;
import org.apache.commons.p161io.output.WriterOutputStream;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractOrigin<T, B extends AbstractOrigin<T, B>> extends AbstractSupplier<T, B> {
    final T origin;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class ByteArrayOrigin extends AbstractOrigin<byte[], ByteArrayOrigin> {
        public ByteArrayOrigin(byte[] bArr) {
            super(bArr);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public byte[] getByteArray() {
            return get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            for (OpenOption openOption : openOptionArr) {
                if (openOption == StandardOpenOption.WRITE) {
                    C0674b.m838e(Arrays.toString(openOptionArr), "Only READ is supported for byte[] origins: ");
                    return null;
                }
            }
            return ByteArraySeekableByteChannel.wrap(getByteArray());
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) {
            return new ByteArrayInputStream((byte[]) this.origin);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Reader getReader(Charset charset) {
            return new InputStreamReader(getInputStream(new OpenOption[0]), Charsets.toCharset(charset));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public long size() {
            return ((byte[]) this.origin).length;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class ChannelOrigin extends AbstractOrigin<Channel, ChannelOrigin> {
        public ChannelOrigin(Channel channel) {
            super(channel);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public byte[] getByteArray() {
            return IOUtils.toByteArray(getInputStream(new OpenOption[0]));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            return get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) {
            return Channels.newInputStream((ReadableByteChannel) getChannel(ReadableByteChannel.class, openOptionArr));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public OutputStream getOutputStream(OpenOption... openOptionArr) {
            return Channels.newOutputStream((WritableByteChannel) getChannel(WritableByteChannel.class, openOptionArr));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Reader getReader(Charset charset) {
            return Channels.newReader((ReadableByteChannel) getChannel(ReadableByteChannel.class, new OpenOption[0]), Charsets.toCharset(charset).newDecoder(), -1);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Writer getWriter(Charset charset, OpenOption... openOptionArr) {
            return Channels.newWriter((WritableByteChannel) getChannel(WritableByteChannel.class, openOptionArr), Charsets.toCharset(charset).newEncoder(), -1);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public long size() {
            T t = this.origin;
            if (t instanceof SeekableByteChannel) {
                return ((SeekableByteChannel) t).size();
            }
            throw unsupportedOperation("size");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class CharSequenceOrigin extends AbstractOrigin<CharSequence, CharSequenceOrigin> {
        public CharSequenceOrigin(CharSequence charSequence) {
            super(charSequence);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public byte[] getByteArray() {
            return ((CharSequence) this.origin).toString().getBytes(Charset.defaultCharset());
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            for (OpenOption openOption : openOptionArr) {
                if (openOption == StandardOpenOption.WRITE) {
                    C0674b.m838e(Arrays.toString(openOptionArr), "Only READ is supported for CharSequence origins: ");
                    return null;
                }
            }
            return ByteArraySeekableByteChannel.wrap(getByteArray());
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public CharSequence getCharSequence(Charset charset) {
            return get();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) {
            return ((CharSequenceInputStream.Builder) CharSequenceInputStream.builder().setCharSequence(getCharSequence(Charset.defaultCharset()))).get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Reader getReader(Charset charset) {
            return new CharSequenceReader(get());
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public long size() {
            return ((CharSequence) this.origin).length();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class FileOrigin extends AbstractOrigin<File, FileOrigin> {
        public FileOrigin(File file) {
            super(file);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public byte[] getByteArray(long j10, int i10) throws IOException {
            RandomAccessFile randomAccessFileCreate = RandomAccessFileMode.READ_ONLY.create((File) this.origin);
            try {
                byte[] bArr = RandomAccessFiles.read(randomAccessFileCreate, j10, i10);
                if (randomAccessFileCreate != null) {
                    randomAccessFileCreate.close();
                }
                return bArr;
            } catch (Throwable th) {
                if (randomAccessFileCreate != null) {
                    try {
                        randomAccessFileCreate.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            return Files.newByteChannel(getPath(), openOptionArr);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public File getFile() {
            return get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Path getPath() {
            return get().toPath();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class IORandomAccessFileOrigin extends AbstractRandomAccessFileOrigin<IORandomAccessFile, IORandomAccessFileOrigin> {
        public IORandomAccessFileOrigin(IORandomAccessFile iORandomAccessFile) {
            super(iORandomAccessFile);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public File getFile() {
            return ((IORandomAccessFile) get()).getFile();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Path getPath() {
            return getFile().toPath();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class InputStreamOrigin extends AbstractOrigin<InputStream, InputStreamOrigin> {
        public InputStreamOrigin(InputStream inputStream) {
            super(inputStream);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public byte[] getByteArray() {
            return IOUtils.toByteArray((InputStream) this.origin);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            return Channels.newChannel(getInputStream(openOptionArr));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) {
            return get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Reader getReader(Charset charset) {
            return new InputStreamReader(getInputStream(new OpenOption[0]), Charsets.toCharset(charset));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public long size() {
            T t = this.origin;
            if (t instanceof FileInputStream) {
                return ((FileInputStream) t).getChannel().size();
            }
            throw unsupportedOperation("size");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class OutputStreamOrigin extends AbstractOrigin<OutputStream, OutputStreamOrigin> {
        public OutputStreamOrigin(OutputStream outputStream) {
            super(outputStream);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            return Channels.newChannel(getOutputStream(openOptionArr));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public OutputStream getOutputStream(OpenOption... openOptionArr) {
            return get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Writer getWriter(Charset charset, OpenOption... openOptionArr) {
            return new OutputStreamWriter((OutputStream) this.origin, Charsets.toCharset(charset));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class PathOrigin extends AbstractOrigin<Path, PathOrigin> {
        public PathOrigin(Path path) {
            super(path);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ byte[] lambda$getByteArray$0(long j10, int i10, RandomAccessFile randomAccessFile) {
            return RandomAccessFiles.read(randomAccessFile, j10, i10);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public byte[] getByteArray(final long j10, final int i10) {
            return (byte[]) RandomAccessFileMode.READ_ONLY.apply(AbstractC2109a.m3281m(this.origin), new IOFunction() { // from class: org.apache.commons.io.build.a
                @Override // org.apache.commons.p161io.function.IOFunction
                public final Object apply(Object obj) {
                    return AbstractOrigin.PathOrigin.lambda$getByteArray$0(j10, i10, (RandomAccessFile) obj);
                }
            });
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            return Files.newByteChannel(getPath(), openOptionArr);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public File getFile() {
            return AbstractC2109a.m3281m(get()).toFile();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Path getPath() {
            return AbstractC2109a.m3281m(get());
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class RandomAccessFileOrigin extends AbstractRandomAccessFileOrigin<RandomAccessFile, RandomAccessFileOrigin> {
        public RandomAccessFileOrigin(RandomAccessFile randomAccessFile) {
            super(randomAccessFile);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class ReaderOrigin extends AbstractOrigin<Reader, ReaderOrigin> {
        public ReaderOrigin(Reader reader) {
            super(reader);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public byte[] getByteArray() {
            return IOUtils.toByteArray((Reader) this.origin, Charset.defaultCharset());
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            return Channels.newChannel(getInputStream(new OpenOption[0]));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public CharSequence getCharSequence(Charset charset) {
            return IOUtils.toString((Reader) this.origin);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) {
            return ((ReaderInputStream.Builder) ReaderInputStream.builder().setReader((Reader) this.origin)).setCharset(Charset.defaultCharset()).get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Reader getReader(Charset charset) {
            return get();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class URIOrigin extends AbstractOrigin<URI, URIOrigin> {
        private static final String SCHEME_HTTP = "http";
        private static final String SCHEME_HTTPS = "https";

        public URIOrigin(URI uri) {
            super(uri);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            URI uri = get();
            String scheme = uri.getScheme();
            return (SCHEME_HTTP.equalsIgnoreCase(scheme) || SCHEME_HTTPS.equalsIgnoreCase(scheme)) ? Channels.newChannel(uri.toURL().openStream()) : Files.newByteChannel(getPath(), openOptionArr);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public File getFile() {
            return getPath().toFile();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) {
            URI uri = get();
            String scheme = uri.getScheme();
            return (SCHEME_HTTP.equalsIgnoreCase(scheme) || SCHEME_HTTPS.equalsIgnoreCase(scheme)) ? uri.toURL().openStream() : Files.newInputStream(getPath(), openOptionArr);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Path getPath() {
            return Paths.get(get());
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class WriterOrigin extends AbstractOrigin<Writer, WriterOrigin> {
        public WriterOrigin(Writer writer) {
            super(writer);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            return Channels.newChannel(getOutputStream(new OpenOption[0]));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public OutputStream getOutputStream(OpenOption... openOptionArr) {
            return ((WriterOutputStream.Builder) WriterOutputStream.builder().setWriter((Writer) this.origin)).setCharset(Charset.defaultCharset()).get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Writer getWriter(Charset charset, OpenOption... openOptionArr) {
            return get();
        }
    }

    public AbstractOrigin(T t) {
        Objects.requireNonNull(t, "origin");
        this.origin = t;
    }

    private String getSimpleClassName() {
        return getClass().getSimpleName();
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public T get() {
        return this.origin;
    }

    public byte[] getByteArray(long j10, int i10) {
        int i11;
        byte[] byteArray = getByteArray();
        int intExact = Math.toIntExact(j10);
        if (intExact >= 0 && i10 >= 0 && (i11 = intExact + i10) >= 0 && i11 <= byteArray.length) {
            return Arrays.copyOfRange(byteArray, intExact, i11);
        }
        C1929i.m3029k(AbstractC0074a.m164o(AbstractC0074a.m171v("Couldn't read array (start: ", intExact, i10, ", length: ", ", data length: "), ").", byteArray.length));
        return null;
    }

    public final <C extends Channel> C getChannel(Class<C> cls, OpenOption... openOptionArr) {
        Objects.requireNonNull(cls, "channelType");
        Channel channel = getChannel(openOptionArr);
        if (cls.isInstance(channel)) {
            return cls.cast(channel);
        }
        throw unsupportedChannelType(cls);
    }

    public CharSequence getCharSequence(Charset charset) {
        return new String(getByteArray(), charset);
    }

    public File getFile() {
        throw unsupportedOperation("getFile");
    }

    public InputStream getInputStream(OpenOption... openOptionArr) {
        return Files.newInputStream(getPath(), openOptionArr);
    }

    public OutputStream getOutputStream(OpenOption... openOptionArr) {
        return Files.newOutputStream(getPath(), openOptionArr);
    }

    public Path getPath() {
        throw unsupportedOperation("getPath");
    }

    public RandomAccessFile getRandomAccessFile(OpenOption... openOptionArr) {
        return RandomAccessFileMode.valueOf(openOptionArr).create(getFile());
    }

    public Reader getReader(Charset charset) {
        return Files.newBufferedReader(getPath(), Charsets.toCharset(charset));
    }

    public Writer getWriter(Charset charset, OpenOption... openOptionArr) {
        return Files.newBufferedWriter(getPath(), Charsets.toCharset(charset), openOptionArr);
    }

    public long size() {
        return Files.size(getPath());
    }

    public String toString() {
        return getSimpleClassName() + "[" + this.origin.toString() + "]";
    }

    public UnsupportedOperationException unsupportedChannelType(Class<? extends Channel> cls) {
        return new UnsupportedOperationException(String.format("%s#getChannel(%s) for %s origin %s", getSimpleClassName(), cls.getSimpleName(), this.origin.getClass().getSimpleName(), this.origin));
    }

    public UnsupportedOperationException unsupportedOperation(String str) {
        return new UnsupportedOperationException(String.format("%s#%s() for %s origin %s", getSimpleClassName(), str, this.origin.getClass().getSimpleName(), this.origin));
    }

    public Channel getChannel(OpenOption... openOptionArr) {
        throw unsupportedOperation("getChannel");
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static abstract class AbstractRandomAccessFileOrigin<T extends RandomAccessFile, B extends AbstractRandomAccessFileOrigin<T, B>> extends AbstractOrigin<T, B> {
        public AbstractRandomAccessFileOrigin(T t) {
            super(t);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public byte[] getByteArray() throws IOException {
            long length = this.origin.length();
            if (length <= 2147483647L) {
                return RandomAccessFiles.read(this.origin, 0L, (int) length);
            }
            C1929i.m3030l("Origin too large.");
            return null;
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Channel getChannel(OpenOption... openOptionArr) {
            return getRandomAccessFile(openOptionArr).getChannel();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public CharSequence getCharSequence(Charset charset) {
            return new String(getByteArray(), charset);
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) {
            return BufferedFileChannelInputStream.builder().setFileChannel(this.origin.getChannel()).get();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public OutputStream getOutputStream(OpenOption... openOptionArr) {
            return ((RandomAccessFileOutputStream.Builder) RandomAccessFileOutputStream.builder().setRandomAccessFile(this.origin)).get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public T getRandomAccessFile(OpenOption... openOptionArr) {
            return get();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Reader getReader(Charset charset) {
            return new InputStreamReader(getInputStream(new OpenOption[0]), Charsets.toCharset(charset));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public Writer getWriter(Charset charset, OpenOption... openOptionArr) {
            return new OutputStreamWriter(getOutputStream(openOptionArr), Charsets.toCharset(charset));
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public long size() {
            return this.origin.length();
        }

        @Override // org.apache.commons.p161io.build.AbstractOrigin
        public byte[] getByteArray(long j10, int i10) {
            return RandomAccessFiles.read(this.origin, j10, i10);
        }
    }

    public byte[] getByteArray() {
        return Files.readAllBytes(getPath());
    }
}
