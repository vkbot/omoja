package okhttp3.internal.cache;

import ai.onnxruntime.a;
import j1.i;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import l9.a0;
import l9.b;
import l9.m;
import l9.z;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010)\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\b*\u0001j\u0018\u0000 m2\u00020\u00012\u00020\u0002:\u0004mnopB9\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u0013\u0010\u0012J\u001e\u0010\u0018\u001a\b\u0018\u00010\u0017R\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015H\u0086\u0002¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001c\u001a\b\u0018\u00010\u001bR\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u001a\u001a\u00020\nH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\n¢\u0006\u0004\b\u001e\u0010\u001fJ#\u0010%\u001a\u00020\u00102\n\u0010 \u001a\u00060\u001bR\u00020\u00002\u0006\u0010\"\u001a\u00020!H\u0000¢\u0006\u0004\b#\u0010$J\u0015\u0010&\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b&\u0010'J\u001b\u0010,\u001a\u00020!2\n\u0010)\u001a\u00060(R\u00020\u0000H\u0000¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020\u0010H\u0016¢\u0006\u0004\b-\u0010\u0012J\r\u0010.\u001a\u00020!¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0010H\u0016¢\u0006\u0004\b0\u0010\u0012J\r\u00101\u001a\u00020\u0010¢\u0006\u0004\b1\u0010\u0012J\r\u00102\u001a\u00020\u0010¢\u0006\u0004\b2\u0010\u0012J\r\u00103\u001a\u00020\u0010¢\u0006\u0004\b3\u0010\u0012J\u0017\u00105\u001a\f\u0012\b\u0012\u00060\u0017R\u00020\u000004¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0010H\u0002¢\u0006\u0004\b7\u0010\u0012J\u000f\u00109\u001a\u000208H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010<\u001a\u00020\u00102\u0006\u0010;\u001a\u00020\u0015H\u0002¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\u0010H\u0002¢\u0006\u0004\b>\u0010\u0012J\u000f\u0010?\u001a\u00020!H\u0002¢\u0006\u0004\b?\u0010/J\u000f\u0010@\u001a\u00020\u0010H\u0002¢\u0006\u0004\b@\u0010\u0012J\u000f\u0010A\u001a\u00020!H\u0002¢\u0006\u0004\bA\u0010/J\u0017\u0010B\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\bB\u0010=R\u001a\u0010\u0004\u001a\u00020\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0004\u0010C\u001a\u0004\bD\u0010ER\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010F\u001a\u0004\bG\u0010HR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010IR\u001a\u0010\t\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010I\u001a\u0004\bJ\u0010KR*\u0010\u000b\u001a\u00020\n2\u0006\u0010L\u001a\u00020\n8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010M\u001a\u0004\bN\u0010\u001f\"\u0004\bO\u0010PR\u0014\u0010Q\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010FR\u0014\u0010R\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010FR\u0014\u0010S\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010FR\u0016\u0010\u001e\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010MR\u0018\u0010T\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR*\u0010W\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\b\u0012\u00060(R\u00020\u00000V8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR\u0016\u0010[\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010IR\u0016\u0010\\\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010^\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010]R\u0016\u0010_\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010]R\"\u0010`\u001a\u00020!8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b`\u0010]\u001a\u0004\ba\u0010/\"\u0004\bb\u0010cR\u0016\u0010d\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010]R\u0016\u0010e\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010]R\u0016\u0010f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010MR\u0014\u0010h\u001a\u00020g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010iR\u0014\u0010k\u001a\u00020j8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010l¨\u0006q"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "Lokhttp3/internal/io/FileSystem;", "fileSystem", "Ljava/io/File;", "directory", HttpUrl.FRAGMENT_ENCODE_SET, "appVersion", "valueCount", HttpUrl.FRAGMENT_ENCODE_SET, "maxSize", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V", HttpUrl.FRAGMENT_ENCODE_SET, "initialize", "()V", "rebuildJournal$okhttp", "rebuildJournal", HttpUrl.FRAGMENT_ENCODE_SET, "key", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "get", "(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "expectedSequenceNumber", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "edit", "(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;", "size", "()J", "editor", HttpUrl.FRAGMENT_ENCODE_SET, "success", "completeEdit$okhttp", "(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V", "completeEdit", "remove", "(Ljava/lang/String;)Z", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "entry", "removeEntry$okhttp", "(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z", "removeEntry", "flush", "isClosed", "()Z", "close", "trimToSize", "delete", "evictAll", HttpUrl.FRAGMENT_ENCODE_SET, "snapshots", "()Ljava/util/Iterator;", "readJournal", "Ll9/m;", "newJournalWriter", "()Ll9/m;", "line", "readJournalLine", "(Ljava/lang/String;)V", "processJournal", "journalRebuildRequired", "checkNotClosed", "removeOldestEntry", "validateKey", "Lokhttp3/internal/io/FileSystem;", "getFileSystem$okhttp", "()Lokhttp3/internal/io/FileSystem;", "Ljava/io/File;", "getDirectory", "()Ljava/io/File;", "I", "getValueCount$okhttp", "()I", "value", "J", "getMaxSize", "setMaxSize", "(J)V", "journalFile", "journalFileTmp", "journalFileBackup", "journalWriter", "Ll9/m;", "Ljava/util/LinkedHashMap;", "lruEntries", "Ljava/util/LinkedHashMap;", "getLruEntries$okhttp", "()Ljava/util/LinkedHashMap;", "redundantOpCount", "hasJournalErrors", "Z", "civilizedFileSystem", "initialized", "closed", "getClosed$okhttp", "setClosed$okhttp", "(Z)V", "mostRecentTrimFailed", "mostRecentRebuildFailed", "nextSequenceNumber", "Lokhttp3/internal/concurrent/TaskQueue;", "cleanupQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "okhttp3/internal/cache/DiskLruCache$cleanupTask$1", "cleanupTask", "Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;", "Companion", "Editor", "Entry", "Snapshot", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1065:1\n1#2:1066\n608#3,4:1067\n37#4,2:1071\n37#4,2:1073\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n*L\n215#1:1067,4\n672#1:1071,2\n721#1:1073,2\n*E\n"})
public final class DiskLruCache implements Closeable, Flushable {
    private final int appVersion;
    private boolean civilizedFileSystem;
    private final TaskQueue cleanupQueue;
    private final DiskLruCache$cleanupTask$1 cleanupTask;
    private boolean closed;
    private final File directory;
    private final FileSystem fileSystem;
    private boolean hasJournalErrors;
    private boolean initialized;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private m journalWriter;
    private final LinkedHashMap<String, DiskLruCache$Entry> lruEntries;
    private long maxSize;
    private boolean mostRecentRebuildFailed;
    private boolean mostRecentTrimFailed;
    private long nextSequenceNumber;
    private int redundantOpCount;
    private long size;
    private final int valueCount;
    public static final DiskLruCache$Companion Companion = new DiskLruCache$Companion(null);

