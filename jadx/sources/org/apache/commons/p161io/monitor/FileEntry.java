package org.apache.commons.p161io.monitor;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.FileTime;
import java.util.Objects;
import org.apache.commons.p161io.FileUtils;
import org.apache.commons.p161io.file.attribute.FileTimes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
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

    public FileEntry(FileEntry fileEntry, File file) {
        this.lastModified = SerializableFileTime.EPOCH;
        Objects.requireNonNull(file, "file");
        this.file = file;
        this.parent = fileEntry;
        this.name = file.getName();
    }

    public FileEntry[] getChildren() {
        FileEntry[] fileEntryArr = this.children;
        return fileEntryArr != null ? fileEntryArr : EMPTY_FILE_ENTRY_ARRAY;
    }

    public File getFile() {
        return this.file;
    }

    public long getLastModified() {
        return this.lastModified.toMillis();
    }

    public FileTime getLastModifiedFileTime() {
        return this.lastModified.unwrap();
    }

    public long getLength() {
        return this.length;
    }

    public int getLevel() {
        FileEntry fileEntry = this.parent;
        if (fileEntry == null) {
            return 0;
        }
        return fileEntry.getLevel() + 1;
    }

    public String getName() {
        return this.name;
    }

    public FileEntry getParent() {
        return this.parent;
    }

    public boolean isDirectory() {
        return this.directory;
    }

    public boolean isExists() {
        return this.exists;
    }

    public FileEntry newChildInstance(File file) {
        return new FileEntry(this, file);
    }

    public boolean refresh(File file) {
        boolean z9 = this.exists;
        SerializableFileTime serializableFileTime = this.lastModified;
        boolean z10 = this.directory;
        long j10 = this.length;
        this.name = file.getName();
        boolean zExists = Files.exists(file.toPath(), new LinkOption[0]);
        this.exists = zExists;
        this.directory = zExists && file.isDirectory();
        try {
            setLastModified(this.exists ? FileUtils.lastModifiedFileTime(file) : FileTimes.EPOCH);
        } catch (IOException unused) {
            setLastModified(SerializableFileTime.EPOCH);
        }
        this.length = (!this.exists || this.directory) ? 0L : file.length();
        return (this.exists == z9 && this.lastModified.equals(serializableFileTime) && this.directory == z10 && this.length == j10) ? false : true;
    }

    public void setChildren(FileEntry... fileEntryArr) {
        this.children = fileEntryArr;
    }

    public void setDirectory(boolean z9) {
        this.directory = z9;
    }

    public void setExists(boolean z9) {
        this.exists = z9;
    }

    public void setLastModified(FileTime fileTime) {
        setLastModified(new SerializableFileTime(fileTime));
    }

    public void setLength(long j10) {
        this.length = j10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setLastModified(long j10) {
        setLastModified(FileTime.fromMillis(j10));
    }

    public void setLastModified(SerializableFileTime serializableFileTime) {
        this.lastModified = serializableFileTime;
    }

    public FileEntry(File file) {
        this(null, file);
    }
}
