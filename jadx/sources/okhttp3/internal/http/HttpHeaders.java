package okhttp3.internal.http;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p118io.encoding.Base64;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import p099j1.C1929i;
import p130l9.C2242l;
import p130l9.C2245o;
import p232w7.C3537c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a!\u0010\u000b\u001a\u00020\n*\u00020\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bH\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a\u0013\u0010\u000e\u001a\u00020\r*\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001b\u0010\u0012\u001a\u00020\r*\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0015\u001a!\u0010\u001b\u001a\u00020\n*\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0011\u0010\u001e\u001a\u00020\r*\u00020\u001d¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u0017\u0010!\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u001dH\u0007¢\u0006\u0004\b!\u0010\u001f\"\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$\"\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010$¨\u0006&"}, m3159d2 = {"Lokhttp3/Headers;", "", "headerName", "", "Lokhttp3/Challenge;", "parseChallenges", "(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;", "Ll9/l;", "", "result", "", "readChallengeHeader", "(Ll9/l;Ljava/util/List;)V", "", "skipCommasAndWhitespace", "(Ll9/l;)Z", "", "prefix", "startsWith", "(Ll9/l;B)Z", "readQuotedString", "(Ll9/l;)Ljava/lang/String;", "readToken", "Lokhttp3/CookieJar;", "Lokhttp3/HttpUrl;", "url", "headers", "receiveHeaders", "(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V", "Lokhttp3/Response;", "promisesBody", "(Lokhttp3/Response;)Z", "response", "hasBody", "Ll9/o;", "QUOTED_STRING_DELIMITERS", "Ll9/o;", "TOKEN_DELIMITERS", "okhttp"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmName(name = "HttpHeaders")
public final class HttpHeaders {
    private static final C2245o QUOTED_STRING_DELIMITERS;
    private static final C2245o TOKEN_DELIMITERS;

    static {
        C2245o c2245o = C2245o.f5879e;
        QUOTED_STRING_DELIMITERS = C3537c.m5648k("\"\\");
        TOKEN_DELIMITERS = C3537c.m5648k("\t ,=");
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "No longer supported", replaceWith = @ReplaceWith(expression = "response.promisesBody()", imports = {}))
    public static final boolean hasBody(Response response) {
        response.getClass();
        return promisesBody(response);
    }

    public static final List<Challenge> parseChallenges(Headers headers, String str) {
        headers.getClass();
        str.getClass();
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (StringsKt__StringsJVMKt.equals(str, headers.name(i10), true)) {
                C2242l c2242l = new C2242l();
                c2242l.m3630u0(headers.value(i10));
                try {
                    readChallengeHeader(c2242l, arrayList);
                } catch (EOFException e) {
                    Platform.INSTANCE.get().log("Unable to parse challenge", 5, e);
                }
            }
        }
        return arrayList;
    }

    public static final boolean promisesBody(Response response) {
        response.getClass();
        if (Intrinsics.areEqual(response.request().method(), "HEAD")) {
            return false;
        }
        int iCode = response.code();
        return (((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) && Util.headersContentLength(response) == -1 && !StringsKt__StringsJVMKt.equals("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true)) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0080  */
    /* JADX WARN: Code duplicated, block: B:35:0x0093  */
    /* JADX WARN: Code duplicated, block: B:36:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b7 A[EDGE_INSN: B:59:0x00b7->B:48:0x00b7 BREAK  A[LOOP:2: B:22:0x006d->B:47:0x00b5], SYNTHETIC] */
    private static final void readChallengeHeader(C2242l c2242l, List<Challenge> list) throws EOFException {
        String token;
        while (true) {
            String token2 = null;
            while (true) {
                if (token2 == null) {
                    skipCommasAndWhitespace(c2242l);
                    token2 = readToken(c2242l);
                    if (token2 == null) {
                        return;
                    }
                }
                boolean zSkipCommasAndWhitespace = skipCommasAndWhitespace(c2242l);
                String token3 = readToken(c2242l);
                if (token3 == null) {
                    if (c2242l.mo3564k()) {
                        list.add(new Challenge(token2, (Map<String, String>) MapsKt.emptyMap()));
                        return;
                    }
                    return;
                }
                int iSkipAll = Util.skipAll(c2242l, Base64.padSymbol);
                boolean zSkipCommasAndWhitespace2 = skipCommasAndWhitespace(c2242l);
                if (zSkipCommasAndWhitespace || !(zSkipCommasAndWhitespace2 || c2242l.mo3564k())) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    int iSkipAll2 = Util.skipAll(c2242l, Base64.padSymbol) + iSkipAll;
                    while (true) {
                        if (token3 != null) {
                            if (iSkipAll2 != 0) {
                                break;
                                break;
                            }
                            if (iSkipAll2 <= 1) {
                                return;
                            }
                            if (startsWith(c2242l, (byte) 34)) {
                                token = readQuotedString(c2242l);
                            } else {
                                token = readToken(c2242l);
                            }
                            if (token != null) {
                                return;
                            }
                            if (skipCommasAndWhitespace(c2242l)) {
                            }
                            token3 = null;
                        } else {
                            token3 = readToken(c2242l);
                            if (!skipCommasAndWhitespace(c2242l)) {
                                iSkipAll2 = Util.skipAll(c2242l, Base64.padSymbol);
                                if (iSkipAll2 != 0) {
                                    break;
                                }
                                if (iSkipAll2 <= 1 || skipCommasAndWhitespace(c2242l)) {
                                    return;
                                }
                                if (startsWith(c2242l, (byte) 34)) {
                                    token = readQuotedString(c2242l);
                                } else {
                                    token = readToken(c2242l);
                                }
                                if (token != null || ((String) linkedHashMap.put(token3, token)) != null) {
                                    return;
                                }
                                if (skipCommasAndWhitespace(c2242l) && !c2242l.mo3564k()) {
                                    return;
                                } else {
                                    token3 = null;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    list.add(new Challenge(token2, linkedHashMap));
                    token2 = token3;
                } else {
                    StringBuilder sbM170u = AbstractC0074a.m170u(token3);
                    sbM170u.append(StringsKt__StringsJVMKt.repeat("=", iSkipAll));
                    Map mapSingletonMap = Collections.singletonMap(null, sbM170u.toString());
                    mapSingletonMap.getClass();
                    list.add(new Challenge(token2, (Map<String, String>) mapSingletonMap));
                }
            }
        }
    }

    private static final String readQuotedString(C2242l c2242l) throws EOFException {
        if (c2242l.readByte() != 34) {
            C1929i.m3029k("Failed requirement.");
            return null;
        }
        C2242l c2242l2 = new C2242l();
        while (true) {
            long jM3611d0 = c2242l.m3611d0(QUOTED_STRING_DELIMITERS);
            if (jM3611d0 == -1) {
                return null;
            }
            if (c2242l.m3606V(jM3611d0) == 34) {
                c2242l2.write(c2242l, jM3611d0);
                c2242l.readByte();
                return c2242l2.m3616h0();
            }
            if (c2242l.f5878c == jM3611d0 + 1) {
                return null;
            }
            c2242l2.write(c2242l, jM3611d0);
            c2242l.readByte();
            c2242l2.write(c2242l, 1L);
        }
    }

    private static final String readToken(C2242l c2242l) {
        long jM3611d0 = c2242l.m3611d0(TOKEN_DELIMITERS);
        if (jM3611d0 == -1) {
            jM3611d0 = c2242l.f5878c;
        }
        if (jM3611d0 != 0) {
            return c2242l.m3615g0(jM3611d0, Charsets.UTF_8);
        }
        return null;
    }

    public static final void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        cookieJar.getClass();
        httpUrl.getClass();
        headers.getClass();
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> all = Cookie.INSTANCE.parseAll(httpUrl, headers);
        if (all.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, all);
    }

    private static final boolean skipCommasAndWhitespace(C2242l c2242l) throws EOFException {
        boolean z9 = false;
        while (!c2242l.mo3564k()) {
            byte bM3606V = c2242l.m3606V(0L);
            if (bM3606V == 44) {
                c2242l.readByte();
                z9 = true;
            } else {
                if (bM3606V != 32 && bM3606V != 9) {
                    break;
                }
                c2242l.readByte();
            }
        }
        return z9;
    }

    private static final boolean startsWith(C2242l c2242l, byte b10) {
        return !c2242l.mo3564k() && c2242l.m3606V(0L) == b10;
    }
}
