package org.apache.commons.p161io;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class Charsets {

    @Deprecated
    public static final Charset ISO_8859_1;
    private static final SortedMap<String, Charset> STANDARD_CHARSET_MAP;

    @Deprecated
    public static final Charset US_ASCII;

    @Deprecated
    public static final Charset UTF_16;

    @Deprecated
    public static final Charset UTF_16BE;

    @Deprecated
    public static final Charset UTF_16LE;

    @Deprecated
    public static final Charset UTF_8;

    static {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        Charset charset = StandardCharsets.ISO_8859_1;
        treeMap.put(charset.name(), charset);
        Charset charset2 = StandardCharsets.US_ASCII;
        treeMap.put(charset2.name(), charset2);
        Charset charset3 = StandardCharsets.UTF_16;
        treeMap.put(charset3.name(), charset3);
        Charset charset4 = StandardCharsets.UTF_16BE;
        treeMap.put(charset4.name(), charset4);
        Charset charset5 = StandardCharsets.UTF_16LE;
        treeMap.put(charset5.name(), charset5);
        Charset charset6 = StandardCharsets.UTF_8;
        treeMap.put(charset6.name(), charset6);
        STANDARD_CHARSET_MAP = Collections.unmodifiableSortedMap(treeMap);
        ISO_8859_1 = charset;
        US_ASCII = charset2;
        UTF_16 = charset3;
        UTF_16BE = charset4;
        UTF_16LE = charset5;
        UTF_8 = charset6;
    }

    @Deprecated
    public Charsets() {
    }

    public static boolean isAlias(Charset charset, String str) {
        if (str != null) {
            return charset.name().equalsIgnoreCase(str) || charset.aliases().stream().anyMatch(new C2779a(str, 0));
        }
        return false;
    }

    public static boolean isUTF8(Charset charset) {
        return isUTF8Alias(toCharset(charset).name());
    }

    private static boolean isUTF8Alias(String str) {
        return isAlias(StandardCharsets.UTF_8, str);
    }

    public static SortedMap<String, Charset> requiredCharsets() {
        return STANDARD_CHARSET_MAP;
    }

    public static Charset toCharset(String str) {
        return toCharset(str, Charset.defaultCharset());
    }

    public static Charset toCharsetDefault(String str, Charset charset) {
        try {
            return toCharset(str);
        } catch (RuntimeException unused) {
            return toCharset(charset);
        }
    }

    public static Charset toCharset(Charset charset) {
        return charset == null ? Charset.defaultCharset() : charset;
    }

    public static Charset toCharset(Charset charset, Charset charset2) {
        return charset == null ? charset2 : charset;
    }

    public static Charset toCharset(String str, Charset charset) {
        return str == null ? charset : Charset.forName(str);
    }
}
