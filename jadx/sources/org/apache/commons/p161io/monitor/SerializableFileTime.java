package org.apache.commons.p161io.monitor;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.file.attribute.FileTime;
import java.time.Instant;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.apache.commons.p161io.AbstractC2785d;
import org.apache.commons.p161io.file.attribute.FileTimes;
import org.apache.commons.p161io.filefilter.AbstractC2810f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class SerializableFileTime implements Serializable {
    static final SerializableFileTime EPOCH = new SerializableFileTime(FileTimes.EPOCH);
    private static final long serialVersionUID = 1;
    private FileTime fileTime;

    public SerializableFileTime(FileTime fileTime) {
        Objects.requireNonNull(fileTime);
        this.fileTime = AbstractC2785d.m4336l(fileTime);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        this.fileTime = FileTime.from(AbstractC2810f.m4462m(objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.fileTime.toInstant());
    }

    public int compareTo(FileTime fileTime) {
        return this.fileTime.compareTo(fileTime);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SerializableFileTime) {
            return Objects.equals(this.fileTime, ((SerializableFileTime) obj).fileTime);
        }
        return false;
    }

    public int hashCode() {
        return this.fileTime.hashCode();
    }

    /* JADX INFO: renamed from: to */
    public long m4616to(TimeUnit timeUnit) {
        return this.fileTime.to(timeUnit);
    }

    public Instant toInstant() {
        return this.fileTime.toInstant();
    }

    public long toMillis() {
        return this.fileTime.toMillis();
    }

    public String toString() {
        return this.fileTime.toString();
    }

    public FileTime unwrap() {
        return this.fileTime;
    }
}
