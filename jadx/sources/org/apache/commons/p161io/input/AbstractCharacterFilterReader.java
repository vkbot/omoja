package org.apache.commons.p161io.input;

import java.io.FilterReader;
import java.io.IOException;
import java.io.Reader;
import java.util.function.IntPredicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractCharacterFilterReader extends FilterReader {
    protected static final IntPredicate SKIP_NONE = new C2871a();
    private final IntPredicate skip;

    public AbstractCharacterFilterReader(Reader reader, IntPredicate intPredicate) {
        super(reader);
        this.skip = intPredicate == null ? SKIP_NONE : intPredicate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(int i10) {
        return false;
    }

    public boolean filter(int i10) {
        return this.skip.test(i10);
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i10, int i11) throws IOException {
        int i12 = super.read(cArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        int i13 = i10 - 1;
        for (int i14 = i10; i14 < i10 + i12; i14++) {
            if (!filter(cArr[i14]) && (i13 = i13 + 1) < i14) {
                cArr[i13] = cArr[i14];
            }
        }
        return (i13 - i10) + 1;
    }

    public AbstractCharacterFilterReader(Reader reader) {
        this(reader, SKIP_NONE);
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() throws IOException {
        int i10;
        do {
            i10 = ((FilterReader) this).in.read();
            if (i10 == -1) {
                break;
            }
        } while (filter(i10));
        return i10;
    }
}
