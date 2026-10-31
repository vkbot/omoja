package org.apache.commons.io;

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
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
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
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import org.apache.commons.io.file.AccumulatorPathVisitor;
import org.apache.commons.io.file.AccumulatorPathVisitor$Builder;
import org.apache.commons.io.file.Counters;
import org.apache.commons.io.file.Counters$PathCounters;
import org.apache.commons.io.file.PathUtils;
import org.apache.commons.io.file.StandardDeleteOption;
import org.apache.commons.io.filefilter.FileEqualsFileFilter;
import org.apache.commons.io.filefilter.FileFileFilter;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.apache.commons.io.function.IOConsumer;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public FileUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Stream a(File file, boolean z, String[] strArr) {
        return lambda$iterateFiles$8(file, z, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean b(File file, long j) {
        return lambda$isFileOlder$7(file, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FileVisitResult c(Path path, IOException iOException) {
        return lambda$listAccumulate$9(path, iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void checkExists(File file, boolean z) throws FileNotFoundException {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        if (z && !file.exists() && !isSymlink(file)) {
            throw new FileNotFoundException(file.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void checkFileExists(File file, String str) {
        Objects.requireNonNull(file, str);
        if (file.isFile()) {
            return;
        }
        if (file.exists()) {
            androidx.navigation.b.v("Parameter '", str, "' is not a file: ", file);
        } else {
            if (kotlin.io.path.a.u(c5.h.i(file))) {
                return;
            }
            e.b(file, "Source '", "' does not exist");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static File checkIsFile(File file, String str) {
        if (file.isFile()) {
            return file;
        }
        n0.b.v("Parameter '%s' is not a file: %s", new Object[]{str, file});
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Checksum checksum(File file, Checksum checksum) throws IOException {
        checkFileExists(file, PROTOCOL_FILE);
        Objects.requireNonNull(checksum, "checksum");
        CheckedInputStream checkedInputStream = new CheckedInputStream(kotlin.io.path.f.e(c5.h.i(file), new OpenOption[0]), checksum);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long checksumCRC32(File file) {
        return checksum(file, new CRC32()).getValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void cleanDirectory(File file) {
        IOConsumer.forAll(new s(1), listFiles(file, null));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void cleanDirectoryOnExit(File file) {
        IOConsumer.forAll(new s(0), listFiles(file, null));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        return PathUtils.fileContentEquals(c5.h.i(file), c5.h.i(file2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        InputStreamReader inputStreamReader = new InputStreamReader(kotlin.io.path.f.e(c5.h.i(file), new OpenOption[0]), charset);
        try {
            InputStreamReader inputStreamReader2 = new InputStreamReader(kotlin.io.path.f.e(c5.h.i(file2), new OpenOption[0]), charset);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File[] convertFileCollectionToFileArray(Collection<File> collection) {
        return (File[]) collection.toArray(EMPTY_FILE_ARRAY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:10:0x0048  */
    public static void copyDirectory(File file, File file2, FileFilter fileFilter, boolean z, CopyOption... copyOptionArr) throws IOException {
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
        doCopyDirectory(file, file2, fileFilter, arrayList, z, copyOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void copyDirectoryToDirectory(File file, File file2) throws IOException {
        Objects.requireNonNull(file, "sourceDir");
        requireDirectoryIfExists(file2, "destinationDir");
        copyDirectory(file, new File(file2, file.getName()), true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void copyFile(File file, File file2, boolean z, CopyOption... copyOptionArr) throws IOException {
        Objects.requireNonNull(file2, "destination");
        checkFileExists(file, "srcFile");
        requireCanonicalPathsNotEquals(file, file2);
        createParentDirectories(file2);
        if (file2.exists()) {
            checkFileExists(file2, "destFile");
        }
        Path pathI = c5.h.i(file);
        kotlin.io.path.f.u(pathI, c5.h.i(file2), copyOptionArr);
        if (!z || kotlin.io.path.a.u(pathI) || setTimes(file, file2)) {
            return;
        }
        n0.b.A("Cannot set the file time.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void copyFileToDirectory(File file, File file2, boolean z) throws IOException {
        Objects.requireNonNull(file, "sourceFile");
        requireDirectoryIfExists(file2, "destinationDir");
        copyFile(file, new File(file2, file.getName()), z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void copyToDirectory(File file, File file2) throws IOException {
        Objects.requireNonNull(file, "sourceFile");
        if (file.isFile()) {
            copyFileToDirectory(file, file2);
        } else if (file.isDirectory()) {
            copyDirectoryToDirectory(file, file2);
        } else {
            e.b(file, "The source ", " does not exist");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void copyURLToFile(URL url, File file, int i, int i2) {
        CloseableURLConnection closeableURLConnectionOpen = CloseableURLConnection.open(url);
        try {
            closeableURLConnectionOpen.setConnectTimeout(i);
            closeableURLConnectionOpen.setReadTimeout(i2);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File createParentDirectories(File file) {
        return mkdirs(getParentFile(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File current() {
        return ai.onnxruntime.c.r(PathUtils.current());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ BigInteger d(File file) {
        return lambda$sizeOfAsBigInteger$16(file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String decodeUrl(String str) {
        int i;
        if (str == null || str.indexOf(37) < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        int i2 = 0;
        while (i2 < length) {
            if (str.charAt(i2) == '%') {
                while (true) {
                    i = i2 + 3;
                    try {
                        try {
                            byteBufferAllocate.put((byte) Integer.parseInt(str.substring(i2 + 1, i), 16));
                            if (i >= length) {
                                break;
                            }
                            try {
                                if (str.charAt(i) != '%') {
                                    break;
                                }
                                i2 = i;
                            } catch (IndexOutOfBoundsException | NumberFormatException unused) {
                                i2 = i;
                                if (byteBufferAllocate.position() > 0) {
                                    byteBufferAllocate.flip();
                                    sb.append(StandardCharsets.UTF_8.decode(byteBufferAllocate).toString());
                                    byteBufferAllocate.clear();
                                }
                                sb.append(str.charAt(i2));
                                i2++;
                            }
                        } catch (IndexOutOfBoundsException | NumberFormatException unused2) {
                        }
                    } catch (Throwable th) {
                        if (byteBufferAllocate.position() > 0) {
                            byteBufferAllocate.flip();
                            sb.append(StandardCharsets.UTF_8.decode(byteBufferAllocate).toString());
                            byteBufferAllocate.clear();
                        }
                        throw th;
                    }
                }
                if (byteBufferAllocate.position() > 0) {
                    byteBufferAllocate.flip();
                    sb.append(StandardCharsets.UTF_8.decode(byteBufferAllocate).toString());
                    byteBufferAllocate.clear();
                }
                i2 = i;
            }
            sb.append(str.charAt(i2));
            i2++;
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File delete(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        kotlin.io.path.a.r(c5.h.i(file));
        return file;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void deleteDirectory(File file) {
        Objects.requireNonNull(file, "directory");
        if (file.exists()) {
            if (!isSymlink(file)) {
                cleanDirectory(file);
            }
            delete(file);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void deleteDirectoryOnExit(File file) {
        if (file.exists()) {
            file.deleteOnExit();
            if (isSymlink(file)) {
                return;
            }
            cleanDirectoryOnExit(file);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean directoryContains(File file, File file2) {
        requireDirectoryExists(file, "directory");
        if (file2 == null || !file2.exists()) {
            return false;
        }
        return FilenameUtils.directoryContains(file.getCanonicalPath(), file2.getCanonicalPath());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void doCopyDirectory(File file, File file2, FileFilter fileFilter, List<String> list, boolean z, CopyOption... copyOptionArr) throws IOException {
        FileFilter fileFilter2;
        List<String> list2;
        boolean z2;
        CopyOption[] copyOptionArr2;
        File[] fileArrListFiles = listFiles(file, fileFilter);
        requireDirectoryIfExists(file2, "destDir");
        mkdirs(file2);
        int length = fileArrListFiles.length;
        int i = 0;
        while (i < length) {
            File file3 = fileArrListFiles[i];
            File file4 = new File(file2, file3.getName());
            if (list != null && list.contains(file3.getCanonicalPath())) {
                fileFilter2 = fileFilter;
                list2 = list;
                z2 = z;
                copyOptionArr2 = copyOptionArr;
            } else if (file3.isDirectory()) {
                fileFilter2 = fileFilter;
                list2 = list;
                z2 = z;
                copyOptionArr2 = copyOptionArr;
                doCopyDirectory(file3, file4, fileFilter2, list2, z2, copyOptionArr2);
            } else {
                fileFilter2 = fileFilter;
                list2 = list;
                z2 = z;
                copyOptionArr2 = copyOptionArr;
                copyFile(file3, file4, z2, copyOptionArr2);
            }
            i++;
            fileFilter = fileFilter2;
            list = list2;
            z = z2;
            copyOptionArr = copyOptionArr2;
        }
        if (z) {
            setTimes(file, file2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void e(File file) throws IOException {
        lambda$cleanDirectory$0(file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ long f(File file) {
        return lambda$sizeOf$15(file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void forceDelete(File file, boolean z) throws IOException {
        checkExists(file, z);
        try {
            Counters$PathCounters counters$PathCountersDelete = PathUtils.delete(file.toPath(), PathUtils.EMPTY_LINK_OPTION_ARRAY, StandardDeleteOption.OVERRIDE_READ_ONLY);
            if (counters$PathCountersDelete.getFileCounter().get() >= 1 || counters$PathCountersDelete.getDirectoryCounter().get() >= 1) {
                return;
            }
            e.a(file, "File does not exist: ");
        } catch (NoSuchFileException e) {
            FileNotFoundException fileNotFoundException = new FileNotFoundException("Cannot delete file: " + file);
            fileNotFoundException.initCause(e);
            throw fileNotFoundException;
        } catch (IOException e2) {
            throw new IOException("Cannot delete file: " + file, e2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void forceDeleteOnExit(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        if (file.isDirectory()) {
            deleteDirectoryOnExit(file);
        } else {
            file.deleteOnExit();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void forceMkdir(File file) {
        mkdirs(file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void forceMkdirParent(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        forceMkdir(getParentFile(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void g(boolean z, List list, FilenameFilter filenameFilter, File file, List list2, File file2) {
        lambda$listFiles$11(z, list, filenameFilter, file, list2, file2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File getFile(String... strArr) {
        Objects.requireNonNull(strArr, "names");
        File file = null;
        for (String str : strArr) {
            file = file == null ? new File(str) : new File(file, str);
        }
        return file;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static File getParentFile(File file) {
        if (file == null) {
            return null;
        }
        return file.getParentFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File getTempDirectory() {
        return new File(getTempDirectoryPath());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getTempDirectoryPath() {
        return System.getProperty("java.io.tmpdir");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File getUserDirectory() {
        return new File(getUserDirectoryPath());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getUserDirectoryPath() {
        return System.getProperty("user.home");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ BigInteger h(File file) {
        return lambda$sizeOfDirectoryAsBigInteger$18(file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ long i(File file) {
        return lambda$sizeOfDirectory$17(file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isDirectory(File file, LinkOption... linkOptionArr) {
        return file != null && kotlin.io.path.f.D(c5.h.i(file), linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isEmptyDirectory(File file) {
        return PathUtils.isEmptyDirectory(c5.h.i(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isFileNewer(File file, ChronoLocalDate chronoLocalDate, OffsetTime offsetTime) {
        Objects.requireNonNull(chronoLocalDate, "chronoLocalDate");
        Objects.requireNonNull(offsetTime, "offsetTime");
        return isFileNewer(file, (ChronoLocalDateTime<?>) d.q(chronoLocalDate, kotlin.io.path.f.r(offsetTime)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isFileOlder(File file, ChronoLocalDate chronoLocalDate, OffsetTime offsetTime) {
        Objects.requireNonNull(chronoLocalDate, "chronoLocalDate");
        Objects.requireNonNull(offsetTime, "offsetTime");
        return isFileOlder(file, (ChronoLocalDateTime<?>) d.q(chronoLocalDate, kotlin.io.path.f.r(offsetTime)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isFileProtocol(URL url) {
        return PROTOCOL_FILE.equalsIgnoreCase(url.getProtocol());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isRegularFile(File file, LinkOption... linkOptionArr) {
        return file != null && kotlin.io.path.f.B(c5.h.i(file), linkOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isSymlink(File file) {
        return file != null && kotlin.io.path.a.u(c5.h.i(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.String[] */
    /* JADX WARN: Multi-variable type inference failed */
    public static Iterator<File> iterateFiles(File file, String[] strArr, boolean z) {
        return StreamIterator.iterator((Stream) Uncheck.get(new i(file, z, strArr, 0)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Iterator<File> iterateFilesAndDirs(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return listFilesAndDirs(file, iOFileFilter, iOFileFilter2).iterator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean j(File file, Instant instant) {
        return lambda$isFileOlder$6(file, instant);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean k(File file, Instant instant) {
        return lambda$isFileNewer$3(file, instant);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String l(String str) {
        return lambda$toSuffixes$19(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$cleanDirectory$0(File file) throws IOException {
        forceDelete(file, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$isFileNewer$1(File file, ChronoZonedDateTime chronoZonedDateTime) {
        return PathUtils.isNewer(c5.h.i(file), (ChronoZonedDateTime<?>) chronoZonedDateTime, new LinkOption[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$isFileNewer$2(File file, File file2) {
        return PathUtils.isNewer(c5.h.i(file), c5.h.i(file2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$isFileNewer$3(File file, Instant instant) {
        return PathUtils.isNewer(c5.h.i(file), instant, new LinkOption[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$isFileNewer$4(File file, long j) {
        return PathUtils.isNewer(c5.h.i(file), j, new LinkOption[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$isFileOlder$5(File file, File file2) {
        return PathUtils.isOlder(c5.h.i(file), c5.h.i(file2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$isFileOlder$6(File file, Instant instant) {
        return PathUtils.isOlder(c5.h.i(file), instant, new LinkOption[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$isFileOlder$7(File file, long j) {
        return PathUtils.isOlder(c5.h.i(file), j, new LinkOption[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Stream lambda$iterateFiles$8(File file, boolean z, String[] strArr) {
        return streamFiles(file, z, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ FileVisitResult lambda$listAccumulate$9(Path path, IOException iOException) {
        return kotlin.io.path.a.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ AccumulatorPathVisitor lambda$listFiles$10(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, File file) {
        return listAccumulate(file, FileFileFilter.INSTANCE.and(iOFileFilter), iOFileFilter2, kotlin.internal.jdk8.a.j());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$listFiles$11(boolean z, List list, FilenameFilter filenameFilter, File file, List list2, File file2) {
        if (z && file2.isDirectory()) {
            list.add(file2);
        } else if (file2.isFile() && filenameFilter.accept(file, file2.getName())) {
            list2.add(file2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$listFiles$12(List list, FilenameFilter filenameFilter, File file) {
        listFiles(file, list, true, filenameFilter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ AccumulatorPathVisitor lambda$listFilesAndDirs$13(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, File file) {
        return listAccumulate(file, iOFileFilter, iOFileFilter2, kotlin.internal.jdk8.a.j());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ InputStream lambda$readFileToString$14(File file) {
        return kotlin.io.path.f.e(c5.h.i(file), new OpenOption[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ long lambda$sizeOf$15(File file) {
        return PathUtils.sizeOf(c5.h.i(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ BigInteger lambda$sizeOfAsBigInteger$16(File file) {
        return PathUtils.sizeOfAsBigInteger(c5.h.i(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ long lambda$sizeOfDirectory$17(File file) {
        return PathUtils.sizeOfDirectory(c5.h.i(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ BigInteger lambda$sizeOfDirectoryAsBigInteger$18(File file) {
        return PathUtils.sizeOfDirectoryAsBigInteger(c5.h.i(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ String lambda$toSuffixes$19(String str) {
        return str.charAt(0) == '.' ? str : ".".concat(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ String[] lambda$toSuffixes$20(int i) {
        return new String[i];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long lastModified(File file) {
        return kotlin.io.path.f.b(lastModifiedFileTime(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileTime lastModifiedFileTime(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return kotlin.io.path.f.l(c5.h.i(file), new LinkOption[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long lastModifiedUnchecked(File file) {
        return ((Long) Uncheck.apply(new e(), file)).longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static LineIterator lineIterator(File file, String str) throws Exception {
        InputStream inputStreamE = null;
        try {
            inputStreamE = kotlin.io.path.f.e(c5.h.i(file), new OpenOption[0]);
            return IOUtils.lineIterator(inputStreamE, str);
        } catch (IOException | RuntimeException e) {
            IOUtils.closeQuietly(inputStreamE, new t(e, 0));
            throw e;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static AccumulatorPathVisitor listAccumulate(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, FileVisitOption... fileVisitOptionArr) {
        boolean z = iOFileFilter2 != null;
        IOFileFilter fileEqualsFileFilter = new FileEqualsFileFilter(file);
        if (z) {
            fileEqualsFileFilter = fileEqualsFileFilter.or(iOFileFilter2);
        }
        AccumulatorPathVisitor accumulatorPathVisitor = ((AccumulatorPathVisitor$Builder) ((AccumulatorPathVisitor$Builder) AccumulatorPathVisitor.builder().setPathCounters(Counters.noopPathCounters()).setFileFilter(iOFileFilter).setDirectoryFilter(fileEqualsFileFilter)).setVisitFileFailedFunction(new n())).get();
        HashSet hashSet = new HashSet();
        if (fileVisitOptionArr != null) {
            Collections.addAll(hashSet, fileVisitOptionArr);
        }
        kotlin.io.path.f.v(c5.h.i(file), hashSet, toMaxDepth(z), accumulatorPathVisitor);
        return accumulatorPathVisitor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static List<File> listFiles(File file, List<File> list, boolean z, FilenameFilter filenameFilter) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return list;
        }
        ArrayList arrayList = z ? new ArrayList() : null;
        Arrays.stream(fileArrListFiles).forEach(new j(z, arrayList, filenameFilter, file, list));
        if (!z) {
            return list;
        }
        arrayList.forEach(new k(0, list, filenameFilter));
        return list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Collection<File> listFilesAndDirs(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        AccumulatorPathVisitor accumulatorPathVisitor = (AccumulatorPathVisitor) Uncheck.apply(new g(iOFileFilter, iOFileFilter2, 1), file);
        List<Path> fileList = accumulatorPathVisitor.getFileList();
        fileList.addAll(accumulatorPathVisitor.getDirList());
        return toList(fileList.stream().map(new h()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String[] m(int i) {
        return lambda$toSuffixes$20(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static File mkdirs(File file) {
        if (file == null || file.mkdirs() || file.isDirectory()) {
            return file;
        }
        androidx.navigation.b.u(file, "Cannot create directory '", "'.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void moveDirectory(File file, File file2) throws IOException {
        Objects.requireNonNull(file2, "destination");
        requireDirectoryExists(file, "srcDir");
        requireAbsent(file2, "destDir");
        if (file.renameTo(file2)) {
            return;
        }
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath() + File.separator)) {
            ai.onnxruntime.b.m("Cannot move directory: ", file, " to a subdirectory of itself: ", file2);
            return;
        }
        copyDirectory(file, file2);
        deleteDirectory(file);
        if (file.exists()) {
            androidx.navigation.b.i("Failed to delete original directory '", file, "' after copy to '", file2, "'");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void moveDirectoryToDirectory(File file, File file2, boolean z) throws IOException {
        validateMoveParameters(file, file2);
        if (!file2.isDirectory()) {
            if (file2.exists()) {
                androidx.navigation.b.u(file2, "Destination '", "' is not a directory");
                return;
            } else {
                if (!z) {
                    e.b(file2, "Destination directory '", "' does not exist [createDestDir=false]");
                    return;
                }
                mkdirs(file2);
            }
        }
        moveDirectory(file, new File(file2, file.getName()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        androidx.navigation.b.i("Failed to delete original file '", file, "' after copy to '", file2, "'");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void moveFileToDirectory(File file, File file2, boolean z) throws IOException {
        validateMoveParameters(file, file2);
        if (!file2.exists() && z) {
            mkdirs(file2);
        }
        requireDirectoryExists(file2, "destDir");
        moveFile(file, new File(file2, file.getName()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void moveToDirectory(File file, File file2, boolean z) throws IOException {
        validateMoveParameters(file, file2);
        if (file.isDirectory()) {
            moveDirectoryToDirectory(file, file2, z);
        } else {
            moveFileToDirectory(file, file2, z);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void n(List list, FilenameFilter filenameFilter, File file) {
        lambda$listFiles$12(list, filenameFilter, file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OutputStream newOutputStream(File file, boolean z) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return PathUtils.newOutputStream(c5.h.i(file), z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ InputStream o(File file) {
        return lambda$readFileToString$14(file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileInputStream openInputStream(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return new FileInputStream(file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileOutputStream openOutputStream(File file, boolean z) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        if (file.exists()) {
            checkIsFile(file, PROTOCOL_FILE);
        } else {
            createParentDirectories(file);
        }
        return new FileOutputStream(file, z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean p(File file, long j) {
        return lambda$isFileNewer$4(file, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean q(File file, File file2) {
        return lambda$isFileOlder$5(file, file2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean r(File file, File file2) {
        return lambda$isFileNewer$2(file, file2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] readFileToByteArray(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return c5.h.z(c5.h.i(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String readFileToString(File file, Charset charset) {
        return IOUtils.toString(new f(file, 0), Charsets.toCharset(charset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List<String> readLines(File file, Charset charset) {
        return kotlin.internal.jdk8.a.u(c5.h.i(file), Charsets.toCharset(charset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void requireAbsent(File file, String str) throws FileExistsException {
        if (file.exists()) {
            throw new FileExistsException(String.format("File element in parameter '%s' already exists: '%s'", str, file));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void requireCanonicalPathsNotEquals(File file, File file2) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        if (canonicalPath.equals(file2.getCanonicalPath())) {
            n0.b.v("File canonical paths are equal: '%s' (file1='%s', file2='%s')", new Object[]{canonicalPath, file, file2});
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void requireDirectoryExists(File file, String str) {
        Objects.requireNonNull(file, str);
        if (file.isDirectory()) {
            return;
        }
        if (file.exists()) {
            androidx.navigation.b.r("Parameter '", str, "' is not a directory: '", file, "'");
        } else {
            e.b(file, "Directory '", "' does not exist.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void requireDirectoryIfExists(File file, String str) {
        Objects.requireNonNull(file, str);
        if (!file.exists() || file.isDirectory()) {
            return;
        }
        androidx.navigation.b.r("Parameter '", str, "' is not a directory: '", file, "'");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ AccumulatorPathVisitor s(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, File file) {
        return lambda$listFiles$10(iOFileFilter, iOFileFilter2, file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean setTimes(File file, File file2) {
        Objects.requireNonNull(file, "sourceFile");
        Objects.requireNonNull(file2, "targetFile");
        try {
            BasicFileAttributes basicFileAttributesJ = kotlin.io.path.f.j(c5.h.i(file), kotlin.io.path.f.f(), new LinkOption[0]);
            kotlin.io.path.f.w(kotlin.io.path.f.i(kotlin.io.path.f.k(c5.h.i(file2), kotlin.io.path.f.y(), new LinkOption[0])), kotlin.io.path.f.m(basicFileAttributesJ), kotlin.io.path.f.A(basicFileAttributesJ), kotlin.io.path.f.C(basicFileAttributesJ));
            return true;
        } catch (IOException unused) {
            return file2.setLastModified(file.lastModified());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long sizeOf(File file) {
        return Uncheck.getAsLong(new f(file, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BigInteger sizeOfAsBigInteger(File file) {
        return (BigInteger) Uncheck.get(new f(file, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long sizeOfDirectory(File file) {
        try {
            requireDirectoryExists(file, "directory");
            return Uncheck.getAsLong(new f(file, 3));
        } catch (FileNotFoundException e) {
            throw new UncheckedIOException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BigInteger sizeOfDirectoryAsBigInteger(File file) {
        try {
            requireDirectoryExists(file, "directory");
            return (BigInteger) Uncheck.get(new f(file, 2));
        } catch (FileNotFoundException e) {
            throw new UncheckedIOException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Type inference failed for r3v3. Raw type applied. Possible types: java.util.stream.Stream<R>, java.util.stream.Stream<java.io.File> */
    public static Stream<File> streamFiles(File file, boolean z, String... strArr) {
        return PathUtils.walk(c5.h.i(file), strArr == null ? FileFileFilter.INSTANCE : FileFileFilter.INSTANCE.and(toSuffixFileFilter(strArr)), toMaxDepth(z), false, kotlin.internal.jdk8.a.j()).map(new h());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean t(File file, ChronoZonedDateTime chronoZonedDateTime) {
        return lambda$isFileNewer$1(file, chronoZonedDateTime);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File toFile(URL url) {
        if (url == null || !isFileProtocol(url)) {
            return null;
        }
        return new File(decodeUrl(url.getFile().replace(IOUtils.DIR_SEPARATOR_UNIX, File.separatorChar)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File[] toFiles(URL... urlArr) {
        if (IOUtils.length(urlArr) == 0) {
            return EMPTY_FILE_ARRAY;
        }
        File[] fileArr = new File[urlArr.length];
        for (int i = 0; i < urlArr.length; i++) {
            URL url = urlArr[i];
            if (url != null) {
                if (!isFileProtocol(url)) {
                    androidx.navigation.b.t(url, "Can only convert file URL to a File: ");
                    return null;
                }
                fileArr[i] = toFile(url);
            }
        }
        return fileArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static List<File> toList(Stream<File> stream) {
        return (List) stream.collect(Collectors.toList());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int toMaxDepth(boolean z) {
        return z ? Integer.MAX_VALUE : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static SuffixFileFilter toSuffixFileFilter(String... strArr) {
        return new SuffixFileFilter(toSuffixes(strArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String[] toSuffixes(String... strArr) {
        Objects.requireNonNull(strArr, "extensions");
        return (String[]) Stream.of((Object[]) strArr).map(new o()).toArray(new p());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static URL[] toURLs(File... fileArr) {
        Objects.requireNonNull(fileArr, "files");
        int length = fileArr.length;
        URL[] urlArr = new URL[length];
        for (int i = 0; i < length; i++) {
            urlArr[i] = fileArr[i].toURI().toURL();
        }
        return urlArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void touch(File file) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        PathUtils.touch(c5.h.i(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ AccumulatorPathVisitor u(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, File file) {
        return lambda$listFilesAndDirs$13(iOFileFilter, iOFileFilter2, file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void validateMoveParameters(File file, File file2) {
        Objects.requireNonNull(file, "source");
        Objects.requireNonNull(file2, "destination");
        if (file.exists()) {
            return;
        }
        e.b(file, "Source '", "' does not exist");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean waitFor(File file, int i) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return PathUtils.waitFor(c5.h.i(file), kotlin.io.path.f.n(i), PathUtils.EMPTY_LINK_OPTION_ARRAY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static void write(File file, CharSequence charSequence) throws IOException {
        write(file, charSequence, Charset.defaultCharset(), false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void writeByteArrayToFile(File file, byte[] bArr, int i, int i2, boolean z) throws IOException {
        OutputStream outputStreamNewOutputStream = newOutputStream(file, z);
        try {
            outputStreamNewOutputStream.write(bArr, i, i2);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void writeLines(File file, String str, Collection<?> collection, String str2, boolean z) throws IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(newOutputStream(file, z));
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void writeStringToFile(File file, String str, Charset charset, boolean z) throws IOException {
        OutputStream outputStreamNewOutputStream = newOutputStream(file, z);
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
    public static void write(File file, CharSequence charSequence, boolean z) throws IOException {
        write(file, charSequence, Charset.defaultCharset(), z);
    }

    public static void write(File file, CharSequence charSequence, Charset charset) throws IOException {
        write(file, charSequence, charset, false);
    }

    public static void write(File file, CharSequence charSequence, Charset charset, boolean z) throws IOException {
        writeStringToFile(file, Objects.toString(charSequence, null), charset, z);
    }

    public static void write(File file, CharSequence charSequence, String str) throws IOException {
        write(file, charSequence, str, false);
    }

    @Deprecated
    public static List<String> readLines(File file) {
        return readLines(file, Charset.defaultCharset());
    }

    public static void write(File file, CharSequence charSequence, String str, boolean z) throws IOException {
        write(file, charSequence, Charsets.toCharset(str), z);
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
        return isFileNewer(file, (ChronoLocalDateTime<?>) d.q(chronoLocalDate, localTime));
    }

    public static boolean isFileOlder(File file, ChronoLocalDate chronoLocalDate, LocalTime localTime) {
        Objects.requireNonNull(chronoLocalDate, "chronoLocalDate");
        Objects.requireNonNull(localTime, "localTime");
        return isFileOlder(file, (ChronoLocalDateTime<?>) d.q(chronoLocalDate, localTime));
    }

    public static void writeByteArrayToFile(File file, byte[] bArr, boolean z) throws IOException {
        writeByteArrayToFile(file, bArr, 0, bArr.length, z);
    }

    public static FileOutputStream openOutputStream(File file) {
        return openOutputStream(file, false);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr, int i, int i2) throws IOException {
        writeByteArrayToFile(file, bArr, i, i2, false);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr) throws IOException {
        writeByteArrayToFile(file, bArr, false);
    }

    @Deprecated
    public static void writeStringToFile(File file, String str, boolean z) throws IOException {
        writeStringToFile(file, str, Charset.defaultCharset(), z);
    }

    public static boolean isFileNewer(File file, ChronoLocalDate chronoLocalDate) {
        return isFileNewer(file, chronoLocalDate, kotlin.io.path.f.q());
    }

    public static boolean isFileOlder(File file, ChronoLocalDate chronoLocalDate) {
        return isFileOlder(file, chronoLocalDate, kotlin.io.path.f.q());
    }

    public static void writeLines(File file, Collection<?> collection, boolean z) throws IOException {
        writeLines(file, null, collection, null, z);
    }

    public static void writeStringToFile(File file, String str, Charset charset) throws IOException {
        writeStringToFile(file, str, charset, false);
    }

    public static boolean isFileNewer(File file, ChronoLocalDateTime<?> chronoLocalDateTime) {
        return isFileNewer(file, chronoLocalDateTime, kotlin.io.path.f.s());
    }

    public static boolean isFileOlder(File file, ChronoLocalDateTime<?> chronoLocalDateTime) {
        return isFileOlder(file, chronoLocalDateTime, kotlin.io.path.f.s());
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
        return isFileNewer(file, (ChronoZonedDateTime<?>) kotlin.io.path.f.t(chronoLocalDateTime, zoneId));
    }

    public static boolean isFileOlder(File file, ChronoLocalDateTime<?> chronoLocalDateTime, ZoneId zoneId) {
        Objects.requireNonNull(chronoLocalDateTime, "chronoLocalDateTime");
        Objects.requireNonNull(zoneId, "zoneId");
        return isFileOlder(file, (ChronoZonedDateTime<?>) kotlin.io.path.f.t(chronoLocalDateTime, zoneId));
    }

    public static void writeLines(File file, Collection<?> collection, String str, boolean z) throws IOException {
        writeLines(file, null, collection, str, z);
    }

    public static void writeStringToFile(File file, String str, String str2) throws IOException {
        writeStringToFile(file, str, str2, false);
    }

    public static void writeLines(File file, String str, Collection<?> collection) throws IOException {
        writeLines(file, str, collection, null, false);
    }

    public static void writeStringToFile(File file, String str, String str2, boolean z) throws IOException {
        writeStringToFile(file, str, Charsets.toCharset(str2), z);
    }

    public static File getFile(File file, String... strArr) {
        Objects.requireNonNull(file, "directory");
        Objects.requireNonNull(strArr, "names");
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            File file2 = new File(file, strArr[i]);
            i++;
            file = file2;
        }
        return file;
    }

    public static LineIterator lineIterator(File file) {
        return lineIterator(file, null);
    }

    public static void writeLines(File file, String str, Collection<?> collection, boolean z) throws IOException {
        writeLines(file, str, collection, null, z);
    }

    public static boolean isFileNewer(File file, ChronoZonedDateTime<?> chronoZonedDateTime) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        Objects.requireNonNull(chronoZonedDateTime, "chronoZonedDateTime");
        return Uncheck.getAsBoolean(new f5.f(13, file, chronoZonedDateTime));
    }

    public static boolean isFileOlder(File file, ChronoZonedDateTime<?> chronoZonedDateTime) {
        Objects.requireNonNull(chronoZonedDateTime, "chronoZonedDateTime");
        return isFileOlder(file, kotlin.io.path.f.p(chronoZonedDateTime));
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
        return Uncheck.getAsBoolean(new m(file, file2, 1));
    }

    public static boolean isFileNewer(File file, File file2) {
        return Uncheck.getAsBoolean(new m(file, file2, 0));
    }

    public static boolean isFileOlder(File file, FileTime fileTime) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return PathUtils.isOlder(c5.h.i(file), fileTime, new LinkOption[0]);
    }

    public static boolean isFileNewer(File file, FileTime fileTime) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return PathUtils.isNewer(c5.h.i(file), fileTime, new LinkOption[0]);
    }

    public static boolean isFileOlder(File file, Instant instant) {
        Objects.requireNonNull(instant, "instant");
        return Uncheck.getAsBoolean(new q(file, instant, 0));
    }

    public static boolean isFileNewer(File file, Instant instant) {
        Objects.requireNonNull(instant, "instant");
        return Uncheck.getAsBoolean(new q(file, instant, 1));
    }

    public static boolean isFileOlder(File file, long j) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return Uncheck.getAsBoolean(new l(file, j, 1));
    }

    public static boolean isFileNewer(File file, long j) {
        Objects.requireNonNull(file, PROTOCOL_FILE);
        return Uncheck.getAsBoolean(new l(file, j, 0));
    }

    public static boolean isFileOlder(File file, OffsetDateTime offsetDateTime) {
        Objects.requireNonNull(offsetDateTime, "offsetDateTime");
        return isFileOlder(file, kotlin.io.path.f.o(offsetDateTime));
    }

    public static boolean isFileNewer(File file, OffsetDateTime offsetDateTime) {
        Objects.requireNonNull(offsetDateTime, "offsetDateTime");
        return isFileNewer(file, kotlin.io.path.f.o(offsetDateTime));
    }

    public static void moveFile(File file, File file2) throws IOException {
        moveFile(file, file2, kotlin.io.path.f.h());
    }

    public static Collection<File> listFiles(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return toList(((AccumulatorPathVisitor) Uncheck.apply(new g(iOFileFilter, iOFileFilter2, 0), file)).getFileList().stream().map(new h()));
    }

    private static File[] listFiles(File file, FileFilter fileFilter) {
        requireDirectoryExists(file, "directory");
        File[] fileArrListFiles = file.listFiles(fileFilter);
        if (fileArrListFiles != null) {
            return fileArrListFiles;
        }
        e.f(file, "Unknown I/O error listing contents of directory: ");
        return null;
    }

    public static void copyURLToFile(URL url, File file) throws IOException {
        Path pathI = c5.h.i(file);
        PathUtils.createParentDirectories(pathI, new FileAttribute[0]);
        Objects.requireNonNull(url);
        PathUtils.copy(new r(0, url), pathI, kotlin.io.path.f.z());
    }

    public static Collection<File> listFiles(File file, String[] strArr, boolean z) {
        return listFiles(file, new ArrayList(), z, strArr != null ? toSuffixFileFilter(strArr) : TrueFileFilter.INSTANCE);
    }

    public static void copyFile(File file, File file2, boolean z) throws IOException {
        copyFile(file, file2, z, kotlin.io.path.f.z());
    }

    public static void copyFile(File file, File file2) throws IOException {
        copyFile(file, file2, kotlin.io.path.f.z());
    }

    public static void copyFile(File file, File file2, CopyOption... copyOptionArr) throws IOException {
        copyFile(file, file2, true, copyOptionArr);
    }

    public static long copyFile(File file, OutputStream outputStream) throws IOException {
        InputStream inputStreamE = kotlin.io.path.f.e(c5.h.i(file), new OpenOption[0]);
        try {
            long jCopyLarge = IOUtils.copyLarge(inputStreamE, outputStream);
            if (inputStreamE != null) {
                inputStreamE.close();
            }
            return jCopyLarge;
        } catch (Throwable th) {
            if (inputStreamE != null) {
                try {
                    inputStreamE.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static void copyDirectory(File file, File file2, boolean z) throws IOException {
        copyDirectory(file, file2, null, z);
    }

    public static void copyDirectory(File file, File file2, FileFilter fileFilter) throws IOException {
        copyDirectory(file, file2, fileFilter, true);
    }

    public static void copyDirectory(File file, File file2, FileFilter fileFilter, boolean z) throws IOException {
        copyDirectory(file, file2, fileFilter, z, kotlin.io.path.f.z(), kotlin.internal.jdk8.a.l());
    }

    public static void copyDirectory(File file, File file2) throws IOException {
        copyDirectory(file, file2, true);
    }

    public static void forceDelete(File file) {
        forceDelete(file, true);
    }

    public static String byteCountToDisplaySize(long j) {
        return byteCountToDisplaySize(BigInteger.valueOf(j));
    }

    public static String byteCountToDisplaySize(Number number) {
        return byteCountToDisplaySize(number.longValue());
    }
}
