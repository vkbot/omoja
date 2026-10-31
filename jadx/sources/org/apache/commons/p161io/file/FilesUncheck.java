package org.apache.commons.p161io.file;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
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
import kotlin.internal.jdk8.AbstractC2109a;
import kotlin.p118io.path.AbstractC2119a;
import org.apache.commons.p161io.AbstractC2785d;
import org.apache.commons.p161io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class FilesUncheck {
    private FilesUncheck() {
    }

    public static long copy(InputStream inputStream, Path path, CopyOption... copyOptionArr) {
        return ((Long) Uncheck.apply(new C2792b(1), inputStream, path, copyOptionArr)).longValue();
    }

    public static Path createDirectories(Path path, FileAttribute<?>... fileAttributeArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2791a(1), path, fileAttributeArr));
    }

    public static Path createDirectory(Path path, FileAttribute<?>... fileAttributeArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2791a(22), path, fileAttributeArr));
    }

    public static Path createFile(Path path, FileAttribute<?>... fileAttributeArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2791a(15), path, fileAttributeArr));
    }

    public static Path createLink(Path path, Path path2) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2791a(2), path, path2));
    }

    public static Path createSymbolicLink(Path path, Path path2, FileAttribute<?>... fileAttributeArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(22), path, path2, fileAttributeArr));
    }

    public static Path createTempDirectory(String str, FileAttribute<?>... fileAttributeArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2791a(18), str, fileAttributeArr));
    }

    public static Path createTempFile(Path path, String str, String str2, FileAttribute<?>... fileAttributeArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(18), path, str, str2, fileAttributeArr));
    }

    public static void delete(Path path) {
        Uncheck.accept(new C2793c(), path);
    }

    public static boolean deleteIfExists(Path path) {
        return ((Boolean) Uncheck.apply(new C2792b(23), path)).booleanValue();
    }

    public static Stream<Path> find(Path path, int i10, BiPredicate<Path, BasicFileAttributes> biPredicate, FileVisitOption... fileVisitOptionArr) {
        return (Stream) Uncheck.apply(new C2792b(12), path, Integer.valueOf(i10), biPredicate, fileVisitOptionArr);
    }

    public static Object getAttribute(Path path, String str, LinkOption... linkOptionArr) {
        return Uncheck.apply(new C2792b(6), path, str, linkOptionArr);
    }

    public static FileStore getFileStore(Path path) {
        return AbstractC2785d.m4333i(Uncheck.apply(new C2794d(), path));
    }

    public static FileTime getLastModifiedTime(Path path, LinkOption... linkOptionArr) {
        return AbstractC2785d.m4336l(Uncheck.apply(new C2791a(20), path, linkOptionArr));
    }

    public static UserPrincipal getOwner(Path path, LinkOption... linkOptionArr) {
        return AbstractC2785d.m4337m(Uncheck.apply(new C2791a(9), path, linkOptionArr));
    }

    public static Set<PosixFilePermission> getPosixFilePermissions(Path path, LinkOption... linkOptionArr) {
        return (Set) Uncheck.apply(new C2791a(6), path, linkOptionArr);
    }

    public static boolean isHidden(Path path) {
        return ((Boolean) Uncheck.apply(new C2792b(21), path)).booleanValue();
    }

    public static boolean isSameFile(Path path, Path path2) {
        return ((Boolean) Uncheck.apply(new C2791a(19), path, path2)).booleanValue();
    }

    public static Stream<String> lines(Path path) {
        return (Stream) Uncheck.apply(new C2792b(26), path);
    }

    public static Stream<Path> list(Path path) {
        return (Stream) Uncheck.apply(new C2792b(3), path);
    }

    public static Path move(Path path, Path path2, CopyOption... copyOptionArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(7), path, path2, copyOptionArr));
    }

    public static BufferedReader newBufferedReader(Path path) {
        return (BufferedReader) Uncheck.apply(new C2792b(13), path);
    }

    public static BufferedWriter newBufferedWriter(Path path, Charset charset, OpenOption... openOptionArr) {
        return (BufferedWriter) Uncheck.apply(new C2792b(11), path, charset, openOptionArr);
    }

    public static SeekableByteChannel newByteChannel(Path path, OpenOption... openOptionArr) {
        return (SeekableByteChannel) Uncheck.apply(new C2791a(13), path, openOptionArr);
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path) {
        return AbstractC2119a.m3310b(Uncheck.apply(new C2792b(27), path));
    }

    public static InputStream newInputStream(Path path, OpenOption... openOptionArr) {
        return (InputStream) Uncheck.apply(new C2791a(16), path, openOptionArr);
    }

    public static OutputStream newOutputStream(Path path, OpenOption... openOptionArr) {
        return (OutputStream) Uncheck.apply(new C2791a(23), path, openOptionArr);
    }

    public static String probeContentType(Path path) {
        return (String) Uncheck.apply(new C2792b(17), path);
    }

    public static byte[] readAllBytes(Path path) {
        return (byte[]) Uncheck.apply(new C2792b(5), path);
    }

    public static List<String> readAllLines(Path path) {
        return (List) Uncheck.apply(new C2792b(24), path);
    }

    public static <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) {
        return (A) AbstractC2119a.m3324p(Uncheck.apply(new C2792b(8), path, cls, linkOptionArr));
    }

    public static Path readSymbolicLink(Path path) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(15), path));
    }

    public static Path setAttribute(Path path, String str, Object obj, LinkOption... linkOptionArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(14), path, str, obj, linkOptionArr));
    }

    public static Path setLastModifiedTime(Path path, FileTime fileTime) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2791a(8), path, fileTime));
    }

    public static Path setOwner(Path path, UserPrincipal userPrincipal) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2791a(11), path, userPrincipal));
    }

    public static Path setPosixFilePermissions(Path path, Set<PosixFilePermission> set) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2791a(14), path, set));
    }

    public static long size(Path path) {
        return ((Long) Uncheck.apply(new C2792b(9), path)).longValue();
    }

    public static Stream<Path> walk(Path path, int i10, FileVisitOption... fileVisitOptionArr) {
        return (Stream) Uncheck.apply(new C2792b(4), path, Integer.valueOf(i10), fileVisitOptionArr);
    }

    public static Path walkFileTree(Path path, Set<FileVisitOption> set, int i10, FileVisitor<? super Path> fileVisitor) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(25), path, set, Integer.valueOf(i10), fileVisitor));
    }

    public static Path write(Path path, Iterable<? extends CharSequence> iterable, Charset charset, OpenOption... openOptionArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(16), path, iterable, charset, openOptionArr));
    }

    public static Stream<String> lines(Path path, Charset charset) {
        return (Stream) Uncheck.apply(new C2791a(12), path, charset);
    }

    public static BufferedReader newBufferedReader(Path path, Charset charset) {
        return (BufferedReader) Uncheck.apply(new C2791a(4), path, charset);
    }

    public static BufferedWriter newBufferedWriter(Path path, OpenOption... openOptionArr) {
        return (BufferedWriter) Uncheck.apply(new C2791a(21), path, openOptionArr);
    }

    public static SeekableByteChannel newByteChannel(Path path, Set<? extends OpenOption> set, FileAttribute<?>... fileAttributeArr) {
        return (SeekableByteChannel) Uncheck.apply(new C2792b(20), path, set, fileAttributeArr);
    }

    public static List<String> readAllLines(Path path, Charset charset) {
        return (List) Uncheck.apply(new C2791a(10), path, charset);
    }

    public static Path createTempDirectory(Path path, String str, FileAttribute<?>... fileAttributeArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(0), path, str, fileAttributeArr));
    }

    public static Path createTempFile(String str, String str2, FileAttribute<?>... fileAttributeArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(10), str, str2, fileAttributeArr));
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path, DirectoryStream.Filter<? super Path> filter) {
        return AbstractC2119a.m3310b(Uncheck.apply(new C2791a(5), path, filter));
    }

    public static Map<String, Object> readAttributes(Path path, String str, LinkOption... linkOptionArr) {
        return (Map) Uncheck.apply(new C2794d(), path, str, linkOptionArr);
    }

    public static Path write(Path path, byte[] bArr, OpenOption... openOptionArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(2), path, bArr, openOptionArr));
    }

    public static long copy(Path path, OutputStream outputStream) {
        return ((Long) Uncheck.apply(new C2791a(3), path, outputStream)).longValue();
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path, String str) {
        return AbstractC2119a.m3310b(Uncheck.apply(new C2791a(7), path, str));
    }

    public static Stream<Path> walk(Path path, FileVisitOption... fileVisitOptionArr) {
        return (Stream) Uncheck.apply(new C2791a(17), path, fileVisitOptionArr);
    }

    public static Path write(Path path, Iterable<? extends CharSequence> iterable, OpenOption... openOptionArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(19), path, iterable, openOptionArr));
    }

    public static Path copy(Path path, Path path2, CopyOption... copyOptionArr) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2792b(28), path, path2, copyOptionArr));
    }

    public static Path walkFileTree(Path path, FileVisitor<? super Path> fileVisitor) {
        return AbstractC2109a.m3281m(Uncheck.apply(new C2791a(0), path, fileVisitor));
    }
}
