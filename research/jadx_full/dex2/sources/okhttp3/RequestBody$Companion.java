package okhttp3;

import java.io.File;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import l9.o;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\n\u001a\u00020\u0007*\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\n\u001a\u00020\u0007*\u00020\u000b2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\b\u0010\fJ3\u0010\n\u001a\u00020\u0007*\u00020\r2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\b\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u0007*\u00020\u00122\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\b\u0010\u0013J!\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\u0016J!\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\b\u0010\u0017J5\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\b\u0010\u0018J!\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0019\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\b\u0010\u001a¨\u0006\u001b"}, d2 = {"Lokhttp3/RequestBody$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/MediaType;", "contentType", "Lokhttp3/RequestBody;", "create", "(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;", "toRequestBody", "Ll9/o;", "(Ll9/o;Lokhttp3/MediaType;)Lokhttp3/RequestBody;", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "offset", "byteCount", "([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;", "Ljava/io/File;", "(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;", "asRequestBody", "content", "(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;", "(Lokhttp3/MediaType;Ll9/o;)Lokhttp3/RequestBody;", "(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;", "file", "(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RequestBody$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ RequestBody$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ RequestBody create$default(RequestBody$Companion requestBody$Companion, byte[] bArr, MediaType mediaType, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            mediaType = null;
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return requestBody$Companion.create(bArr, mediaType, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @JvmName(name = "create")
    public final RequestBody create(String str, MediaType mediaType) {
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
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        return create(bytes, mediaType, 0, bytes.length);
    }

    private RequestBody$Companion() {
    }

    public static /* synthetic */ RequestBody create$default(RequestBody$Companion requestBody$Companion, o oVar, MediaType mediaType, int i, Object obj) {
        if ((i & 1) != 0) {
            mediaType = null;
        }
        return requestBody$Companion.create(oVar, mediaType);
    }

    public static /* synthetic */ RequestBody create$default(RequestBody$Companion requestBody$Companion, String str, MediaType mediaType, int i, Object obj) {
        if ((i & 1) != 0) {
            mediaType = null;
        }
        return requestBody$Companion.create(str, mediaType);
    }

    public static /* synthetic */ RequestBody create$default(RequestBody$Companion requestBody$Companion, File file, MediaType mediaType, int i, Object obj) {
        if ((i & 1) != 0) {
            mediaType = null;
        }
        return requestBody$Companion.create(file, mediaType);
    }

    public static /* synthetic */ RequestBody create$default(RequestBody$Companion requestBody$Companion, MediaType mediaType, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = bArr.length;
        }
        return requestBody$Companion.create(mediaType, bArr, i, i2);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    @JvmOverloads
    public final RequestBody create(MediaType mediaType, byte[] bArr, int i) {
        bArr.getClass();
        return create$default(this, mediaType, bArr, i, 0, 8, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName(name = "create")
    public final RequestBody create(byte[] bArr) {
        bArr.getClass();
        return create$default(this, bArr, (MediaType) null, 0, 0, 7, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName(name = "create")
    public final RequestBody create(byte[] bArr, MediaType mediaType) {
        bArr.getClass();
        return create$default(this, bArr, mediaType, 0, 0, 6, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName(name = "create")
    public final RequestBody create(byte[] bArr, MediaType mediaType, int i) {
        bArr.getClass();
        return create$default(this, bArr, mediaType, i, 0, 4, (Object) null);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    @JvmOverloads
    public final RequestBody create(MediaType mediaType, byte[] bArr) {
        bArr.getClass();
        return create$default(this, mediaType, bArr, 0, 0, 12, (Object) null);
    }

    @JvmStatic
    @JvmName(name = "create")
    public final RequestBody create(o oVar, MediaType mediaType) {
        oVar.getClass();
        return new RequestBody$Companion$toRequestBody$1(mediaType, oVar);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName(name = "create")
    public final RequestBody create(byte[] bArr, MediaType mediaType, int i, int i2) {
        bArr.getClass();
        Util.checkOffsetAndCount(bArr.length, i, i2);
        return new RequestBody$Companion$toRequestBody$2(mediaType, i2, bArr, i);
    }

    @JvmStatic
    @JvmName(name = "create")
    public final RequestBody create(File file, MediaType mediaType) {
        file.getClass();
        return new RequestBody$Companion$asRequestBody$1(mediaType, file);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    public final RequestBody create(MediaType contentType, String content) {
        content.getClass();
        return create(content, contentType);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    public final RequestBody create(MediaType contentType, o content) {
        content.getClass();
        return create(content, contentType);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    @JvmOverloads
    public final RequestBody create(MediaType contentType, byte[] content, int offset, int byteCount) {
        content.getClass();
        return create(content, contentType, offset, byteCount);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'file' argument first to fix Java", replaceWith = @ReplaceWith(expression = "file.asRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.asRequestBody"}))
    @JvmStatic
    public final RequestBody create(MediaType contentType, File file) {
        file.getClass();
        return create(file, contentType);
    }
}
