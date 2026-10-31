package org.apache.commons.io.monitor;

import c5.h;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.nio.file.LinkOption;
import java.nio.file.attribute.FileTime;
import java.util.Objects;
import kotlin.io.path.f;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.file.attribute.FileTimes;
import org.apache.commons.io.file.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FileEntry implements Serializable {
    static final FileEntry[] EMPTY_FILE_ENTRY_ARRAY = new FileEntry[0];
    private static final long serialVersionUID = -2505664948818681153L;
    private FileEntry[] children;
    private boolean directory;
    private boolean exists;
    private final File file;
    private SerializableFileTime lastModified;
    private long length;
    private String name;
    private final FileEntry parent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileEntry(FileEntry fileEntry, File file) {
        this.lastModified = SerializableFileTime.EPOCH;
        Objects.requireNonNull(file, "file");
        this.file = file;
        this.parent = fileEntry;
        this.name = file.getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileEntry[] getChildren() {
        FileEntry[] fileEntryArr = this.children;
        return fileEntryArr != null ? fileEntryArr : EMPTY_FILE_ENTRY_ARRAY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public File getFile() {
        return this.file;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getLastModified() {
        return this.lastModified.toMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileTime getLastModifiedFileTime() {
        return this.lastModified.unwrap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getLength() {
        return this.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLevel() {
        FileEntry fileEntry = this.parent;
        if (fileEntry == null) {
            return 0;
        }
        return fileEntry.getLevel() + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName() {
        return this.name;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileEntry getParent() {
        return this.parent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDirectory() {
        return this.directory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isExists() {
        return this.exists;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileEntry newChildInstance(File file) {
        return new FileEntry(this, file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean refresh(File file) {
        boolean z = this.exists;
        SerializableFileTime serializableFileTime = this.lastModified;
        boolean z2 = this.directory;
        long j = this.length;
        this.name = file.getName();
        boolean zX = f.x(h.i(file), new LinkOption[0]);
        this.exists = zX;
        this.directory = zX && file.isDirectory();
        try {
            setLastModified(this.exists ? FileUtils.lastModifiedFileTime(file) : FileTimes.EPOCH);
        } catch (IOException unused) {
            setLastModified(SerializableFileTime.EPOCH);
        }
        this.length = (!this.exists || this.directory) ? 0L : file.length();
        return (this.exists == z && this.lastModified.equals(serializableFileTime) && this.directory == z2 && this.length == j) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChildren(FileEntry... fileEntryArr) {
        this.children = fileEntryArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDirectory(boolean z) {
        this.directory = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setExists(boolean z) {
        this.exists = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLastModified(FileTime fileTime) {
        setLastModified(new SerializableFileTime(fileTime));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLength(long j) {
        this.length = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setName(String str) {
        this.name = str;
    }

    public void setLastModified(long j) {
        setLastModified(e.l(j));
    }

    public void setLastModified(SerializableFileTime serializableFileTime) {
        this.lastModified = serializableFileTime;
    }

    public FileEntry(File file) {
        this(null, file);
    }
}
