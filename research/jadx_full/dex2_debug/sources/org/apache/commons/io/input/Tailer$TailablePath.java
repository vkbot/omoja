package org.apache.commons.io.input;

import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.util.Arrays;
import java.util.Objects;
import org.apache.commons.io.file.PathUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class Tailer$TailablePath implements Tailer$Tailable {
    private final LinkOption[] linkOptions;
    private final Path path;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Tailer$TailablePath(Path path, LinkOption... linkOptionArr) {
        Objects.requireNonNull(path, "path");
        this.path = kotlin.internal.jdk8.a.m(path);
        this.linkOptions = linkOptionArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Path getPath() {
        return this.path;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.Tailer$Tailable
    public Tailer$RandomAccessResourceBridge getRandomAccess(String str) {
        return new Tailer$RandomAccessFileBridge(ai.onnxruntime.c.r(this.path), str, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.Tailer$Tailable
    public boolean isNewer(FileTime fileTime) {
        return PathUtils.isNewer(this.path, fileTime, this.linkOptions);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.Tailer$Tailable
    public FileTime lastModifiedFileTime() {
        return kotlin.io.path.f.l(this.path, this.linkOptions);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.Tailer$Tailable
    public long size() {
        return kotlin.io.path.a.a(this.path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("TailablePath [file=");
        sb.append(this.path);
        sb.append(", linkOptions=");
        return ai.onnxruntime.a.p(sb, Arrays.toString(this.linkOptions), "]");
    }

    public /* synthetic */ Tailer$TailablePath(Path path, LinkOption[] linkOptionArr, Tailer$1 tailer$1) {
        this(path, linkOptionArr);
    }
}
