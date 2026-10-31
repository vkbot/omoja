package org.apache.commons.net.nntp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import n0.b;
import org.apache.commons.io.IOUtils;
import org.apache.commons.net.io.DotTerminatedMessageReader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class ReplyIterator implements Iterator<String>, Iterable<String> {
    private String line;
    private final BufferedReader reader;
    private Exception savedException;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ReplyIterator(BufferedReader bufferedReader, boolean z) throws IOException {
        bufferedReader = z ? new DotTerminatedMessageReader(bufferedReader) : bufferedReader;
        this.reader = bufferedReader;
        String line = bufferedReader.readLine();
        this.line = line;
        if (line == null) {
            IOUtils.closeQuietly((Reader) bufferedReader);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        Exception exc = this.savedException;
        if (exc == null) {
            return this.line != null;
        }
        throw new NoSuchElementException(exc.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    /* JADX INFO: renamed from: next, reason: avoid collision after fix types in other method */
    public String next2() {
        Exception exc = this.savedException;
        if (exc != null) {
            throw new NoSuchElementException(exc.toString());
        }
        String str = this.line;
        if (str == null) {
            b.x();
            return null;
        }
        try {
            String line = this.reader.readLine();
            this.line = line;
            if (line != null) {
                return str;
            }
            IOUtils.closeQuietly((Reader) this.reader);
            return str;
        } catch (IOException e) {
            this.savedException = e;
            IOUtils.closeQuietly((Reader) this.reader);
            return str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public ReplyIterator(BufferedReader bufferedReader) {
        this(bufferedReader, true);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ String next() {
        return next2();
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return this;
    }
}
