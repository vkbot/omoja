package org.apache.commons.p161io;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class IORandomAccessFile extends RandomAccessFile {
    private final File file;
    private final String mode;

    public IORandomAccessFile(String str, String str2) {
        super(str, str2);
        this.file = str != null ? new File(str) : null;
        this.mode = str2;
    }

    public File getFile() {
        return this.file;
    }

    public String getMode() {
        return this.mode;
    }

    public String toString() {
        return Objects.toString(this.file);
    }

    public IORandomAccessFile(File file, String str) {
        super(file, str);
        this.file = file;
        this.mode = str;
    }
}
