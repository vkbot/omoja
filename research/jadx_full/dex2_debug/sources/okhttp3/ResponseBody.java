package okhttp3;

import ai.onnxruntime.a;
import java.io.Closeable;
import java.io.InputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import l9.n;
import l9.o;
import n0.b;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b&\u0018\u0000 +2\u00020\u0001:\u0002,+B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JB\u0010\u000b\u001a\u00028\u0000\"\b\b\u0000\u0010\u0005*\u00020\u00042\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\u0006H\u0082\b¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H&¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H&¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\u001f\u0010 J\r\u0010\"\u001a\u00020!¢\u0006\u0004\b\"\u0010#J\r\u0010%\u001a\u00020$¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010\u0003R\u0018\u0010)\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006-"}, d2 = {"Lokhttp3/ResponseBody;", "Ljava/io/Closeable;", "<init>", "()V", HttpUrl.FRAGMENT_ENCODE_SET, "T", "Lkotlin/Function1;", "Ll9/n;", "consumer", HttpUrl.FRAGMENT_ENCODE_SET, "sizeMapper", "consumeSource", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Ljava/nio/charset/Charset;", "charset", "()Ljava/nio/charset/Charset;", "Lokhttp3/MediaType;", "contentType", "()Lokhttp3/MediaType;", HttpUrl.FRAGMENT_ENCODE_SET, "contentLength", "()J", "Ljava/io/InputStream;", "byteStream", "()Ljava/io/InputStream;", "source", "()Ll9/n;", HttpUrl.FRAGMENT_ENCODE_SET, "bytes", "()[B", "Ll9/o;", "byteString", "()Ll9/o;", "Ljava/io/Reader;", "charStream", "()Ljava/io/Reader;", HttpUrl.FRAGMENT_ENCODE_SET, "string", "()Ljava/lang/String;", HttpUrl.FRAGMENT_ENCODE_SET, "close", "reader", "Ljava/io/Reader;", "Companion", "BomAwareReader", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nResponseBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody\n*L\n1#1,321:1\n140#1,11:322\n140#1,11:333\n*S KotlinDebug\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody\n*L\n124#1:322,11\n134#1:333,11\n*E\n"})
public abstract class ResponseBody implements Closeable {
    public static final ResponseBody$Companion Companion = new ResponseBody$Companion(null);
    private Reader reader;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Charset charset() {
        Charset charset;
        MediaType mediaTypeContentType = contentType();
        return (mediaTypeContentType == null || (charset = mediaTypeContentType.charset(Charsets.UTF_8)) == null) ? Charsets.UTF_8 : charset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final <T> T consumeSource(Function1<? super n, ? extends T> consumer, Function1<? super T, Integer> sizeMapper) {
        long jContentLength = contentLength();
        if (jContentLength <= 2147483647L) {
            n nVarSource = source();
            try {
                T t = (T) consumer.invoke(nVarSource);
                InlineMarker.finallyStart(1);
                CloseableKt.closeFinally(nVarSource, (Throwable) null);
                InlineMarker.finallyEnd(1);
                int iIntValue = ((Number) sizeMapper.invoke(t)).intValue();
                if (jContentLength == -1 || jContentLength == iIntValue) {
                    return t;
                }
                b.b(iIntValue, jContentLength);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    CloseableKt.closeFinally(nVarSource, th);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
        } else {
            b.A(a.h(jContentLength, "Cannot buffer entire body for content length: "));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @JvmName(name = "create")
    public static final ResponseBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final InputStream byteStream() {
        return source().b0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o byteString() {
        long jContentLength = contentLength();
        if (jContentLength > 2147483647L) {
            b.A(a.h(jContentLength, "Cannot buffer entire body for content length: "));
            return null;
        }
        n nVarSource = source();
        try {
            o oVarJ = nVarSource.J();
            CloseableKt.closeFinally(nVarSource, (Throwable) null);
            int iC = oVarJ.c();
            if (jContentLength == -1 || jContentLength == iC) {
                return oVarJ;
            }
            b.b(iC, jContentLength);
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(nVarSource, th);
                throw th2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final byte[] bytes() {
        long jContentLength = contentLength();
        if (jContentLength > 2147483647L) {
            b.A(a.h(jContentLength, "Cannot buffer entire body for content length: "));
            return null;
        }
        n nVarSource = source();
        try {
            byte[] bArrJ = nVarSource.j();
            CloseableKt.closeFinally(nVarSource, (Throwable) null);
            int length = bArrJ.length;
            if (jContentLength == -1 || jContentLength == length) {
                return bArrJ;
            }
            b.b(length, jContentLength);
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(nVarSource, th);
                throw th2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        ResponseBody$BomAwareReader responseBody$BomAwareReader = new ResponseBody$BomAwareReader(source(), charset());
        this.reader = responseBody$BomAwareReader;
        return responseBody$BomAwareReader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract n source();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String string() {
        n nVarSource = source();
        try {
            String strD = nVarSource.D(Util.readBomAsCharset(nVarSource, charset()));
            CloseableKt.closeFinally(nVarSource, (Throwable) null);
            return strD;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(nVarSource, th);
                throw th2;
            }
        }
    }

    @JvmStatic
    @JvmName(name = "create")
    public static final ResponseBody create(n nVar, MediaType mediaType, long j) {
        return Companion.create(nVar, mediaType, j);
    }

    @JvmStatic
    @JvmName(name = "create")
    public static final ResponseBody create(o oVar, MediaType mediaType) {
        return Companion.create(oVar, mediaType);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.asResponseBody(contentType, contentLength)", imports = {"okhttp3.ResponseBody.Companion.asResponseBody"}))
    @JvmStatic
    public static final ResponseBody create(MediaType mediaType, long j, n nVar) {
        return Companion.create(mediaType, j, nVar);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    public static final ResponseBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    public static final ResponseBody create(MediaType mediaType, o oVar) {
        return Companion.create(mediaType, oVar);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    public static final ResponseBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    @JvmStatic
    @JvmName(name = "create")
    public static final ResponseBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }
}
