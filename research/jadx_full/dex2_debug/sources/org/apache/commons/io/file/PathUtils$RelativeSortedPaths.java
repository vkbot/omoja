package org.apache.commons.io.file;

import java.nio.file.FileSystem;
import java.nio.file.FileVisitOption;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class PathUtils$RelativeSortedPaths {
    final boolean equals;
    final List<Path> relativeFileList1;
    final List<Path> relativeFileList2;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PathUtils$RelativeSortedPaths(Path path, Path path2, int i, LinkOption[] linkOptionArr, FileVisitOption[] fileVisitOptionArr) {
        List<Path> list;
        List<Path> list2 = null;
        if (path == null && path2 == null) {
            this.equals = true;
        } else {
            if ((path == null) ^ (path2 == null)) {
                this.equals = false;
            } else {
                boolean zW = org.apache.commons.io.d.w(path, linkOptionArr);
                boolean zW2 = org.apache.commons.io.d.w(path2, linkOptionArr);
                if (!zW && !zW2) {
                    AccumulatorPathVisitor accumulatorPathVisitorAccess$000 = PathUtils.access$000(path, i, fileVisitOptionArr);
                    AccumulatorPathVisitor accumulatorPathVisitorAccess$001 = PathUtils.access$000(path2, i, fileVisitOptionArr);
                    if (accumulatorPathVisitorAccess$000.getDirList().size() == accumulatorPathVisitorAccess$001.getDirList().size() && accumulatorPathVisitorAccess$000.getFileList().size() == accumulatorPathVisitorAccess$001.getFileList().size() && equalsIgnoreFileSystem(accumulatorPathVisitorAccess$000.relativizeDirectories(path, true, null), accumulatorPathVisitorAccess$001.relativizeDirectories(path2, true, null))) {
                        List<Path> listRelativizeFiles = accumulatorPathVisitorAccess$000.relativizeFiles(path, true, null);
                        List<Path> listRelativizeFiles2 = accumulatorPathVisitorAccess$001.relativizeFiles(path2, true, null);
                        this.equals = equalsIgnoreFileSystem(listRelativizeFiles, listRelativizeFiles2);
                        list2 = listRelativizeFiles;
                        list = listRelativizeFiles2;
                    } else {
                        this.equals = false;
                    }
                    this.relativeFileList1 = list2;
                    this.relativeFileList2 = list;
                }
                this.equals = zW && zW2;
            }
        }
        list = null;
        this.relativeFileList1 = list2;
        this.relativeFileList2 = list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean equalsIgnoreFileSystem(List<Path> list, List<Path> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        Iterator<Path> it = list.iterator();
        Iterator<Path> it2 = list2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!equalsIgnoreFileSystem(kotlin.internal.jdk8.a.m(it.next()), kotlin.internal.jdk8.a.m(it2.next()))) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String extractKey(String str, String str2) {
        return str2.replaceAll("\\" + str, ">");
    }

    private static boolean equalsIgnoreFileSystem(Path path, Path path2) {
        FileSystem fileSystemG = kotlin.internal.jdk8.a.g(path);
        FileSystem fileSystemG2 = kotlin.internal.jdk8.a.g(path2);
        if (fileSystemG == fileSystemG2) {
            return e.x(path, path2);
        }
        String strD = kotlin.internal.jdk8.a.d(fileSystemG);
        String strD2 = kotlin.internal.jdk8.a.d(fileSystemG2);
        String strS = ai.onnxruntime.c.s(path);
        String strS2 = ai.onnxruntime.c.s(path2);
        if (Objects.equals(strD, strD2)) {
            return Objects.equals(strS, strS2);
        }
        return extractKey(strD, strS).equals(extractKey(strD2, strS2));
    }

    public /* synthetic */ PathUtils$RelativeSortedPaths(Path path, Path path2, int i, LinkOption[] linkOptionArr, FileVisitOption[] fileVisitOptionArr, PathUtils$1 pathUtils$1) {
        this(path, path2, i, linkOptionArr, fileVisitOptionArr);
    }
}
