package org.apache.commons.io.input;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileSystem;
import org.apache.commons.io.StandardLineSeparator;
import org.apache.commons.io.function.IOIterable;
import org.apache.commons.io.function.IOIterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ReversedLinesFileReader implements Closeable, IOIterable<String> {
    private static final int DEFAULT_BLOCK_SIZE = FileSystem.getCurrent().getBlockSize();
    private static final String EMPTY_STRING = "";
    private final int avoidNewlineSplitBufferSize;
    private final int blockSize;
    private final int byteDecrement;
    private final SeekableByteChannel channel;
    private final Charset charset;
    private ReversedLinesFileReader$FilePart currentFilePart;
    private final byte[][] newLineSequences;
    private final long totalBlockCount;
    private final long totalByteLength;
    private boolean trailingNewlineOfFileSkipped;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ReversedLinesFileReader(ReversedLinesFileReader$Builder reversedLinesFileReader$Builder) throws IOException {
        int i;
        int bufferSize = reversedLinesFileReader$Builder.getBufferSize();
        this.blockSize = bufferSize;
        Charset charset = Charsets.toCharset(reversedLinesFileReader$Builder.getCharset());
        this.charset = charset;
        if (charset.newEncoder().maxBytesPerChar() == 1.0f || charset == StandardCharsets.UTF_8 || charset == Charset.forName("Shift_JIS") || charset == Charset.forName("windows-31j") || charset == Charset.forName("x-windows-949") || charset == Charset.forName("gbk") || charset == Charset.forName("x-windows-950")) {
            this.byteDecrement = 1;
        } else {
            if (charset != StandardCharsets.UTF_16BE && charset != StandardCharsets.UTF_16LE) {
                if (charset == StandardCharsets.UTF_16) {
                    throw new UnsupportedEncodingException("For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)");
                }
                throw new UnsupportedEncodingException("Encoding " + charset + " is not supported yet (feel free to submit a patch)");
            }
            this.byteDecrement = 2;
        }
        byte[][] bArr = {StandardLineSeparator.CRLF.getBytes(charset), StandardLineSeparator.LF.getBytes(charset), StandardLineSeparator.CR.getBytes(charset)};
        this.newLineSequences = bArr;
        this.avoidNewlineSplitBufferSize = bArr[0].length;
        SeekableByteChannel seekableByteChannel = (SeekableByteChannel) reversedLinesFileReader$Builder.getChannel(SeekableByteChannel.class);
        this.channel = seekableByteChannel;
        long size = seekableByteChannel.size();
        this.totalByteLength = size;
        int i2 = (int) (size % ((long) bufferSize));
        if (i2 <= 0) {
            this.totalBlockCount = size / ((long) bufferSize);
            i = size > 0 ? bufferSize : i;
            this.currentFilePart = new ReversedLinesFileReader$FilePart(this, this.totalBlockCount, i, null, null);
        }
        this.totalBlockCount = (size / ((long) bufferSize)) + 1;
        i = i2;
        this.currentFilePart = new ReversedLinesFileReader$FilePart(this, this.totalBlockCount, i, null, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$000() {
        return DEFAULT_BLOCK_SIZE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$200(ReversedLinesFileReader reversedLinesFileReader) {
        return reversedLinesFileReader.blockSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ SeekableByteChannel access$300(ReversedLinesFileReader reversedLinesFileReader) {
        return reversedLinesFileReader.channel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte[][] access$400(ReversedLinesFileReader reversedLinesFileReader) {
        return reversedLinesFileReader.newLineSequences;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$500(ReversedLinesFileReader reversedLinesFileReader) {
        return reversedLinesFileReader.avoidNewlineSplitBufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Charset access$600(ReversedLinesFileReader reversedLinesFileReader) {
        return reversedLinesFileReader.charset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$700(ReversedLinesFileReader reversedLinesFileReader) {
        return reversedLinesFileReader.byteDecrement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ReversedLinesFileReader$Builder builder() {
        return new ReversedLinesFileReader$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.channel.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIterable
    public IOIterator<String> iterator() {
        return new ReversedLinesFileReader$1(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String readLine() {
        String strAccess$900 = ReversedLinesFileReader$FilePart.access$900(this.currentFilePart);
        while (strAccess$900 == null) {
            ReversedLinesFileReader$FilePart reversedLinesFileReader$FilePartAccess$1000 = ReversedLinesFileReader$FilePart.access$1000(this.currentFilePart);
            this.currentFilePart = reversedLinesFileReader$FilePartAccess$1000;
            if (reversedLinesFileReader$FilePartAccess$1000 == null) {
                break;
            }
            strAccess$900 = ReversedLinesFileReader$FilePart.access$900(reversedLinesFileReader$FilePartAccess$1000);
        }
        if (!"".equals(strAccess$900) || this.trailingNewlineOfFileSkipped) {
            return strAccess$900;
        }
        this.trailingNewlineOfFileSkipped = true;
        return readLine();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<String> readLines(int i) {
        if (i < 0) {
            j1.i.k("lineCount < 0");
            return null;
        }
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            String line = readLine();
            if (line == null) {
                break;
            }
            arrayList.add(line);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString(int i) {
        List<String> lines = readLines(i);
        Collections.reverse(lines);
        if (lines.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        String strLineSeparator = System.lineSeparator();
        if (strLineSeparator == null) {
            n0.b.n("delimiter");
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<T> it = lines.iterator();
        if (it.hasNext()) {
            while (true) {
                sb2.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb2.append((CharSequence) strLineSeparator);
            }
        }
        sb.append(sb2.toString());
        sb.append(System.lineSeparator());
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIterable
    public Iterable<String> unwrap() {
        return null;
    }

    public /* synthetic */ ReversedLinesFileReader(ReversedLinesFileReader$Builder reversedLinesFileReader$Builder, ReversedLinesFileReader$1 reversedLinesFileReader$1) {
        this(reversedLinesFileReader$Builder);
    }

    @Deprecated
    public ReversedLinesFileReader(File file) {
        this(file, DEFAULT_BLOCK_SIZE, Charset.defaultCharset());
    }

    @Deprecated
    public ReversedLinesFileReader(File file, Charset charset) {
        this(c5.h.i(file), charset);
    }

    @Deprecated
    public ReversedLinesFileReader(File file, int i, Charset charset) {
        this(c5.h.i(file), i, charset);
    }

    @Deprecated
    public ReversedLinesFileReader(File file, int i, String str) {
        this(c5.h.i(file), i, str);
    }

    @Deprecated
    public ReversedLinesFileReader(Path path, Charset charset) {
        this(path, DEFAULT_BLOCK_SIZE, charset);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public ReversedLinesFileReader(Path path, int i, Charset charset) {
        this(((ReversedLinesFileReader$Builder) builder().setPath(path)).setBufferSize(i).setCharset(charset));
    }

    @Deprecated
    public ReversedLinesFileReader(Path path, int i, String str) {
        this(path, i, Charsets.toCharset(str));
    }
}
