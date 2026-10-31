package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.output.C2909a;
import p094i7.C1754c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FTPListParseEngine {
    private static final FTPFile[] EMPTY_FTP_FILE_ARRAY = new FTPFile[0];
    private List<String> entries;
    private ListIterator<String> internalIterator;
    private final FTPFileEntryParser parser;
    private final boolean saveUnparseableEntries;

    public FTPListParseEngine(FTPFileEntryParser fTPFileEntryParser, FTPClientConfig fTPClientConfig) {
        LinkedList linkedList = new LinkedList();
        this.entries = linkedList;
        this.internalIterator = linkedList.listIterator();
        this.parser = fTPFileEntryParser;
        this.saveUnparseableEntries = fTPClientConfig != null && fTPClientConfig.getUnparseableEntries();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FTPFile lambda$getFileList$0(String str) {
        FTPFile fTPEntry = this.parser.parseFTPEntry(str);
        return (fTPEntry == null && this.saveUnparseableEntries) ? new FTPFile(str) : fTPEntry;
    }

    private void read(InputStream inputStream, String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.toCharset(str)));
        try {
            String nextEntry = this.parser.readNextEntry(bufferedReader);
            while (nextEntry != null) {
                this.entries.add(nextEntry);
                nextEntry = this.parser.readNextEntry(bufferedReader);
            }
            bufferedReader.close();
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public List<FTPFile> getFileList(FTPFileFilter fTPFileFilter) {
        Stream<R> map = this.entries.stream().map(new C2909a(3, this));
        Objects.requireNonNull(fTPFileFilter);
        return (List) map.filter(new C1754c(8, fTPFileFilter)).collect(Collectors.toList());
    }

    public FTPFile[] getFiles(FTPFileFilter fTPFileFilter) {
        return (FTPFile[]) getFileList(fTPFileFilter).toArray(EMPTY_FTP_FILE_ARRAY);
    }

    public FTPFile[] getNext(int i10) {
        LinkedList linkedList = new LinkedList();
        while (i10 > 0 && this.internalIterator.hasNext()) {
            String next = this.internalIterator.next();
            FTPFile fTPEntry = this.parser.parseFTPEntry(next);
            if (fTPEntry == null && this.saveUnparseableEntries) {
                fTPEntry = new FTPFile(next);
            }
            linkedList.add(fTPEntry);
            i10--;
        }
        return (FTPFile[]) linkedList.toArray(EMPTY_FTP_FILE_ARRAY);
    }

    public FTPFile[] getPrevious(int i10) {
        LinkedList linkedList = new LinkedList();
        while (i10 > 0 && this.internalIterator.hasPrevious()) {
            String strPrevious = this.internalIterator.previous();
            FTPFile fTPEntry = this.parser.parseFTPEntry(strPrevious);
            if (fTPEntry == null && this.saveUnparseableEntries) {
                fTPEntry = new FTPFile(strPrevious);
            }
            linkedList.add(0, fTPEntry);
            i10--;
        }
        return (FTPFile[]) linkedList.toArray(EMPTY_FTP_FILE_ARRAY);
    }

    public boolean hasNext() {
        return this.internalIterator.hasNext();
    }

    public boolean hasPrevious() {
        return this.internalIterator.hasPrevious();
    }

    public void readServerList(InputStream inputStream, String str) throws IOException {
        this.entries = new LinkedList();
        read(inputStream, str);
        this.parser.preParse(this.entries);
        resetIterator();
    }

    public void resetIterator() {
        this.internalIterator = this.entries.listIterator();
    }

    public FTPFile[] getFiles() {
        return getFiles(FTPFileFilters.NON_NULL);
    }

    @Deprecated
    public void readServerList(InputStream inputStream) throws IOException {
        readServerList(inputStream, null);
    }

    public FTPListParseEngine(FTPFileEntryParser fTPFileEntryParser) {
        this(fTPFileEntryParser, null);
    }
}
