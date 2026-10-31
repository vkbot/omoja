package okhttp3;

import ai.onnxruntime.a;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import n0.b;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.telnet.TelnetCommand;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0017\u0018\u0000 V2\u00020\u0001:\u0001VB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0004J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0004J\u0018\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u00042\b\u0010(\u001a\u0004\u0018\u00010\u0004J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0004J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0004J\u0018\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020.H\u0002J\u0018\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u00042\b\u00101\u001a\u0004\u0018\u00010\u0004J\u0006\u00102\u001a\u000203J\b\u00104\u001a\u00020\u001bH\u0002J\u0010\u0010\u0003\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004J\u000e\u00105\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0004J\u0010\u00106\u001a\u00020\u00002\b\u00106\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0004J\u0010\u00107\u001a\u00020\u00002\b\u00107\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0004J\u0010\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020\u0004H\u0002J\u0010\u0010:\u001a\u00020.2\u0006\u00109\u001a\u00020\u0004H\u0002J\u001f\u0010;\u001a\u00020\u00002\b\u0010<\u001a\u0004\u0018\u0001032\u0006\u00109\u001a\u00020\u0004H\u0000¢\u0006\u0002\b=J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0004J\b\u0010?\u001a\u00020@H\u0002J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ0\u0010A\u001a\u00020@2\u0006\u00109\u001a\u00020\u00042\u0006\u0010B\u001a\u00020\u001b2\u0006\u0010C\u001a\u00020\u001b2\u0006\u0010D\u001a\u00020.2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010E\u001a\u00020\u00002\b\u0010E\u001a\u0004\u0018\u00010\u0004J\r\u0010F\u001a\u00020\u0000H\u0000¢\u0006\u0002\bGJ\u0010\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u0004H\u0002J\u000e\u0010J\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u0004J\u000e\u0010K\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0004J\u000e\u0010L\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u001bJ \u0010N\u001a\u00020@2\u0006\u00109\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u001b2\u0006\u0010C\u001a\u00020\u001bH\u0002J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0004J\u0016\u0010P\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u0004J\u0018\u0010Q\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u00042\b\u0010(\u001a\u0004\u0018\u00010\u0004J\u0016\u0010R\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u0004J\u0018\u0010S\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u00042\b\u00101\u001a\u0004\u0018\u00010\u0004J\b\u0010T\u001a\u00020\u0004H\u0016J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000f\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\bR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\bR\u001a\u0010\u001a\u001a\u00020\u001bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0006\"\u0004\b\"\u0010\b¨\u0006W"}, d2 = {"Lokhttp3/HttpUrl$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "encodedFragment", HttpUrl.FRAGMENT_ENCODE_SET, "getEncodedFragment$okhttp", "()Ljava/lang/String;", "setEncodedFragment$okhttp", "(Ljava/lang/String;)V", "encodedPassword", "getEncodedPassword$okhttp", "setEncodedPassword$okhttp", "encodedPathSegments", HttpUrl.FRAGMENT_ENCODE_SET, "getEncodedPathSegments$okhttp", "()Ljava/util/List;", "encodedQueryNamesAndValues", "getEncodedQueryNamesAndValues$okhttp", "setEncodedQueryNamesAndValues$okhttp", "(Ljava/util/List;)V", "encodedUsername", "getEncodedUsername$okhttp", "setEncodedUsername$okhttp", "host", "getHost$okhttp", "setHost$okhttp", "port", HttpUrl.FRAGMENT_ENCODE_SET, "getPort$okhttp", "()I", "setPort$okhttp", "(I)V", "scheme", "getScheme$okhttp", "setScheme$okhttp", "addEncodedPathSegment", "encodedPathSegment", "addEncodedPathSegments", "addEncodedQueryParameter", "encodedName", "encodedValue", "addPathSegment", "pathSegment", "addPathSegments", "pathSegments", "alreadyEncoded", HttpUrl.FRAGMENT_ENCODE_SET, "addQueryParameter", "name", "value", "build", "Lokhttp3/HttpUrl;", "effectivePort", "encodedPath", "encodedQuery", "fragment", "isDot", "input", "isDotDot", "parse", "base", "parse$okhttp", "password", "pop", HttpUrl.FRAGMENT_ENCODE_SET, "push", "pos", "limit", "addTrailingSlash", "query", "reencodeForUri", "reencodeForUri$okhttp", "removeAllCanonicalQueryParameters", "canonicalName", "removeAllEncodedQueryParameters", "removeAllQueryParameters", "removePathSegment", "index", "resolvePath", "startPos", "setEncodedPathSegment", "setEncodedQueryParameter", "setPathSegment", "setQueryParameter", "toString", "username", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttpUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1869:1\n1#2:1870\n1549#3:1871\n1620#3,3:1872\n1549#3:1875\n1620#3,3:1876\n*S KotlinDebug\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder\n*L\n1180#1:1871\n1180#1:1872,3\n1181#1:1875\n1181#1:1876,3\n*E\n"})
public final class HttpUrl$Builder {
    public static final HttpUrl$Builder$Companion Companion = new HttpUrl$Builder$Companion(null);
    public static final String INVALID_HOST = "Invalid URL host";
    private String encodedFragment;
    private final List<String> encodedPathSegments;
    private List<String> encodedQueryNamesAndValues;
    private String host;
    private String scheme;
    private String encodedUsername = HttpUrl.FRAGMENT_ENCODE_SET;
    private String encodedPassword = HttpUrl.FRAGMENT_ENCODE_SET;
    private int port = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HttpUrl$Builder() {
        ArrayList arrayList = new ArrayList();
        this.encodedPathSegments = arrayList;
        arrayList.add(HttpUrl.FRAGMENT_ENCODE_SET);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final HttpUrl$Builder addPathSegments(String pathSegments, boolean alreadyEncoded) {
        int i = 0;
        while (true) {
            int iDelimiterOffset = Util.delimiterOffset(pathSegments, "/\\", i, pathSegments.length());
            push(pathSegments, i, iDelimiterOffset, iDelimiterOffset < pathSegments.length(), alreadyEncoded);
            i = iDelimiterOffset + 1;
            if (i > pathSegments.length()) {
                return this;
            }
            pathSegments = pathSegments;
            alreadyEncoded = alreadyEncoded;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int effectivePort() {
        int i = this.port;
        if (i != -1) {
            return i;
        }
        HttpUrl$Companion httpUrl$Companion = HttpUrl.Companion;
        String str = this.scheme;
        str.getClass();
        return httpUrl$Companion.defaultPort(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean isDot(String input) {
        return Intrinsics.areEqual(input, ".") || StringsKt.s(input, "%2e");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean isDotDot(String input) {
        return Intrinsics.areEqual(input, "..") || StringsKt.s(input, "%2e.") || StringsKt.s(input, ".%2e") || StringsKt.s(input, "%2e%2e");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void pop() {
        List<String> list = this.encodedPathSegments;
        if (list.remove(list.size() - 1).length() != 0 || this.encodedPathSegments.isEmpty()) {
            this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
        } else {
            List<String> list2 = this.encodedPathSegments;
            list2.set(list2.size() - 1, HttpUrl.FRAGMENT_ENCODE_SET);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void push(String input, int pos, int limit, boolean addTrailingSlash, boolean alreadyEncoded) {
        String strCanonicalize$okhttp$default = HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, pos, limit, HttpUrl.PATH_SEGMENT_ENCODE_SET, alreadyEncoded, false, false, false, null, 240, null);
        if (isDot(strCanonicalize$okhttp$default)) {
            return;
        }
        if (isDotDot(strCanonicalize$okhttp$default)) {
            pop();
            return;
        }
        List<String> list = this.encodedPathSegments;
        int length = list.get(list.size() - 1).length();
        List<String> list2 = this.encodedPathSegments;
        if (length == 0) {
            list2.set(list2.size() - 1, strCanonicalize$okhttp$default);
        } else {
            list2.add(strCanonicalize$okhttp$default);
        }
        if (addTrailingSlash) {
            this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void removeAllCanonicalQueryParameters(String canonicalName) {
        List<String> list = this.encodedQueryNamesAndValues;
        list.getClass();
        int size = list.size() - 2;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(size, 0, -2);
        if (progressionLastElement > size) {
            return;
        }
        while (true) {
            List<String> list2 = this.encodedQueryNamesAndValues;
            list2.getClass();
            if (Intrinsics.areEqual(canonicalName, list2.get(size))) {
                List<String> list3 = this.encodedQueryNamesAndValues;
                list3.getClass();
                list3.remove(size + 1);
                List<String> list4 = this.encodedQueryNamesAndValues;
                list4.getClass();
                list4.remove(size);
                List<String> list5 = this.encodedQueryNamesAndValues;
                list5.getClass();
                if (list5.isEmpty()) {
                    this.encodedQueryNamesAndValues = null;
                    return;
                }
            }
            if (size == progressionLastElement) {
                return;
            } else {
                size -= 2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void resolvePath(String input, int startPos, int limit) {
        if (startPos == limit) {
            return;
        }
        char cCharAt = input.charAt(startPos);
        if (cCharAt == '/' || cCharAt == '\\') {
            this.encodedPathSegments.clear();
            this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
            startPos++;
        } else {
            List<String> list = this.encodedPathSegments;
            list.set(list.size() - 1, HttpUrl.FRAGMENT_ENCODE_SET);
        }
        int i = startPos;
        while (i < limit) {
            int iDelimiterOffset = Util.delimiterOffset(input, "/\\", i, limit);
            boolean z = iDelimiterOffset < limit;
            input = input;
            push(input, i, iDelimiterOffset, z, true);
            i = z ? iDelimiterOffset + 1 : iDelimiterOffset;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder addEncodedPathSegment(String encodedPathSegment) {
        encodedPathSegment.getClass();
        push(encodedPathSegment, 0, encodedPathSegment.length(), false, true);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder addEncodedPathSegments(String encodedPathSegments) {
        encodedPathSegments.getClass();
        return addPathSegments(encodedPathSegments, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder addEncodedQueryParameter(String encodedName, String encodedValue) {
        encodedName.getClass();
        if (this.encodedQueryNamesAndValues == null) {
            this.encodedQueryNamesAndValues = new ArrayList();
        }
        List<String> list = this.encodedQueryNamesAndValues;
        list.getClass();
        HttpUrl$Companion httpUrl$Companion = HttpUrl.Companion;
        list.add(HttpUrl$Companion.canonicalize$okhttp$default(httpUrl$Companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
        List<String> list2 = this.encodedQueryNamesAndValues;
        list2.getClass();
        list2.add(encodedValue != null ? HttpUrl$Companion.canonicalize$okhttp$default(httpUrl$Companion, encodedValue, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null) : null);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder addPathSegment(String pathSegment) {
        pathSegment.getClass();
        push(pathSegment, 0, pathSegment.length(), false, false);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder addQueryParameter(String name, String value) {
        name.getClass();
        if (this.encodedQueryNamesAndValues == null) {
            this.encodedQueryNamesAndValues = new ArrayList();
        }
        List<String> list = this.encodedQueryNamesAndValues;
        list.getClass();
        HttpUrl$Companion httpUrl$Companion = HttpUrl.Companion;
        list.add(HttpUrl$Companion.canonicalize$okhttp$default(httpUrl$Companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
        List<String> list2 = this.encodedQueryNamesAndValues;
        list2.getClass();
        list2.add(value != null ? HttpUrl$Companion.canonicalize$okhttp$default(httpUrl$Companion, value, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null) : null);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl build() {
        ArrayList arrayList;
        String str = this.scheme;
        if (str == null) {
            i.l("scheme == null");
            return null;
        }
        HttpUrl$Companion httpUrl$Companion = HttpUrl.Companion;
        String strPercentDecode$okhttp$default = HttpUrl$Companion.percentDecode$okhttp$default(httpUrl$Companion, this.encodedUsername, 0, 0, false, 7, null);
        String strPercentDecode$okhttp$default2 = HttpUrl$Companion.percentDecode$okhttp$default(httpUrl$Companion, this.encodedPassword, 0, 0, false, 7, null);
        String str2 = this.host;
        if (str2 == null) {
            i.l("host == null");
            return null;
        }
        int iEffectivePort = effectivePort();
        List<String> list = this.encodedPathSegments;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(HttpUrl$Companion.percentDecode$okhttp$default(HttpUrl.Companion, (String) it.next(), 0, 0, false, 7, null));
        }
        List<String> list2 = this.encodedQueryNamesAndValues;
        if (list2 != null) {
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            for (String str3 : list2) {
                arrayList3.add(str3 != null ? HttpUrl$Companion.percentDecode$okhttp$default(HttpUrl.Companion, str3, 0, 0, true, 3, null) : null);
            }
            arrayList = arrayList3;
        } else {
            arrayList = null;
        }
        String str4 = this.encodedFragment;
        return new HttpUrl(str, strPercentDecode$okhttp$default, strPercentDecode$okhttp$default2, str2, iEffectivePort, arrayList2, arrayList, str4 != null ? HttpUrl$Companion.percentDecode$okhttp$default(HttpUrl.Companion, str4, 0, 0, false, 7, null) : null, toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder encodedFragment(String encodedFragment) {
        this.encodedFragment = encodedFragment != null ? HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedFragment, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET, true, false, false, true, null, 179, null) : null;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder encodedPassword(String encodedPassword) {
        encodedPassword.getClass();
        this.encodedPassword = HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPassword, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, TelnetCommand.BREAK, null);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder encodedPath(String encodedPath) {
        encodedPath.getClass();
        if (StringsKt.M(encodedPath, "/")) {
            resolvePath(encodedPath, 0, encodedPath.length());
            return this;
        }
        l9.i.d("unexpected encodedPath: ".concat(encodedPath));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder encodedQuery(String encodedQuery) {
        HttpUrl$Companion httpUrl$Companion;
        String strCanonicalize$okhttp$default;
        this.encodedQueryNamesAndValues = (encodedQuery == null || (strCanonicalize$okhttp$default = HttpUrl$Companion.canonicalize$okhttp$default((httpUrl$Companion = HttpUrl.Companion), encodedQuery, 0, 0, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 211, null)) == null) ? null : httpUrl$Companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder encodedUsername(String encodedUsername) {
        encodedUsername.getClass();
        this.encodedUsername = HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedUsername, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, TelnetCommand.BREAK, null);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder fragment(String fragment) {
        this.encodedFragment = fragment != null ? HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, fragment, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET, false, false, false, true, null, 187, null) : null;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getEncodedFragment$okhttp, reason: from getter */
    public final String getEncodedFragment() {
        return this.encodedFragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getEncodedPassword$okhttp, reason: from getter */
    public final String getEncodedPassword() {
        return this.encodedPassword;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<String> getEncodedPathSegments$okhttp() {
        return this.encodedPathSegments;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<String> getEncodedQueryNamesAndValues$okhttp() {
        return this.encodedQueryNamesAndValues;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getEncodedUsername$okhttp, reason: from getter */
    public final String getEncodedUsername() {
        return this.encodedUsername;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getHost$okhttp, reason: from getter */
    public final String getHost() {
        return this.host;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getPort$okhttp, reason: from getter */
    public final int getPort() {
        return this.port;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getScheme$okhttp, reason: from getter */
    public final String getScheme() {
        return this.scheme;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder host(String host) {
        host.getClass();
        String canonicalHost = HostnamesKt.toCanonicalHost(HttpUrl$Companion.percentDecode$okhttp$default(HttpUrl.Companion, host, 0, 0, false, 7, null));
        if (canonicalHost != null) {
            this.host = canonicalHost;
            return this;
        }
        i.k(a.l("unexpected host: ", host));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder parse$okhttp(HttpUrl base, String input) {
        String str;
        int iDelimiterOffset;
        int i;
        int i2;
        char c;
        int i3;
        String str2 = input;
        str2.getClass();
        int iIndexOfFirstNonAsciiWhitespace$default = Util.indexOfFirstNonAsciiWhitespace$default(str2, 0, 0, 3, null);
        int iIndexOfLastNonAsciiWhitespace$default = Util.indexOfLastNonAsciiWhitespace$default(str2, iIndexOfFirstNonAsciiWhitespace$default, 0, 2, null);
        HttpUrl$Builder$Companion httpUrl$Builder$Companion = Companion;
        int iAccess$schemeDelimiterOffset = HttpUrl$Builder$Companion.access$schemeDelimiterOffset(httpUrl$Builder$Companion, str2, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
        byte b = -1;
        if (iAccess$schemeDelimiterOffset != -1) {
            if (StringsKt.I(iIndexOfFirstNonAsciiWhitespace$default, str2, "https:")) {
                this.scheme = "https";
                iIndexOfFirstNonAsciiWhitespace$default += 6;
            } else {
                if (!StringsKt.I(iIndexOfFirstNonAsciiWhitespace$default, str2, "http:")) {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str2.substring(0, iAccess$schemeDelimiterOffset) + '\'');
                }
                this.scheme = "http";
                iIndexOfFirstNonAsciiWhitespace$default += 5;
            }
        } else {
            if (base == null) {
                if (str2.length() > 6) {
                    str = StringsKt.take(str2, 6) + "...";
                } else {
                    str = str2;
                }
                i.k("Expected URL scheme 'http' or 'https' but no scheme was found for ".concat(str));
                return null;
            }
            this.scheme = base.scheme();
        }
        int iAccess$slashCount = HttpUrl$Builder$Companion.access$slashCount(httpUrl$Builder$Companion, str2, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
        byte b2 = 63;
        byte b3 = 35;
        if (iAccess$slashCount >= 2 || base == null || !Intrinsics.areEqual(base.scheme(), this.scheme)) {
            int i4 = iIndexOfFirstNonAsciiWhitespace$default + iAccess$slashCount;
            boolean z = false;
            boolean z2 = false;
            while (true) {
                iDelimiterOffset = Util.delimiterOffset(str2, "@/\\?#", i4, iIndexOfLastNonAsciiWhitespace$default);
                byte bCharAt = iDelimiterOffset != iIndexOfLastNonAsciiWhitespace$default ? str2.charAt(iDelimiterOffset) : b;
                if (bCharAt == b || bCharAt == b3 || bCharAt == 47 || bCharAt == 92 || bCharAt == b2) {
                    break;
                }
                if (bCharAt == 64) {
                    if (z) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.encodedPassword);
                        sb.append("%40");
                        str2 = input;
                        i = iDelimiterOffset;
                        sb.append(HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, str2, i4, iDelimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null));
                        this.encodedPassword = sb.toString();
                    } else {
                        int iDelimiterOffset2 = Util.delimiterOffset(str2, ':', i4, iDelimiterOffset);
                        HttpUrl$Companion httpUrl$Companion = HttpUrl.Companion;
                        String strCanonicalize$okhttp$default = HttpUrl$Companion.canonicalize$okhttp$default(httpUrl$Companion, str2, i4, iDelimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                        if (z2) {
                            strCanonicalize$okhttp$default = this.encodedUsername + "%40" + strCanonicalize$okhttp$default;
                        }
                        this.encodedUsername = strCanonicalize$okhttp$default;
                        if (iDelimiterOffset2 != iDelimiterOffset) {
                            i2 = iDelimiterOffset;
                            this.encodedPassword = HttpUrl$Companion.canonicalize$okhttp$default(httpUrl$Companion, input, iDelimiterOffset2 + 1, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            z = true;
                        } else {
                            i2 = iDelimiterOffset;
                        }
                        str2 = input;
                        i = i2;
                        z2 = true;
                    }
                    i4 = i + 1;
                    b3 = 35;
                    b = -1;
                    b2 = 63;
                }
            }
            HttpUrl$Builder$Companion httpUrl$Builder$Companion2 = Companion;
            int iAccess$portColonOffset = HttpUrl$Builder$Companion.access$portColonOffset(httpUrl$Builder$Companion2, str2, i4, iDelimiterOffset);
            int i5 = iAccess$portColonOffset + 1;
            if (i5 < iDelimiterOffset) {
                this.host = HostnamesKt.toCanonicalHost(HttpUrl$Companion.percentDecode$okhttp$default(HttpUrl.Companion, str2, i4, iAccess$portColonOffset, false, 4, null));
                int iAccess$parsePort = HttpUrl$Builder$Companion.access$parsePort(httpUrl$Builder$Companion2, str2, i5, iDelimiterOffset);
                this.port = iAccess$parsePort;
                if (iAccess$parsePort == -1) {
                    b.g(str2.substring(i5, iDelimiterOffset), "Invalid URL port: \"");
                    return null;
                }
            } else {
                HttpUrl$Companion httpUrl$Companion2 = HttpUrl.Companion;
                this.host = HostnamesKt.toCanonicalHost(HttpUrl$Companion.percentDecode$okhttp$default(httpUrl$Companion2, str2, i4, iAccess$portColonOffset, false, 4, null));
                String str3 = this.scheme;
                str3.getClass();
                this.port = httpUrl$Companion2.defaultPort(str3);
            }
            if (this.host == null) {
                b.g(str2.substring(i4, iAccess$portColonOffset), "Invalid URL host: \"");
                return null;
            }
            iIndexOfFirstNonAsciiWhitespace$default = iDelimiterOffset;
        } else {
            this.encodedUsername = base.encodedUsername();
            this.encodedPassword = base.encodedPassword();
            this.host = base.host();
            this.port = base.port();
            this.encodedPathSegments.clear();
            this.encodedPathSegments.addAll(base.encodedPathSegments());
            if (iIndexOfFirstNonAsciiWhitespace$default == iIndexOfLastNonAsciiWhitespace$default || str2.charAt(iIndexOfFirstNonAsciiWhitespace$default) == '#') {
                encodedQuery(base.encodedQuery());
            }
        }
        int iDelimiterOffset3 = Util.delimiterOffset(str2, "?#", iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
        resolvePath(str2, iIndexOfFirstNonAsciiWhitespace$default, iDelimiterOffset3);
        if (iDelimiterOffset3 >= iIndexOfLastNonAsciiWhitespace$default || str2.charAt(iDelimiterOffset3) != '?') {
            c = '#';
            i3 = iDelimiterOffset3;
        } else {
            c = '#';
            int iDelimiterOffset4 = Util.delimiterOffset(str2, '#', iDelimiterOffset3, iIndexOfLastNonAsciiWhitespace$default);
            HttpUrl$Companion httpUrl$Companion3 = HttpUrl.Companion;
            this.encodedQueryNamesAndValues = httpUrl$Companion3.toQueryNamesAndValues$okhttp(HttpUrl$Companion.canonicalize$okhttp$default(httpUrl$Companion3, str2, iDelimiterOffset3 + 1, iDelimiterOffset4, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 208, null));
            i3 = iDelimiterOffset4;
        }
        if (i3 < iIndexOfLastNonAsciiWhitespace$default && str2.charAt(i3) == c) {
            this.encodedFragment = HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, str2, i3 + 1, iIndexOfLastNonAsciiWhitespace$default, HttpUrl.FRAGMENT_ENCODE_SET, true, false, false, true, null, 176, null);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder password(String password) {
        password.getClass();
        this.encodedPassword = HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, password, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder port(int port) {
        if (1 > port || port >= 65536) {
            l9.i.d(a.e(port, "unexpected port: "));
            return null;
        }
        this.port = port;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder query(String query) {
        HttpUrl$Companion httpUrl$Companion;
        String strCanonicalize$okhttp$default;
        this.encodedQueryNamesAndValues = (query == null || (strCanonicalize$okhttp$default = HttpUrl$Companion.canonicalize$okhttp$default((httpUrl$Companion = HttpUrl.Companion), query, 0, 0, HttpUrl.QUERY_ENCODE_SET, false, false, true, false, null, 219, null)) == null) ? null : httpUrl$Companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder reencodeForUri$okhttp() {
        String str = this.host;
        this.host = str != null ? new Regex("[\"<>^`{|}]").replace(str, HttpUrl.FRAGMENT_ENCODE_SET) : null;
        int size = this.encodedPathSegments.size();
        for (int i = 0; i < size; i++) {
            List<String> list = this.encodedPathSegments;
            list.set(i, HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, list.get(i), 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, null, FTPReply.ENTERING_PASSIVE_MODE, null));
        }
        List<String> list2 = this.encodedQueryNamesAndValues;
        if (list2 != null) {
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str2 = list2.get(i2);
                list2.set(i2, str2 != null ? HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, null, 195, null) : null);
            }
        }
        String str3 = this.encodedFragment;
        this.encodedFragment = str3 != null ? HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, str3, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, null, 163, null) : null;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder removeAllEncodedQueryParameters(String encodedName) {
        encodedName.getClass();
        if (this.encodedQueryNamesAndValues == null) {
            return this;
        }
        removeAllCanonicalQueryParameters(HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder removeAllQueryParameters(String name) {
        name.getClass();
        if (this.encodedQueryNamesAndValues == null) {
            return this;
        }
        removeAllCanonicalQueryParameters(HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder removePathSegment(int index) {
        this.encodedPathSegments.remove(index);
        if (this.encodedPathSegments.isEmpty()) {
            this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder scheme(String scheme) {
        scheme.getClass();
        if (StringsKt.s(scheme, "http")) {
            this.scheme = "http";
            return this;
        }
        if (StringsKt.s(scheme, "https")) {
            this.scheme = "https";
            return this;
        }
        i.k("unexpected scheme: ".concat(scheme));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setEncodedFragment$okhttp(String str) {
        this.encodedFragment = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setEncodedPassword$okhttp(String str) {
        str.getClass();
        this.encodedPassword = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder setEncodedPathSegment(int index, String encodedPathSegment) {
        encodedPathSegment.getClass();
        String strCanonicalize$okhttp$default = HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, false, null, TelnetCommand.BREAK, null);
        this.encodedPathSegments.set(index, strCanonicalize$okhttp$default);
        if (!isDot(strCanonicalize$okhttp$default) && !isDotDot(strCanonicalize$okhttp$default)) {
            return this;
        }
        l9.i.d(a.l("unexpected path segment: ", encodedPathSegment));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setEncodedQueryNamesAndValues$okhttp(List<String> list) {
        this.encodedQueryNamesAndValues = list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder setEncodedQueryParameter(String encodedName, String encodedValue) {
        encodedName.getClass();
        removeAllEncodedQueryParameters(encodedName);
        addEncodedQueryParameter(encodedName, encodedValue);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setEncodedUsername$okhttp(String str) {
        str.getClass();
        this.encodedUsername = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setHost$okhttp(String str) {
        this.host = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder setPathSegment(int index, String pathSegment) {
        pathSegment.getClass();
        String strCanonicalize$okhttp$default = HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, pathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, false, null, 251, null);
        if (isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) {
            l9.i.d(a.l("unexpected path segment: ", pathSegment));
            return null;
        }
        this.encodedPathSegments.set(index, strCanonicalize$okhttp$default);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setPort$okhttp(int i) {
        this.port = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder setQueryParameter(String name, String value) {
        name.getClass();
        removeAllQueryParameters(name);
        addQueryParameter(name, value);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setScheme$okhttp(String str) {
        this.scheme = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = this.scheme;
        if (str != null) {
            sb.append(str);
            sb.append("://");
        } else {
            sb.append("//");
        }
        if (this.encodedUsername.length() > 0 || this.encodedPassword.length() > 0) {
            sb.append(this.encodedUsername);
            if (this.encodedPassword.length() > 0) {
                sb.append(':');
                sb.append(this.encodedPassword);
            }
            sb.append('@');
        }
        String str2 = this.host;
        if (str2 != null) {
            if (StringsKt.n(str2, ':')) {
                sb.append('[');
                sb.append(this.host);
                sb.append(']');
            } else {
                sb.append(this.host);
            }
        }
        if (this.port != -1 || this.scheme != null) {
            int iEffectivePort = effectivePort();
            String str3 = this.scheme;
            if (str3 == null || iEffectivePort != HttpUrl.Companion.defaultPort(str3)) {
                sb.append(':');
                sb.append(iEffectivePort);
            }
        }
        HttpUrl$Companion httpUrl$Companion = HttpUrl.Companion;
        httpUrl$Companion.toPathString$okhttp(this.encodedPathSegments, sb);
        if (this.encodedQueryNamesAndValues != null) {
            sb.append('?');
            List<String> list = this.encodedQueryNamesAndValues;
            list.getClass();
            httpUrl$Companion.toQueryString$okhttp(list, sb);
        }
        if (this.encodedFragment != null) {
            sb.append('#');
            sb.append(this.encodedFragment);
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HttpUrl$Builder username(String username) {
        username.getClass();
        this.encodedUsername = HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, username, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
        return this;
    }

    public final HttpUrl$Builder addPathSegments(String pathSegments) {
        pathSegments.getClass();
        return addPathSegments(pathSegments, false);
    }
}
