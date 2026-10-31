package org.apache.commons.io.build;

import c5.h;
import j1.i;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.nio.channels.Channel;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Objects;
import kotlin.io.path.f;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.RandomAccessFileMode;
import org.apache.commons.io.build.AbstractOrigin;
import org.apache.commons.io.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class AbstractOrigin<T, B extends AbstractOrigin<T, B>> extends AbstractSupplier<T, B> {
    final T origin;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin(T t) {
        Objects.requireNonNull(t, "origin");
        this.origin = t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String getSimpleClassName() {
        return getClass().getSimpleName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public T get() {
        return this.origin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] getByteArray(long j, int i) {
        int i2;
        byte[] byteArray = getByteArray();
        int intExact = Math.toIntExact(j);
        if (intExact >= 0 && i >= 0 && (i2 = intExact + i) >= 0 && i2 <= byteArray.length) {
            return Arrays.copyOfRange(byteArray, intExact, i2);
        }
        i.k(ai.onnxruntime.a.o(ai.onnxruntime.a.v("Couldn't read array (start: ", intExact, i, ", length: ", ", data length: "), ").", byteArray.length));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final <C extends Channel> C getChannel(Class<C> cls, OpenOption... openOptionArr) {
        Objects.requireNonNull(cls, "channelType");
        Channel channel = getChannel(openOptionArr);
        if (cls.isInstance(channel)) {
            return cls.cast(channel);
        }
        throw unsupportedChannelType(cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharSequence getCharSequence(Charset charset) {
        return new String(getByteArray(), charset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public File getFile() {
        throw unsupportedOperation("getFile");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream getInputStream(OpenOption... openOptionArr) {
        return f.e(getPath(), openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OutputStream getOutputStream(OpenOption... openOptionArr) {
        return d.f(getPath(), openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Path getPath() {
        throw unsupportedOperation("getPath");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RandomAccessFile getRandomAccessFile(OpenOption... openOptionArr) {
        return RandomAccessFileMode.valueOf(openOptionArr).create(getFile());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Reader getReader(Charset charset) {
        return kotlin.internal.jdk8.a.c(getPath(), Charsets.toCharset(charset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Writer getWriter(Charset charset, OpenOption... openOptionArr) {
        return d.e(getPath(), Charsets.toCharset(charset), openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long size() {
        return kotlin.io.path.a.a(getPath());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return getSimpleClassName() + "[" + this.origin.toString() + "]";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UnsupportedOperationException unsupportedChannelType(Class<? extends Channel> cls) {
        return new UnsupportedOperationException(String.format("%s#getChannel(%s) for %s origin %s", getSimpleClassName(), cls.getSimpleName(), this.origin.getClass().getSimpleName(), this.origin));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UnsupportedOperationException unsupportedOperation(String str) {
        return new UnsupportedOperationException(String.format("%s#%s() for %s origin %s", getSimpleClassName(), str, this.origin.getClass().getSimpleName(), this.origin));
    }

    public Channel getChannel(OpenOption... openOptionArr) {
        throw unsupportedOperation("getChannel");
    }

    public byte[] getByteArray() {
        return h.z(getPath());
    }
}
