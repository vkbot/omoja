package org.apache.commons.p161io;

import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Objects;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class FileSystemUtils {
    @Deprecated
    public FileSystemUtils() {
    }

    @Deprecated
    public static long freeSpace(String str) {
        return getFreeSpace(str);
    }

    @Deprecated
    public static long freeSpaceKb(long j10) {
        return freeSpaceKb(FileUtils.current().getAbsolutePath(), j10);
    }

    public static long getFreeSpace(String str) {
        Objects.requireNonNull(str, "pathStr");
        Path path = Paths.get(str, new String[0]);
        if (Files.exists(path, new LinkOption[0])) {
            return Files.getFileStore(path.toAbsolutePath()).getUsableSpace();
        }
        C1929i.m3029k(path.toString());
        return 0L;
    }

    @Deprecated
    public static long freeSpaceKb() {
        return freeSpaceKb(-1L);
    }

    @Deprecated
    public static long freeSpaceKb(String str) {
        return freeSpaceKb(str, -1L);
    }

    @Deprecated
    public static long freeSpaceKb(String str, long j10) {
        return getFreeSpace(str) / 1024;
    }
}
