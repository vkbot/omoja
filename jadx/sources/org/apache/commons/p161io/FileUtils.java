package org.apache.commons.p161io;

import ai.onnxruntime.C0075b;
import androidx.navigation.C0674b;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UncheckedIOException;
import java.math.BigInteger;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.CopyOption;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneId;
import java.time.chrono.ChronoLocalDate;
import java.time.chrono.ChronoLocalDateTime;
import java.time.chrono.ChronoZonedDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import kotlin.p118io.path.AbstractC2124f;
import org.apache.commons.p161io.file.AccumulatorPathVisitor;
import org.apache.commons.p161io.file.Counters;
import org.apache.commons.p161io.file.PathUtils;
import org.apache.commons.p161io.file.StandardDeleteOption;
import org.apache.commons.p161io.filefilter.FileEqualsFileFilter;
import org.apache.commons.p161io.filefilter.FileFileFilter;
import org.apache.commons.p161io.filefilter.IOFileFilter;
import org.apache.commons.p161io.filefilter.SuffixFileFilter;
import org.apache.commons.p161io.filefilter.TrueFileFilter;
import org.apache.commons.p161io.function.IOConsumer;
import org.apache.commons.p161io.function.Uncheck;
import p062f5.C1548f;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FileUtils {
    public static final File[] EMPTY_FILE_ARRAY;
    public static final long ONE_EB = 1152921504606846976L;
    public static final BigInteger ONE_EB_BI;
    public static final long ONE_GB = 1073741824;
    public static final BigInteger ONE_GB_BI;
    public static final long ONE_KB = 1024;
    public static final BigInteger ONE_KB_BI;
    public static final long ONE_MB = 1048576;
    public static final BigInteger ONE_MB_BI;
    public static final long ONE_PB = 1125899906842624L;
    public static final BigInteger ONE_PB_BI;
    public static final BigInteger ONE_QB;
    public static final BigInteger ONE_RB;
    public static final long ONE_TB = 1099511627776L;
    public static final BigInteger ONE_TB_BI;
    public static final BigInteger ONE_YB;
    public static final BigInteger ONE_ZB;
    private static final String PROTOCOL_FILE = "file";

    static {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(1024L);
        ONE_KB_BI = bigIntegerValueOf;
        BigInteger bigIntegerMultiply = bigIntegerValueOf.multiply(bigIntegerValueOf);
        ONE_MB_BI = bigIntegerMultiply;
        BigInteger bigIntegerMultiply2 = bigIntegerValueOf.multiply(bigIntegerMultiply);
        ONE_GB_BI = bigIntegerMultiply2;
        BigInteger bigIntegerMultiply3 = bigIntegerValueOf.multiply(bigIntegerMultiply2);
        ONE_TB_BI = bigIntegerMultiply3;
        BigInteger bigIntegerMultiply4 = bigIntegerValueOf.multiply(bigIntegerMultiply3);
        ONE_PB_BI = bigIntegerMultiply4;
        BigInteger bigIntegerMultiply5 = bigIntegerValueOf.multiply(bigIntegerMultiply4);
        ONE_EB_BI = bigIntegerMultiply5;
        BigInteger bigIntegerMultiply6 = bigIntegerValueOf.multiply(bigIntegerMultiply5);
        ONE_ZB = bigIntegerMultiply6;
        BigInteger bigIntegerMultiply7 = bigIntegerValueOf.multiply(bigIntegerMultiply6);
        ONE_YB = bigIntegerMultiply7;
        BigInteger bigIntegerMultiply8 = bigIntegerValueOf.multiply(bigIntegerMultiply7);
        ONE_RB = bigIntegerMultiply8;
        ONE_QB = bigIntegerValueOf.multiply(bigIntegerMultiply8);
        EMPTY_FILE_ARRAY = new File[0];
    }

    @Deprecated
    public FileUtils() {
    }

    public static String byteCountToDisplaySize(BigInteger bigInteger) {
        Objects.requireNonNull(bigInteger, "size");
        BigInteger bigInteger2 = ONE_QB;
        BigInteger bigIntegerDivide = bigInteger.divide(bigInteger2);
        BigInteger bigInteger3 = BigInteger.ZERO;
        if (bigIntegerDivide.compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger2) + " QB";
        }
        BigInteger bigInteger4 = ONE_RB;
        if (bigInteger.divide(bigInteger4).compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger4) + " RB";
        }
        BigInteger bigInteger5 = ONE_YB;
        if (bigInteger.divide(bigInteger5).compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger5) + " YB";
        }
        BigInteger bigInteger6 = ONE_ZB;
        if (bigInteger.divide(bigInteger6).compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger6) + " ZB";
        }
        BigInteger bigInteger7 = ONE_EB_BI;
        if (bigInteger.divide(bigInteger7).compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger7) + " EB";
        }
        BigInteger bigInteger8 = ONE_PB_BI;
        if (bigInteger.divide(bigInteger8).compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger8) + " PB";
        }
        BigInteger bigInteger9 = ONE_TB_BI;
        if (bigInteger.divide(bigInteger9).compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger9) + " TB";
        }
        BigInteger bigInteger10 = ONE_GB_BI;
        if (bigInteger.divide(bigInteger10).compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger10) + " GB";
        }
        BigInteger bigInteger11 = ONE_MB_BI;
        if (bigInteger.divide(bigInteger11).compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger11) + " MB";
        }
        BigInteger bigInteger12 = ONE_KB_BI;
        if (bigInteger.divide(bigInteger12).compareTo(bigInteger3) > 0) {
            return bigInteger.divide(bigInteger12) + " KB";
        }
        return bigInteger + " bytes";
    }

    private static void checkExists(File file, boolean z9) throws FileNotFoundException {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        if (z9 && !file.exists() && !isSymlink(file)) {
            throw new FileNotFoundException(file.toString());
        }
    }

    private static void checkFileExists(File file, String str) throws FileNotFoundException {
        Objects.requireNonNull(file, str);
        if (file.isFile()) {
            return;
        }
        if (file.exists()) {
            C0674b.m855v("Parameter '", str, "' is not a file: ", file);
        } else {
            if (Files.isSymbolicLink(file.toPath())) {
                return;
            }
            C2786e.m4352b(file, "Source '", "' does not exist");
        }
    }

    private static File checkIsFile(File file, String str) {
        if (file.isFile()) {
            return file;
        }
        C2467b.m3832v("Parameter '%s' is not a file: %s", new Object[]{str, file});
        return null;
    }

    public static Checksum checksum(File file, Checksum checksum) throws IOException {
        checkFileExists(file, PROTOCOL_FILE);
        Objects.requireNonNull(checksum, "checksum");
        CheckedInputStream checkedInputStream = new CheckedInputStream(Files.newInputStream(file.toPath(), new OpenOption[0]), checksum);
        try {
            IOUtils.consume(checkedInputStream);
            checkedInputStream.close();
            return checksum;
        } catch (Throwable th) {
            try {
                checkedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static long checksumCRC32(File file) {
        return checksum(file, new CRC32()).getValue();
    }

    public static void cleanDirectory(File file) {
        IOConsumer.forAll(new C2920s(1), listFiles(file, null));
    }

    private static void cleanDirectoryOnExit(File file) {
        IOConsumer.forAll(new C2920s(0), listFiles(file, null));
    }

    public static boolean contentEquals(File file, File file2) {
        boolean zExists;
        if (file == null && file2 == null) {
            return true;
        }
        if (file == null || file2 == null || (zExists = file.exists()) != file2.exists()) {
            return false;
        }
        if (!zExists) {
            return true;
        }
        checkIsFile(file, "file1");
        checkIsFile(file2, "file2");
        if (file.length() != file2.length()) {
            return false;
        }
        if (file.getCanonicalFile().equals(file2.getCanonicalFile())) {
            return true;
        }
        return PathUtils.fileContentEquals(file.toPath(), file2.toPath());
    }

    public static boolean contentEqualsIgnoreEOL(File file, File file2, String str) throws IOException {
        boolean zExists;
        if (file == null && file2 == null) {
            return true;
        }
        if (file == null || file2 == null || (zExists = file.exists()) != file2.exists()) {
            return false;
        }
        if (!zExists) {
            return true;
        }
        checkFileExists(file, "file1");
        checkFileExists(file2, "file2");
        if (file.getCanonicalFile().equals(file2.getCanonicalFile())) {
            return true;
        }
        Charset charset = Charsets.toCharset(str);
        InputStreamReader inputStreamReader = new InputStreamReader(Files.newInputStream(file.toPath(), new OpenOption[0]), charset);
        try {
            InputStreamReader inputStreamReader2 = new InputStreamReader(Files.newInputStream(file2.toPath(), new OpenOption[0]), charset);
            try {
                boolean zContentEqualsIgnoreEOL = IOUtils.contentEqualsIgnoreEOL(inputStreamReader, inputStreamReader2);
                inputStreamReader2.close();
                inputStreamReader.close();
                return zContentEqualsIgnoreEOL;
            } catch (Throwable th) {
                try {
                    inputStreamReader2.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                inputStreamReader.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static File[] convertFileCollectionToFileArray(Collection<File> collection) {
        return (File[]) collection.toArray(EMPTY_FILE_ARRAY);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0048  */
    public static void copyDirectory(File file, File file2, FileFilter fileFilter, boolean z9, CopyOption... copyOptionArr) throws IOException {
        ArrayList arrayList;
        Objects.requireNonNull(file2, "destination");
        requireDirectoryExists(file, "srcDir");
        requireCanonicalPathsNotEquals(file, file2);
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            File[] fileArrListFiles = listFiles(file, fileFilter);
            if (fileArrListFiles.length > 0) {
                arrayList = new ArrayList(fileArrListFiles.length);
                for (File file3 : fileArrListFiles) {
                    arrayList.add(new File(file2, file3.getName()).getCanonicalPath());
                }
            } else {
                arrayList = null;
            }
        } else {
            arrayList = null;
        }
        doCopyDirectory(file, file2, fileFilter, arrayList, z9, copyOptionArr);
    }

    public static void copyDirectoryToDirectory(File file, File file2) throws IOException {
        Objects.requireNonNull(file, "sourceDir");
        requireDirectoryIfExists(file2, "destinationDir");
        copyDirectory(file, new File(file2, file.getName()), true);
    }

    public static void copyFile(File file, File file2, boolean z9, CopyOption... copyOptionArr) throws IOException {
        Objects.requireNonNull(file2, "destination");
        checkFileExists(file, "srcFile");
        requireCanonicalPathsNotEquals(file, file2);
        createParentDirectories(file2);
        if (file2.exists()) {
            checkFileExists(file2, "destFile");
        }
        Path path = file.toPath();
        Files.copy(path, file2.toPath(), copyOptionArr);
        if (!z9 || Files.isSymbolicLink(path) || setTimes(file, file2)) {
            return;
        }
        C2467b.m3820A("Cannot set the file time.");
    }

    public static void copyFileToDirectory(File file, File file2, boolean z9) throws IOException {
        Objects.requireNonNull(file, "sourceFile");
        requireDirectoryIfExists(file2, "destinationDir");
        copyFile(file, new File(file2, file.getName()), z9);
    }

    public static void copyInputStreamToFile(InputStream inputStream, File file) throws IOException {
        try {
            copyToFile(inputStream, file);
            if (inputStream != null) {
                inputStream.close();
            }
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

    public static void copyToDirectory(File file, File file2) throws IOException {
        Objects.requireNonNull(file, "sourceFile");
        if (file.isFile()) {
            copyFileToDirectory(file, file2);
        } else if (file.isDirectory()) {
            copyDirectoryToDirectory(file, file2);
        } else {
            C2786e.m4352b(file, "The source ", " does not exist");
        }
    }

    public static void copyToFile(InputStream inputStream, File file) throws IOException {
        OutputStream outputStreamNewOutputStream = newOutputStream(file, false);
        try {
            IOUtils.copy(inputStream, outputStreamNewOutputStream);
            if (outputStreamNewOutputStream != null) {
                outputStreamNewOutputStream.close();
            }
        } catch (Throwable th) {
            if (outputStreamNewOutputStream != null) {
                try {
                    outputStreamNewOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static void copyURLToFile(URL url, File file, int i10, int i11) {
        CloseableURLConnection closeableURLConnectionOpen = CloseableURLConnection.open(url);
        try {
            closeableURLConnectionOpen.setConnectTimeout(i10);
            closeableURLConnectionOpen.setReadTimeout(i11);
            InputStream inputStream = closeableURLConnectionOpen.getInputStream();
            try {
                copyInputStreamToFile(inputStream, file);
                if (inputStream != null) {
                    inputStream.close();
                }
                closeableURLConnectionOpen.close();
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
        } catch (Throwable th3) {
            if (closeableURLConnectionOpen != null) {
                try {
                    closeableURLConnectionOpen.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }

    public static File createParentDirectories(File file) {
        return mkdirs(getParentFile(file));
    }

    public static File current() {
        return PathUtils.current().toFile();
    }

    public static String decodeUrl(String str) {
        int i10;
        if (str == null || str.indexOf(37) < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        int i11 = 0;
        while (i11 < length) {
            if (str.charAt(i11) == '%') {
                while (true) {
                    i10 = i11 + 3;
                    try {
                        try {
                            byteBufferAllocate.put((byte) Integer.parseInt(str.substring(i11 + 1, i10), 16));
                            if (i10 >= length) {
                                break;
                            }
                            try {
                                if (str.charAt(i10) != '%') {
                                    break;
                                }
                                i11 = i10;
                            } catch (IndexOutOfBoundsException | NumberFormatException unused) {
                                i11 = i10;
                                if (byteBufferAllocate.position() > 0) {
                                    byteBufferAllocate.flip();
                                    sb.append(StandardCharsets.UTF_8.decode(byteBufferAllocate).toString());
                                    byteBufferAllocate.clear();
                                }
                                sb.append(str.charAt(i11));
                                i11++;
                            }
                        } catch (Throwable th) {
                            if (byteBufferAllocate.position() > 0) {
                                byteBufferAllocate.flip();
                                sb.append(StandardCharsets.UTF_8.decode(byteBufferAllocate).toString());
                                byteBufferAllocate.clear();
                            }
                            throw th;
                        }
                    } catch (IndexOutOfBoundsException | NumberFormatException unused2) {
                    }
                }
                if (byteBufferAllocate.position() > 0) {
                    byteBufferAllocate.flip();
                    sb.append(StandardCharsets.UTF_8.decode(byteBufferAllocate).toString());
                    byteBufferAllocate.clear();
                }
                i11 = i10;
            }
            sb.append(str.charAt(i11));
            i11++;
        }
        return sb.toString();
    }

    public static File delete(File file) throws IOException {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        Files.delete(file.toPath());
        return file;
    }

    public static void deleteDirectory(File file) throws IOException {
        Objects.requireNonNull(file, "directory");
        if (file.exists()) {
            if (!isSymlink(file)) {
                cleanDirectory(file);
            }
            delete(file);
        }
    }

    private static void deleteDirectoryOnExit(File file) {
        if (file.exists()) {
            file.deleteOnExit();
            if (isSymlink(file)) {
                return;
            }
            cleanDirectoryOnExit(file);
        }
    }

    public static boolean deleteQuietly(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.isDirectory()) {
                cleanDirectory(file);
            }
        } catch (Exception unused) {
        }
        try {
            return file.delete();
        } catch (Exception unused2) {
            return false;
        }
    }

    public static boolean directoryContains(File file, File file2) throws FileNotFoundException {
        requireDirectoryExists(file, "directory");
        if (file2 == null || !file2.exists()) {
            return false;
        }
        return FilenameUtils.directoryContains(file.getCanonicalPath(), file2.getCanonicalPath());
    }

    private static void doCopyDirectory(File file, File file2, FileFilter fileFilter, List<String> list, boolean z9, CopyOption... copyOptionArr) throws IOException {
        FileFilter fileFilter2;
        List<String> list2;
        boolean z10;
        CopyOption[] copyOptionArr2;
        File[] fileArrListFiles = listFiles(file, fileFilter);
        requireDirectoryIfExists(file2, "destDir");
        mkdirs(file2);
        int length = fileArrListFiles.length;
        int i10 = 0;
        while (i10 < length) {
            File file3 = fileArrListFiles[i10];
            File file4 = new File(file2, file3.getName());
            if (list != null && list.contains(file3.getCanonicalPath())) {
                fileFilter2 = fileFilter;
                list2 = list;
                z10 = z9;
                copyOptionArr2 = copyOptionArr;
            } else if (file3.isDirectory()) {
                fileFilter2 = fileFilter;
                list2 = list;
                z10 = z9;
                copyOptionArr2 = copyOptionArr;
                doCopyDirectory(file3, file4, fileFilter2, list2, z10, copyOptionArr2);
            } else {
                fileFilter2 = fileFilter;
                list2 = list;
                z10 = z9;
                copyOptionArr2 = copyOptionArr;
                copyFile(file3, file4, z10, copyOptionArr2);
            }
            i10++;
            fileFilter = fileFilter2;
            list = list2;
            z9 = z10;
            copyOptionArr = copyOptionArr2;
        }
        if (z9) {
            setTimes(file, file2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void forceDelete(File file, boolean z9) throws IOException {
        checkExists(file, z9);
        try {
            Counters.PathCounters pathCountersDelete = PathUtils.delete(file.toPath(), PathUtils.EMPTY_LINK_OPTION_ARRAY, StandardDeleteOption.OVERRIDE_READ_ONLY);
            if (pathCountersDelete.getFileCounter().get() >= 1 || pathCountersDelete.getDirectoryCounter().get() >= 1) {
                return;
            }
            C2786e.m4351a(file, "File does not exist: ");
        } catch (NoSuchFileException e) {
            FileNotFoundException fileNotFoundException = new FileNotFoundException("Cannot delete file: " + file);
            fileNotFoundException.initCause(e);
            throw fileNotFoundException;
        } catch (IOException e6) {
            throw new IOException("Cannot delete file: " + file, e6);
        }
    }

    public static void forceDeleteOnExit(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        if (file.isDirectory()) {
            deleteDirectoryOnExit(file);
        } else {
            file.deleteOnExit();
        }
    }

    public static void forceMkdir(File file) throws IOException {
        mkdirs(file);
    }

    public static void forceMkdirParent(File file) throws IOException {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        forceMkdir(getParentFile(file));
    }

    public static File getFile(String... strArr) {
        Objects.requireNonNull(strArr, "names");
        File file = null;
        for (String str : strArr) {
            file = file == null ? new File(str) : new File(file, str);
        }
        return file;
    }

    private static File getParentFile(File file) {
        if (file == null) {
            return null;
        }
        return file.getParentFile();
    }

    public static File getTempDirectory() {
        return new File(getTempDirectoryPath());
    }

    public static String getTempDirectoryPath() {
        return System.getProperty("java.io.tmpdir");
    }

    public static File getUserDirectory() {
        return new File(getUserDirectoryPath());
    }

    public static String getUserDirectoryPath() {
        return System.getProperty("user.home");
    }

    public static boolean isDirectory(File file, LinkOption... linkOptionArr) {
        return file != null && Files.isDirectory(file.toPath(), linkOptionArr);
    }

    public static boolean isEmptyDirectory(File file) {
        return PathUtils.isEmptyDirectory(file.toPath());
    }

    public static boolean isFileNewer(File file, ChronoLocalDate chronoLocalDate, OffsetTime offsetTime) {
        Objects.requireNonNull(chronoLocalDate, "chronoLocalDate");
        Objects.requireNonNull(offsetTime, "offsetTime");
        return isFileNewer(file, (ChronoLocalDateTime<?>) chronoLocalDate.atTime(offsetTime.toLocalTime()));
    }

    public static boolean isFileOlder(File file, ChronoLocalDate chronoLocalDate, OffsetTime offsetTime) {
        Objects.requireNonNull(chronoLocalDate, "chronoLocalDate");
        Objects.requireNonNull(offsetTime, "offsetTime");
        return isFileOlder(file, (ChronoLocalDateTime<?>) chronoLocalDate.atTime(offsetTime.toLocalTime()));
    }

    private static boolean isFileProtocol(URL url) {
        return PROTOCOL_FILE.equalsIgnoreCase(url.getProtocol());
    }

    public static boolean isRegularFile(File file, LinkOption... linkOptionArr) {
        return file != null && Files.isRegularFile(file.toPath(), linkOptionArr);
    }

    public static boolean isSymlink(File file) {
        return file != null && Files.isSymbolicLink(file.toPath());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Iterator<File> iterateFiles(File file, String[] strArr, boolean z9) {
        return StreamIterator.iterator((Stream) Uncheck.get(new C2848i(file, z9, strArr, 0)));
    }

    public static Iterator<File> iterateFilesAndDirs(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return listFilesAndDirs(file, iOFileFilter, iOFileFilter2).iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isFileNewer$1(File file, ChronoZonedDateTime chronoZonedDateTime) {
        return PathUtils.isNewer(file.toPath(), (ChronoZonedDateTime<?>) chronoZonedDateTime, new LinkOption[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isFileNewer$2(File file, File file2) {
        return PathUtils.isNewer(file.toPath(), file2.toPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isFileNewer$3(File file, Instant instant) {
        return PathUtils.isNewer(file.toPath(), instant, new LinkOption[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isFileNewer$4(File file, long j10) {
        return PathUtils.isNewer(file.toPath(), j10, new LinkOption[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isFileOlder$5(File file, File file2) {
        return PathUtils.isOlder(file.toPath(), file2.toPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isFileOlder$6(File file, Instant instant) {
        return PathUtils.isOlder(file.toPath(), instant, new LinkOption[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isFileOlder$7(File file, long j10) {
        return PathUtils.isOlder(file.toPath(), j10, new LinkOption[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FileVisitResult lambda$listAccumulate$9(Path path, IOException iOException) {
        return FileVisitResult.CONTINUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AccumulatorPathVisitor lambda$listFiles$10(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, File file) {
        return listAccumulate(file, FileFileFilter.INSTANCE.and(iOFileFilter), iOFileFilter2, FileVisitOption.FOLLOW_LINKS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$listFiles$11(boolean z9, List list, FilenameFilter filenameFilter, File file, List list2, File file2) {
        if (z9 && file2.isDirectory()) {
            list.add(file2);
        } else if (file2.isFile() && filenameFilter.accept(file, file2.getName())) {
            list2.add(file2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AccumulatorPathVisitor lambda$listFilesAndDirs$13(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, File file) {
        return listAccumulate(file, iOFileFilter, iOFileFilter2, FileVisitOption.FOLLOW_LINKS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InputStream lambda$readFileToString$14(File file) {
        return Files.newInputStream(file.toPath(), new OpenOption[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ long lambda$sizeOf$15(File file) {
        return PathUtils.sizeOf(file.toPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ BigInteger lambda$sizeOfAsBigInteger$16(File file) {
        return PathUtils.sizeOfAsBigInteger(file.toPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ long lambda$sizeOfDirectory$17(File file) {
        return PathUtils.sizeOfDirectory(file.toPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ BigInteger lambda$sizeOfDirectoryAsBigInteger$18(File file) {
        return PathUtils.sizeOfDirectoryAsBigInteger(file.toPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$toSuffixes$19(String str) {
        return str.charAt(0) == '.' ? str : ".".concat(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$toSuffixes$20(int i10) {
        return new String[i10];
    }

    public static long lastModified(File file) {
        return lastModifiedFileTime(file).toMillis();
    }

    public static FileTime lastModifiedFileTime(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return Files.getLastModifiedTime(file.toPath(), new LinkOption[0]);
    }

    public static long lastModifiedUnchecked(File file) {
        return ((Long) Uncheck.apply(new C2786e(), file)).longValue();
    }

    public static LineIterator lineIterator(File file, String str) throws Exception {
        InputStream inputStreamNewInputStream = null;
        try {
            inputStreamNewInputStream = Files.newInputStream(file.toPath(), new OpenOption[0]);
            return IOUtils.lineIterator(inputStreamNewInputStream, str);
        } catch (IOException | RuntimeException e) {
            IOUtils.closeQuietly(inputStreamNewInputStream, new C2924t(e, 0));
            throw e;
        }
    }

    private static AccumulatorPathVisitor listAccumulate(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, FileVisitOption... fileVisitOptionArr) throws IOException {
        boolean z9 = iOFileFilter2 != null;
        IOFileFilter fileEqualsFileFilter = new FileEqualsFileFilter(file);
        if (z9) {
            fileEqualsFileFilter = fileEqualsFileFilter.mo4430or(iOFileFilter2);
        }
        AccumulatorPathVisitor accumulatorPathVisitor = ((AccumulatorPathVisitor.Builder) ((AccumulatorPathVisitor.Builder) AccumulatorPathVisitor.builder().setPathCounters(Counters.noopPathCounters()).setFileFilter(iOFileFilter).setDirectoryFilter(fileEqualsFileFilter)).setVisitFileFailedFunction(new C2897n())).get();
        HashSet hashSet = new HashSet();
        if (fileVisitOptionArr != null) {
            Collections.addAll(hashSet, fileVisitOptionArr);
        }
        Files.walkFileTree(file.toPath(), hashSet, toMaxDepth(z9), accumulatorPathVisitor);
        return accumulatorPathVisitor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<File> listFiles(final File file, final List<File> list, final boolean z9, final FilenameFilter filenameFilter) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return list;
        }
        final ArrayList arrayList = z9 ? new ArrayList() : null;
        Arrays.stream(fileArrListFiles).forEach(new Consumer() { // from class: org.apache.commons.io.j
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FileUtils.lambda$listFiles$11(z9, arrayList, filenameFilter, file, list, (File) obj);
            }
        });
        if (!z9) {
            return list;
        }
        arrayList.forEach(new C2890k(0, list, filenameFilter));
        return list;
    }

    public static Collection<File> listFilesAndDirs(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        AccumulatorPathVisitor accumulatorPathVisitor = (AccumulatorPathVisitor) Uncheck.apply(new C2846g(iOFileFilter, iOFileFilter2, 1), file);
        List<Path> fileList = accumulatorPathVisitor.getFileList();
        fileList.addAll(accumulatorPathVisitor.getDirList());
        return toList(fileList.stream().map(new C2847h()));
    }

    private static File mkdirs(File file) throws IOException {
        if (file == null || file.mkdirs() || file.isDirectory()) {
            return file;
        }
        C0674b.m854u(file, "Cannot create directory '", "'.");
        return null;
    }

    public static void moveDirectory(File file, File file2) throws IOException {
        Objects.requireNonNull(file2, "destination");
        requireDirectoryExists(file, "srcDir");
        requireAbsent(file2, "destDir");
        if (file.renameTo(file2)) {
            return;
        }
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath() + File.separator)) {
            C0075b.m188m("Cannot move directory: ", file, " to a subdirectory of itself: ", file2);
            return;
        }
        copyDirectory(file, file2);
        deleteDirectory(file);
        if (file.exists()) {
            C0674b.m842i("Failed to delete original directory '", file, "' after copy to '", file2, "'");
        }
    }

    public static void moveDirectoryToDirectory(File file, File file2, boolean z9) throws IOException {
        validateMoveParameters(file, file2);
        if (!file2.isDirectory()) {
            if (file2.exists()) {
                C0674b.m854u(file2, "Destination '", "' is not a directory");
                return;
            } else {
                if (!z9) {
                    C2786e.m4352b(file2, "Destination directory '", "' does not exist [createDestDir=false]");
                    return;
                }
                mkdirs(file2);
            }
        }
        moveDirectory(file, new File(file2, file.getName()));
    }

    public static void moveFile(File file, File file2, CopyOption... copyOptionArr) throws IOException {
        Objects.requireNonNull(file2, "destFile");
        checkFileExists(file, "srcFile");
        requireAbsent(file2, "destFile");
        if (file.renameTo(file2)) {
            return;
        }
        copyFile(file, file2, false, copyOptionArr);
        if (file.delete()) {
            return;
        }
        deleteQuietly(file2);
        C0674b.m842i("Failed to delete original file '", file, "' after copy to '", file2, "'");
    }

    public static void moveFileToDirectory(File file, File file2, boolean z9) throws IOException {
        validateMoveParameters(file, file2);
        if (!file2.exists() && z9) {
            mkdirs(file2);
        }
        requireDirectoryExists(file2, "destDir");
        moveFile(file, new File(file2, file.getName()));
    }

    public static void moveToDirectory(File file, File file2, boolean z9) throws IOException {
        validateMoveParameters(file, file2);
        if (file.isDirectory()) {
            moveDirectoryToDirectory(file, file2, z9);
        } else {
            moveFileToDirectory(file, file2, z9);
        }
    }

    public static OutputStream newOutputStream(File file, boolean z9) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return PathUtils.newOutputStream(file.toPath(), z9);
    }

    public static FileInputStream openInputStream(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return new FileInputStream(file);
    }

    public static FileOutputStream openOutputStream(File file, boolean z9) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        if (file.exists()) {
            checkIsFile(file, PROTOCOL_FILE);
        } else {
            createParentDirectories(file);
        }
        return new FileOutputStream(file, z9);
    }

    public static byte[] readFileToByteArray(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return Files.readAllBytes(file.toPath());
    }

    public static String readFileToString(File file, Charset charset) {
        return IOUtils.toString(new C2787f(file, 0), Charsets.toCharset(charset));
    }

    public static List<String> readLines(File file, Charset charset) {
        return Files.readAllLines(file.toPath(), Charsets.toCharset(charset));
    }

    private static void requireAbsent(File file, String str) throws FileExistsException {
        if (file.exists()) {
            throw new FileExistsException(String.format("File element in parameter '%s' already exists: '%s'", str, file));
        }
    }

    private static void requireCanonicalPathsNotEquals(File file, File file2) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        if (canonicalPath.equals(file2.getCanonicalPath())) {
            C2467b.m3832v("File canonical paths are equal: '%s' (file1='%s', file2='%s')", new Object[]{canonicalPath, file, file2});
        }
    }

    private static void requireDirectoryExists(File file, String str) throws FileNotFoundException {
        Objects.requireNonNull(file, str);
        if (file.isDirectory()) {
            return;
        }
        if (file.exists()) {
            C0674b.m851r("Parameter '", str, "' is not a directory: '", file, "'");
        } else {
            C2786e.m4352b(file, "Directory '", "' does not exist.");
        }
    }

    private static void requireDirectoryIfExists(File file, String str) {
        Objects.requireNonNull(file, str);
        if (!file.exists() || file.isDirectory()) {
            return;
        }
        C0674b.m851r("Parameter '", str, "' is not a directory: '", file, "'");
    }

    private static boolean setTimes(File file, File file2) {
        Objects.requireNonNull(file, "sourceFile");
        Objects.requireNonNull(file2, "targetFile");
        try {
            BasicFileAttributes attributes = Files.readAttributes(file.toPath(), (Class<BasicFileAttributes>) AbstractC2124f.m3344f(), new LinkOption[0]);
            AbstractC2124f.m3347i(Files.getFileAttributeView(file2.toPath(), AbstractC2124f.m3363y(), new LinkOption[0])).setTimes(attributes.lastModifiedTime(), attributes.lastAccessTime(), attributes.creationTime());
            return true;
        } catch (IOException unused) {
            return file2.setLastModified(file.lastModified());
        }
    }

    public static long sizeOf(File file) {
        return Uncheck.getAsLong(new C2787f(file, 1));
    }

    public static BigInteger sizeOfAsBigInteger(File file) {
        return (BigInteger) Uncheck.get(new C2787f(file, 4));
    }

    public static long sizeOfDirectory(File file) {
        try {
            requireDirectoryExists(file, "directory");
            return Uncheck.getAsLong(new C2787f(file, 3));
        } catch (FileNotFoundException e) {
            throw new UncheckedIOException(e);
        }
    }

    public static BigInteger sizeOfDirectoryAsBigInteger(File file) {
        try {
            requireDirectoryExists(file, "directory");
            return (BigInteger) Uncheck.get(new C2787f(file, 2));
        } catch (FileNotFoundException e) {
            throw new UncheckedIOException(e);
        }
    }

    public static Stream<File> streamFiles(File file, boolean z9, String... strArr) {
        return PathUtils.walk(file.toPath(), strArr == null ? FileFileFilter.INSTANCE : FileFileFilter.INSTANCE.and(toSuffixFileFilter(strArr)), toMaxDepth(z9), false, FileVisitOption.FOLLOW_LINKS).map(new C2847h());
    }

    public static File toFile(URL url) {
        if (url == null || !isFileProtocol(url)) {
            return null;
        }
        return new File(decodeUrl(url.getFile().replace(IOUtils.DIR_SEPARATOR_UNIX, File.separatorChar)));
    }

    public static File[] toFiles(URL... urlArr) {
        if (IOUtils.length(urlArr) == 0) {
            return EMPTY_FILE_ARRAY;
        }
        File[] fileArr = new File[urlArr.length];
        for (int i10 = 0; i10 < urlArr.length; i10++) {
            URL url = urlArr[i10];
            if (url != null) {
                if (!isFileProtocol(url)) {
                    C0674b.m853t(url, "Can only convert file URL to a File: ");
                    return null;
                }
                fileArr[i10] = toFile(url);
            }
        }
        return fileArr;
    }

    private static List<File> toList(Stream<File> stream) {
        return (List) stream.collect(Collectors.toList());
    }

    private static int toMaxDepth(boolean z9) {
        return z9 ? Integer.MAX_VALUE : 1;
    }

    private static SuffixFileFilter toSuffixFileFilter(String... strArr) {
        return new SuffixFileFilter(toSuffixes(strArr));
    }

    private static String[] toSuffixes(String... strArr) {
        Objects.requireNonNull(strArr, "extensions");
        return (String[]) Stream.of((Object[]) strArr).map(new C2898o()).toArray(new C2917p());
    }

    public static URL[] toURLs(File... fileArr) {
        Objects.requireNonNull(fileArr, "files");
        int length = fileArr.length;
        URL[] urlArr = new URL[length];
        for (int i10 = 0; i10 < length; i10++) {
            urlArr[i10] = fileArr[i10].toURI().toURL();
        }
        return urlArr;
    }

    public static void touch(File file) throws IOException {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        PathUtils.touch(file.toPath());
    }

    private static void validateMoveParameters(File file, File file2) throws FileNotFoundException {
        Objects.requireNonNull(file, "source");
        Objects.requireNonNull(file2, "destination");
        if (file.exists()) {
            return;
        }
        C2786e.m4352b(file, "Source '", "' does not exist");
    }

    public static boolean waitFor(File file, int i10) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return PathUtils.waitFor(file.toPath(), Duration.ofSeconds(i10), PathUtils.EMPTY_LINK_OPTION_ARRAY);
    }

    @Deprecated
    public static void write(File file, CharSequence charSequence) throws IOException {
        write(file, charSequence, Charset.defaultCharset(), false);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr, int i10, int i11, boolean z9) throws IOException {
        OutputStream outputStreamNewOutputStream = newOutputStream(file, z9);
        try {
            outputStreamNewOutputStream.write(bArr, i10, i11);
            outputStreamNewOutputStream.close();
        } catch (Throwable th) {
            if (outputStreamNewOutputStream != null) {
                try {
                    outputStreamNewOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static void writeLines(File file, String str, Collection<?> collection, String str2, boolean z9) throws IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(newOutputStream(file, z9));
        try {
            IOUtils.writeLines(collection, str2, bufferedOutputStream, str);
            bufferedOutputStream.close();
        } catch (Throwable th) {
            try {
                bufferedOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void writeStringToFile(File file, String str, Charset charset, boolean z9) throws IOException {
        OutputStream outputStreamNewOutputStream = newOutputStream(file, z9);
        try {
            IOUtils.write(str, outputStreamNewOutputStream, charset);
            if (outputStreamNewOutputStream != null) {
                outputStreamNewOutputStream.close();
            }
        } catch (Throwable th) {
            if (outputStreamNewOutputStream != null) {
                try {
                    outputStreamNewOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Deprecated
    public static void write(File file, CharSequence charSequence, boolean z9) throws IOException {
        write(file, charSequence, Charset.defaultCharset(), z9);
    }

    public static void write(File file, CharSequence charSequence, Charset charset) throws IOException {
        write(file, charSequence, charset, false);
    }

    public static void write(File file, CharSequence charSequence, Charset charset, boolean z9) throws IOException {
        writeStringToFile(file, Objects.toString(charSequence, null), charset, z9);
    }

    public static void write(File file, CharSequence charSequence, String str) throws IOException {
        write(file, charSequence, str, false);
    }

    @Deprecated
    public static List<String> readLines(File file) {
        return readLines(file, Charset.defaultCharset());
    }

    public static void write(File file, CharSequence charSequence, String str, boolean z9) throws IOException {
        write(file, charSequence, Charsets.toCharset(str), z9);
    }

    public static List<String> readLines(File file, String str) {
        return readLines(file, Charsets.toCharset(str));
    }

    @Deprecated
    public static String readFileToString(File file) {
        return readFileToString(file, Charset.defaultCharset());
    }

    public static String readFileToString(File file, String str) {
        return readFileToString(file, Charsets.toCharset(str));
    }

    public static Iterator<File> iterateFiles(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return listFiles(file, iOFileFilter, iOFileFilter2).iterator();
    }

    public static void copyFileToDirectory(File file, File file2) throws IOException {
        copyFileToDirectory(file, file2, true);
    }

    public static boolean isFileNewer(File file, ChronoLocalDate chronoLocalDate, LocalTime localTime) {
        Objects.requireNonNull(chronoLocalDate, "chronoLocalDate");
        Objects.requireNonNull(localTime, "localTime");
        return isFileNewer(file, (ChronoLocalDateTime<?>) chronoLocalDate.atTime(localTime));
    }

    public static boolean isFileOlder(File file, ChronoLocalDate chronoLocalDate, LocalTime localTime) {
        Objects.requireNonNull(chronoLocalDate, "chronoLocalDate");
        Objects.requireNonNull(localTime, "localTime");
        return isFileOlder(file, (ChronoLocalDateTime<?>) chronoLocalDate.atTime(localTime));
    }

    public static void writeByteArrayToFile(File file, byte[] bArr, boolean z9) throws IOException {
        writeByteArrayToFile(file, bArr, 0, bArr.length, z9);
    }

    public static FileOutputStream openOutputStream(File file) {
        return openOutputStream(file, false);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr, int i10, int i11) throws IOException {
        writeByteArrayToFile(file, bArr, i10, i11, false);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr) throws IOException {
        writeByteArrayToFile(file, bArr, false);
    }

    @Deprecated
    public static void writeStringToFile(File file, String str, boolean z9) throws IOException {
        writeStringToFile(file, str, Charset.defaultCharset(), z9);
    }

    public static boolean isFileNewer(File file, ChronoLocalDate chronoLocalDate) {
        return isFileNewer(file, chronoLocalDate, LocalTime.MAX);
    }

    public static boolean isFileOlder(File file, ChronoLocalDate chronoLocalDate) {
        return isFileOlder(file, chronoLocalDate, LocalTime.MAX);
    }

    public static void writeLines(File file, Collection<?> collection, boolean z9) throws IOException {
        writeLines(file, null, collection, null, z9);
    }

    public static void writeStringToFile(File file, String str, Charset charset) throws IOException {
        writeStringToFile(file, str, charset, false);
    }

    public static boolean isFileNewer(File file, ChronoLocalDateTime<?> chronoLocalDateTime) {
        return isFileNewer(file, chronoLocalDateTime, ZoneId.systemDefault());
    }

    public static boolean isFileOlder(File file, ChronoLocalDateTime<?> chronoLocalDateTime) {
        return isFileOlder(file, chronoLocalDateTime, ZoneId.systemDefault());
    }

    public static void writeLines(File file, Collection<?> collection, String str) throws IOException {
        writeLines(file, null, collection, str, false);
    }

    @Deprecated
    public static void writeStringToFile(File file, String str) throws IOException {
        writeStringToFile(file, str, Charset.defaultCharset(), false);
    }

    public static boolean isFileNewer(File file, ChronoLocalDateTime<?> chronoLocalDateTime, ZoneId zoneId) {
        Objects.requireNonNull(chronoLocalDateTime, "chronoLocalDateTime");
        Objects.requireNonNull(zoneId, "zoneId");
        return isFileNewer(file, (ChronoZonedDateTime<?>) chronoLocalDateTime.atZone(zoneId));
    }

    public static boolean isFileOlder(File file, ChronoLocalDateTime<?> chronoLocalDateTime, ZoneId zoneId) {
        Objects.requireNonNull(chronoLocalDateTime, "chronoLocalDateTime");
        Objects.requireNonNull(zoneId, "zoneId");
        return isFileOlder(file, (ChronoZonedDateTime<?>) chronoLocalDateTime.atZone(zoneId));
    }

    public static void writeLines(File file, Collection<?> collection, String str, boolean z9) throws IOException {
        writeLines(file, null, collection, str, z9);
    }

    public static void writeStringToFile(File file, String str, String str2) throws IOException {
        writeStringToFile(file, str, str2, false);
    }

    public static void writeLines(File file, String str, Collection<?> collection) throws IOException {
        writeLines(file, str, collection, null, false);
    }

    public static void writeStringToFile(File file, String str, String str2, boolean z9) throws IOException {
        writeStringToFile(file, str, Charsets.toCharset(str2), z9);
    }

    public static File getFile(File file, String... strArr) {
        Objects.requireNonNull(file, "directory");
        Objects.requireNonNull(strArr, "names");
        int length = strArr.length;
        int i10 = 0;
        while (i10 < length) {
            File file2 = new File(file, strArr[i10]);
            i10++;
            file = file2;
        }
        return file;
    }

    public static LineIterator lineIterator(File file) {
        return lineIterator(file, null);
    }

    public static void writeLines(File file, String str, Collection<?> collection, boolean z9) throws IOException {
        writeLines(file, str, collection, null, z9);
    }

    public static boolean isFileNewer(File file, ChronoZonedDateTime<?> chronoZonedDateTime) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        Objects.requireNonNull(chronoZonedDateTime, "chronoZonedDateTime");
        return Uncheck.getAsBoolean(new C1548f(13, file, chronoZonedDateTime));
    }

    public static boolean isFileOlder(File file, ChronoZonedDateTime<?> chronoZonedDateTime) {
        Objects.requireNonNull(chronoZonedDateTime, "chronoZonedDateTime");
        return isFileOlder(file, chronoZonedDateTime.toInstant());
    }

    public static void writeLines(File file, String str, Collection<?> collection, String str2) throws IOException {
        writeLines(file, str, collection, str2, false);
    }

    public static void writeLines(File file, Collection<?> collection) throws IOException {
        writeLines(file, null, collection, null, false);
    }

    public static void copyToDirectory(Iterable<File> iterable, File file) throws IOException {
        Objects.requireNonNull(iterable, "sourceIterable");
        Iterator<File> it = iterable.iterator();
        while (it.hasNext()) {
            copyFileToDirectory(it.next(), file);
        }
    }

    public static boolean isFileOlder(File file, Date date) {
        Objects.requireNonNull(date, "date");
        return isFileOlder(file, date.getTime());
    }

    public static boolean isFileNewer(File file, Date date) {
        Objects.requireNonNull(date, "date");
        return isFileNewer(file, date.getTime());
    }

    public static boolean isFileOlder(File file, File file2) {
        return Uncheck.getAsBoolean(new C2892m(file, file2, 1));
    }

    public static boolean isFileNewer(File file, File file2) {
        return Uncheck.getAsBoolean(new C2892m(file, file2, 0));
    }

    public static boolean isFileOlder(File file, FileTime fileTime) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return PathUtils.isOlder(file.toPath(), fileTime, new LinkOption[0]);
    }

    public static boolean isFileNewer(File file, FileTime fileTime) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return PathUtils.isNewer(file.toPath(), fileTime, new LinkOption[0]);
    }

    public static boolean isFileOlder(File file, Instant instant) {
        Objects.requireNonNull(instant, "instant");
        return Uncheck.getAsBoolean(new C2918q(file, instant, 0));
    }

    public static boolean isFileNewer(File file, Instant instant) {
        Objects.requireNonNull(instant, "instant");
        return Uncheck.getAsBoolean(new C2918q(file, instant, 1));
    }

    public static boolean isFileOlder(File file, long j10) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return Uncheck.getAsBoolean(new C2891l(file, j10, 1));
    }

    public static boolean isFileNewer(File file, long j10) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return Uncheck.getAsBoolean(new C2891l(file, j10, 0));
    }

    public static boolean isFileOlder(File file, OffsetDateTime offsetDateTime) {
        Objects.requireNonNull(offsetDateTime, "offsetDateTime");
        return isFileOlder(file, offsetDateTime.toInstant());
    }

    public static boolean isFileNewer(File file, OffsetDateTime offsetDateTime) {
        Objects.requireNonNull(offsetDateTime, "offsetDateTime");
        return isFileNewer(file, offsetDateTime.toInstant());
    }

    public static void moveFile(File file, File file2) throws IOException {
        moveFile(file, file2, StandardCopyOption.COPY_ATTRIBUTES);
    }

    public static Collection<File> listFiles(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return toList(((AccumulatorPathVisitor) Uncheck.apply(new C2846g(iOFileFilter, iOFileFilter2, 0), file)).getFileList().stream().map(new C2847h()));
    }

    private static File[] listFiles(File file, FileFilter fileFilter) throws IOException {
        requireDirectoryExists(file, "directory");
        File[] fileArrListFiles = file.listFiles(fileFilter);
        if (fileArrListFiles != null) {
            return fileArrListFiles;
        }
        C2786e.m4354f(file, "Unknown I/O error listing contents of directory: ");
        return null;
    }

    public static void copyURLToFile(URL url, File file) throws IOException {
        Path path = file.toPath();
        PathUtils.createParentDirectories(path, new FileAttribute[0]);
        Objects.requireNonNull(url);
        PathUtils.copy(new C2919r(0, url), path, StandardCopyOption.REPLACE_EXISTING);
    }

    public static Collection<File> listFiles(File file, String[] strArr, boolean z9) {
        return listFiles(file, new ArrayList(), z9, strArr != null ? toSuffixFileFilter(strArr) : TrueFileFilter.INSTANCE);
    }

    public static void copyFile(File file, File file2, boolean z9) throws IOException {
        copyFile(file, file2, z9, StandardCopyOption.REPLACE_EXISTING);
    }

    public static void copyFile(File file, File file2) throws IOException {
        copyFile(file, file2, StandardCopyOption.REPLACE_EXISTING);
    }

    public static void copyFile(File file, File file2, CopyOption... copyOptionArr) throws IOException {
        copyFile(file, file2, true, copyOptionArr);
    }

    public static long copyFile(File file, OutputStream outputStream) throws IOException {
        InputStream inputStreamNewInputStream = Files.newInputStream(file.toPath(), new OpenOption[0]);
        try {
            long jCopyLarge = IOUtils.copyLarge(inputStreamNewInputStream, outputStream);
            if (inputStreamNewInputStream != null) {
                inputStreamNewInputStream.close();
            }
            return jCopyLarge;
        } catch (Throwable th) {
            if (inputStreamNewInputStream != null) {
                try {
                    inputStreamNewInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static void copyDirectory(File file, File file2, boolean z9) throws IOException {
        copyDirectory(file, file2, null, z9);
    }

    public static void copyDirectory(File file, File file2, FileFilter fileFilter) throws IOException {
        copyDirectory(file, file2, fileFilter, true);
    }

    public static void copyDirectory(File file, File file2, FileFilter fileFilter, boolean z9) throws IOException {
        copyDirectory(file, file2, fileFilter, z9, StandardCopyOption.REPLACE_EXISTING, LinkOption.NOFOLLOW_LINKS);
    }

    public static void copyDirectory(File file, File file2) throws IOException {
        copyDirectory(file, file2, true);
    }

    public static void forceDelete(File file) throws IOException {
        forceDelete(file, true);
    }

    public static String byteCountToDisplaySize(long j10) {
        return byteCountToDisplaySize(BigInteger.valueOf(j10));
    }

    public static String byteCountToDisplaySize(Number number) {
        return byteCountToDisplaySize(number.longValue());
    }
}
