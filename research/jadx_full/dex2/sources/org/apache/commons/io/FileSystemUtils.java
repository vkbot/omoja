package org.apache.commons.io;

import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Deprecated
public class FileSystemUtils {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public FileSystemUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static long freeSpace(String str) {
        return getFreeSpace(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static long freeSpaceKb(long j) {
        return freeSpaceKb(FileUtils.current().getAbsolutePath(), j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getFreeSpace(String str) {
        Objects.requireNonNull(str, "pathStr");
        Path pathT = ai.onnxruntime.c.t(str, new String[0]);
        if (kotlin.io.path.f.x(pathT, new LinkOption[0])) {
            return kotlin.io.path.f.a(kotlin.io.path.a.e(kotlin.io.path.a.k(pathT)));
        }
        j1.i.k(ai.onnxruntime.c.s(pathT));
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
    public static long freeSpaceKb(String str, long j) {
        return getFreeSpace(str) / 1024;
    }
}
