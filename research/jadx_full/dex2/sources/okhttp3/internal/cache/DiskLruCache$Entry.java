package okhttp3.internal.cache;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.g0;
import l9.m;
import n0.b;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0016\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0007\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\u00020\u00102\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0014H\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u001d\u001a\b\u0018\u00010\u0019R\u00020\u001aH\u0000¢\u0006\u0004\b\u001b\u0010\u001cR\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001a\u0010\"\u001a\u00020!8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R \u0010(\u001a\b\u0012\u0004\u0012\u00020'0&8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R \u0010,\u001a\b\u0012\u0004\u0012\u00020'0&8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b,\u0010)\u001a\u0004\b-\u0010+R\"\u0010/\u001a\u00020.8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u00105\u001a\u00020.8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b5\u00100\u001a\u0004\b6\u00102\"\u0004\b7\u00104R(\u00109\u001a\b\u0018\u000108R\u00020\u001a8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010?\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010F\u001a\u00020E8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010K¨\u0006L"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Entry;", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "key", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V", HttpUrl.FRAGMENT_ENCODE_SET, "strings", HttpUrl.FRAGMENT_ENCODE_SET, "invalidLengths", "(Ljava/util/List;)Ljava/lang/Void;", HttpUrl.FRAGMENT_ENCODE_SET, "index", "Ll9/g0;", "newSource", "(I)Ll9/g0;", HttpUrl.FRAGMENT_ENCODE_SET, "setLengths$okhttp", "(Ljava/util/List;)V", "setLengths", "Ll9/m;", "writer", "writeLengths$okhttp", "(Ll9/m;)V", "writeLengths", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "snapshot$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "snapshot", "Ljava/lang/String;", "getKey$okhttp", "()Ljava/lang/String;", HttpUrl.FRAGMENT_ENCODE_SET, "lengths", "[J", "getLengths$okhttp", "()[J", HttpUrl.FRAGMENT_ENCODE_SET, "Ljava/io/File;", "cleanFiles", "Ljava/util/List;", "getCleanFiles$okhttp", "()Ljava/util/List;", "dirtyFiles", "getDirtyFiles$okhttp", HttpUrl.FRAGMENT_ENCODE_SET, "readable", "Z", "getReadable$okhttp", "()Z", "setReadable$okhttp", "(Z)V", "zombie", "getZombie$okhttp", "setZombie$okhttp", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "currentEditor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "getCurrentEditor$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Editor;", "setCurrentEditor$okhttp", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "lockingSourceCount", "I", "getLockingSourceCount$okhttp", "()I", "setLockingSourceCount$okhttp", "(I)V", HttpUrl.FRAGMENT_ENCODE_SET, "sequenceNumber", "J", "getSequenceNumber$okhttp", "()J", "setSequenceNumber$okhttp", "(J)V", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$Entry\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1065:1\n608#2,4:1066\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$Entry\n*L\n1001#1:1066,4\n*E\n"})
public final class DiskLruCache$Entry {
    private final List<File> cleanFiles;
    private DiskLruCache$Editor currentEditor;
    private final List<File> dirtyFiles;
    private final String key;
    private final long[] lengths;
    private int lockingSourceCount;
    private boolean readable;
    private long sequenceNumber;
    final /* synthetic */ DiskLruCache this$0;
    private boolean zombie;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DiskLruCache$Entry(DiskLruCache diskLruCache, String str) {
        str.getClass();
        this.this$0 = diskLruCache;
        this.key = str;
        this.lengths = new long[diskLruCache.getValueCount()];
        this.cleanFiles = new ArrayList();
        this.dirtyFiles = new ArrayList();
        StringBuilder sb = new StringBuilder(str);
        sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        int length = sb.length();
        int valueCount = diskLruCache.getValueCount();
        for (int i = 0; i < valueCount; i++) {
            sb.append(i);
            this.cleanFiles.add(new File(this.this$0.getDirectory(), sb.toString()));
            sb.append(".tmp");
            this.dirtyFiles.add(new File(this.this$0.getDirectory(), sb.toString()));
            sb.setLength(length);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Void invalidLengths(List<String> strings) throws IOException {
        throw new IOException("unexpected journal line: " + strings);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final g0 newSource(int index) {
        g0 g0VarSource = this.this$0.getFileSystem().source(this.cleanFiles.get(index));
        if (DiskLruCache.access$getCivilizedFileSystem$p(this.this$0)) {
            return g0VarSource;
        }
        this.lockingSourceCount++;
        return new DiskLruCache$Entry$newSource$1(g0VarSource, this.this$0, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<File> getCleanFiles$okhttp() {
        return this.cleanFiles;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getCurrentEditor$okhttp, reason: from getter */
    public final DiskLruCache$Editor getCurrentEditor() {
        return this.currentEditor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<File> getDirtyFiles$okhttp() {
        return this.dirtyFiles;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getKey$okhttp, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getLengths$okhttp, reason: from getter */
    public final long[] getLengths() {
        return this.lengths;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getLockingSourceCount$okhttp, reason: from getter */
    public final int getLockingSourceCount() {
        return this.lockingSourceCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getReadable$okhttp, reason: from getter */
    public final boolean getReadable() {
        return this.readable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getSequenceNumber$okhttp, reason: from getter */
    public final long getSequenceNumber() {
        return this.sequenceNumber;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getZombie$okhttp, reason: from getter */
    public final boolean getZombie() {
        return this.zombie;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCurrentEditor$okhttp(DiskLruCache$Editor diskLruCache$Editor) {
        this.currentEditor = diskLruCache$Editor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setLengths$okhttp(List<String> strings) {
        strings.getClass();
        if (strings.size() != this.this$0.getValueCount()) {
            invalidLengths(strings);
            throw new KotlinNothingValueException();
        }
        try {
            int size = strings.size();
            for (int i = 0; i < size; i++) {
                this.lengths[i] = Long.parseLong(strings.get(i));
            }
        } catch (NumberFormatException unused) {
            invalidLengths(strings);
            throw new KotlinNothingValueException();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setLockingSourceCount$okhttp(int i) {
        this.lockingSourceCount = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setReadable$okhttp(boolean z) {
        this.readable = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSequenceNumber$okhttp(long j) {
        this.sequenceNumber = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setZombie$okhttp(boolean z) {
        this.zombie = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final DiskLruCache$Snapshot snapshot$okhttp() {
        DiskLruCache diskLruCache = this.this$0;
        if (Util.assertionsEnabled && !Thread.holdsLock(diskLruCache)) {
            b.B("Thread ", Thread.currentThread().getName(), " MUST hold lock on ", diskLruCache);
            return null;
        }
        if (!this.readable) {
            return null;
        }
        if (!DiskLruCache.access$getCivilizedFileSystem$p(this.this$0) && (this.currentEditor != null || this.zombie)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        long[] jArr = (long[]) this.lengths.clone();
        int i = 0;
        try {
            int valueCount = this.this$0.getValueCount();
            for (int i2 = 0; i2 < valueCount; i2++) {
                arrayList.add(newSource(i2));
            }
            return new DiskLruCache$Snapshot(this.this$0, this.key, this.sequenceNumber, arrayList, jArr);
        } catch (FileNotFoundException unused) {
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Util.closeQuietly((g0) obj);
            }
            try {
                this.this$0.removeEntry$okhttp(this);
            } catch (IOException unused2) {
            }
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void writeLengths$okhttp(m writer) {
        writer.getClass();
        for (long j : this.lengths) {
            writer.writeByte(32).Z(j);
        }
    }
}
