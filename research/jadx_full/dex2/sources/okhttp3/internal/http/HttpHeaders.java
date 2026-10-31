package okhttp3.internal.http;

import ai.onnxruntime.a;
import j1.i;
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
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import l9.l;
import l9.o;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import w7.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a!\u0010\u000b\u001a\u00020\n*\u00020\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bH\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a\u0013\u0010\u000e\u001a\u00020\r*\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001b\u0010\u0012\u001a\u00020\r*\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0015\u001a!\u0010\u001b\u001a\u00020\n*\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0011\u0010\u001e\u001a\u00020\r*\u00020\u001d¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u0017\u0010!\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u001dH\u0007¢\u0006\u0004\b!\u0010\u001f\"\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$\"\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010$¨\u0006&"}, d2 = {"Lokhttp3/Headers;", HttpUrl.FRAGMENT_ENCODE_SET, "headerName", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/Challenge;", "parseChallenges", "(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;", "Ll9/l;", HttpUrl.FRAGMENT_ENCODE_SET, "result", HttpUrl.FRAGMENT_ENCODE_SET, "readChallengeHeader", "(Ll9/l;Ljava/util/List;)V", HttpUrl.FRAGMENT_ENCODE_SET, "skipCommasAndWhitespace", "(Ll9/l;)Z", HttpUrl.FRAGMENT_ENCODE_SET, "prefix", "startsWith", "(Ll9/l;B)Z", "readQuotedString", "(Ll9/l;)Ljava/lang/String;", "readToken", "Lokhttp3/CookieJar;", "Lokhttp3/HttpUrl;", "url", "headers", "receiveHeaders", "(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V", "Lokhttp3/Response;", "promisesBody", "(Lokhttp3/Response;)Z", "response", "hasBody", "Ll9/o;", "QUOTED_STRING_DELIMITERS", "Ll9/o;", "TOKEN_DELIMITERS", "okhttp"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "HttpHeaders")
public final class HttpHeaders {
    private static final o QUOTED_STRING_DELIMITERS;
    private static final o TOKEN_DELIMITERS;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        o oVar = o.e;
        QUOTED_STRING_DELIMITERS = c.k("\"\\");
        TOKEN_DELIMITERS = c.k("\t ,=");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated(level = DeprecationLevel.ERROR, message = "No longer supported", replaceWith = @ReplaceWith(expression = "response.promisesBody()", imports = {}))
    public static final boolean hasBody(Response response) {
        response.getClass();
        return promisesBody(response);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final List<Challenge> parseChallenges(Headers headers, String str) {
        headers.getClass();
        str.getClass();
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            if (StringsKt.s(str, headers.name(i))) {
                l lVar = new l();
                lVar.u0(headers.value(i));
                try {
                    readChallengeHeader(lVar, arrayList);
                } catch (EOFException e) {
                    Platform.Companion.get().log("Unable to parse challenge", 5, e);
                }
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean promisesBody(Response response) {
        response.getClass();
        if (Intrinsics.areEqual(response.request().method(), "HEAD")) {
            return false;
        }
        int iCode = response.code();
        return (((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) && Util.headersContentLength(response) == -1 && !StringsKt.s("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null))) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:27:0x0080  */
    /* JADX WARN: Code duplicated, block: B:35:0x0093  */
    /* JADX WARN: Code duplicated, block: B:36:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b7 A[EDGE_INSN: B:59:0x00b7->B:48:0x00b7 BREAK  A[LOOP:2: B:22:0x006d->B:47:0x00b5], SYNTHETIC] */
    private static final void readChallengeHeader(l lVar, List<Challenge> list) throws EOFException {
        String token;
        while (true) {
            String token2 = null;
            while (true) {
                if (token2 == null) {
                    skipCommasAndWhitespace(lVar);
                    token2 = readToken(lVar);
                    if (token2 == null) {
                        return;
                    }
                }
                boolean zSkipCommasAndWhitespace = skipCommasAndWhitespace(lVar);
                String token3 = readToken(lVar);
                if (token3 == null) {
                    if (lVar.k()) {
                        list.add(new Challenge(token2, (Map<String, String>) MapsKt.emptyMap()));
                        return;
                    }
                    return;
                }
                int iSkipAll = Util.skipAll(lVar, (byte) 61);
                boolean zSkipCommasAndWhitespace2 = skipCommasAndWhitespace(lVar);
                if (zSkipCommasAndWhitespace || !(zSkipCommasAndWhitespace2 || lVar.k())) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    int iSkipAll2 = Util.skipAll(lVar, (byte) 61) + iSkipAll;
                    while (true) {
                        if (token3 != null) {
                            if (iSkipAll2 != 0) {
                                break;
                                break;
                            }
                            if (iSkipAll2 <= 1) {
                                return;
                            }
                            if (startsWith(lVar, (byte) 34)) {
                                token = readQuotedString(lVar);
                            } else {
                                token = readToken(lVar);
                            }
                            if (token != null) {
                                return;
                            }
                            if (skipCommasAndWhitespace(lVar)) {
                            }
                            token3 = null;
                        } else {
                            token3 = readToken(lVar);
                            if (!skipCommasAndWhitespace(lVar)) {
                                iSkipAll2 = Util.skipAll(lVar, (byte) 61);
                                if (iSkipAll2 != 0) {
                                    break;
                                }
                                if (iSkipAll2 <= 1 || skipCommasAndWhitespace(lVar)) {
                                    return;
                                }
                                if (startsWith(lVar, (byte) 34)) {
                                    token = readQuotedString(lVar);
                                } else {
                                    token = readToken(lVar);
                                }
                                if (token != null || ((String) linkedHashMap.put(token3, token)) != null) {
                                    return;
                                }
                                if (skipCommasAndWhitespace(lVar) && !lVar.k()) {
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
                    StringBuilder sbU = a.u(token3);
                    sbU.append(StringsKt.E(iSkipAll, "="));
                    Map mapSingletonMap = Collections.singletonMap(null, sbU.toString());
                    mapSingletonMap.getClass();
                    list.add(new Challenge(token2, (Map<String, String>) mapSingletonMap));
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final String readQuotedString(l lVar) throws EOFException {
        if (lVar.readByte() != 34) {
            i.k("Failed requirement.");
            return null;
        }
        l lVar2 = new l();
        while (true) {
            long jD0 = lVar.d0(QUOTED_STRING_DELIMITERS);
            if (jD0 == -1) {
                return null;
            }
            if (lVar.V(jD0) == 34) {
                lVar2.write(lVar, jD0);
                lVar.readByte();
                return lVar2.h0();
            }
            if (lVar.c == jD0 + 1) {
                return null;
            }
            lVar2.write(lVar, jD0);
            lVar.readByte();
            lVar2.write(lVar, 1L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final String readToken(l lVar) {
        long jD0 = lVar.d0(TOKEN_DELIMITERS);
        if (jD0 == -1) {
            jD0 = lVar.c;
        }
        if (jD0 != 0) {
            return lVar.g0(jD0, Charsets.UTF_8);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        cookieJar.getClass();
        httpUrl.getClass();
        headers.getClass();
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> all = Cookie.Companion.parseAll(httpUrl, headers);
        if (all.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, all);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean skipCommasAndWhitespace(l lVar) throws EOFException {
        boolean z = false;
        while (!lVar.k()) {
            byte bV = lVar.V(0L);
            if (bV == 44) {
                lVar.readByte();
                z = true;
            } else {
                if (bV != 32 && bV != 9) {
                    break;
                }
                lVar.readByte();
            }
        }
        return z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean startsWith(l lVar, byte b) {
        return !lVar.k() && lVar.V(0L) == b;
    }
}
