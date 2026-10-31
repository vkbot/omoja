package org.apache.commons.net.util;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class Charsets {
    @Deprecated
    public Charsets() {
    }

    public static Charset toCharset(String str) {
        return str == null ? Charset.defaultCharset() : Charset.forName(str);
    }

    public static Charset toCharset(String str, String str2) {
        return str == null ? Charset.forName(str2) : Charset.forName(str);
    }
}
