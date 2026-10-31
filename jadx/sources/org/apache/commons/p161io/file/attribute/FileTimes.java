package org.apache.commons.p161io.file.attribute;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.time.Instant;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class FileTimes {
    public static final FileTime EPOCH;
    private static final long HUNDRED = 100;
    private static final BigDecimal HUNDRED_BD;
    static final long HUNDRED_NANOS_PER_MILLISECOND;
    static final BigDecimal HUNDRED_NANOS_PER_MILLISECOND_BD;
    private static final long HUNDRED_NANOS_PER_SECOND;
    private static final BigDecimal HUNDRED_NANOS_PER_SECOND_BD;
    static final long UNIX_TO_NTFS_OFFSET = -116444736000000000L;
    private static final BigDecimal UNIX_TO_NTFS_OFFSET_BD;
    private static final BigDecimal LONG_MIN_VALUE_BD = BigDecimal.valueOf(Long.MIN_VALUE);
    private static final BigDecimal LONG_MAX_VALUE_BD = BigDecimal.valueOf(Long.MAX_VALUE);
    private static final MathContext MATH_CONTEXT = new MathContext(0, RoundingMode.FLOOR);

    static {
        Instant unused = Instant.EPOCH;
        EPOCH = FileTime.from(Instant.EPOCH);
        UNIX_TO_NTFS_OFFSET_BD = BigDecimal.valueOf(UNIX_TO_NTFS_OFFSET);
        HUNDRED_NANOS_PER_SECOND = 10000000L;
        HUNDRED_NANOS_PER_SECOND_BD = BigDecimal.valueOf(10000000L);
        HUNDRED_NANOS_PER_MILLISECOND = 10000L;
        HUNDRED_NANOS_PER_MILLISECOND_BD = BigDecimal.valueOf(10000L);
        HUNDRED_BD = BigDecimal.valueOf(HUNDRED);
    }

    private FileTimes() {
    }

    public static FileTime fromUnixTime(long j10) {
        return FileTime.from(j10, TimeUnit.SECONDS);
    }

    public static boolean isUnixTime(long j10) {
        return -2147483648L <= j10 && j10 <= 2147483647L;
    }

    public static FileTime minusMillis(FileTime fileTime, long j10) {
        return FileTime.from(fileTime.toInstant().minusMillis(j10));
    }

    public static FileTime minusNanos(FileTime fileTime, long j10) {
        return FileTime.from(fileTime.toInstant().minusNanos(j10));
    }

    public static FileTime minusSeconds(FileTime fileTime, long j10) {
        return FileTime.from(fileTime.toInstant().minusSeconds(j10));
    }

    public static FileTime now() {
        return FileTime.from(Instant.now());
    }

    public static Date ntfsTimeToDate(BigDecimal bigDecimal) {
        return new Date(ntfsTimeToInstant(bigDecimal).toEpochMilli());
    }

    public static FileTime ntfsTimeToFileTime(long j10) {
        return FileTime.from(ntfsTimeToInstant(j10));
    }

    public static Instant ntfsTimeToInstant(BigDecimal bigDecimal) {
        BigDecimal[] bigDecimalArrDivideAndRemainder = bigDecimal.add(UNIX_TO_NTFS_OFFSET_BD).divideAndRemainder(HUNDRED_NANOS_PER_SECOND_BD, MATH_CONTEXT);
        return Instant.ofEpochSecond(bigDecimalArrDivideAndRemainder[0].longValueExact(), bigDecimalArrDivideAndRemainder[1].multiply(HUNDRED_BD).longValueExact());
    }

    public static FileTime plusMillis(FileTime fileTime, long j10) {
        return FileTime.from(fileTime.toInstant().plusMillis(j10));
    }

    public static FileTime plusNanos(FileTime fileTime, long j10) {
        return FileTime.from(fileTime.toInstant().plusNanos(j10));
    }

    public static FileTime plusSeconds(FileTime fileTime, long j10) {
        return FileTime.from(fileTime.toInstant().plusSeconds(j10));
    }

    public static void setLastModifiedTime(Path path) {
        Files.setLastModifiedTime(path, now());
    }

    public static Date toDate(FileTime fileTime) {
        if (fileTime != null) {
            return new Date(fileTime.toMillis());
        }
        return null;
    }

    public static FileTime toFileTime(Date date) {
        if (date != null) {
            return FileTime.fromMillis(date.getTime());
        }
        return null;
    }

    public static long toNtfsTime(long j10) {
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(j10).multiply(HUNDRED_NANOS_PER_MILLISECOND_BD).subtract(UNIX_TO_NTFS_OFFSET_BD);
        if (bigDecimalSubtract.compareTo(LONG_MAX_VALUE_BD) >= 0) {
            return Long.MAX_VALUE;
        }
        if (bigDecimalSubtract.compareTo(LONG_MIN_VALUE_BD) <= 0) {
            return Long.MIN_VALUE;
        }
        return bigDecimalSubtract.longValue();
    }

    public static long toUnixTime(FileTime fileTime) {
        if (fileTime != null) {
            return fileTime.to(TimeUnit.SECONDS);
        }
        return 0L;
    }

    public static Date ntfsTimeToDate(long j10) {
        return ntfsTimeToDate(BigDecimal.valueOf(j10));
    }

    public static boolean isUnixTime(FileTime fileTime) {
        return isUnixTime(toUnixTime(fileTime));
    }

    public static Instant ntfsTimeToInstant(long j10) {
        return ntfsTimeToInstant(BigDecimal.valueOf(j10));
    }

    public static long toNtfsTime(FileTime fileTime) {
        return toNtfsTime(fileTime.toInstant());
    }

    public static long toNtfsTime(Instant instant) {
        return BigDecimal.valueOf(instant.getEpochSecond()).multiply(HUNDRED_NANOS_PER_SECOND_BD).add(BigDecimal.valueOf(instant.getNano() / 100)).subtract(UNIX_TO_NTFS_OFFSET_BD).longValueExact();
    }

    public static long toNtfsTime(Date date) {
        return toNtfsTime(date.getTime());
    }
}
