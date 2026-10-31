package org.apache.commons.p161io.input;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.FileSystem;
import org.apache.commons.p161io.StandardLineSeparator;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.IOIterable;
import org.apache.commons.p161io.function.IOIterator;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ReversedLinesFileReader implements Closeable, IOIterable<String> {
    private static final int DEFAULT_BLOCK_SIZE = FileSystem.getCurrent().getBlockSize();
    private static final String EMPTY_STRING = "";
    private final int avoidNewlineSplitBufferSize;
    private final int blockSize;
    private final int byteDecrement;
    private final SeekableByteChannel channel;
    private final Charset charset;
    private FilePart currentFilePart;
    private final byte[][] newLineSequences;
    private final long totalBlockCount;
    private final long totalByteLength;
    private boolean trailingNewlineOfFileSkipped;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<ReversedLinesFileReader, Builder> {
        public Builder() {
            setBufferSizeDefault(ReversedLinesFileReader.DEFAULT_BLOCK_SIZE);
            setBufferSize(ReversedLinesFileReader.DEFAULT_BLOCK_SIZE);
            setOpenOptions(StandardOpenOption.READ);
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public ReversedLinesFileReader get() {
            return new ReversedLinesFileReader(this);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public final class FilePart {
        private int currentLastBytePos;
        private final byte[] data;
        private byte[] leftOver;
        private final long partNumber;

        private FilePart(long j10, int i10, byte[] bArr) throws IOException {
            this.partNumber = j10;
            byte[] bArr2 = new byte[(bArr != null ? bArr.length : 0) + i10];
            this.data = bArr2;
            long j11 = (j10 - 1) * ((long) ReversedLinesFileReader.this.blockSize);
            if (j10 > 0) {
                ReversedLinesFileReader.this.channel.position(j11);
                if (ReversedLinesFileReader.this.channel.read(ByteBuffer.wrap(bArr2, 0, i10)) != i10) {
                    C1929i.m3030l("Count of requested bytes and actually read bytes don't match");
                    throw null;
                }
            }
            if (bArr != null) {
                System.arraycopy(bArr, 0, bArr2, i10, bArr.length);
            }
            this.currentLastBytePos = bArr2.length - 1;
            this.leftOver = null;
        }

        private void createLeftOver() {
            int i10 = this.currentLastBytePos + 1;
            if (i10 > 0) {
                this.leftOver = Arrays.copyOf(this.data, i10);
            } else {
                this.leftOver = null;
            }
            this.currentLastBytePos = -1;
        }

        private int getNewLineMatchByteCount(byte[] bArr, int i10) {
            for (byte[] bArr2 : ReversedLinesFileReader.this.newLineSequences) {
                boolean z9 = true;
                for (int length = bArr2.length - 1; length >= 0; length--) {
                    int length2 = (i10 + length) - (bArr2.length - 1);
                    z9 &= length2 >= 0 && bArr[length2] == bArr2[length];
                }
                if (z9) {
                    return bArr2.length;
                }
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String readLine() {
            String str;
            byte[] bArr;
            boolean z9 = this.partNumber == 1;
            int i10 = this.currentLastBytePos;
            while (true) {
                if (i10 > -1) {
                    if (z9 || i10 >= ReversedLinesFileReader.this.avoidNewlineSplitBufferSize) {
                        int newLineMatchByteCount = getNewLineMatchByteCount(this.data, i10);
                        if (newLineMatchByteCount > 0) {
                            int i11 = i10 + 1;
                            int i12 = (this.currentLastBytePos - i11) + 1;
                            if (i12 < 0) {
                                C1929i.m3030l(AbstractC0074a.m154e(i12, "Unexpected negative line length="));
                                return null;
                            }
                            str = new String(Arrays.copyOfRange(this.data, i11, i12 + i11), ReversedLinesFileReader.this.charset);
                            this.currentLastBytePos = i10 - newLineMatchByteCount;
                            break;
                        }
                        i10 -= ReversedLinesFileReader.this.byteDecrement;
                        if (i10 < 0) {
                            createLeftOver();
                        }
                    } else {
                        createLeftOver();
                    }
                }
                str = null;
                break;
            }
            if (!z9 || (bArr = this.leftOver) == null) {
                return str;
            }
            String str2 = new String(bArr, ReversedLinesFileReader.this.charset);
            this.leftOver = null;
            return str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public FilePart rollOver() {
            if (this.currentLastBytePos > -1) {
                C0075b.m177b(this.currentLastBytePos, "Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=");
                return null;
            }
            long j10 = this.partNumber;
            if (j10 > 1) {
                ReversedLinesFileReader reversedLinesFileReader = ReversedLinesFileReader.this;
                return reversedLinesFileReader.new FilePart(j10 - 1, reversedLinesFileReader.blockSize, this.leftOver);
            }
            byte[] bArr = this.leftOver;
            if (bArr == null) {
                return null;
            }
            C1929i.m3030l("Unexpected leftover of the last block: leftOverOfThisFilePart=".concat(new String(bArr, ReversedLinesFileReader.this.charset)));
            return null;
        }
    }

    private ReversedLinesFileReader(Builder builder) throws IOException {
        int i10;
        int bufferSize = builder.getBufferSize();
        this.blockSize = bufferSize;
        Charset charset = Charsets.toCharset(builder.getCharset());
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
        SeekableByteChannel seekableByteChannel = (SeekableByteChannel) builder.getChannel(SeekableByteChannel.class);
        this.channel = seekableByteChannel;
        long size = seekableByteChannel.size();
        this.totalByteLength = size;
        int i11 = (int) (size % ((long) bufferSize));
        if (i11 <= 0) {
            this.totalBlockCount = size / ((long) bufferSize);
            i10 = size > 0 ? bufferSize : i10;
            this.currentFilePart = new FilePart(this.totalBlockCount, i10, null);
        }
        this.totalBlockCount = (size / ((long) bufferSize)) + 1;
        i10 = i11;
        this.currentFilePart = new FilePart(this.totalBlockCount, i10, null);
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.channel.close();
    }

    @Override // org.apache.commons.p161io.function.IOIterable
    public IOIterator<String> iterator() {
        return new IOIterator<String>() { // from class: org.apache.commons.io.input.ReversedLinesFileReader.1
            private String next;

            @Override // org.apache.commons.p161io.function.IOIterator
            public boolean hasNext() {
                if (this.next == null) {
                    this.next = ReversedLinesFileReader.this.readLine();
                }
                return this.next != null;
            }

            @Override // org.apache.commons.p161io.function.IOIterator
            public String next() {
                if (this.next == null) {
                    this.next = ReversedLinesFileReader.this.readLine();
                }
                String str = this.next;
                this.next = null;
                return str;
            }

            @Override // org.apache.commons.p161io.function.IOIterator
            public Iterator<String> unwrap() {
                return null;
            }
        };
    }

    public String readLine() {
        String line = this.currentFilePart.readLine();
        while (line == null) {
            FilePart filePartRollOver = this.currentFilePart.rollOver();
            this.currentFilePart = filePartRollOver;
            if (filePartRollOver == null) {
                break;
            }
            line = filePartRollOver.readLine();
        }
        if (!"".equals(line) || this.trailingNewlineOfFileSkipped) {
            return line;
        }
        this.trailingNewlineOfFileSkipped = true;
        return readLine();
    }

    public List<String> readLines(int i10) {
        if (i10 < 0) {
            C1929i.m3029k("lineCount < 0");
            return null;
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            String line = readLine();
            if (line == null) {
                break;
            }
            arrayList.add(line);
        }
        return arrayList;
    }

    public String toString(int i10) {
        List<String> lines = readLines(i10);
        Collections.reverse(lines);
        if (lines.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        String strLineSeparator = System.lineSeparator();
        if (strLineSeparator == null) {
            C2467b.m3828n("delimiter");
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

    @Override // org.apache.commons.p161io.function.IOIterable
    public Iterable<String> unwrap() {
        return null;
    }

    @Deprecated
    public ReversedLinesFileReader(File file) {
        this(file, DEFAULT_BLOCK_SIZE, Charset.defaultCharset());
    }

    @Deprecated
    public ReversedLinesFileReader(File file, Charset charset) {
        this(file.toPath(), charset);
    }

    @Deprecated
    public ReversedLinesFileReader(File file, int i10, Charset charset) {
        this(file.toPath(), i10, charset);
    }

    @Deprecated
    public ReversedLinesFileReader(File file, int i10, String str) {
        this(file.toPath(), i10, str);
    }

    @Deprecated
    public ReversedLinesFileReader(Path path, Charset charset) {
        this(path, DEFAULT_BLOCK_SIZE, charset);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public ReversedLinesFileReader(Path path, int i10, Charset charset) {
        this(((Builder) builder().setPath(path)).setBufferSize(i10).setCharset(charset));
    }

    @Deprecated
    public ReversedLinesFileReader(Path path, int i10, String str) {
        this(path, i10, Charsets.toCharset(str));
    }
}
