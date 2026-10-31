package org.apache.commons.p161io;

import ai.onnxruntime.AbstractC0074a;
import java.util.Objects;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public enum IOCase {
    SENSITIVE("Sensitive", true),
    INSENSITIVE("Insensitive", false),
    SYSTEM("System", FileSystem.getCurrent().isCaseSensitive());

    private static final long serialVersionUID = -6343169151696340687L;
    private final String name;
    private final transient boolean sensitive;

    IOCase(String str, boolean z9) {
        this.name = str;
        this.sensitive = z9;
    }

    public static IOCase forName(String str) {
        return (IOCase) Stream.of((Object[]) values()).filter(new C2779a(str, 2)).findFirst().orElseThrow(new C2926v(1, str));
    }

    public static boolean isCaseSensitive(IOCase iOCase) {
        return iOCase != null && iOCase.isCaseSensitive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$forName$0(String str, IOCase iOCase) {
        return iOCase.getName().equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ IllegalArgumentException lambda$forName$1(String str) {
        return new IllegalArgumentException(AbstractC0074a.m161l("Illegal IOCase name: ", str));
    }

    private Object readResolve() {
        return forName(this.name);
    }

    public static IOCase value(IOCase iOCase, IOCase iOCase2) {
        return iOCase != null ? iOCase : iOCase2;
    }

    public int checkCompareTo(String str, String str2) {
        Objects.requireNonNull(str, "str1");
        Objects.requireNonNull(str2, "str2");
        return this.sensitive ? str.compareTo(str2) : str.compareToIgnoreCase(str2);
    }

    public boolean checkEndsWith(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        int length = str2.length();
        return str.regionMatches(!this.sensitive, str.length() - length, str2, 0, length);
    }

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

    public int checkIndexOf(String str, int i10, String str2) {
        int length;
        if (str == null || str2 == null || (length = str.length() - str2.length()) < i10) {
            return -1;
        }
        while (i10 <= length) {
            if (checkRegionMatches(str, i10, str2)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public boolean checkRegionMatches(String str, int i10, String str2) {
        return (str == null || str2 == null || !str.regionMatches(this.sensitive ^ true, i10, str2, 0, str2.length())) ? false : true;
    }

    public boolean checkStartsWith(String str, String str2) {
        return (str == null || str2 == null || !str.regionMatches(this.sensitive ^ true, 0, str2, 0, str2.length())) ? false : true;
    }

    public String getName() {
        return this.name;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }

    public boolean isCaseSensitive() {
        return this.sensitive;
    }
}
