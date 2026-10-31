package org.apache.commons.io.output;

import java.io.File;
import java.nio.charset.CharsetEncoder;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FileWriterWithEncoding$Builder extends AbstractStreamBuilder<FileWriterWithEncoding, FileWriterWithEncoding$Builder> {
    private boolean append;
    private CharsetEncoder charsetEncoder = super.getCharset().newEncoder();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ File access$100(FileWriterWithEncoding$Builder fileWriterWithEncoding$Builder) {
        return fileWriterWithEncoding$Builder.checkOriginFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Object access$200(FileWriterWithEncoding$Builder fileWriterWithEncoding$Builder) {
        return fileWriterWithEncoding$Builder.getEncoder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$300(FileWriterWithEncoding$Builder fileWriterWithEncoding$Builder) {
        return fileWriterWithEncoding$Builder.append;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private File checkOriginFile() {
        return checkOrigin().getFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object getEncoder() {
        if (this.charsetEncoder != null && getCharset() != null && !this.charsetEncoder.charset().equals(getCharset())) {
            throw new IllegalStateException(String.format("Mismatched Charset(%s) and CharsetEncoder(%s)", getCharset(), this.charsetEncoder.charset()));
        }
        CharsetEncoder charsetEncoder = this.charsetEncoder;
        return charsetEncoder != null ? charsetEncoder : getCharset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public FileWriterWithEncoding get() {
        return new FileWriterWithEncoding(this, (FileWriterWithEncoding$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileWriterWithEncoding$Builder setAppend(boolean z) {
        this.append = z;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileWriterWithEncoding$Builder setCharsetEncoder(CharsetEncoder charsetEncoder) {
        this.charsetEncoder = charsetEncoder;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}
