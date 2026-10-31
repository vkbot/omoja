package okhttp3;

import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import l9.l;
import l9.n;
import l9.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\n\u001a\u00020\u0007*\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\n\u001a\u00020\u0007*\u00020\u000b2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\b\u0010\fJ\u001f\u0010\n\u001a\u00020\u0007*\u00020\r2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\b\u0010\u000eJ)\u0010\u0013\u001a\u00020\u0007*\u00020\u000f2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\b\u0010\u0012J!\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\u0015J!\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\b\u0010\u0016J!\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\rH\u0007¢\u0006\u0004\b\b\u0010\u0017J)\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\b\u0010\u0018¨\u0006\u0019"}, d2 = {"Lokhttp3/ResponseBody$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/MediaType;", "contentType", "Lokhttp3/ResponseBody;", "create", "(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;", "toResponseBody", HttpUrl.FRAGMENT_ENCODE_SET, "([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;", "Ll9/o;", "(Ll9/o;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;", "Ll9/n;", HttpUrl.FRAGMENT_ENCODE_SET, "contentLength", "(Ll9/n;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;", "asResponseBody", "content", "(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;", "(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;", "(Lokhttp3/MediaType;Ll9/o;)Lokhttp3/ResponseBody;", "(Lokhttp3/MediaType;JLl9/n;)Lokhttp3/ResponseBody;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ResponseBody$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ ResponseBody$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ResponseBody create$default(ResponseBody$Companion responseBody$Companion, n nVar, MediaType mediaType, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            mediaType = null;
        }
        if ((i & 2) != 0) {
            j = -1;
        }
        return responseBody$Companion.create(nVar, mediaType, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @JvmName(name = "create")
    public final ResponseBody create(String str, MediaType mediaType) {
        str.getClass();
        Charset charset = Charsets.UTF_8;
        if (mediaType != null) {
            Charset charsetCharset$default = MediaType.charset$default(mediaType, null, 1, null);
            if (charsetCharset$default == null) {
                mediaType = MediaType.Companion.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charsetCharset$default;
            }
        }
        l lVar = new l();
        charset.getClass();
        lVar.s0(str, 0, str.length(), charset);
        return create(lVar, mediaType, lVar.c);
    }

    private ResponseBody$Companion() {
    }

    public static /* synthetic */ ResponseBody create$default(ResponseBody$Companion responseBody$Companion, byte[] bArr, MediaType mediaType, int i, Object obj) {
        if ((i & 1) != 0) {
            mediaType = null;
        }
        return responseBody$Companion.create(bArr, mediaType);
    }

    public static /* synthetic */ ResponseBody create$default(ResponseBody$Companion responseBody$Companion, o oVar, MediaType mediaType, int i, Object obj) {
        if ((i & 1) != 0) {
            mediaType = null;
        }
        return responseBody$Companion.create(oVar, mediaType);
    }

    public static /* synthetic */ ResponseBody create$default(ResponseBody$Companion responseBody$Companion, String str, MediaType mediaType, int i, Object obj) {
        if ((i & 1) != 0) {
            mediaType = null;
        }
        return responseBody$Companion.create(str, mediaType);
    }

    @JvmStatic
    @JvmName(name = "create")
    public final ResponseBody create(byte[] bArr, MediaType mediaType) {
        bArr.getClass();
        l lVar = new l();
        lVar.m174write(bArr, 0, bArr.length);
        return create(lVar, mediaType, bArr.length);
    }

    @JvmStatic
    @JvmName(name = "create")
    public final ResponseBody create(o oVar, MediaType mediaType) {
        oVar.getClass();
        l lVar = new l();
        lVar.l0(oVar);
        return create(lVar, mediaType, oVar.c());
    }

    @JvmStatic
    @JvmName(name = "create")
    public final ResponseBody create(n nVar, MediaType mediaType, long j) {
        nVar.getClass();
        return new ResponseBody$Companion$asResponseBody$1(mediaType, j, nVar);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    public final ResponseBody create(MediaType contentType, String content) {
        content.getClass();
        return create(content, contentType);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    public final ResponseBody create(MediaType contentType, byte[] content) {
        content.getClass();
        return create(content, contentType);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    public final ResponseBody create(MediaType contentType, o content) {
        content.getClass();
        return create(content, contentType);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.asResponseBody(contentType, contentLength)", imports = {"okhttp3.ResponseBody.Companion.asResponseBody"}))
    @JvmStatic
    public final ResponseBody create(MediaType contentType, long contentLength, n content) {
        content.getClass();
        return create(content, contentType, contentLength);
    }
}
