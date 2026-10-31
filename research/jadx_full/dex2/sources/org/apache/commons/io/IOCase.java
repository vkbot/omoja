package org.apache.commons.io;

import java.util.Objects;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public enum IOCase {
    SENSITIVE("Sensitive", true),
    INSENSITIVE("Insensitive", false),
    SYSTEM("System", FileSystem.getCurrent().isCaseSensitive());

    private static final long serialVersionUID = -6343169151696340687L;
    private final String name;
    private final transient boolean sensitive;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    IOCase(String str, boolean z) {
        this.name = str;
        this.sensitive = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(String str, IOCase iOCase) {
        return lambda$forName$0(str, iOCase);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ IllegalArgumentException b(String str) {
        return lambda$forName$1(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IOCase forName(String str) {
        return (IOCase) Stream.of((Object[]) values()).filter(new a(str, 2)).findFirst().orElseThrow(new v(1, str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isCaseSensitive(IOCase iOCase) {
        return iOCase != null && iOCase.isCaseSensitive();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$forName$0(String str, IOCase iOCase) {
        return iOCase.getName().equals(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ IllegalArgumentException lambda$forName$1(String str) {
        return new IllegalArgumentException(ai.onnxruntime.a.l("Illegal IOCase name: ", str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object readResolve() {
        return forName(this.name);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IOCase value(IOCase iOCase, IOCase iOCase2) {
        return iOCase != null ? iOCase : iOCase2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int checkCompareTo(String str, String str2) {
        Objects.requireNonNull(str, "str1");
        Objects.requireNonNull(str2, "str2");
        return this.sensitive ? str.compareTo(str2) : str.compareToIgnoreCase(str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean checkEndsWith(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        int length = str2.length();
        return str.regionMatches(!this.sensitive, str.length() - length, str2, 0, length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean checkEquals(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null) {
            return false;
        }
        if (this.sensitive) {
            return str.equals(str2);
        }
        return str.equalsIgnoreCase(str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int checkIndexOf(String str, int i, String str2) {
        int length;
        if (str == null || str2 == null || (length = str.length() - str2.length()) < i) {
            return -1;
        }
        while (i <= length) {
            if (checkRegionMatches(str, i, str2)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean checkRegionMatches(String str, int i, String str2) {
        return (str == null || str2 == null || !str.regionMatches(this.sensitive ^ true, i, str2, 0, str2.length())) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean checkStartsWith(String str, String str2) {
        return (str == null || str2 == null || !str.regionMatches(this.sensitive ^ true, 0, str2, 0, str2.length())) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName() {
        return this.name;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }

    public boolean isCaseSensitive() {
        return this.sensitive;
    }
}
