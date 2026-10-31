package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class SequenceReader extends Reader {
    private Reader reader;
    private final Iterator<? extends Reader> readers;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SequenceReader(Iterable<? extends Reader> iterable) {
        Objects.requireNonNull(iterable, "readers");
        this.readers = iterable.iterator();
        this.reader = (Reader) Uncheck.get(new androidx.fragment.app.h(24, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Reader b(SequenceReader sequenceReader) {
        return sequenceReader.nextReader();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Reader nextReader() throws IOException {
        Reader reader = this.reader;
        if (reader != null) {
            reader.close();
        }
        if (this.readers.hasNext()) {
            this.reader = this.readers.next();
        } else {
            this.reader = null;
        }
        return this.reader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (nextReader() != null) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        IOUtils.checkFromIndexSize(cArr, i, i2);
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        while (true) {
            Reader reader = this.reader;
            if (reader == null) {
                break;
            }
            int i4 = reader.read(cArr, i, i2);
            if (i4 == -1) {
                nextReader();
            } else {
                i3 += i4;
                i += i4;
                i2 -= i4;
                if (i2 <= 0) {
                    break;
                }
            }
        }
        if (i3 > 0) {
            return i3;
        }
        return -1;
    }

    public SequenceReader(Reader... readerArr) {
        this(Arrays.asList(readerArr));
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int i = -1;
        while (true) {
            Reader reader = this.reader;
            if (reader == null) {
                return i;
            }
            i = reader.read();
            if (i != -1) {
                return i;
            }
            nextReader();
        }
    }
}
