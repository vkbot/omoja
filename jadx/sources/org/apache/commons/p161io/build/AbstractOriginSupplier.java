package org.apache.commons.p161io.build;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.nio.channels.Channel;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.apache.commons.p161io.IORandomAccessFile;
import org.apache.commons.p161io.build.AbstractOriginSupplier;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractOriginSupplier<T, B extends AbstractOriginSupplier<T, B>> extends AbstractSupplier<T, B> {
    private AbstractOrigin<?, ?> origin;

    public static AbstractOrigin.ByteArrayOrigin newByteArrayOrigin(byte[] bArr) {
        return new AbstractOrigin.ByteArrayOrigin(bArr);
    }

    public static AbstractOrigin.ChannelOrigin newChannelOrigin(Channel channel) {
        return new AbstractOrigin.ChannelOrigin(channel);
    }

    public static AbstractOrigin.CharSequenceOrigin newCharSequenceOrigin(CharSequence charSequence) {
        return new AbstractOrigin.CharSequenceOrigin(charSequence);
    }

    public static AbstractOrigin.FileOrigin newFileOrigin(String str) {
        return new AbstractOrigin.FileOrigin(new File(str));
    }

    public static AbstractOrigin.InputStreamOrigin newInputStreamOrigin(InputStream inputStream) {
        return new AbstractOrigin.InputStreamOrigin(inputStream);
    }

    public static AbstractOrigin.OutputStreamOrigin newOutputStreamOrigin(OutputStream outputStream) {
        return new AbstractOrigin.OutputStreamOrigin(outputStream);
    }

    public static AbstractOrigin.PathOrigin newPathOrigin(String str) {
        return new AbstractOrigin.PathOrigin(Paths.get(str, new String[0]));
    }

    public static AbstractOrigin.IORandomAccessFileOrigin newRandomAccessFileOrigin(IORandomAccessFile iORandomAccessFile) {
        return new AbstractOrigin.IORandomAccessFileOrigin(iORandomAccessFile);
    }

    public static AbstractOrigin.ReaderOrigin newReaderOrigin(Reader reader) {
        return new AbstractOrigin.ReaderOrigin(reader);
    }

    public static AbstractOrigin.URIOrigin newURIOrigin(URI uri) {
        return new AbstractOrigin.URIOrigin(uri);
    }

    public static AbstractOrigin.WriterOrigin newWriterOrigin(Writer writer) {
        return new AbstractOrigin.WriterOrigin(writer);
    }

    public AbstractOrigin<?, ?> checkOrigin() {
        AbstractOrigin<?, ?> abstractOrigin = this.origin;
        if (abstractOrigin != null) {
            return abstractOrigin;
        }
        C1929i.m3030l("origin == null");
        return null;
    }

    public AbstractOrigin<?, ?> getOrigin() {
        return this.origin;
    }

    public boolean hasOrigin() {
        return this.origin != null;
    }

    public B setByteArray(byte[] bArr) {
        return (B) setOrigin(newByteArrayOrigin(bArr));
    }

    public B setChannel(Channel channel) {
        return (B) setOrigin(newChannelOrigin(channel));
    }

    public B setCharSequence(CharSequence charSequence) {
        return (B) setOrigin(newCharSequenceOrigin(charSequence));
    }

    public B setFile(File file) {
        return (B) setOrigin(newFileOrigin(file));
    }

    public B setInputStream(InputStream inputStream) {
        return (B) setOrigin(newInputStreamOrigin(inputStream));
    }

    public B setOrigin(AbstractOrigin<?, ?> abstractOrigin) {
        this.origin = abstractOrigin;
        return asThis();
    }

    public B setOutputStream(OutputStream outputStream) {
        return (B) setOrigin(newOutputStreamOrigin(outputStream));
    }

    public B setPath(Path path) {
        return (B) setOrigin(newPathOrigin(path));
    }

    public B setRandomAccessFile(IORandomAccessFile iORandomAccessFile) {
        return (B) setOrigin(newRandomAccessFileOrigin(iORandomAccessFile));
    }

    public B setReader(Reader reader) {
        return (B) setOrigin(newReaderOrigin(reader));
    }

    public B setURI(URI uri) {
        return (B) setOrigin(newURIOrigin(uri));
    }

    public B setWriter(Writer writer) {
        return (B) setOrigin(newWriterOrigin(writer));
    }

    public static AbstractOrigin.RandomAccessFileOrigin newRandomAccessFileOrigin(RandomAccessFile randomAccessFile) {
        return new AbstractOrigin.RandomAccessFileOrigin(randomAccessFile);
    }

    public B setFile(String str) {
        return (B) setOrigin(newFileOrigin(str));
    }

    public B setPath(String str) {
        return (B) setOrigin(newPathOrigin(str));
    }

    public B setRandomAccessFile(RandomAccessFile randomAccessFile) {
        return (B) setOrigin(newRandomAccessFileOrigin(randomAccessFile));
    }

    public static AbstractOrigin.FileOrigin newFileOrigin(File file) {
        return new AbstractOrigin.FileOrigin(file);
    }

    public static AbstractOrigin.PathOrigin newPathOrigin(Path path) {
        return new AbstractOrigin.PathOrigin(path);
    }
}
