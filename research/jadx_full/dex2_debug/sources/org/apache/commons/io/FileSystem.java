package org.apache.commons.io;

import java.nio.charset.Charset;
import java.text.BreakIterator;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.apache.commons.net.ftp.FTPClientConfig;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'GENERIC' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class FileSystem {
    private static final /* synthetic */ FileSystem[] $VALUES;
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final FileSystem CURRENT;
    public static final FileSystem GENERIC;
    private static final boolean IS_OS_LINUX;
    private static final boolean IS_OS_MAC;
    private static final boolean IS_OS_WINDOWS;
    public static final FileSystem LINUX;
    public static final FileSystem MAC_OSX;
    private static final String OS_NAME_WINDOWS_PREFIX = "Windows";
    public static final FileSystem WINDOWS;
    private final int blockSize;
    private final boolean casePreserving;
    private final boolean caseSensitive;
    private final int[] illegalFileNameChars;
    private final int maxFileNameLength;
    private final int maxPathLength;
    private final FileSystem$NameLengthStrategy nameLengthStrategy;
    private final char nameSeparator;
    private final char nameSeparatorOther;
    private final String[] reservedFileNames;
    private final boolean reservedFileNamesExtensions;
    private final boolean supportsDriveLetter;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ FileSystem[] $values() {
        return new FileSystem[]{GENERIC, LINUX, MAC_OSX, WINDOWS};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        FileSystem$NameLengthStrategy fileSystem$NameLengthStrategy = FileSystem$NameLengthStrategy.BYTES;
        GENERIC = new FileSystem("GENERIC", 0, 4096, false, false, 1020, 1048576, new int[]{0}, new String[0], false, false, IOUtils.DIR_SEPARATOR_UNIX, fileSystem$NameLengthStrategy);
        LINUX = new FileSystem("LINUX", 1, 8192, true, true, 255, 4096, new int[]{0, 47}, new String[0], false, false, IOUtils.DIR_SEPARATOR_UNIX, fileSystem$NameLengthStrategy);
        MAC_OSX = new FileSystem("MAC_OSX", 2, 4096, true, true, 255, 1024, new int[]{0, 47, 58}, new String[0], false, false, IOUtils.DIR_SEPARATOR_UNIX, fileSystem$NameLengthStrategy);
        WINDOWS = new FileSystem(FTPClientConfig.SYST_NT, 3, 4096, false, true, 255, 32767, new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 34, 42, 47, 58, 60, 62, 63, 92, 124}, new String[]{"AUX", "COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "COM8", "COM9", "COM²", "COM³", "COM¹", "CON", "CONIN$", "CONOUT$", "LPT1", "LPT2", "LPT3", "LPT4", "LPT5", "LPT6", "LPT7", "LPT8", "LPT9", "LPT²", "LPT³", "LPT¹", "NUL", "PRN"}, true, true, IOUtils.DIR_SEPARATOR_WINDOWS, FileSystem$NameLengthStrategy.UTF16_CODE_UNITS);
        $VALUES = $values();
        IS_OS_LINUX = getOsMatchesName("Linux");
        IS_OS_MAC = getOsMatchesName("Mac");
        IS_OS_WINDOWS = getOsMatchesName(OS_NAME_WINDOWS_PREFIX);
        CURRENT = current();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FileSystem(String str, int i, int i2, boolean z, boolean z2, int i3, int i4, int[] iArr, String[] strArr, boolean z3, boolean z4, char c, FileSystem$NameLengthStrategy fileSystem$NameLengthStrategy) {
        super(str, i);
        this.blockSize = i2;
        this.maxFileNameLength = i3;
        this.maxPathLength = i4;
        Objects.requireNonNull(iArr, "illegalFileNameChars");
        this.illegalFileNameChars = iArr;
        Objects.requireNonNull(strArr, "reservedFileNames");
        this.reservedFileNames = strArr;
        this.reservedFileNamesExtensions = z3;
        this.caseSensitive = z;
        this.casePreserving = z2;
        this.supportsDriveLetter = z4;
        this.nameSeparator = c;
        this.nameSeparatorOther = FilenameUtils.flipSeparator(c);
        this.nameLengthStrategy = fileSystem$NameLengthStrategy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int a(FileSystem fileSystem, char c, int i) {
        return fileSystem.lambda$toLegalFileName$0(c, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CharSequence access$100(CharSequence charSequence, int i) {
        return safeTruncate(charSequence, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean b(FileSystem fileSystem, int i) {
        return fileSystem.isIllegalFileNameChar(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static FileSystem current() {
        if (IS_OS_LINUX) {
            return LINUX;
        }
        if (IS_OS_MAC) {
            return MAC_OSX;
        }
        return IS_OS_WINDOWS ? WINDOWS : GENERIC;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileSystem getCurrent() {
        return CURRENT;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean getOsMatchesName(String str) {
        return isOsNameMatch(getSystemProperty("os.name"), str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String getSystemProperty(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            System.err.println("Caught a SecurityException reading the system property '" + str + "'; the SystemUtils property value will default to null.");
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int indexOfFirstDot(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return ((String) charSequence).indexOf(46);
        }
        for (int i = 0; i < charSequence.length(); i++) {
            if (charSequence.charAt(i) == '.') {
                return i;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isIllegalFileNameChar(int i) {
        return Arrays.binarySearch(this.illegalFileNameChars, i) >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isOsNameMatch(String str, String str2) {
        if (str == null) {
            return false;
        }
        Locale locale = Locale.ROOT;
        return str.toUpperCase(locale).startsWith(str2.toUpperCase(locale));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ int lambda$toLegalFileName$0(char c, int i) {
        return isIllegalFileNameChar(i) ? c : i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String replace(String str, char c, char c2) {
        if (str == null) {
            return null;
        }
        return str.replace(c, c2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static CharSequence safeTruncate(CharSequence charSequence, int i) {
        String str;
        if (charSequence.length() <= i) {
            return charSequence;
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance(Locale.ROOT);
        String string = charSequence.toString();
        characterInstance.setText(string);
        int iPreceding = characterInstance.preceding(i + 1);
        if (iPreceding != 0) {
            return string.substring(0, iPreceding);
        }
        if (i <= 1) {
            str = "1 character";
        } else {
            str = i + " characters";
        }
        androidx.navigation.b.r("The value ", charSequence, " can not be truncated to ", str, " without breaking the first codepoint or grapheme cluster");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CharSequence[] splitExtension(CharSequence charSequence) {
        int iIndexOfFirstDot = indexOfFirstDot(charSequence);
        return iIndexOfFirstDot < 1 ? new CharSequence[]{charSequence, HttpUrl.FRAGMENT_ENCODE_SET} : new CharSequence[]{charSequence.subSequence(0, iIndexOfFirstDot), charSequence.subSequence(iIndexOfFirstDot, charSequence.length())};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CharSequence trimExtension(CharSequence charSequence) {
        int iIndexOfFirstDot = indexOfFirstDot(charSequence);
        return iIndexOfFirstDot < 1 ? charSequence : charSequence.subSequence(0, iIndexOfFirstDot);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileSystem valueOf(String str) {
        return (FileSystem) Enum.valueOf(FileSystem.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileSystem[] values() {
        return (FileSystem[]) $VALUES.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBlockSize() {
        return this.blockSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public char[] getIllegalFileNameChars() {
        char[] cArr = new char[this.illegalFileNameChars.length];
        int i = 0;
        while (true) {
            int[] iArr = this.illegalFileNameChars;
            if (i >= iArr.length) {
                return cArr;
            }
            cArr[i] = (char) iArr[i];
            i++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getIllegalFileNameCodePoints() {
        return (int[]) this.illegalFileNameChars.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxFileNameLength() {
        return this.maxFileNameLength;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxPathLength() {
        return this.maxPathLength;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileSystem$NameLengthStrategy getNameLengthStrategy() {
        return this.nameLengthStrategy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public char getNameSeparator() {
        return this.nameSeparator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getReservedFileNames() {
        return (String[]) this.reservedFileNames.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCasePreserving() {
        return this.casePreserving;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCaseSensitive() {
        return this.caseSensitive;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isLegalFileName(CharSequence charSequence, Charset charset) {
        return (charSequence == null || charSequence.length() == 0 || !this.nameLengthStrategy.isWithinLimit(charSequence, getMaxFileNameLength(), charset) || isReservedFileName(charSequence) || !charSequence.chars().noneMatch(new c(this))) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isReservedFileName(CharSequence charSequence) {
        if (this.reservedFileNamesExtensions) {
            charSequence = trimExtension(charSequence);
        }
        return Arrays.binarySearch(this.reservedFileNames, charSequence) >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String normalizeSeparators(String str) {
        return replace(str, this.nameSeparatorOther, this.nameSeparator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean supportsDriveLetter() {
        return this.supportsDriveLetter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toLegalFileName(CharSequence charSequence, char c, Charset charset) {
        Objects.requireNonNull(charSequence, "candidate");
        if (charSequence.length() == 0) {
            j1.i.k("The candidate file name is empty");
            return null;
        }
        if (isIllegalFileNameChar(c)) {
            throw new IllegalArgumentException(String.format("The replacement character '%s' cannot be one of the %s illegal characters: %s", c == 0 ? "\\0" : Character.valueOf(c), name(), Arrays.toString(this.illegalFileNameChars)));
        }
        int[] array = this.nameLengthStrategy.truncate(charSequence, getMaxFileNameLength(), charset).chars().map(new b(this, c)).toArray();
        return new String(array, 0, array.length);
    }

    public boolean isLegalFileName(CharSequence charSequence) {
        return isLegalFileName(charSequence, Charset.defaultCharset());
    }

    public String toLegalFileName(String str, char c) {
        return toLegalFileName(str, c, Charset.defaultCharset());
    }
}
