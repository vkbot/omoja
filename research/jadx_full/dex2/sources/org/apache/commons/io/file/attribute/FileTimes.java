package org.apache.commons.io.file.attribute;

import c5.h;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.time.Instant;
import java.util.Date;
import org.apache.commons.io.file.e;
import org.apache.commons.io.file.f;
import org.apache.commons.net.util.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        h.k();
        EPOCH = f.j();
        UNIX_TO_NTFS_OFFSET_BD = BigDecimal.valueOf(UNIX_TO_NTFS_OFFSET);
        HUNDRED_NANOS_PER_SECOND = 10000000L;
        HUNDRED_NANOS_PER_SECOND_BD = BigDecimal.valueOf(10000000L);
        HUNDRED_NANOS_PER_MILLISECOND = 10000L;
        HUNDRED_NANOS_PER_MILLISECOND_BD = BigDecimal.valueOf(10000L);
        HUNDRED_BD = BigDecimal.valueOf(HUNDRED);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FileTimes() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime fromUnixTime(long j) {
        return f.k(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isUnixTime(long j) {
        return -2147483648L <= j && j <= 2147483647L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime minusMillis(FileTime fileTime, long j) {
        return f.l(e.p(f.q(fileTime), j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime minusNanos(FileTime fileTime, long j) {
        return f.l(f.B(f.q(fileTime), j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime minusSeconds(FileTime fileTime, long j) {
        return f.l(f.C(f.q(fileTime), j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime now() {
        return f.l(h.B());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Date ntfsTimeToDate(BigDecimal bigDecimal) {
        return new Date(kotlin.io.path.f.d(ntfsTimeToInstant(bigDecimal)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime ntfsTimeToFileTime(long j) {
        return f.l(ntfsTimeToInstant(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Instant ntfsTimeToInstant(BigDecimal bigDecimal) {
        BigDecimal[] bigDecimalArrDivideAndRemainder = bigDecimal.add(UNIX_TO_NTFS_OFFSET_BD).divideAndRemainder(HUNDRED_NANOS_PER_SECOND_BD, MATH_CONTEXT);
        return a.n(bigDecimalArrDivideAndRemainder[0].longValueExact(), bigDecimalArrDivideAndRemainder[1].multiply(HUNDRED_BD).longValueExact());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime plusMillis(FileTime fileTime, long j) {
        return f.l(f.z(f.q(fileTime), j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime plusNanos(FileTime fileTime, long j) {
        return f.l(f.r(f.q(fileTime), j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime plusSeconds(FileTime fileTime, long j) {
        return f.l(f.D(f.q(fileTime), j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setLastModifiedTime(Path path) {
        e.t(path, now());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Date toDate(FileTime fileTime) {
        if (fileTime != null) {
            return new Date(kotlin.io.path.f.b(fileTime));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime toFileTime(Date date) {
        if (date != null) {
            return e.l(date.getTime());
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long toNtfsTime(long j) {
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(j).multiply(HUNDRED_NANOS_PER_MILLISECOND_BD).subtract(UNIX_TO_NTFS_OFFSET_BD);
        if (bigDecimalSubtract.compareTo(LONG_MAX_VALUE_BD) >= 0) {
            return Long.MAX_VALUE;
        }
        if (bigDecimalSubtract.compareTo(LONG_MIN_VALUE_BD) <= 0) {
            return Long.MIN_VALUE;
        }
        return bigDecimalSubtract.longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long toUnixTime(FileTime fileTime) {
        if (fileTime != null) {
            return f.a(fileTime);
        }
        return 0L;
    }

    public static Date ntfsTimeToDate(long j) {
        return ntfsTimeToDate(BigDecimal.valueOf(j));
    }

    public static boolean isUnixTime(FileTime fileTime) {
        return isUnixTime(toUnixTime(fileTime));
    }

    public static Instant ntfsTimeToInstant(long j) {
        return ntfsTimeToInstant(BigDecimal.valueOf(j));
    }

    public static long toNtfsTime(FileTime fileTime) {
        return toNtfsTime(f.q(fileTime));
    }

    public static long toNtfsTime(Instant instant) {
        return BigDecimal.valueOf(a.f(instant)).multiply(HUNDRED_NANOS_PER_SECOND_BD).add(BigDecimal.valueOf(a.c(instant) / 100)).subtract(UNIX_TO_NTFS_OFFSET_BD).longValueExact();
    }

    public static long toNtfsTime(Date date) {
        return toNtfsTime(date.getTime());
    }
}
