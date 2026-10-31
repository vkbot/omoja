package org.apache.commons.io.file;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.file.AccessDeniedException;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystem;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.AclEntry;
import java.nio.file.attribute.AclFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFileAttributeView;
import java.nio.file.attribute.PosixFileAttributes;
import java.nio.file.attribute.PosixFilePermission;
import java.time.Duration;
import java.time.Instant;
import java.time.chrono.ChronoZonedDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.RandomAccessFileMode;
import org.apache.commons.io.RandomAccessFiles;
import org.apache.commons.io.ThreadUtils;
import org.apache.commons.io.file.attribute.FileTimes;
import org.apache.commons.io.function.IOFunction;
import org.apache.commons.io.function.IOSupplier;
import org.apache.commons.io.r;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class PathUtils {
    private static final OpenOption[] OPEN_OPTIONS_TRUNCATE = {e.i(), e.A()};
    private static final OpenOption[] OPEN_OPTIONS_APPEND = {e.i(), kotlin.internal.jdk8.a.t()};
    public static final CopyOption[] EMPTY_COPY_OPTIONS = new CopyOption[0];
    public static final DeleteOption[] EMPTY_DELETE_OPTION_ARRAY = new DeleteOption[0];
    public static final FileAttribute<?>[] EMPTY_FILE_ATTRIBUTE_ARRAY = new FileAttribute[0];
    public static final FileVisitOption[] EMPTY_FILE_VISIT_OPTION_ARRAY = new FileVisitOption[0];
    public static final LinkOption[] EMPTY_LINK_OPTION_ARRAY = new LinkOption[0];

    @Deprecated
    public static final LinkOption[] NOFOLLOW_LINK_OPTION_ARRAY = {kotlin.internal.jdk8.a.l()};
    static final LinkOption NULL_LINK_OPTION = null;
    public static final OpenOption[] EMPTY_OPEN_OPTION_ARRAY = new OpenOption[0];
    public static final Path[] EMPTY_PATH_ARRAY = new Path[0];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PathUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String a(Path path) {
        return lambda$directoryAndFileContentEquals$1(path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ AccumulatorPathVisitor access$000(Path path, int i, FileVisitOption[] fileVisitOptionArr) {
        return accumulate(path, i, fileVisitOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static AccumulatorPathVisitor accumulate(Path path, int i, FileVisitOption[] fileVisitOptionArr) {
        return (AccumulatorPathVisitor) visitFileTree(AccumulatorPathVisitor.builder().setDirectoryPostTransformer(new j()).get(), path, toFileVisitOptionSet(fileVisitOptionArr), i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Counters$PathCounters b(LinkOption[] linkOptionArr, DeleteOption[] deleteOptionArr, Path path, PosixFileAttributes posixFileAttributes) {
        return lambda$deleteDirectory$0(linkOptionArr, deleteOptionArr, path, posixFileAttributes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Path c(Path path) {
        return stripTrailingSeparator(path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters cleanDirectory(Path path, DeleteOption... deleteOptionArr) {
        return ((CleaningPathVisitor) visitFileTree(new CleaningPathVisitor(Counters.longPathCounters(), deleteOptionArr, new String[0]), path)).getPathCounters();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int compareLastModifiedTimeTo(Path path, FileTime fileTime, LinkOption... linkOptionArr) {
        return e.a(getLastModifiedTime(path, linkOptionArr), fileTime);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean contentEquals(FileSystem fileSystem, FileSystem fileSystem2) {
        if (Objects.equals(fileSystem, fileSystem2)) {
            return true;
        }
        List<Path> sortedList = toSortedList(e.d(fileSystem));
        List<Path> sortedList2 = toSortedList(e.d(fileSystem2));
        if (sortedList.size() == sortedList2.size()) {
            for (int i = 0; i < sortedList.size(); i++) {
                if (directoryAndFileContentEquals(kotlin.internal.jdk8.a.m(sortedList.get(i)), kotlin.internal.jdk8.a.m(sortedList2.get(i)))) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long copy(IOSupplier<InputStream> iOSupplier, Path path, CopyOption... copyOptionArr) throws IOException {
        InputStream inputStream = iOSupplier.get();
        try {
            long jB = e.b(inputStream, path, copyOptionArr);
            if (inputStream != null) {
                inputStream.close();
            }
            return jB;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters copyDirectory(Path path, Path path2, CopyOption... copyOptionArr) {
        Path pathK = kotlin.io.path.a.k(path);
        return ((CopyDirectoryVisitor) visitFileTree(new CopyDirectoryVisitor(Counters.longPathCounters(), pathK, path2, copyOptionArr), pathK)).getPathCounters();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path copyFile(URL url, Path path, CopyOption... copyOptionArr) throws IOException {
        Objects.requireNonNull(url);
        copy(new r(0, url), path, copyOptionArr);
        return path;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path copyFileToDirectory(Path path, Path path2, CopyOption... copyOptionArr) {
        Path pathO = kotlin.internal.jdk8.a.o(path);
        Objects.requireNonNull(pathO, "source file name");
        return e.f(path, resolve(path2, kotlin.internal.jdk8.a.m(pathO)), copyOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters countDirectory(Path path) {
        return ((CountingPathVisitor) visitFileTree(CountingPathVisitor.withLongCounters(), path)).getPathCounters();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters countDirectoryAsBigInteger(Path path) {
        return ((CountingPathVisitor) visitFileTree(CountingPathVisitor.withBigIntegerCounters(), path)).getPathCounters();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path createParentDirectories(Path path, LinkOption linkOption, FileAttribute<?>... fileAttributeArr) {
        Path parent = getParent(path);
        if (linkOption != kotlin.internal.jdk8.a.l()) {
            parent = readIfSymbolicLink(parent);
        }
        if (parent == null) {
            return null;
        }
        return linkOption == null ? kotlin.io.path.f.x(parent, new LinkOption[0]) : kotlin.io.path.f.x(parent, new LinkOption[]{linkOption}) ? parent : f.h(parent, fileAttributeArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path current() {
        return e.h(new String[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean d(PathFilter pathFilter, boolean z, Path path) {
        return lambda$walk$4(pathFilter, z, path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters delete(Path path, DeleteOption... deleteOptionArr) {
        return kotlin.io.path.f.D(path, new LinkOption[]{kotlin.internal.jdk8.a.l()}) ? deleteDirectory(path, deleteOptionArr) : deleteFile(path, deleteOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters deleteDirectory(Path path, DeleteOption... deleteOptionArr) {
        LinkOption[] linkOptionArrNoFollowLinkOptionArray = noFollowLinkOptionArray();
        return (Counters$PathCounters) withPosixFileAttributes(getParent(path), linkOptionArrNoFollowLinkOptionArray, overrideReadOnly(deleteOptionArr), new l(path, linkOptionArrNoFollowLinkOptionArray, deleteOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters deleteFile(Path path, LinkOption[] linkOptionArr, DeleteOption... deleteOptionArr) throws IOException {
        if (Files.isDirectory(path, linkOptionArr)) {
            throw new NoSuchFileException(path.toString());
        }
        Counters$PathCounters counters$PathCountersLongPathCounters = Counters.longPathCounters();
        long size = 0;
        long size2 = (!exists(path, linkOptionArr) || Files.isSymbolicLink(path)) ? 0L : Files.size(path);
        try {
            if (Files.deleteIfExists(path)) {
                counters$PathCountersLongPathCounters.getFileCounter().increment();
                counters$PathCountersLongPathCounters.getByteCounter().add(size2);
                return counters$PathCountersLongPathCounters;
            }
        } catch (AccessDeniedException unused) {
        }
        Path parent = getParent(path);
        PosixFileAttributes posixFileAttributes = null;
        try {
            if (overrideReadOnly(deleteOptionArr)) {
                posixFileAttributes = readPosixFileAttributes(parent, linkOptionArr);
                setReadOnly(path, false, linkOptionArr);
            }
            if (exists(path, linkOptionArr) && !Files.isSymbolicLink(path)) {
                size = Files.size(path);
            }
            if (Files.deleteIfExists(path)) {
                counters$PathCountersLongPathCounters.getFileCounter().increment();
                counters$PathCountersLongPathCounters.getByteCounter().add(size);
            }
            return counters$PathCountersLongPathCounters;
        } finally {
            if (posixFileAttributes != null) {
                Files.setPosixFilePermissions(parent, posixFileAttributes.permissions());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void deleteOnExit(Path path) {
        Objects.requireNonNull(path);
        ai.onnxruntime.c.r(kotlin.internal.jdk8.a.m(path)).deleteOnExit();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean directoryAndFileContentEquals(Path path, Path path2, LinkOption[] linkOptionArr, OpenOption[] openOptionArr, FileVisitOption[] fileVisitOptionArr) {
        if (path == null && path2 == null) {
            return true;
        }
        if (path != null && path2 != null) {
            if (notExists(path, new LinkOption[0]) && notExists(path2, new LinkOption[0])) {
                return true;
            }
            PathUtils$RelativeSortedPaths pathUtils$RelativeSortedPaths = new PathUtils$RelativeSortedPaths(path, path2, Integer.MAX_VALUE, linkOptionArr, fileVisitOptionArr, null);
            if (pathUtils$RelativeSortedPaths.equals) {
                List<Path> list = pathUtils$RelativeSortedPaths.relativeFileList1;
                List<Path> list2 = pathUtils$RelativeSortedPaths.relativeFileList2;
                boolean zIsSameFileSystem = isSameFileSystem(path, path2);
                Iterator<Path> it = list.iterator();
                while (it.hasNext()) {
                    Path pathM = kotlin.internal.jdk8.a.m(it.next());
                    if ((zIsSameFileSystem ? Collections.binarySearch(list2, pathM) : Collections.binarySearch(list2, pathM, Comparator.comparing(new h(1)))) < 0) {
                        j1.i.l("Unexpected mismatch.");
                        return false;
                    }
                    if ((!zIsSameFileSystem || fileContentEquals(kotlin.internal.jdk8.a.r(path, pathM), kotlin.internal.jdk8.a.r(path2, pathM), linkOptionArr, openOptionArr)) && fileContentEquals(ai.onnxruntime.c.u(path, ai.onnxruntime.c.s(pathM)), ai.onnxruntime.c.u(path2, ai.onnxruntime.c.s(pathM)), linkOptionArr, openOptionArr)) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean directoryContentEquals(Path path, Path path2, int i, LinkOption[] linkOptionArr, FileVisitOption[] fileVisitOptionArr) {
        return new PathUtils$RelativeSortedPaths(path, path2, i, linkOptionArr, fileVisitOptionArr, null).equals;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean e(PathFilter pathFilter, Path path) {
        return lambda$filterPaths$2(pathFilter, path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean exists(Path path, LinkOption... linkOptionArr) {
        if (path != null) {
            if (linkOptionArr != null) {
                if (kotlin.io.path.f.x(path, linkOptionArr)) {
                    return true;
                }
            } else if (kotlin.io.path.f.x(path, new LinkOption[0])) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean f(DeleteOption deleteOption) {
        return lambda$overrideReadOnly$3(deleteOption);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean fileContentEquals(Path path, Path path2, LinkOption[] linkOptionArr, OpenOption[] openOptionArr) throws IOException {
        if (path == null && path2 == null) {
            return true;
        }
        if (path == null || path2 == null) {
            return false;
        }
        Path pathD = kotlin.internal.jdk8.a.D(path);
        Path pathD2 = kotlin.internal.jdk8.a.D(path2);
        boolean zExists = exists(pathD, linkOptionArr);
        if (zExists != exists(pathD2, linkOptionArr)) {
            return false;
        }
        if (!zExists) {
            return true;
        }
        if (kotlin.io.path.f.D(pathD, linkOptionArr)) {
            org.apache.commons.io.e.f(pathD, "Can't compare directories, only files: ");
            return false;
        }
        if (kotlin.io.path.f.D(pathD2, linkOptionArr)) {
            org.apache.commons.io.e.f(pathD2, "Can't compare directories, only files: ");
            return false;
        }
        if (kotlin.io.path.a.a(pathD) != kotlin.io.path.a.a(pathD2)) {
            return false;
        }
        if (isSameFileSystem(path, path2) && e.x(path, path2)) {
            return true;
        }
        try {
            RandomAccessFileMode randomAccessFileMode = RandomAccessFileMode.READ_ONLY;
            RandomAccessFile randomAccessFileCreate = randomAccessFileMode.create(e.g(path, linkOptionArr));
            try {
                RandomAccessFile randomAccessFileCreate2 = randomAccessFileMode.create(e.g(path2, linkOptionArr));
                try {
                    boolean zContentEquals = RandomAccessFiles.contentEquals(randomAccessFileCreate, randomAccessFileCreate2);
                    if (randomAccessFileCreate2 != null) {
                        randomAccessFileCreate2.close();
                    }
                    if (randomAccessFileCreate != null) {
                        randomAccessFileCreate.close();
                    }
                    return zContentEquals;
                } catch (Throwable th) {
                    if (randomAccessFileCreate2 != null) {
                        try {
                            randomAccessFileCreate2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (randomAccessFileCreate != null) {
                    try {
                        randomAccessFileCreate.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (UnsupportedOperationException unused) {
            InputStream inputStreamE = kotlin.io.path.f.e(pathD, openOptionArr);
            try {
                InputStream inputStreamE2 = kotlin.io.path.f.e(pathD2, openOptionArr);
                try {
                    boolean zContentEquals2 = IOUtils.contentEquals(inputStreamE, inputStreamE2);
                    if (inputStreamE2 != null) {
                        inputStreamE2.close();
                    }
                    if (inputStreamE != null) {
                        inputStreamE.close();
                    }
                    return zContentEquals2;
                } catch (Throwable th5) {
                    if (inputStreamE2 != null) {
                        try {
                            inputStreamE2.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                    }
                    throw th5;
                }
            } catch (Throwable th7) {
                if (inputStreamE != null) {
                    try {
                        inputStreamE.close();
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                    }
                }
                throw th7;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path[] filter(PathFilter pathFilter, Path... pathArr) {
        Objects.requireNonNull(pathFilter, "filter");
        return pathArr == null ? EMPTY_PATH_ARRAY : (Path[]) ((List) filterPaths(pathFilter, Stream.of((Object[]) pathArr), Collectors.toList())).toArray(EMPTY_PATH_ARRAY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <R, A> R filterPaths(PathFilter pathFilter, Stream<Path> stream, Collector<? super Path, A, R> collector) {
        Objects.requireNonNull(pathFilter, "filter");
        Objects.requireNonNull(collector, "collector");
        return stream == null ? (R) Stream.empty().collect(collector) : (R) stream.filter(new k(0, pathFilter)).collect(collector);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List<AclEntry> getAclEntryList(Path path) {
        AclFileAttributeView aclFileAttributeView = getAclFileAttributeView(path, new LinkOption[0]);
        if (aclFileAttributeView == null) {
            return null;
        }
        return f.t(aclFileAttributeView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AclFileAttributeView getAclFileAttributeView(Path path, LinkOption... linkOptionArr) {
        return f.i(kotlin.io.path.f.k(path, f.b(), linkOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getBaseName(Path path) {
        Path pathO;
        if (path == null || (pathO = kotlin.internal.jdk8.a.o(path)) == null) {
            return null;
        }
        return FilenameUtils.removeExtension(ai.onnxruntime.c.s(pathO));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static DosFileAttributeView getDosFileAttributeView(Path path, LinkOption... linkOptionArr) {
        return e.j(kotlin.io.path.f.k(path, e.z(), linkOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getExtension(Path path) {
        String fileNameString = getFileNameString(path);
        if (fileNameString != null) {
            return FilenameUtils.getExtension(fileNameString);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <R> R getFileName(Path path, Function<Path, R> function) {
        Path pathO = path != null ? kotlin.internal.jdk8.a.o(path) : null;
        if (pathO != null) {
            return function.apply(pathO);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getFileNameString(Path path) {
        return (String) getFileName(path, new h(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime getLastModifiedFileTime(Path path, FileTime fileTime, LinkOption... linkOptionArr) {
        return kotlin.io.path.f.x(path, new LinkOption[0]) ? getLastModifiedTime(path, linkOptionArr) : fileTime;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static FileTime getLastModifiedTime(Path path, LinkOption... linkOptionArr) {
        Objects.requireNonNull(path, "path");
        return kotlin.io.path.f.l(kotlin.internal.jdk8.a.m(path), linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Path getParent(Path path) {
        if (path == null) {
            return null;
        }
        return kotlin.internal.jdk8.a.A(path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path getPath(String str, String str2) {
        if (str != null && !str.isEmpty()) {
            str2 = System.getProperty(str, str2);
        }
        if (str2 != null) {
            return ai.onnxruntime.c.t(str2, new String[0]);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static PosixFileAttributeView getPosixFileAttributeView(Path path, LinkOption... linkOptionArr) {
        return e.m(kotlin.io.path.f.k(path, e.c(), linkOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path getTempDirectory() {
        return ai.onnxruntime.c.t(FileUtils.getTempDirectoryPath(), new String[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isDirectory(Path path, LinkOption... linkOptionArr) {
        return path != null && kotlin.io.path.f.D(path, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isEmpty(Path path) {
        return kotlin.io.path.f.D(path, new LinkOption[0]) ? isEmptyDirectory(path) : isEmptyFile(path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isEmptyDirectory(Path path) {
        DirectoryStream directoryStreamC = kotlin.io.path.a.c(path);
        try {
            boolean z = !e.q(directoryStreamC).hasNext();
            e.s(directoryStreamC);
            return z;
        } catch (Throwable th) {
            if (directoryStreamC != null) {
                try {
                    e.s(directoryStreamC);
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isEmptyFile(Path path) {
        return kotlin.io.path.a.a(path) <= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isNewer(Path path, FileTime fileTime, LinkOption... linkOptionArr) {
        return !notExists(path, new LinkOption[0]) && compareLastModifiedTimeTo(path, fileTime, linkOptionArr) > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isOlder(Path path, FileTime fileTime, LinkOption... linkOptionArr) {
        return !notExists(path, new LinkOption[0]) && compareLastModifiedTimeTo(path, fileTime, linkOptionArr) < 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isPosix(Path path, LinkOption... linkOptionArr) {
        return exists(path, linkOptionArr) && readPosixFileAttributes(path, linkOptionArr) != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isRegularFile(Path path, LinkOption... linkOptionArr) {
        return path != null && kotlin.io.path.f.B(path, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isSameFileSystem(Path path, Path path2) {
        return kotlin.internal.jdk8.a.g(path) == kotlin.internal.jdk8.a.g(path2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Counters$PathCounters lambda$deleteDirectory$0(LinkOption[] linkOptionArr, DeleteOption[] deleteOptionArr, Path path, PosixFileAttributes posixFileAttributes) {
        return ((DeletingPathVisitor) visitFileTree(new DeletingPathVisitor(Counters.longPathCounters(), linkOptionArr, deleteOptionArr, new String[0]), path)).getPathCounters();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ String lambda$directoryAndFileContentEquals$1(Path path) {
        return PathUtils$RelativeSortedPaths.extractKey(kotlin.internal.jdk8.a.d(kotlin.internal.jdk8.a.g(path)), ai.onnxruntime.c.s(path));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$filterPaths$2(PathFilter pathFilter, Path path) {
        if (path == null) {
            return false;
        }
        try {
            return pathFilter.accept(path, readBasicFileAttributes(path)) == kotlin.io.path.a.h();
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$overrideReadOnly$3(DeleteOption deleteOption) {
        return deleteOption == StandardDeleteOption.OVERRIDE_READ_ONLY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$walk$4(PathFilter pathFilter, boolean z, Path path) {
        return pathFilter.accept(path, z ? readBasicFileAttributes(path, EMPTY_LINK_OPTION_ARRAY) : null) == kotlin.io.path.a.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static DirectoryStream<Path> newDirectoryStream(Path path, PathFilter pathFilter) {
        return e.e(path, new DirectoryStreamFilter(pathFilter));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OutputStream newOutputStream(Path path, LinkOption[] linkOptionArr, OpenOption... openOptionArr) {
        if (!exists(path, linkOptionArr)) {
            createParentDirectories(path, (linkOptionArr == null || linkOptionArr.length <= 0) ? NULL_LINK_OPTION : linkOptionArr[0], new FileAttribute[0]);
        }
        if (openOptionArr == null) {
            openOptionArr = EMPTY_OPEN_OPTION_ARRAY;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(openOptionArr));
        if (linkOptionArr == null) {
            linkOptionArr = EMPTY_LINK_OPTION_ARRAY;
        }
        arrayList.addAll(Arrays.asList(linkOptionArr));
        return Files.newOutputStream(path, (OpenOption[]) arrayList.toArray(EMPTY_OPEN_OPTION_ARRAY));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static LinkOption[] noFollowLinkOptionArray() {
        return (LinkOption[]) NOFOLLOW_LINK_OPTION_ARRAY.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean notExists(Path path, LinkOption... linkOptionArr) {
        Objects.requireNonNull(path, "path");
        return org.apache.commons.io.d.w(kotlin.internal.jdk8.a.m(path), linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean overrideReadOnly(DeleteOption... deleteOptionArr) {
        if (deleteOptionArr == null) {
            return false;
        }
        return Stream.of((Object[]) deleteOptionArr).anyMatch(new i7.k(3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) {
        if (path == null) {
            return null;
        }
        try {
            return (A) kotlin.io.path.f.j(path, cls, linkOptionArr);
        } catch (IOException | UnsupportedOperationException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BasicFileAttributes readBasicFileAttributes(Path path) {
        return kotlin.io.path.f.j(path, kotlin.io.path.f.f(), new LinkOption[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static BasicFileAttributes readBasicFileAttributesUnchecked(Path path) {
        return readBasicFileAttributes(path, EMPTY_LINK_OPTION_ARRAY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static DosFileAttributes readDosFileAttributes(Path path, LinkOption... linkOptionArr) {
        return e.k(readAttributes(path, e.C(), linkOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Path readIfSymbolicLink(Path path) {
        if (path != null) {
            return kotlin.io.path.a.u(path) ? kotlin.io.path.a.x(path) : path;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BasicFileAttributes readOsFileAttributes(Path path, LinkOption... linkOptionArr) {
        PosixFileAttributes posixFileAttributes = readPosixFileAttributes(path, linkOptionArr);
        return posixFileAttributes != null ? posixFileAttributes : readDosFileAttributes(path, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static PosixFileAttributes readPosixFileAttributes(Path path, LinkOption... linkOptionArr) {
        return f.m(readAttributes(path, f.y(), linkOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String readString(Path path, Charset charset) {
        return new String(c5.h.z(path), Charsets.toCharset(charset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List<Path> relativize(Collection<Path> collection, Path path, boolean z, Comparator<? super Path> comparator) {
        Stream<Path> stream = collection.stream();
        Objects.requireNonNull(path);
        Stream map = stream.map(new i(path));
        if (z) {
            map = comparator == null ? map.sorted() : map.sorted(comparator);
        }
        return (List) map.collect(Collectors.toList());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Path requireExists(Path path, String str, LinkOption... linkOptionArr) {
        Objects.requireNonNull(path, str);
        if (exists(path, linkOptionArr)) {
            return path;
        }
        androidx.navigation.b.r("File system element for parameter '", str, "' does not exist: '", path, "'");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path resolve(Path path, Path path2) {
        FileSystem fileSystemG = kotlin.internal.jdk8.a.g(path);
        FileSystem fileSystemG2 = kotlin.internal.jdk8.a.g(path2);
        if (fileSystemG == fileSystemG2) {
            return kotlin.internal.jdk8.a.r(path, path2);
        }
        String strD = kotlin.internal.jdk8.a.d(fileSystemG2);
        String strD2 = kotlin.internal.jdk8.a.d(fileSystemG);
        String strS = ai.onnxruntime.c.s(path2);
        if (!Objects.equals(strD, strD2)) {
            strS = strS.replace(strD, strD2);
        }
        return ai.onnxruntime.c.u(path, strS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean setDosReadOnly(Path path, boolean z, LinkOption... linkOptionArr) {
        DosFileAttributeView dosFileAttributeView = getDosFileAttributeView(path, linkOptionArr);
        if (dosFileAttributeView == null) {
            return false;
        }
        e.w(dosFileAttributeView, z);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setLastModifiedTime(Path path, Path path2) {
        Objects.requireNonNull(path, "sourceFile");
        e.t(path2, getLastModifiedTime(path, new LinkOption[0]));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean setPosixDeletePermissions(Path path, boolean z, LinkOption... linkOptionArr) {
        return setPosixPermissions(path, z, Arrays.asList(e.B(), e.D()), linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean setPosixPermissions(Path path, boolean z, List<PosixFilePermission> list, LinkOption... linkOptionArr) {
        if (path == null) {
            return false;
        }
        Set setR = org.apache.commons.io.d.r(path, linkOptionArr);
        HashSet hashSet = new HashSet(setR);
        if (z) {
            hashSet.addAll(list);
        } else {
            hashSet.removeAll(list);
        }
        if (hashSet.equals(setR)) {
            return true;
        }
        e.u(path, hashSet);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void setPosixReadOnlyFile(Path path, boolean z, LinkOption... linkOptionArr) throws IOException {
        Set setR = org.apache.commons.io.d.r(path, linkOptionArr);
        List listAsList = Arrays.asList(e.n());
        List listAsList2 = Arrays.asList(e.B());
        if (z) {
            setR.addAll(listAsList);
            setR.removeAll(listAsList2);
        } else {
            setR.addAll(listAsList);
            setR.addAll(listAsList2);
        }
        f.w(path, setR);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path setReadOnly(Path path, boolean z, LinkOption... linkOptionArr) throws IOException {
        try {
            if (!setDosReadOnly(path, z, linkOptionArr)) {
                Path parent = getParent(path);
                if (!isPosix(parent, linkOptionArr)) {
                    throw new IOException(String.format("DOS or POSIX file operations not available for '%s', linkOptions %s", path, Arrays.toString(linkOptionArr)));
                }
                if (z) {
                    setPosixReadOnlyFile(path, z, linkOptionArr);
                    setPosixDeletePermissions(parent, false, linkOptionArr);
                } else {
                    setPosixDeletePermissions(parent, true, linkOptionArr);
                }
            }
        } catch (IOException unused) {
        }
        return path;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long sizeOf(Path path) {
        requireExists(path, "path", new LinkOption[0]);
        return kotlin.io.path.f.D(path, new LinkOption[0]) ? sizeOfDirectory(path) : kotlin.io.path.a.a(path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BigInteger sizeOfAsBigInteger(Path path) {
        requireExists(path, "path", new LinkOption[0]);
        return kotlin.io.path.f.D(path, new LinkOption[0]) ? sizeOfDirectoryAsBigInteger(path) : BigInteger.valueOf(kotlin.io.path.a.a(path));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long sizeOfDirectory(Path path) {
        return countDirectory(path).getByteCounter().getLong().longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BigInteger sizeOfDirectoryAsBigInteger(Path path) {
        return countDirectoryAsBigInteger(path).getByteCounter().getBigInteger();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Path stripTrailingSeparator(Path path) {
        String strD = kotlin.internal.jdk8.a.d(kotlin.internal.jdk8.a.g(path));
        String fileNameString = getFileNameString(path);
        return (fileNameString == null || !fileNameString.endsWith(strD)) ? path : f.g(path, fileNameString.substring(0, fileNameString.length() - 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Set<FileVisitOption> toFileVisitOptionSet(FileVisitOption... fileVisitOptionArr) {
        return fileVisitOptionArr == null ? EnumSet.noneOf(f.A()) : (Set) Stream.of((Object[]) fileVisitOptionArr).collect(Collectors.toSet());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <T> List<T> toList(Iterable<T> iterable) {
        return (List) StreamSupport.stream(iterable.spliterator(), false).collect(Collectors.toList());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static List<Path> toSortedList(Iterable<Path> iterable) {
        List<Path> list = toList(iterable);
        Collections.sort(list);
        return list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path touch(Path path) {
        Objects.requireNonNull(path, "file");
        if (kotlin.io.path.f.x(path, new LinkOption[0])) {
            FileTimes.setLastModifiedTime(path);
            return path;
        }
        createParentDirectories(path, new FileAttribute[0]);
        e.v(path, new FileAttribute[0]);
        return path;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends FileVisitor<? super Path>> T visitFileTree(T t, String str, String... strArr) {
        return (T) visitFileTree(t, ai.onnxruntime.c.t(str, strArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean waitFor(Path path, Duration duration, LinkOption... linkOptionArr) {
        Objects.requireNonNull(path, "file");
        Instant instantP = org.apache.commons.io.d.p(c5.h.B(), duration);
        boolean z = false;
        while (!exists(path, linkOptionArr)) {
            try {
                Instant instantB = c5.h.B();
                if (e.y(instantB, instantP)) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    return false;
                }
                try {
                    ThreadUtils.sleep(e.o(Math.min(100L, kotlin.io.path.f.d(e.p(instantP, kotlin.io.path.f.d(instantB))))));
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Exception unused2) {
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return exists(path, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Stream<Path> walk(Path path, PathFilter pathFilter, int i, boolean z, FileVisitOption... fileVisitOptionArr) {
        return org.apache.commons.io.d.s(path, i, fileVisitOptionArr).filter(new g(pathFilter, z));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <R> R withPosixFileAttributes(Path path, LinkOption[] linkOptionArr, boolean z, IOFunction<PosixFileAttributes, R> iOFunction) throws IOException {
        PosixFileAttributes posixFileAttributes = z ? readPosixFileAttributes(path, linkOptionArr) : null;
        try {
            return iOFunction.apply(posixFileAttributes);
        } finally {
            if (posixFileAttributes != null && path != null && kotlin.io.path.f.x(path, linkOptionArr)) {
                f.w(path, e.r(posixFileAttributes));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path writeString(Path path, CharSequence charSequence, Charset charset, OpenOption... openOptionArr) {
        Objects.requireNonNull(path, "path");
        Objects.requireNonNull(charSequence, "charSequence");
        kotlin.internal.jdk8.a.x(path, String.valueOf(charSequence).getBytes(Charsets.toCharset(charset)), openOptionArr);
        return path;
    }

    public static <T extends FileVisitor<? super Path>> T visitFileTree(T t, Path path, Set<FileVisitOption> set, int i) {
        kotlin.io.path.a.s(path, set, i, t);
        return t;
    }

    public static <T extends FileVisitor<? super Path>> T visitFileTree(T t, Path path) throws IOException {
        f.v(path, t);
        return t;
    }

    public static <T extends FileVisitor<? super Path>> T visitFileTree(T t, URI uri) {
        return (T) visitFileTree(t, kotlin.io.path.a.i(uri));
    }

    public static BasicFileAttributes readBasicFileAttributes(Path path, LinkOption... linkOptionArr) {
        return readAttributes(path, kotlin.io.path.f.f(), linkOptionArr);
    }

    public static boolean directoryContentEquals(Path path, Path path2) {
        return directoryContentEquals(path, path2, Integer.MAX_VALUE, EMPTY_LINK_OPTION_ARRAY, EMPTY_FILE_VISIT_OPTION_ARRAY);
    }

    public static FileTime getLastModifiedFileTime(File file) {
        return getLastModifiedFileTime(c5.h.i(file), null, EMPTY_LINK_OPTION_ARRAY);
    }

    public static FileTime getLastModifiedFileTime(Path path, LinkOption... linkOptionArr) {
        return getLastModifiedFileTime(path, null, linkOptionArr);
    }

    public static FileTime getLastModifiedFileTime(URI uri) {
        return getLastModifiedFileTime(kotlin.io.path.a.i(uri), null, EMPTY_LINK_OPTION_ARRAY);
    }

    public static FileTime getLastModifiedFileTime(URL url) {
        return getLastModifiedFileTime(url.toURI());
    }

    public static boolean isNewer(Path path, ChronoZonedDateTime<?> chronoZonedDateTime, LinkOption... linkOptionArr) {
        Objects.requireNonNull(chronoZonedDateTime, "czdt");
        return isNewer(path, kotlin.io.path.f.p(chronoZonedDateTime), linkOptionArr);
    }

    public static boolean isOlder(Path path, Instant instant, LinkOption... linkOptionArr) {
        return isOlder(path, f.l(instant), linkOptionArr);
    }

    public static boolean isOlder(Path path, long j, LinkOption... linkOptionArr) {
        return isOlder(path, e.l(j), linkOptionArr);
    }

    public static boolean isNewer(Path path, Instant instant, LinkOption... linkOptionArr) {
        return isNewer(path, f.l(instant), linkOptionArr);
    }

    public static boolean isOlder(Path path, Path path2) {
        return isOlder(path, getLastModifiedTime(path2, new LinkOption[0]), new LinkOption[0]);
    }

    public static Path copyFileToDirectory(URL url, Path path, CopyOption... copyOptionArr) throws IOException {
        Path pathU = ai.onnxruntime.c.u(path, FilenameUtils.getName(url.getFile()));
        copy(new r(0, url), pathU, copyOptionArr);
        return pathU;
    }

    public static boolean isNewer(Path path, long j, LinkOption... linkOptionArr) {
        return isNewer(path, e.l(j), linkOptionArr);
    }

    public static Counters$PathCounters cleanDirectory(Path path) {
        return cleanDirectory(path, EMPTY_DELETE_OPTION_ARRAY);
    }

    public static boolean isNewer(Path path, Path path2) {
        return isNewer(path, getLastModifiedTime(path2, new LinkOption[0]), new LinkOption[0]);
    }

    public static Counters$PathCounters deleteDirectory(Path path) {
        return deleteDirectory(path, EMPTY_DELETE_OPTION_ARRAY);
    }

    public static Counters$PathCounters deleteDirectory(Path path, LinkOption[] linkOptionArr, DeleteOption... deleteOptionArr) {
        return ((DeletingPathVisitor) visitFileTree(new DeletingPathVisitor(Counters.longPathCounters(), linkOptionArr, deleteOptionArr, new String[0]), path)).getPathCounters();
    }

    public static Counters$PathCounters delete(Path path) {
        return delete(path, EMPTY_DELETE_OPTION_ARRAY);
    }

    public static Counters$PathCounters delete(Path path, LinkOption[] linkOptionArr, DeleteOption... deleteOptionArr) {
        return kotlin.io.path.f.D(path, linkOptionArr) ? deleteDirectory(path, linkOptionArr, deleteOptionArr) : deleteFile(path, linkOptionArr, deleteOptionArr);
    }

    public static Path createParentDirectories(Path path, FileAttribute<?>... fileAttributeArr) {
        return createParentDirectories(path, kotlin.internal.jdk8.a.l(), fileAttributeArr);
    }

    public static OutputStream newOutputStream(Path path, boolean z) {
        return newOutputStream(path, EMPTY_LINK_OPTION_ARRAY, z ? OPEN_OPTIONS_APPEND : OPEN_OPTIONS_TRUNCATE);
    }

    public static Counters$PathCounters deleteFile(Path path, DeleteOption... deleteOptionArr) {
        return deleteFile(path, noFollowLinkOptionArray(), deleteOptionArr);
    }

    public static Counters$PathCounters deleteFile(Path path) {
        return deleteFile(path, EMPTY_DELETE_OPTION_ARRAY);
    }

    public static boolean directoryAndFileContentEquals(Path path, Path path2) {
        return directoryAndFileContentEquals(path, path2, EMPTY_LINK_OPTION_ARRAY, EMPTY_OPEN_OPTION_ARRAY, EMPTY_FILE_VISIT_OPTION_ARRAY);
    }

    public static boolean fileContentEquals(Path path, Path path2) {
        return fileContentEquals(path, path2, EMPTY_LINK_OPTION_ARRAY, EMPTY_OPEN_OPTION_ARRAY);
    }
}