    @JvmField
    public static final String JOURNAL_FILE = "journal";

    @JvmField
    public static final String JOURNAL_FILE_TEMP = "journal.tmp";

    @JvmField
    public static final String JOURNAL_FILE_BACKUP = "journal.bkp";

    @JvmField
    public static final String MAGIC = "libcore.io.DiskLruCache";

    @JvmField
    public static final String VERSION_1 = "1";

    @JvmField
    public static final long ANY_SEQUENCE_NUMBER = -1;

    @JvmField
    public static final Regex LEGAL_KEY_PATTERN = new Regex("[a-z0-9_-]{1,120}");

    @JvmField
    public static final String CLEAN = "CLEAN";

    @JvmField
    public static final String DIRTY = "DIRTY";

    @JvmField
    public static final String REMOVE = "REMOVE";

    @JvmField
    public static final String READ = "READ";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DiskLruCache(FileSystem fileSystem, File file, int i, int i2, long j, TaskRunner taskRunner) {
        fileSystem.getClass();
        file.getClass();
        taskRunner.getClass();
        this.fileSystem = fileSystem;
        this.directory = file;
        this.appVersion = i;
        this.valueCount = i2;
        this.maxSize = j;
        this.lruEntries = new LinkedHashMap<>(0, 0.75f, true);
        this.cleanupQueue = taskRunner.newQueue();
        this.cleanupTask = new DiskLruCache$cleanupTask$1(this, a.p(new StringBuilder(), Util.okHttpName, " Cache"));
        if (j <= 0) {
            i.k("maxSize <= 0");
            throw null;
        }
        if (i2 <= 0) {
            i.k("valueCount <= 0");
            throw null;
        }
        this.journalFile = new File(file, JOURNAL_FILE);
        this.journalFileTmp = new File(file, JOURNAL_FILE_TEMP);
        this.journalFileBackup = new File(file, JOURNAL_FILE_BACKUP);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ boolean access$getCivilizedFileSystem$p(DiskLruCache diskLruCache) {
        return diskLruCache.civilizedFileSystem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ boolean access$getInitialized$p(DiskLruCache diskLruCache) {
        return diskLruCache.initialized;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ boolean access$journalRebuildRequired(DiskLruCache diskLruCache) {
        return diskLruCache.journalRebuildRequired();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setHasJournalErrors$p(DiskLruCache diskLruCache, boolean z) {
        diskLruCache.hasJournalErrors = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setJournalWriter$p(DiskLruCache diskLruCache, m mVar) {
        diskLruCache.journalWriter = mVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setMostRecentRebuildFailed$p(DiskLruCache diskLruCache, boolean z) {
        diskLruCache.mostRecentRebuildFailed = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setMostRecentTrimFailed$p(DiskLruCache diskLruCache, boolean z) {
        diskLruCache.mostRecentTrimFailed = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setRedundantOpCount$p(DiskLruCache diskLruCache, int i) {
        diskLruCache.redundantOpCount = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final synchronized void checkNotClosed() {
        if (this.closed) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ DiskLruCache$Editor edit$default(DiskLruCache diskLruCache, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = ANY_SEQUENCE_NUMBER;
        }
        return diskLruCache.edit(str, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean journalRebuildRequired() {
        int i = this.redundantOpCount;
        return i >= 2000 && i >= this.lruEntries.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final m newJournalWriter() {
        return new z(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile), new DiskLruCache$newJournalWriter$faultHidingSink$1(this)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void processJournal() {
        this.fileSystem.delete(this.journalFileTmp);
        Iterator<DiskLruCache$Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            DiskLruCache$Entry next = it.next();
            next.getClass();
            DiskLruCache$Entry diskLruCache$Entry = next;
            int i = 0;
            if (diskLruCache$Entry.getCurrentEditor() == null) {
                int i2 = this.valueCount;
                while (i < i2) {
                    this.size += diskLruCache$Entry.getLengths()[i];
                    i++;
                }
            } else {
                diskLruCache$Entry.setCurrentEditor$okhttp(null);
                int i3 = this.valueCount;
                while (i < i3) {
                    this.fileSystem.delete(diskLruCache$Entry.getCleanFiles$okhttp().get(i));
                    this.fileSystem.delete(diskLruCache$Entry.getDirtyFiles$okhttp().get(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readJournal() {
        a0 a0VarB = b.b(this.fileSystem.source(this.journalFile));
        try {
            String strP = a0VarB.p(Long.MAX_VALUE);
            String strP2 = a0VarB.p(Long.MAX_VALUE);
            String strP3 = a0VarB.p(Long.MAX_VALUE);
            String strP4 = a0VarB.p(Long.MAX_VALUE);
            String strP5 = a0VarB.p(Long.MAX_VALUE);
            if (!Intrinsics.areEqual(MAGIC, strP) || !Intrinsics.areEqual(VERSION_1, strP2) || !Intrinsics.areEqual(String.valueOf(this.appVersion), strP3) || !Intrinsics.areEqual(String.valueOf(this.valueCount), strP4) || strP5.length() > 0) {
                throw new IOException("unexpected journal header: [" + strP + ", " + strP2 + ", " + strP4 + ", " + strP5 + ']');
            }
            int i = 0;
            while (true) {
                try {
                    readJournalLine(a0VarB.p(Long.MAX_VALUE));
                    i++;
                } catch (EOFException unused) {
                    this.redundantOpCount = i - this.lruEntries.size();
                    if (a0VarB.k()) {
                        this.journalWriter = newJournalWriter();
                    } else {
                        rebuildJournal$okhttp();
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(a0VarB, (Throwable) null);
                    return;
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(a0VarB, th);
                throw th2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readJournalLine(String line) {
        String strSubstring;
        int iV = StringsKt.v(line, ' ', 0, 6);
        if (iV == -1) {
            n0.b.A(a.l("unexpected journal line: ", line));
            return;
        }
        int i = iV + 1;
        int iV2 = StringsKt.v(line, ' ', i, 4);
        if (iV2 == -1) {
            strSubstring = line.substring(i);
            String str = REMOVE;
            if (iV == str.length() && StringsKt.M(line, str)) {
                this.lruEntries.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = line.substring(i, iV2);
        }
        DiskLruCache$Entry diskLruCache$Entry = this.lruEntries.get(strSubstring);
        if (diskLruCache$Entry == null) {
            diskLruCache$Entry = new DiskLruCache$Entry(this, strSubstring);
            this.lruEntries.put(strSubstring, diskLruCache$Entry);
        }
        if (iV2 != -1) {
            String str2 = CLEAN;
            if (iV == str2.length() && StringsKt.M(line, str2)) {
                List<String> listH = StringsKt.H(line.substring(iV2 + 1), new char[]{' '});
                diskLruCache$Entry.setReadable$okhttp(true);
                diskLruCache$Entry.setCurrentEditor$okhttp(null);
                diskLruCache$Entry.setLengths$okhttp(listH);
                return;
            }
        }
        if (iV2 == -1) {
            String str3 = DIRTY;
            if (iV == str3.length() && StringsKt.M(line, str3)) {
                diskLruCache$Entry.setCurrentEditor$okhttp(new DiskLruCache$Editor(this, diskLruCache$Entry));
                return;
            }
        }
        if (iV2 == -1) {
            String str4 = READ;
            if (iV == str4.length() && StringsKt.M(line, str4)) {
                return;
            }
        }
        n0.b.A(a.l("unexpected journal line: ", line));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean removeOldestEntry() {
        for (DiskLruCache$Entry diskLruCache$Entry : this.lruEntries.values()) {
            if (!diskLruCache$Entry.getZombie()) {
                removeEntry$okhttp(diskLruCache$Entry);
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void validateKey(String key) {
        if (LEGAL_KEY_PATTERN.matches(key)) {
            return;
        }
        n0.b.g(key, "keys must match regex [a-z0-9_-]{1,120}: \"");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        DiskLruCache$Editor currentEditor$okhttp;
        try {
            if (this.initialized && !this.closed) {
                Collection<DiskLruCache$Entry> collectionValues = this.lruEntries.values();
                collectionValues.getClass();
                for (DiskLruCache$Entry diskLruCache$Entry : (DiskLruCache$Entry[]) collectionValues.toArray(new DiskLruCache$Entry[0])) {
                    if (diskLruCache$Entry.getCurrentEditor() != null && (currentEditor$okhttp = diskLruCache$Entry.getCurrentEditor()) != null) {
                        currentEditor$okhttp.detach$okhttp();
                    }
                }
                trimToSize();
                m mVar = this.journalWriter;
                mVar.getClass();
                mVar.close();
                this.journalWriter = null;
                this.closed = true;
                return;
            }
            this.closed = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void completeEdit$okhttp(DiskLruCache$Editor editor, boolean success) {
        editor.getClass();
        DiskLruCache$Entry entry$okhttp = editor.getEntry();
        if (!Intrinsics.areEqual(entry$okhttp.getCurrentEditor(), editor)) {
            throw new IllegalStateException("Check failed.");
        }
        if (success && !entry$okhttp.getReadable()) {
            int i = this.valueCount;
            for (int i2 = 0; i2 < i; i2++) {
                boolean[] written$okhttp = editor.getWritten();
                written$okhttp.getClass();
                if (!written$okhttp[i2]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                }
                if (!this.fileSystem.exists(entry$okhttp.getDirtyFiles$okhttp().get(i2))) {
                    editor.abort();
                    return;
                }
            }
        }
        int i3 = this.valueCount;
        for (int i4 = 0; i4 < i3; i4++) {
            File file = entry$okhttp.getDirtyFiles$okhttp().get(i4);
            if (!success || entry$okhttp.getZombie()) {
                this.fileSystem.delete(file);
            } else if (this.fileSystem.exists(file)) {
                File file2 = entry$okhttp.getCleanFiles$okhttp().get(i4);
                this.fileSystem.rename(file, file2);
                long j = entry$okhttp.getLengths()[i4];
                long size = this.fileSystem.size(file2);
                entry$okhttp.getLengths()[i4] = size;
                this.size = (this.size - j) + size;
            }
        }
        entry$okhttp.setCurrentEditor$okhttp(null);
        if (entry$okhttp.getZombie()) {
            removeEntry$okhttp(entry$okhttp);
            return;
        }
        this.redundantOpCount++;
        m mVar = this.journalWriter;
        mVar.getClass();
        if (entry$okhttp.getReadable() || success) {
            entry$okhttp.setReadable$okhttp(true);
            mVar.A(CLEAN).writeByte(32);
            mVar.A(entry$okhttp.getKey());
            entry$okhttp.writeLengths$okhttp(mVar);
            mVar.writeByte(10);
            if (success) {
                long j2 = this.nextSequenceNumber;
                this.nextSequenceNumber = 1 + j2;
                entry$okhttp.setSequenceNumber$okhttp(j2);
            }
        } else {
            this.lruEntries.remove(entry$okhttp.getKey());
            mVar.A(REMOVE).writeByte(32);
            mVar.A(entry$okhttp.getKey());
            mVar.writeByte(10);
        }
        mVar.flush();
        if (this.size > this.maxSize || journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void delete() {
        close();
        this.fileSystem.deleteContents(this.directory);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final synchronized DiskLruCache$Editor edit(String key, long expectedSequenceNumber) {
        key.getClass();
        initialize();
        checkNotClosed();
        validateKey(key);
        DiskLruCache$Entry diskLruCache$Entry = this.lruEntries.get(key);
        if (expectedSequenceNumber != ANY_SEQUENCE_NUMBER && (diskLruCache$Entry == null || diskLruCache$Entry.getSequenceNumber() != expectedSequenceNumber)) {
            return null;
        }
        if ((diskLruCache$Entry != null ? diskLruCache$Entry.getCurrentEditor() : null) != null) {
            return null;
        }
        if (diskLruCache$Entry != null && diskLruCache$Entry.getLockingSourceCount() != 0) {
            return null;
        }
        if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
            m mVar = this.journalWriter;
            mVar.getClass();
            mVar.A(DIRTY).writeByte(32).A(key).writeByte(10);
            mVar.flush();
            if (this.hasJournalErrors) {
                return null;
            }
            if (diskLruCache$Entry == null) {
                diskLruCache$Entry = new DiskLruCache$Entry(this, key);
                this.lruEntries.put(key, diskLruCache$Entry);
            }
            DiskLruCache$Editor diskLruCache$Editor = new DiskLruCache$Editor(this, diskLruCache$Entry);
            diskLruCache$Entry.setCurrentEditor$okhttp(diskLruCache$Editor);
            return diskLruCache$Editor;
        }
        TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void evictAll() {
        try {
            initialize();
            Collection<DiskLruCache$Entry> collectionValues = this.lruEntries.values();
            collectionValues.getClass();
            for (DiskLruCache$Entry diskLruCache$Entry : (DiskLruCache$Entry[]) collectionValues.toArray(new DiskLruCache$Entry[0])) {
                diskLruCache$Entry.getClass();
                removeEntry$okhttp(diskLruCache$Entry);
            }
            this.mostRecentTrimFailed = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Flushable
    public synchronized void flush() {
        if (this.initialized) {
            checkNotClosed();
            trimToSize();
            m mVar = this.journalWriter;
            mVar.getClass();
            mVar.flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized DiskLruCache$Snapshot get(String key) {
        key.getClass();
        initialize();
        checkNotClosed();
        validateKey(key);
        DiskLruCache$Entry diskLruCache$Entry = this.lruEntries.get(key);
        if (diskLruCache$Entry == null) {
            return null;
        }
        DiskLruCache$Snapshot diskLruCache$SnapshotSnapshot$okhttp = diskLruCache$Entry.snapshot$okhttp();
        if (diskLruCache$SnapshotSnapshot$okhttp == null) {
            return null;
        }
        this.redundantOpCount++;
        m mVar = this.journalWriter;
        mVar.getClass();
        mVar.A(READ).writeByte(32).A(key).writeByte(10);
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return diskLruCache$SnapshotSnapshot$okhttp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getClosed$okhttp, reason: from getter */
    public final boolean getClosed() {
        return this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final File getDirectory() {
        return this.directory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getFileSystem$okhttp, reason: from getter */
    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinkedHashMap<String, DiskLruCache$Entry> getLruEntries$okhttp() {
        return this.lruEntries;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized long getMaxSize() {
        return this.maxSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getValueCount$okhttp, reason: from getter */
    public final int getValueCount() {
        return this.valueCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void initialize() {
        try {
            if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
            }
            if (this.initialized) {
                return;
            }
            if (this.fileSystem.exists(this.journalFileBackup)) {
                boolean zExists = this.fileSystem.exists(this.journalFile);
                FileSystem fileSystem = this.fileSystem;
                if (zExists) {
                    fileSystem.delete(this.journalFileBackup);
                } else {
                    fileSystem.rename(this.journalFileBackup, this.journalFile);
                }
            }
            this.civilizedFileSystem = Util.isCivilized(this.fileSystem, this.journalFileBackup);
            if (this.fileSystem.exists(this.journalFile)) {
                try {
                    readJournal();
                    processJournal();
                    this.initialized = true;
                    return;
                } catch (IOException e) {
                    Platform.Companion.get().log("DiskLruCache " + this.directory + " is corrupt: " + e.getMessage() + ", removing", 5, e);
                    try {
                        delete();
                        this.closed = false;
                        rebuildJournal$okhttp();
                        this.initialized = true;
                    } catch (Throwable th) {
                        this.closed = false;
                        throw th;
                    }
                }
            }
            rebuildJournal$okhttp();
            this.initialized = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized boolean isClosed() {
        return this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void rebuildJournal$okhttp() {
        try {
            m mVar = this.journalWriter;
            if (mVar != null) {
                mVar.close();
            }
            z zVarA = b.a(this.fileSystem.sink(this.journalFileTmp));
            try {
                zVarA.A(MAGIC);
                zVarA.writeByte(10);
                zVarA.A(VERSION_1);
                zVarA.writeByte(10);
                zVarA.Z(this.appVersion);
                zVarA.writeByte(10);
                zVarA.Z(this.valueCount);
                zVarA.writeByte(10);
                zVarA.writeByte(10);
                for (DiskLruCache$Entry diskLruCache$Entry : this.lruEntries.values()) {
                    if (diskLruCache$Entry.getCurrentEditor() != null) {
                        zVarA.A(DIRTY);
                        zVarA.writeByte(32);
                        zVarA.A(diskLruCache$Entry.getKey());
                        zVarA.writeByte(10);
                    } else {
                        zVarA.A(CLEAN);
                        zVarA.writeByte(32);
                        zVarA.A(diskLruCache$Entry.getKey());
                        diskLruCache$Entry.writeLengths$okhttp(zVarA);
                        zVarA.writeByte(10);
                    }
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(zVarA, (Throwable) null);
                if (this.fileSystem.exists(this.journalFile)) {
                    this.fileSystem.rename(this.journalFile, this.journalFileBackup);
                }
                this.fileSystem.rename(this.journalFileTmp, this.journalFile);
                this.fileSystem.delete(this.journalFileBackup);
                this.journalWriter = newJournalWriter();
                this.hasJournalErrors = false;
                this.mostRecentRebuildFailed = false;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(zVarA, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized boolean remove(String key) {
        key.getClass();
        initialize();
        checkNotClosed();
        validateKey(key);
        DiskLruCache$Entry diskLruCache$Entry = this.lruEntries.get(key);
        if (diskLruCache$Entry == null) {
            return false;
        }
        boolean zRemoveEntry$okhttp = removeEntry$okhttp(diskLruCache$Entry);
        if (zRemoveEntry$okhttp && this.size <= this.maxSize) {
            this.mostRecentTrimFailed = false;
        }
        return zRemoveEntry$okhttp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean removeEntry$okhttp(DiskLruCache$Entry entry) {
        m mVar;
        entry.getClass();
        if (!this.civilizedFileSystem) {
            if (entry.getLockingSourceCount() > 0 && (mVar = this.journalWriter) != null) {
                mVar.A(DIRTY);
                mVar.writeByte(32);
                mVar.A(entry.getKey());
                mVar.writeByte(10);
                mVar.flush();
            }
            if (entry.getLockingSourceCount() > 0 || entry.getCurrentEditor() != null) {
                entry.setZombie$okhttp(true);
                return true;
            }
        }
        DiskLruCache$Editor currentEditor$okhttp = entry.getCurrentEditor();
        if (currentEditor$okhttp != null) {
            currentEditor$okhttp.detach$okhttp();
        }
        int i = this.valueCount;
        for (int i2 = 0; i2 < i; i2++) {
            this.fileSystem.delete(entry.getCleanFiles$okhttp().get(i2));
            this.size -= entry.getLengths()[i2];
            entry.getLengths()[i2] = 0;
        }
        this.redundantOpCount++;
        m mVar2 = this.journalWriter;
        if (mVar2 != null) {
            mVar2.A(REMOVE);
            mVar2.writeByte(32);
            mVar2.A(entry.getKey());
            mVar2.writeByte(10);
        }
        this.lruEntries.remove(entry.getKey());
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setClosed$okhttp(boolean z) {
        this.closed = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void setMaxSize(long j) {
        this.maxSize = j;
        if (this.initialized) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized long size() {
        initialize();
        return this.size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized Iterator<DiskLruCache$Snapshot> snapshots() {
        initialize();
        return new DiskLruCache$snapshots$1(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void trimToSize() {
        while (this.size > this.maxSize) {
            if (!removeOldestEntry()) {
                return;
            }
        }
        this.mostRecentTrimFailed = false;
    }

    @JvmOverloads
    public final DiskLruCache$Editor edit(String str) {
        str.getClass();
        return edit$default(this, str, 0L, 2, null);
    }
}
