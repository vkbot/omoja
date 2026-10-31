package org.apache.commons.p161io.build;

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
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.file.PathUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractStreamBuilder<T, B extends AbstractStreamBuilder<T, B>> extends AbstractOriginSupplier<T, B> {
    private static final int DEFAULT_MAX_VALUE = Integer.MAX_VALUE;
    private static final OpenOption[] DEFAULT_OPEN_OPTIONS = PathUtils.EMPTY_OPEN_OPTION_ARRAY;
    private IntUnaryOperator bufferSizeChecker;
    private final IntUnaryOperator defaultSizeChecker;
    private int bufferSize = 8192;
    private int bufferSizeDefault = 8192;
    private int bufferSizeMax = Integer.MAX_VALUE;
    private Charset charset = Charset.defaultCharset();
    private Charset charsetDefault = Charset.defaultCharset();
    private OpenOption[] openOptions = DEFAULT_OPEN_OPTIONS;

    public AbstractStreamBuilder() {
        C2782b c2782b = new C2782b(0, this);
        this.defaultSizeChecker = c2782b;
        this.bufferSizeChecker = c2782b;
    }

    private int checkBufferSize(int i10) {
        return this.bufferSizeChecker.applyAsInt(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$new$0(int i10) {
        int i11 = this.bufferSizeMax;
        return i10 > i11 ? throwIae(i10, i11) : i10;
    }

    private int throwIae(int i10, int i11) {
        throw new IllegalArgumentException(String.format("Request %,d exceeds maximum %,d", Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    public int getBufferSize() {
        return this.bufferSize;
    }

    public int getBufferSizeDefault() {
        return this.bufferSizeDefault;
    }

    public <C extends Channel> C getChannel(Class<C> cls) {
        return (C) checkOrigin().getChannel(cls, getOpenOptions());
    }

    public CharSequence getCharSequence() {
        return checkOrigin().getCharSequence(getCharset());
    }

    public Charset getCharset() {
        return this.charset;
    }

    public Charset getCharsetDefault() {
        return this.charsetDefault;
    }

    public File getFile() {
        return checkOrigin().getFile();
    }

    public InputStream getInputStream() {
        return checkOrigin().getInputStream(getOpenOptions());
    }

    public OpenOption[] getOpenOptions() {
        return this.openOptions;
    }

    public OutputStream getOutputStream() {
        return checkOrigin().getOutputStream(getOpenOptions());
    }

    public Path getPath() {
        return checkOrigin().getPath();
    }

    public RandomAccessFile getRandomAccessFile() {
        return checkOrigin().getRandomAccessFile(getOpenOptions());
    }

    public Reader getReader() {
        return checkOrigin().getReader(getCharset());
    }

    public Writer getWriter() {
        return checkOrigin().getWriter(getCharset(), getOpenOptions());
    }

    public B setBufferSize(Integer num) {
        setBufferSize(num != null ? num.intValue() : this.bufferSizeDefault);
        return asThis();
    }

    public B setBufferSizeChecker(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            intUnaryOperator = this.defaultSizeChecker;
        }
        this.bufferSizeChecker = intUnaryOperator;
        return asThis();
    }

    public B setBufferSizeDefault(int i10) {
        this.bufferSizeDefault = i10;
        return asThis();
    }

    public B setBufferSizeMax(int i10) {
        if (i10 <= 0) {
            i10 = Integer.MAX_VALUE;
        }
        this.bufferSizeMax = i10;
        return asThis();
    }

    public B setCharset(Charset charset) {
        this.charset = Charsets.toCharset(charset, this.charsetDefault);
        return asThis();
    }

    public B setCharsetDefault(Charset charset) {
        this.charsetDefault = charset;
        return asThis();
    }

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

    public B setBufferSize(int i10) {
        if (i10 <= 0) {
            i10 = this.bufferSizeDefault;
        }
        this.bufferSize = checkBufferSize(i10);
        return asThis();
    }
}
