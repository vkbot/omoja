package org.apache.commons.p161io.input;

import androidx.fragment.app.C0566h;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SequenceReader extends Reader {
    private Reader reader;
    private final Iterator<? extends Reader> readers;

    public SequenceReader(Iterable<? extends Reader> iterable) {
        Objects.requireNonNull(iterable, "readers");
        this.readers = iterable.iterator();
        this.reader = (Reader) Uncheck.get(new C0566h(24, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Reader nextReader() throws IOException {
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

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (nextReader() != null) {
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(cArr, i10, i11);
        int i12 = 0;
        if (i11 == 0) {
            return 0;
        }
        while (true) {
            Reader reader = this.reader;
            if (reader == null) {
                break;
            }
            int i13 = reader.read(cArr, i10, i11);
            if (i13 == -1) {
                nextReader();
            } else {
                i12 += i13;
                i10 += i13;
                i11 -= i13;
                if (i11 <= 0) {
                    break;
                }
            }
        }
        if (i12 > 0) {
            return i12;
        }
        return -1;
    }

    public SequenceReader(Reader... readerArr) {
        this(Arrays.asList(readerArr));
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int i10 = -1;
        while (true) {
            Reader reader = this.reader;
            if (reader == null) {
                return i10;
            }
            i10 = reader.read();
            if (i10 != -1) {
                return i10;
            }
            nextReader();
        }
    }
}
