package org.apache.commons.net.nntp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.net.p162io.DotTerminatedMessageReader;
import org.apache.commons.p161io.IOUtils;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class ReplyIterator implements Iterator<String>, Iterable<String> {
    private String line;
    private final BufferedReader reader;
    private Exception savedException;

    public ReplyIterator(BufferedReader bufferedReader, boolean z9) throws IOException {
        bufferedReader = z9 ? new DotTerminatedMessageReader(bufferedReader) : bufferedReader;
        this.reader = bufferedReader;
        String line = bufferedReader.readLine();
        this.line = line;
        if (line == null) {
            IOUtils.closeQuietly((Reader) bufferedReader);
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        Exception exc = this.savedException;
        if (exc == null) {
            return this.line != null;
        }
        throw new NoSuchElementException(exc.toString());
    }

    @Override // java.util.Iterator
    public String next() {
        Exception exc = this.savedException;
        if (exc != null) {
            throw new NoSuchElementException(exc.toString());
        }
        String str = this.line;
        if (str == null) {
            C2467b.m3834x();
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

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public ReplyIterator(BufferedReader bufferedReader) {
        this(bufferedReader, true);
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return this;
    }
}
