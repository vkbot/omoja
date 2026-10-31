package org.apache.commons.io.build;

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
import java.util.function.IntUnaryOperator;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.file.PathUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class AbstractStreamBuilder<T, B extends AbstractStreamBuilder<T, B>> extends AbstractOriginSupplier<T, B> {
    private static final int DEFAULT_MAX_VALUE = Integer.MAX_VALUE;
    private static final OpenOption[] DEFAULT_OPEN_OPTIONS = PathUtils.EMPTY_OPEN_OPTION_ARRAY;
    private IntUnaryOperator bufferSizeChecker;
    private final IntUnaryOperator defaultSizeChecker;
    private int bufferSize = 8192;
    private int bufferSizeDefault = 8192;
    private int bufferSizeMax = DEFAULT_MAX_VALUE;
    private Charset charset = Charset.defaultCharset();
    private Charset charsetDefault = Charset.defaultCharset();
    private OpenOption[] openOptions = DEFAULT_OPEN_OPTIONS;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractStreamBuilder() {
        b bVar = new b(0, this);
        this.defaultSizeChecker = bVar;
        this.bufferSizeChecker = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int a(AbstractStreamBuilder abstractStreamBuilder, int i) {
        return abstractStreamBuilder.lambda$new$0(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int checkBufferSize(int i) {
        return this.bufferSizeChecker.applyAsInt(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ int lambda$new$0(int i) {
        int i2 = this.bufferSizeMax;
        return i > i2 ? throwIae(i, i2) : i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int throwIae(int i, int i2) {
        throw new IllegalArgumentException(String.format("Request %,d exceeds maximum %,d", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBufferSize() {
        return this.bufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBufferSizeDefault() {
        return this.bufferSizeDefault;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <C extends Channel> C getChannel(Class<C> cls) {
        return (C) checkOrigin().getChannel(cls, getOpenOptions());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharSequence getCharSequence() {
        return checkOrigin().getCharSequence(getCharset());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Charset getCharset() {
        return this.charset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Charset getCharsetDefault() {
        return this.charsetDefault;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public File getFile() {
        return checkOrigin().getFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream getInputStream() {
        return checkOrigin().getInputStream(getOpenOptions());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OpenOption[] getOpenOptions() {
        return this.openOptions;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OutputStream getOutputStream() {
        return checkOrigin().getOutputStream(getOpenOptions());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Path getPath() {
        return checkOrigin().getPath();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RandomAccessFile getRandomAccessFile() {
        return checkOrigin().getRandomAccessFile(getOpenOptions());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Reader getReader() {
        return checkOrigin().getReader(getCharset());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Writer getWriter() {
        return checkOrigin().getWriter(getCharset(), getOpenOptions());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setBufferSize(Integer num) {
        setBufferSize(num != null ? num.intValue() : this.bufferSizeDefault);
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setBufferSizeChecker(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            intUnaryOperator = this.defaultSizeChecker;
        }
        this.bufferSizeChecker = intUnaryOperator;
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setBufferSizeDefault(int i) {
        this.bufferSizeDefault = i;
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setBufferSizeMax(int i) {
        if (i <= 0) {
            i = DEFAULT_MAX_VALUE;
        }
        this.bufferSizeMax = i;
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setCharset(Charset charset) {
        this.charset = Charsets.toCharset(charset, this.charsetDefault);
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setCharsetDefault(Charset charset) {
        this.charsetDefault = charset;
        return asThis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public B setOpenOptions(OpenOption... openOptionArr) {
        if (openOptionArr == null) {
            openOptionArr = DEFAULT_OPEN_OPTIONS;
        }
        this.openOptions = openOptionArr;
        return asThis();
    }

    public B setCharset(String str) {
        return (B) setCharset(Charsets.toCharset(str, this.charsetDefault));
    }

    public B setBufferSize(int i) {
        if (i <= 0) {
            i = this.bufferSizeDefault;
        }
        this.bufferSize = checkBufferSize(i);
        return asThis();
    }
}
