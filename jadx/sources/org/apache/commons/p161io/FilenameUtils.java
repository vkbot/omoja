package org.apache.commons.p161io;

import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FilenameUtils {
    private static final int BASE_16 = 16;
    private static final String EMPTY_STRING = "";
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final char EXTENSION_SEPARATOR = '.';
    public static final String EXTENSION_SEPARATOR_STR = Character.toString(EXTENSION_SEPARATOR);
    private static final int IPV4_MAX_OCTET_VALUE = 255;
    private static final Pattern IPV4_PATTERN;
    private static final int IPV6_MAX_HEX_DIGITS_PER_GROUP = 4;
    private static final int IPV6_MAX_HEX_GROUPS = 8;
    private static final int MAX_UNSIGNED_SHORT = 65535;
    private static final int NOT_FOUND = -1;
    private static final char OTHER_SEPARATOR;
    private static final Pattern REG_NAME_PART_PATTERN;
    private static final char SYSTEM_NAME_SEPARATOR;
    private static final char UNIX_NAME_SEPARATOR = '/';
    private static final char WINDOWS_NAME_SEPARATOR = '\\';

    static {
        char c = File.separatorChar;
        SYSTEM_NAME_SEPARATOR = c;
        OTHER_SEPARATOR = flipSeparator(c);
        IPV4_PATTERN = Pattern.compile("^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$");
        REG_NAME_PART_PATTERN = Pattern.compile("^[a-zA-Z0-9][a-zA-Z0-9-]*$");
    }

    @Deprecated
    public FilenameUtils() {
    }

    public static String concat(String str, String str2) {
        int prefixLength = getPrefixLength(str2);
        if (prefixLength < 0) {
            return null;
        }
        if (prefixLength > 0) {
            return normalize(str2);
        }
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return normalize(str2);
        }
        if (isSeparator(str.charAt(length - 1))) {
            return normalize(str + str2);
        }
        return normalize(str + '/' + str2);
    }

    public static boolean directoryContains(String str, String str2) {
        if (isEmpty(str) || isEmpty(str2)) {
            return false;
        }
        IOCase iOCase = IOCase.SYSTEM;
        if (iOCase.checkEquals(str, str2)) {
            return false;
        }
        char separator = toSeparator(str.charAt(0) == '/');
        if (str.charAt(str.length() - 1) != separator) {
            str = str + separator;
        }
        return iOCase.checkStartsWith(str2, str);
    }

    private static String doGetFullPath(String str, boolean z9) {
        int prefixLength;
        if (str == null || (prefixLength = getPrefixLength(str)) < 0) {
            return null;
        }
        if (prefixLength >= str.length()) {
            return z9 ? getPrefix(str) : str;
        }
        int iIndexOfLastSeparator = indexOfLastSeparator(str);
        if (iIndexOfLastSeparator < 0) {
            return str.substring(0, prefixLength);
        }
        int i10 = iIndexOfLastSeparator + (z9 ? 1 : 0);
        if (i10 == 0) {
            i10++;
        }
        return str.substring(0, i10);
    }

    private static String doGetPath(String str, int i10) {
        int prefixLength;
        if (str == null || (prefixLength = getPrefixLength(str)) < 0) {
            return null;
        }
        int iIndexOfLastSeparator = indexOfLastSeparator(str);
        int i11 = i10 + iIndexOfLastSeparator;
        return (prefixLength >= str.length() || iIndexOfLastSeparator < 0 || prefixLength >= i11) ? "" : requireNonNullChars(str.substring(prefixLength, i11));
    }

    private static String doNormalize(String str, char c, boolean z9) {
        boolean z10;
        if (str == null) {
            return null;
        }
        requireNonNullChars(str);
        int length = str.length();
        if (length == 0) {
            return str;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        int i10 = length + 2;
        char[] cArr = new char[i10];
        str.getChars(0, str.length(), cArr, 0);
        char cFlipSeparator = flipSeparator(c);
        for (int i11 = 0; i11 < i10; i11++) {
            if (cArr[i11] == cFlipSeparator) {
                cArr[i11] = c;
            }
        }
        if (cArr[length - 1] != c) {
            cArr[length] = c;
            length++;
            z10 = false;
        } else {
            z10 = true;
        }
        int i12 = prefixLength != 0 ? prefixLength : 1;
        while (i12 < length) {
            if (cArr[i12] == c) {
                int i13 = i12 - 1;
                if (cArr[i13] == c) {
                    System.arraycopy(cArr, i12, cArr, i13, length - i12);
                    length--;
                    i12--;
                }
            }
            i12++;
        }
        int i14 = prefixLength + 1;
        int i15 = i14;
        while (i15 < length) {
            if (cArr[i15] == c) {
                int i16 = i15 - 1;
                if (cArr[i16] == '.' && (i15 == i14 || cArr[i15 - 2] == c)) {
                    if (i15 == length - 1) {
                        z10 = true;
                    }
                    System.arraycopy(cArr, i15 + 1, cArr, i16, length - i15);
                    length -= 2;
                    i15--;
                }
            }
            i15++;
        }
        int i17 = prefixLength + 2;
        int i18 = i17;
        while (i18 < length) {
            if (cArr[i18] == c && cArr[i18 - 1] == '.' && cArr[i18 - 2] == '.' && (i18 == i17 || cArr[i18 - 3] == c)) {
                if (i18 == i17) {
                    return null;
                }
                if (i18 == length - 1) {
                    z10 = true;
                }
                int i19 = i18 - 4;
                while (true) {
                    if (i19 < prefixLength) {
                        int i20 = i18 + 1;
                        System.arraycopy(cArr, i20, cArr, prefixLength, length - i18);
                        length -= i20 - prefixLength;
                        i18 = i14;
                        break;
                    }
                    if (cArr[i19] == c) {
                        int i21 = i19 + 1;
                        System.arraycopy(cArr, i18 + 1, cArr, i21, length - i18);
                        length -= i18 - i19;
                        i18 = i21;
                        break;
                    }
                    i19--;
                }
            }
            i18++;
        }
        if (length <= 0) {
            return "";
        }
        if (length <= prefixLength) {
            return new String(cArr, 0, length);
        }
        return (z10 && z9) ? new String(cArr, 0, length) : new String(cArr, 0, length - 1);
    }

    public static boolean equals(String str, String str2, boolean z9, IOCase iOCase) {
        if (str == null || str2 == null) {
            return str == null && str2 == null;
        }
        if (z9 && ((str = normalize(str)) == null || (str2 = normalize(str2)) == null)) {
            return false;
        }
        return IOCase.value(iOCase, IOCase.SENSITIVE).checkEquals(str, str2);
    }

    public static boolean equalsNormalized(String str, String str2) {
        return equals(str, str2, true, IOCase.SENSITIVE);
    }

    public static boolean equalsNormalizedOnSystem(String str, String str2) {
        return equals(str, str2, true, IOCase.SYSTEM);
    }

    public static boolean equalsOnSystem(String str, String str2) {
        return equals(str, str2, false, IOCase.SYSTEM);
    }

    public static char flipSeparator(char c) {
        if (c == '/') {
            return '\\';
        }
        if (c == '\\') {
            return '/';
        }
        C1929i.m3029k(String.valueOf(c));
        return (char) 0;
    }

    private static int getAdsCriticalOffset(String str) {
        int iLastIndexOf = str.lastIndexOf(SYSTEM_NAME_SEPARATOR);
        int iLastIndexOf2 = str.lastIndexOf(OTHER_SEPARATOR);
        if (iLastIndexOf != -1) {
            return iLastIndexOf2 == -1 ? iLastIndexOf + 1 : Math.max(iLastIndexOf, iLastIndexOf2) + 1;
        }
        if (iLastIndexOf2 == -1) {
            return 0;
        }
        return iLastIndexOf2 + 1;
    }

    public static String getBaseName(String str) {
        return removeExtension(getName(str));
    }

    public static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOfExtension = indexOfExtension(str);
        return iIndexOfExtension == -1 ? "" : str.substring(iIndexOfExtension + 1);
    }

    public static String getFullPath(String str) {
        return doGetFullPath(str, true);
    }

    public static String getFullPathNoEndSeparator(String str) {
        return doGetFullPath(str, false);
    }

    public static String getName(String str) {
        if (str == null) {
            return null;
        }
        return requireNonNullChars(str).substring(indexOfLastSeparator(str) + 1);
    }

    public static String getPath(String str) {
        return doGetPath(str, 1);
    }

    public static String getPathNoEndSeparator(String str) {
        return doGetPath(str, 0);
    }

    public static String getPrefix(String str) {
        int prefixLength;
        if (str == null || (prefixLength = getPrefixLength(str)) < 0) {
            return null;
        }
        if (prefixLength <= str.length()) {
            return requireNonNullChars(str.substring(0, prefixLength));
        }
        requireNonNullChars(str);
        return str.concat("/");
    }

    public static int getPrefixLength(String str) {
        if (str == null) {
            return -1;
        }
        int length = str.length();
        if (length == 0) {
            return 0;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == ':') {
            return -1;
        }
        if (length == 1) {
            if (cCharAt == '~') {
                return 2;
            }
            return isSeparator(cCharAt) ? 1 : 0;
        }
        if (cCharAt == '~') {
            int iIndexOf = str.indexOf(47, 1);
            int iIndexOf2 = str.indexOf(92, 1);
            if (iIndexOf == -1 && iIndexOf2 == -1) {
                return length + 1;
            }
            if (iIndexOf == -1) {
                iIndexOf = iIndexOf2;
            }
            if (iIndexOf2 == -1) {
                iIndexOf2 = iIndexOf;
            }
            return Math.min(iIndexOf, iIndexOf2) + 1;
        }
        char cCharAt2 = str.charAt(1);
        if (cCharAt2 == ':') {
            char upperCase = Character.toUpperCase(cCharAt);
            if (upperCase < 'A' || upperCase > 'Z') {
                return upperCase == '/' ? 1 : -1;
            }
            if (length != 2 || FileSystem.getCurrent().supportsDriveLetter()) {
                return (length == 2 || !isSeparator(str.charAt(2))) ? 2 : 3;
            }
            return 0;
        }
        if (!isSeparator(cCharAt) || !isSeparator(cCharAt2)) {
            return isSeparator(cCharAt) ? 1 : 0;
        }
        int iIndexOf3 = str.indexOf(47, 2);
        int iIndexOf4 = str.indexOf(92, 2);
        if ((iIndexOf3 != -1 || iIndexOf4 != -1) && iIndexOf3 != 2 && iIndexOf4 != 2) {
            if (iIndexOf3 == -1) {
                iIndexOf3 = iIndexOf4;
            }
            if (iIndexOf4 == -1) {
                iIndexOf4 = iIndexOf3;
            }
            int iMin = Math.min(iIndexOf3, iIndexOf4);
            int i10 = iMin + 1;
            if (isValidHostName(str.substring(2, iMin))) {
                return i10;
            }
        }
        return -1;
    }

    public static int indexOfExtension(String str) {
        if (str == null) {
            return -1;
        }
        if (isSystemWindows() && str.indexOf(58, getAdsCriticalOffset(str)) != -1) {
            C1929i.m3029k("NTFS ADS separator (':') in file name is forbidden.");
            return 0;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (indexOfLastSeparator(str) > iLastIndexOf) {
            return -1;
        }
        return iLastIndexOf;
    }

    public static int indexOfLastSeparator(String str) {
        if (str == null) {
            return -1;
        }
        return Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
    }

    private static boolean isEmpty(String str) {
        return str == null || str.isEmpty();
    }

    public static boolean isExtension(String str, String... strArr) {
        if (str == null) {
            return false;
        }
        requireNonNullChars(str);
        if (strArr == null || strArr.length == 0) {
            return indexOfExtension(str) == -1;
        }
        String extension = getExtension(str);
        Stream streamOf = Stream.of((Object[]) strArr);
        Objects.requireNonNull(extension);
        return streamOf.anyMatch(new C2779a(extension, 1));
    }

    private static boolean isIPv4Address(String str) {
        Matcher matcher = IPV4_PATTERN.matcher(str);
        if (!matcher.matches() || matcher.groupCount() != 4) {
            return false;
        }
        for (int i10 = 1; i10 <= 4; i10++) {
            String strGroup = matcher.group(i10);
            if (Integer.parseInt(strGroup) > 255) {
                return false;
            }
            if (strGroup.length() > 1 && strGroup.startsWith("0")) {
                return false;
            }
        }
        return true;
    }

    private static boolean isIPv6Address(String str) {
        boolean zContains = str.contains("::");
        if (zContains && str.indexOf("::") != str.lastIndexOf("::")) {
            return false;
        }
        if ((str.startsWith(":") && !str.startsWith("::")) || (str.endsWith(":") && !str.endsWith("::"))) {
            return false;
        }
        String[] strArrSplit = str.split(":");
        if (zContains) {
            ArrayList arrayList = new ArrayList(Arrays.asList(strArrSplit));
            if (str.endsWith("::")) {
                arrayList.add("");
            } else if (str.startsWith("::") && !arrayList.isEmpty()) {
                arrayList.remove(0);
            }
            strArrSplit = (String[]) arrayList.toArray(EMPTY_STRING_ARRAY);
        }
        if (strArrSplit.length > 8) {
            return false;
        }
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < strArrSplit.length; i12++) {
            String str2 = strArrSplit[i12];
            if (str2.isEmpty()) {
                i11++;
                if (i11 > 1) {
                    return false;
                }
            } else {
                if (i12 == strArrSplit.length - 1 && str2.contains(".")) {
                    if (!isIPv4Address(str2)) {
                        return false;
                    }
                    i10 += 2;
                    i11 = 0;
                } else {
                    if (str2.length() > 4) {
                        return false;
                    }
                    try {
                        int i13 = Integer.parseInt(str2, 16);
                        if (i13 < 0 || i13 > 65535) {
                            return false;
                        }
                        i11 = 0;
                    } catch (NumberFormatException unused) {
                    }
                }
            }
            i10++;
        }
        return i10 <= 8 && (i10 >= 8 || zContains);
    }

    private static boolean isRFC3986HostName(String str) {
        String[] strArrSplit = str.split("\\.", -1);
        int i10 = 0;
        while (i10 < strArrSplit.length) {
            if (strArrSplit[i10].isEmpty()) {
                return i10 == strArrSplit.length - 1;
            }
            if (!REG_NAME_PART_PATTERN.matcher(strArrSplit[i10]).matches()) {
                return false;
            }
            i10++;
        }
        return true;
    }

    private static boolean isSeparator(char c) {
        return c == '/' || c == '\\';
    }

    public static boolean isSystemWindows() {
        return SYSTEM_NAME_SEPARATOR == '\\';
    }

    private static boolean isValidHostName(String str) {
        return isIPv6Address(str) || isRFC3986HostName(str);
    }

    public static String normalize(String str, boolean z9) {
        return doNormalize(str, toSeparator(z9), true);
    }

    public static String normalizeNoEndSeparator(String str, boolean z9) {
        return doNormalize(str, toSeparator(z9), false);
    }

    public static String removeExtension(String str) {
        if (str == null) {
            return null;
        }
        requireNonNullChars(str);
        int iIndexOfExtension = indexOfExtension(str);
        return iIndexOfExtension == -1 ? str : str.substring(0, iIndexOfExtension);
    }

    private static String requireNonNullChars(String str) {
        if (str.indexOf(0) < 0) {
            return str;
        }
        C1929i.m3029k("Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it");
        return null;
    }

    public static String separatorsToSystem(String str) {
        return FileSystem.getCurrent().normalizeSeparators(str);
    }

    public static String separatorsToUnix(String str) {
        return FileSystem.LINUX.normalizeSeparators(str);
    }

    public static String separatorsToWindows(String str) {
        return FileSystem.WINDOWS.normalizeSeparators(str);
    }

    public static String[] splitOnTokens(String str) {
        if (str.indexOf(63) == -1 && str.indexOf(42) == -1) {
            return new String[]{str};
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = charArray.length;
        int i10 = 0;
        char c = 0;
        while (i10 < length) {
            char c10 = charArray[i10];
            if (c10 == '?' || c10 == '*') {
                if (sb.length() != 0) {
                    arrayList.add(sb.toString());
                    sb.setLength(0);
                }
                if (c10 == '?') {
                    arrayList.add("?");
                } else if (c != '*') {
                    arrayList.add("*");
                }
            } else {
                sb.append(c10);
            }
            i10++;
            c = c10;
        }
        if (sb.length() != 0) {
            arrayList.add(sb.toString());
        }
        return (String[]) arrayList.toArray(EMPTY_STRING_ARRAY);
    }

    private static char toSeparator(boolean z9) {
        return z9 ? '/' : '\\';
    }

    public static boolean wildcardMatch(String str, String str2, IOCase iOCase) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str != null && str2 != null) {
            IOCase iOCaseValue = IOCase.value(iOCase, IOCase.SENSITIVE);
            String[] strArrSplitOnTokens = splitOnTokens(str2);
            ArrayDeque arrayDeque = new ArrayDeque(strArrSplitOnTokens.length);
            boolean z9 = false;
            int length = 0;
            int i10 = 0;
            do {
                if (!arrayDeque.isEmpty()) {
                    int[] iArr = (int[]) arrayDeque.pop();
                    i10 = iArr[0];
                    length = iArr[1];
                    z9 = true;
                }
                while (i10 < strArrSplitOnTokens.length) {
                    if (strArrSplitOnTokens[i10].equals("?")) {
                        length++;
                        if (length > str.length()) {
                            break;
                        }
                        z9 = false;
                        i10++;
                    } else {
                        if (strArrSplitOnTokens[i10].equals("*")) {
                            if (i10 == strArrSplitOnTokens.length - 1) {
                                length = str.length();
                            }
                            z9 = true;
                        } else if (z9) {
                            length = iOCaseValue.checkIndexOf(str, length, strArrSplitOnTokens[i10]);
                            if (length == -1) {
                                break;
                            }
                            int iCheckIndexOf = iOCaseValue.checkIndexOf(str, length + 1, strArrSplitOnTokens[i10]);
                            if (iCheckIndexOf >= 0) {
                                arrayDeque.push(new int[]{i10, iCheckIndexOf});
                            }
                            length = strArrSplitOnTokens[i10].length() + length;
                            z9 = false;
                        } else {
                            if (!iOCaseValue.checkRegionMatches(str, length, strArrSplitOnTokens[i10])) {
                                break;
                            }
                            length = strArrSplitOnTokens[i10].length() + length;
                            z9 = false;
                        }
                        i10++;
                    }
                }
                if (i10 == strArrSplitOnTokens.length && length == str.length()) {
                    return true;
                }
            } while (!arrayDeque.isEmpty());
        }
        return false;
    }

    public static boolean wildcardMatchOnSystem(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SYSTEM);
    }

    public static String normalize(String str) {
        return doNormalize(str, SYSTEM_NAME_SEPARATOR, true);
    }

    public static String normalizeNoEndSeparator(String str) {
        return doNormalize(str, SYSTEM_NAME_SEPARATOR, false);
    }

    public static boolean equals(String str, String str2) {
        return equals(str, str2, false, IOCase.SENSITIVE);
    }

    public static boolean isExtension(String str, String str2) {
        if (str == null) {
            return false;
        }
        requireNonNullChars(str);
        if (isEmpty(str2)) {
            return indexOfExtension(str) == -1;
        }
        return getExtension(str).equals(str2);
    }

    public static boolean isExtension(String str, Collection<String> collection) {
        if (str == null) {
            return false;
        }
        requireNonNullChars(str);
        if (collection == null || collection.isEmpty()) {
            return indexOfExtension(str) == -1;
        }
        return collection.contains(getExtension(str));
    }

    public static boolean wildcardMatch(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SENSITIVE);
    }
}
