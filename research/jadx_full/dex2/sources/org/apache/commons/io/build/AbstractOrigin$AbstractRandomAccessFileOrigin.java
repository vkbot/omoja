package org.apache.commons.io.build;

import j1.i;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.nio.channels.Channel;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.RandomAccessFiles;
import org.apache.commons.io.build.AbstractOrigin$AbstractRandomAccessFileOrigin;
import org.apache.commons.io.input.BufferedFileChannelInputStream;
import org.apache.commons.io.output.RandomAccessFileOutputStream;
import org.apache.commons.io.output.RandomAccessFileOutputStream$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class AbstractOrigin$AbstractRandomAccessFileOrigin<T extends RandomAccessFile, B extends AbstractOrigin$AbstractRandomAccessFileOrigin<T, B>> extends AbstractOrigin<T, B> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin$AbstractRandomAccessFileOrigin(T t) {
        super(t);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public byte[] getByteArray() throws IOException {
        long length = this.origin.length();
        if (length <= 2147483647L) {
            return RandomAccessFiles.read(this.origin, 0L, (int) length);
        }
        i.l("Origin too large.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Channel getChannel(OpenOption... openOptionArr) {
        return getRandomAccessFile(openOptionArr).getChannel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public CharSequence getCharSequence(Charset charset) {
        return new String(getByteArray(), charset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public InputStream getInputStream(OpenOption... openOptionArr) {
        return BufferedFileChannelInputStream.builder().setFileChannel(this.origin.getChannel()).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v2, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public OutputStream getOutputStream(OpenOption... openOptionArr) {
        return ((RandomAccessFileOutputStream$Builder) RandomAccessFileOutputStream.builder().setRandomAccessFile(this.origin)).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public T getRandomAccessFile(OpenOption... openOptionArr) {
        return get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Reader getReader(Charset charset) {
        return new InputStreamReader(getInputStream(new OpenOption[0]), Charsets.toCharset(charset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Writer getWriter(Charset charset, OpenOption... openOptionArr) {
        return new OutputStreamWriter(getOutputStream(openOptionArr), Charsets.toCharset(charset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public long size() {
        return this.origin.length();
    }

    @Override // org.apache.commons.io.build.AbstractOrigin
    public byte[] getByteArray(long j, int i) {
        return RandomAccessFiles.read(this.origin, j, i);
    }
}
