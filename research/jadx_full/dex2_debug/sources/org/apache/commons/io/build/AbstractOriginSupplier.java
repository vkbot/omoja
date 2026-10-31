package org.apache.commons.io.build;

import ai.onnxruntime.c;
import j1.i;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.nio.channels.Channel;
import java.nio.file.Path;
import org.apache.commons.io.IORandomAccessFile;
import org.apache.commons.io.build.AbstractOriginSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class AbstractOriginSupplier<T, B extends AbstractOriginSupplier<T, B>> extends AbstractSupplier<T, B> {
    private AbstractOrigin<?, ?> origin;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$ByteArrayOrigin newByteArrayOrigin(byte[] bArr) {
        return new AbstractOrigin$ByteArrayOrigin(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$ChannelOrigin newChannelOrigin(Channel channel) {
        return new AbstractOrigin$ChannelOrigin(channel);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$CharSequenceOrigin newCharSequenceOrigin(CharSequence charSequence) {
        return new AbstractOrigin$CharSequenceOrigin(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$FileOrigin newFileOrigin(String str) {
        return new AbstractOrigin$FileOrigin(new File(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$InputStreamOrigin newInputStreamOrigin(InputStream inputStream) {
        return new AbstractOrigin$InputStreamOrigin(inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$OutputStreamOrigin newOutputStreamOrigin(OutputStream outputStream) {
        return new AbstractOrigin$OutputStreamOrigin(outputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$PathOrigin newPathOrigin(String str) {
        return new AbstractOrigin$PathOrigin(c.t(str, new String[0]));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$IORandomAccessFileOrigin newRandomAccessFileOrigin(IORandomAccessFile iORandomAccessFile) {
        return new AbstractOrigin$IORandomAccessFileOrigin(iORandomAccessFile);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$ReaderOrigin newReaderOrigin(Reader reader) {
        return new AbstractOrigin$ReaderOrigin(reader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$URIOrigin newURIOrigin(URI uri) {
        return new AbstractOrigin$URIOrigin(uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AbstractOrigin$WriterOrigin newWriterOrigin(Writer writer) {
        return new AbstractOrigin$WriterOrigin(writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin<?, ?> checkOrigin() {
        AbstractOrigin<?, ?> abstractOrigin = this.origin;
        if (abstractOrigin != null) {
            return abstractOrigin;
        }
        i.l("origin == null");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin<?, ?> getOrigin() {
        return this.origin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasOrigin() {
        return this.origin != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setByteArray(byte[] bArr) {
        return (B) setOrigin(newByteArrayOrigin(bArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setChannel(Channel channel) {
        return (B) setOrigin(newChannelOrigin(channel));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setCharSequence(CharSequence charSequence) {
        return (B) setOrigin(newCharSequenceOrigin(charSequence));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setFile(File file) {
        return (B) setOrigin(newFileOrigin(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setInputStream(InputStream inputStream) {
        return (B) setOrigin(newInputStreamOrigin(inputStream));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setOrigin(AbstractOrigin<?, ?> abstractOrigin) {
        this.origin = abstractOrigin;
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setOutputStream(OutputStream outputStream) {
        return (B) setOrigin(newOutputStreamOrigin(outputStream));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setPath(Path path) {
        return (B) setOrigin(newPathOrigin(path));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setRandomAccessFile(IORandomAccessFile iORandomAccessFile) {
        return (B) setOrigin(newRandomAccessFileOrigin(iORandomAccessFile));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setReader(Reader reader) {
        return (B) setOrigin(newReaderOrigin(reader));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setURI(URI uri) {
        return (B) setOrigin(newURIOrigin(uri));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setWriter(Writer writer) {
        return (B) setOrigin(newWriterOrigin(writer));
    }

    public static AbstractOrigin$RandomAccessFileOrigin newRandomAccessFileOrigin(RandomAccessFile randomAccessFile) {
        return new AbstractOrigin$RandomAccessFileOrigin(randomAccessFile);
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

    public static AbstractOrigin$FileOrigin newFileOrigin(File file) {
        return new AbstractOrigin$FileOrigin(file);
    }

    public static AbstractOrigin$PathOrigin newPathOrigin(Path path) {
        return new AbstractOrigin$PathOrigin(path);
    }
}
