package org.apache.commons.net.ftp;

import i7.c;
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
import org.apache.commons.io.Charsets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FTPListParseEngine {
    private static final FTPFile[] EMPTY_FTP_FILE_ARRAY = new FTPFile[0];
    private List<String> entries;
    private ListIterator<String> internalIterator;
    private final FTPFileEntryParser parser;
    private final boolean saveUnparseableEntries;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPListParseEngine(FTPFileEntryParser fTPFileEntryParser, FTPClientConfig fTPClientConfig) {
        LinkedList linkedList = new LinkedList();
        this.entries = linkedList;
        this.internalIterator = linkedList.listIterator();
        this.parser = fTPFileEntryParser;
        this.saveUnparseableEntries = fTPClientConfig != null && fTPClientConfig.getUnparseableEntries();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FTPFile a(FTPListParseEngine fTPListParseEngine, String str) {
        return fTPListParseEngine.lambda$getFileList$0(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ FTPFile lambda$getFileList$0(String str) {
        FTPFile fTPEntry = this.parser.parseFTPEntry(str);
        return (fTPEntry == null && this.saveUnparseableEntries) ? new FTPFile(str) : fTPEntry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<FTPFile> getFileList(FTPFileFilter fTPFileFilter) {
        Stream<R> map = this.entries.stream().map(new org.apache.commons.io.output.a(3, this));
        Objects.requireNonNull(fTPFileFilter);
        return (List) map.filter(new c(8, fTPFileFilter)).collect(Collectors.toList());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPFile[] getFiles(FTPFileFilter fTPFileFilter) {
        return (FTPFile[]) getFileList(fTPFileFilter).toArray(EMPTY_FTP_FILE_ARRAY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPFile[] getNext(int i) {
        LinkedList linkedList = new LinkedList();
        while (i > 0 && this.internalIterator.hasNext()) {
            String next = this.internalIterator.next();
            FTPFile fTPEntry = this.parser.parseFTPEntry(next);
            if (fTPEntry == null && this.saveUnparseableEntries) {
                fTPEntry = new FTPFile(next);
            }
            linkedList.add(fTPEntry);
            i--;
        }
        return (FTPFile[]) linkedList.toArray(EMPTY_FTP_FILE_ARRAY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPFile[] getPrevious(int i) {
        LinkedList linkedList = new LinkedList();
        while (i > 0 && this.internalIterator.hasPrevious()) {
            String strPrevious = this.internalIterator.previous();
            FTPFile fTPEntry = this.parser.parseFTPEntry(strPrevious);
            if (fTPEntry == null && this.saveUnparseableEntries) {
                fTPEntry = new FTPFile(strPrevious);
            }
            linkedList.add(0, fTPEntry);
            i--;
        }
        return (FTPFile[]) linkedList.toArray(EMPTY_FTP_FILE_ARRAY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasNext() {
        return this.internalIterator.hasNext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasPrevious() {
        return this.internalIterator.hasPrevious();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void readServerList(InputStream inputStream, String str) throws IOException {
        this.entries = new LinkedList();
        read(inputStream, str);
        this.parser.preParse(this.entries);
        resetIterator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
