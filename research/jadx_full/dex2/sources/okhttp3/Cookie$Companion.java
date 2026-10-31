package okhttp3;

import j1.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\fH\u0002J'\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0000¢\u0006\u0002\b\u001bJ\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0007J\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u001d2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\fH\u0002J \u0010\"\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\fH\u0002J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\fH\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lokhttp3/Cookie$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "DAY_OF_MONTH_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "MONTH_PATTERN", "TIME_PATTERN", "YEAR_PATTERN", "dateCharacterOffset", HttpUrl.FRAGMENT_ENCODE_SET, "input", HttpUrl.FRAGMENT_ENCODE_SET, "pos", "limit", "invert", HttpUrl.FRAGMENT_ENCODE_SET, "domainMatch", "urlHost", "domain", "parse", "Lokhttp3/Cookie;", "currentTimeMillis", HttpUrl.FRAGMENT_ENCODE_SET, "url", "Lokhttp3/HttpUrl;", "setCookie", "parse$okhttp", "parseAll", HttpUrl.FRAGMENT_ENCODE_SET, "headers", "Lokhttp3/Headers;", "parseDomain", "s", "parseExpires", "parseMaxAge", "pathMatch", "path", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Cookie$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Cookie$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ boolean access$domainMatch(Cookie$Companion cookie$Companion, String str, String str2) {
        return cookie$Companion.domainMatch(str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ boolean access$pathMatch(Cookie$Companion cookie$Companion, HttpUrl httpUrl, String str) {
        return cookie$Companion.pathMatch(httpUrl, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int dateCharacterOffset(String input, int pos, int limit, boolean invert) {
        while (pos < limit) {
            char cCharAt = input.charAt(pos);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!invert)) {
                return pos;
            }
            pos++;
        }
        return limit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean domainMatch(String urlHost, String domain) {
        return Intrinsics.areEqual(urlHost, domain) || (StringsKt.r(urlHost, domain) && urlHost.charAt((urlHost.length() - domain.length()) - 1) == '.' && !Util.canParseAsIpAddress(urlHost));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final String parseDomain(String s) {
        if (StringsKt.r(s, ".")) {
            i.k("Failed requirement.");
            return null;
        }
        String canonicalHost = HostnamesKt.toCanonicalHost(StringsKt.B(s, "."));
        if (canonicalHost != null) {
            return canonicalHost;
        }
        l9.i.a();
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final long parseExpires(String s, int pos, int limit) {
        int iDateCharacterOffset = dateCharacterOffset(s, pos, limit, false);
        Matcher matcher = Cookie.access$getTIME_PATTERN$cp().matcher(s);
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int iU = -1;
        int i4 = -1;
        int i5 = -1;
        while (iDateCharacterOffset < limit) {
            int iDateCharacterOffset2 = dateCharacterOffset(s, iDateCharacterOffset + 1, limit, true);
            matcher.region(iDateCharacterOffset, iDateCharacterOffset2);
            if (i2 == -1 && matcher.usePattern(Cookie.access$getTIME_PATTERN$cp()).matches()) {
                String strGroup = matcher.group(1);
                strGroup.getClass();
                i2 = Integer.parseInt(strGroup);
                String strGroup2 = matcher.group(2);
                strGroup2.getClass();
                i4 = Integer.parseInt(strGroup2);
                String strGroup3 = matcher.group(3);
                strGroup3.getClass();
                i5 = Integer.parseInt(strGroup3);
            } else if (i3 == -1 && matcher.usePattern(Cookie.access$getDAY_OF_MONTH_PATTERN$cp()).matches()) {
                String strGroup4 = matcher.group(1);
                strGroup4.getClass();
                i3 = Integer.parseInt(strGroup4);
            } else if (iU == -1 && matcher.usePattern(Cookie.access$getMONTH_PATTERN$cp()).matches()) {
                String strGroup5 = matcher.group(1);
                strGroup5.getClass();
                Locale locale = Locale.US;
                locale.getClass();
                String lowerCase = strGroup5.toLowerCase(locale);
                lowerCase.getClass();
                String strPattern = Cookie.access$getMONTH_PATTERN$cp().pattern();
                strPattern.getClass();
                iU = StringsKt.u(0, strPattern, lowerCase, 6) / 4;
            } else if (i == -1 && matcher.usePattern(Cookie.access$getYEAR_PATTERN$cp()).matches()) {
                String strGroup6 = matcher.group(1);
                strGroup6.getClass();
                i = Integer.parseInt(strGroup6);
            }
            iDateCharacterOffset = dateCharacterOffset(s, iDateCharacterOffset2 + 1, limit, false);
        }
        if (70 <= i && i < 100) {
            i += 1900;
        }
        if (i >= 0 && i < 70) {
            i += 2000;
        }
        if (i < 1601) {
            i.k("Failed requirement.");
            return 0L;
        }
        if (iU == -1) {
            i.k("Failed requirement.");
            return 0L;
        }
        if (1 > i3 || i3 >= 32) {
            i.k("Failed requirement.");
            return 0L;
        }
        if (i2 < 0 || i2 >= 24) {
            i.k("Failed requirement.");
            return 0L;
        }
        if (i4 < 0 || i4 >= 60) {
            i.k("Failed requirement.");
            return 0L;
        }
        if (i5 < 0 || i5 >= 60) {
            i.k("Failed requirement.");
            return 0L;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, iU - 1);
        gregorianCalendar.set(5, i3);
        gregorianCalendar.set(11, i2);
        gregorianCalendar.set(12, i4);
        gregorianCalendar.set(13, i5);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final long parseMaxAge(String s) {
        try {
            long j = Long.parseLong(s);
            if (j <= 0) {
                return Long.MIN_VALUE;
            }
            return j;
        } catch (NumberFormatException e) {
            if (new Regex("-?\\d+").matches(s)) {
                return StringsKt.M(s, "-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean pathMatch(HttpUrl url, String path) {
        String strEncodedPath = url.encodedPath();
        if (Intrinsics.areEqual(strEncodedPath, path)) {
            return true;
        }
        if (StringsKt.M(strEncodedPath, path)) {
            return StringsKt.r(path, "/") || strEncodedPath.charAt(path.length()) == '/';
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final Cookie parse(HttpUrl url, String setCookie) {
        url.getClass();
        setCookie.getClass();
        return parse$okhttp(System.currentTimeMillis(), url, setCookie);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cookie parse$okhttp(long currentTimeMillis, HttpUrl url, String setCookie) {
        long j;
        String str;
        url.getClass();
        setCookie.getClass();
        int iDelimiterOffset$default = Util.delimiterOffset$default(setCookie, ';', 0, 0, 6, (Object) null);
        int iDelimiterOffset$default2 = Util.delimiterOffset$default(setCookie, '=', 0, iDelimiterOffset$default, 2, (Object) null);
        String strSubstring = null;
        if (iDelimiterOffset$default2 != iDelimiterOffset$default) {
            String strTrimSubstring$default = Util.trimSubstring$default(setCookie, 0, iDelimiterOffset$default2, 1, null);
            if (strTrimSubstring$default.length() != 0 && Util.indexOfControlOrNonAscii(strTrimSubstring$default) == -1) {
                String strTrimSubstring = Util.trimSubstring(setCookie, iDelimiterOffset$default2 + 1, iDelimiterOffset$default);
                if (Util.indexOfControlOrNonAscii(strTrimSubstring) == -1) {
                    int i = iDelimiterOffset$default + 1;
                    int length = setCookie.length();
                    String domain = null;
                    boolean z = false;
                    boolean z2 = false;
                    boolean z3 = false;
                    boolean z4 = true;
                    long expires = 253402300799999L;
                    long maxAge = -1;
                    while (i < length) {
                        int iDelimiterOffset = Util.delimiterOffset(setCookie, ';', i, length);
                        int iDelimiterOffset2 = Util.delimiterOffset(setCookie, '=', i, iDelimiterOffset);
                        String strTrimSubstring2 = Util.trimSubstring(setCookie, i, iDelimiterOffset2);
                        String strTrimSubstring3 = iDelimiterOffset2 < iDelimiterOffset ? Util.trimSubstring(setCookie, iDelimiterOffset2 + 1, iDelimiterOffset) : HttpUrl.FRAGMENT_ENCODE_SET;
                        if (StringsKt.s(strTrimSubstring2, "expires")) {
                            try {
                                expires = parseExpires(strTrimSubstring3, 0, strTrimSubstring3.length());
                                z2 = true;
                            } catch (NumberFormatException | IllegalArgumentException unused) {
                            }
                        } else if (StringsKt.s(strTrimSubstring2, "max-age")) {
                            maxAge = parseMaxAge(strTrimSubstring3);
                            z2 = true;
                        } else if (StringsKt.s(strTrimSubstring2, "domain")) {
                            domain = parseDomain(strTrimSubstring3);
                            z4 = false;
                        } else if (StringsKt.s(strTrimSubstring2, "path")) {
                            strSubstring = strTrimSubstring3;
                        } else if (StringsKt.s(strTrimSubstring2, "secure")) {
                            z3 = true;
                        } else if (StringsKt.s(strTrimSubstring2, "httponly")) {
                            z = true;
                        }
                        i = iDelimiterOffset + 1;
                    }
                    if (maxAge == Long.MIN_VALUE) {
                        j = Long.MIN_VALUE;
                    } else if (maxAge != -1) {
                        long j2 = currentTimeMillis + (maxAge <= 9223372036854775L ? maxAge * ((long) 1000) : Long.MAX_VALUE);
                        j = (j2 < currentTimeMillis || j2 > DatesKt.MAX_DATE) ? 253402300799999L : j2;
                    } else {
                        j = expires;
                    }
                    String strHost = url.host();
                    if (domain == null) {
                        str = strHost;
                    } else {
                        if (!domainMatch(strHost, domain)) {
                            return null;
                        }
                        str = domain;
                    }
                    if (strHost.length() != str.length() && PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(str) == null) {
                        return null;
                    }
                    if (strSubstring == null || !StringsKt.M(strSubstring, "/")) {
                        String strEncodedPath = url.encodedPath();
                        int iX = StringsKt.x(strEncodedPath, IOUtils.DIR_SEPARATOR_UNIX, 0, 6);
                        strSubstring = iX != 0 ? strEncodedPath.substring(0, iX) : "/";
                    }
                    return new Cookie(strTrimSubstring$default, strTrimSubstring, j, str, strSubstring, z3, z, z2, z4, null);
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final List<Cookie> parseAll(HttpUrl url, Headers headers) {
        url.getClass();
        headers.getClass();
        List<String> listValues = headers.values("Set-Cookie");
        int size = listValues.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            Cookie cookie = parse(url, listValues.get(i));
            if (cookie != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(cookie);
            }
        }
        if (arrayList == null) {
            return CollectionsKt.emptyList();
        }
        List<Cookie> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }

    private Cookie$Companion() {
    }
}
