package org.apache.commons.io.file;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.DirectoryStream$Filter;
import java.nio.file.FileStore;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitor;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserPrincipal;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiPredicate;
import java.util.stream.Stream;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class FilesUncheck {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FilesUncheck() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long copy(InputStream inputStream, Path path, CopyOption... copyOptionArr) {
        return ((Long) Uncheck.apply(new b(1), inputStream, path, copyOptionArr)).longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path createDirectories(Path path, FileAttribute<?>... fileAttributeArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new a(1), path, fileAttributeArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path createDirectory(Path path, FileAttribute<?>... fileAttributeArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new a(22), path, fileAttributeArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path createFile(Path path, FileAttribute<?>... fileAttributeArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new a(15), path, fileAttributeArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path createLink(Path path, Path path2) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new a(2), path, path2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path createSymbolicLink(Path path, Path path2, FileAttribute<?>... fileAttributeArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(22), path, path2, fileAttributeArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path createTempDirectory(String str, FileAttribute<?>... fileAttributeArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new a(18), str, fileAttributeArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path createTempFile(Path path, String str, String str2, FileAttribute<?>... fileAttributeArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(18), path, str, str2, fileAttributeArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void delete(Path path) {
        Uncheck.accept(new c(), path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean deleteIfExists(Path path) {
        return ((Boolean) Uncheck.apply(new b(23), path)).booleanValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Stream<Path> find(Path path, int i, BiPredicate<Path, BasicFileAttributes> biPredicate, FileVisitOption... fileVisitOptionArr) {
        return (Stream) Uncheck.apply(new b(12), path, Integer.valueOf(i), biPredicate, fileVisitOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object getAttribute(Path path, String str, LinkOption... linkOptionArr) {
        return Uncheck.apply(new b(6), path, str, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileStore getFileStore(Path path) {
        return org.apache.commons.io.d.i(Uncheck.apply(new d(), path));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime getLastModifiedTime(Path path, LinkOption... linkOptionArr) {
        return org.apache.commons.io.d.l(Uncheck.apply(new a(20), path, linkOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UserPrincipal getOwner(Path path, LinkOption... linkOptionArr) {
        return org.apache.commons.io.d.m(Uncheck.apply(new a(9), path, linkOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Set<PosixFilePermission> getPosixFilePermissions(Path path, LinkOption... linkOptionArr) {
        return (Set) Uncheck.apply(new a(6), path, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isHidden(Path path) {
        return ((Boolean) Uncheck.apply(new b(21), path)).booleanValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isSameFile(Path path, Path path2) {
        return ((Boolean) Uncheck.apply(new a(19), path, path2)).booleanValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Stream<String> lines(Path path) {
        return (Stream) Uncheck.apply(new b(26), path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Stream<Path> list(Path path) {
        return (Stream) Uncheck.apply(new b(3), path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path move(Path path, Path path2, CopyOption... copyOptionArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(7), path, path2, copyOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BufferedReader newBufferedReader(Path path) {
        return (BufferedReader) Uncheck.apply(new b(13), path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BufferedWriter newBufferedWriter(Path path, Charset charset, OpenOption... openOptionArr) {
        return (BufferedWriter) Uncheck.apply(new b(11), path, charset, openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static SeekableByteChannel newByteChannel(Path path, OpenOption... openOptionArr) {
        return (SeekableByteChannel) Uncheck.apply(new a(13), path, openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static DirectoryStream<Path> newDirectoryStream(Path path) {
        return kotlin.io.path.a.b(Uncheck.apply(new b(27), path));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static InputStream newInputStream(Path path, OpenOption... openOptionArr) {
        return (InputStream) Uncheck.apply(new a(16), path, openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OutputStream newOutputStream(Path path, OpenOption... openOptionArr) {
        return (OutputStream) Uncheck.apply(new a(23), path, openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String probeContentType(Path path) {
        return (String) Uncheck.apply(new b(17), path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] readAllBytes(Path path) {
        return (byte[]) Uncheck.apply(new b(5), path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List<String> readAllLines(Path path) {
        return (List) Uncheck.apply(new b(24), path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) {
        return (A) kotlin.io.path.a.p(Uncheck.apply(new b(8), path, cls, linkOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path readSymbolicLink(Path path) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(15), path));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path setAttribute(Path path, String str, Object obj, LinkOption... linkOptionArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(14), path, str, obj, linkOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path setLastModifiedTime(Path path, FileTime fileTime) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new a(8), path, fileTime));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path setOwner(Path path, UserPrincipal userPrincipal) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new a(11), path, userPrincipal));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path setPosixFilePermissions(Path path, Set<PosixFilePermission> set) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new a(14), path, set));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long size(Path path) {
        return ((Long) Uncheck.apply(new b(9), path)).longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Stream<Path> walk(Path path, int i, FileVisitOption... fileVisitOptionArr) {
        return (Stream) Uncheck.apply(new b(4), path, Integer.valueOf(i), fileVisitOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path walkFileTree(Path path, Set<FileVisitOption> set, int i, FileVisitor<? super Path> fileVisitor) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(25), path, set, Integer.valueOf(i), fileVisitor));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Path write(Path path, Iterable<? extends CharSequence> iterable, Charset charset, OpenOption... openOptionArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(16), path, iterable, charset, openOptionArr));
    }

    public static Stream<String> lines(Path path, Charset charset) {
        return (Stream) Uncheck.apply(new a(12), path, charset);
    }

    public static BufferedReader newBufferedReader(Path path, Charset charset) {
        return (BufferedReader) Uncheck.apply(new a(4), path, charset);
    }

    public static BufferedWriter newBufferedWriter(Path path, OpenOption... openOptionArr) {
        return (BufferedWriter) Uncheck.apply(new a(21), path, openOptionArr);
    }

    public static SeekableByteChannel newByteChannel(Path path, Set<? extends OpenOption> set, FileAttribute<?>... fileAttributeArr) {
        return (SeekableByteChannel) Uncheck.apply(new b(20), path, set, fileAttributeArr);
    }

    public static List<String> readAllLines(Path path, Charset charset) {
        return (List) Uncheck.apply(new a(10), path, charset);
    }

    public static Path createTempDirectory(Path path, String str, FileAttribute<?>... fileAttributeArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(0), path, str, fileAttributeArr));
    }

    public static Path createTempFile(String str, String str2, FileAttribute<?>... fileAttributeArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(10), str, str2, fileAttributeArr));
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path, DirectoryStream$Filter<? super Path> directoryStream$Filter) {
        return kotlin.io.path.a.b(Uncheck.apply(new a(5), path, directoryStream$Filter));
    }

    public static Map<String, Object> readAttributes(Path path, String str, LinkOption... linkOptionArr) {
        return (Map) Uncheck.apply(new d(), path, str, linkOptionArr);
    }

    public static Path write(Path path, byte[] bArr, OpenOption... openOptionArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(2), path, bArr, openOptionArr));
    }

    public static long copy(Path path, OutputStream outputStream) {
        return ((Long) Uncheck.apply(new a(3), path, outputStream)).longValue();
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path, String str) {
        return kotlin.io.path.a.b(Uncheck.apply(new a(7), path, str));
    }

    public static Stream<Path> walk(Path path, FileVisitOption... fileVisitOptionArr) {
        return (Stream) Uncheck.apply(new a(17), path, fileVisitOptionArr);
    }

    public static Path write(Path path, Iterable<? extends CharSequence> iterable, OpenOption... openOptionArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(19), path, iterable, openOptionArr));
    }

    public static Path copy(Path path, Path path2, CopyOption... copyOptionArr) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new b(28), path, path2, copyOptionArr));
    }

    public static Path walkFileTree(Path path, FileVisitor<? super Path> fileVisitor) {
        return kotlin.internal.jdk8.a.m(Uncheck.apply(new a(0), path, fileVisitor));
    }
}
