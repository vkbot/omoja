package kotlin.io.path;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.CopyOption;
import java.nio.file.FileStore;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.attribute.FileTime;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneId;
import java.time.chrono.ChronoLocalDateTime;
import java.time.chrono.ChronoZonedDateTime;
import java.util.HashSet;
import org.apache.commons.io.file.AccumulatorPathVisitor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class f {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ FileTime A(BasicFileAttributes basicFileAttributes) {
        return basicFileAttributes.lastAccessTime();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean B(Path path, LinkOption[] linkOptionArr) {
        return Files.isRegularFile(path, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ FileTime C(BasicFileAttributes basicFileAttributes) {
        return basicFileAttributes.creationTime();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean D(Path path, LinkOption[] linkOptionArr) {
        return Files.isDirectory(path, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long a(FileStore fileStore) {
        return fileStore.getUsableSpace();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long b(FileTime fileTime) {
        return fileTime.toMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long c(Duration duration) {
        return duration.toMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long d(Instant instant) {
        return instant.toEpochMilli();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ InputStream e(Path path, OpenOption[] openOptionArr) {
        return Files.newInputStream(path, openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Class f() {
        return BasicFileAttributes.class;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Path g(Path path, FileTime fileTime) {
        return Files.setLastModifiedTime(path, fileTime);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ StandardCopyOption h() {
        return StandardCopyOption.COPY_ATTRIBUTES;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ BasicFileAttributeView i(Object obj) {
        return (BasicFileAttributeView) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ BasicFileAttributes j(Path path, Class cls, LinkOption[] linkOptionArr) {
        return Files.readAttributes(path, cls, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ FileAttributeView k(Path path, Class cls, LinkOption[] linkOptionArr) {
        return Files.getFileAttributeView(path, cls, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ FileTime l(Path path, LinkOption[] linkOptionArr) {
        return Files.getLastModifiedTime(path, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ FileTime m(BasicFileAttributes basicFileAttributes) {
        return basicFileAttributes.lastModifiedTime();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Duration n(long j9) {
        return Duration.ofSeconds(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Instant o(OffsetDateTime offsetDateTime) {
        return offsetDateTime.toInstant();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Instant p(ChronoZonedDateTime chronoZonedDateTime) {
        return chronoZonedDateTime.toInstant();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ LocalTime q() {
        return LocalTime.MAX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ LocalTime r(OffsetTime offsetTime) {
        return offsetTime.toLocalTime();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ZoneId s() {
        return ZoneId.systemDefault();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ChronoZonedDateTime t(ChronoLocalDateTime chronoLocalDateTime, ZoneId zoneId) {
        return chronoLocalDateTime.atZone(zoneId);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void u(Path path, Path path2, CopyOption[] copyOptionArr) throws IOException {
        Files.copy(path, path2, copyOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void v(Path path, HashSet hashSet, int i9, AccumulatorPathVisitor accumulatorPathVisitor) throws IOException {
        Files.walkFileTree(path, hashSet, i9, accumulatorPathVisitor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void w(BasicFileAttributeView basicFileAttributeView, FileTime fileTime, FileTime fileTime2, FileTime fileTime3) throws IOException {
        basicFileAttributeView.setTimes(fileTime, fileTime2, fileTime3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean x(Path path, LinkOption[] linkOptionArr) {
        return Files.exists(path, linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Class y() {
        return BasicFileAttributeView.class;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ StandardCopyOption z() {
        return StandardCopyOption.REPLACE_EXISTING;
    }
}
