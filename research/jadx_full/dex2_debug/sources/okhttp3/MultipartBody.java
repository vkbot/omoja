package okhttp3;

import java.io.EOFException;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import l9.l;
import l9.m;
import l9.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\n\u0018\u0000 +2\u00020\u0001:\u0003,+-B'\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0010\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u001c\u001a\u00020\u0019H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001f\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0007¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020$2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b%\u0010&R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010'R\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\u0005\u0010(\u001a\u0004\b\u0005\u0010\u0017R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0007¢\u0006\f\n\u0004\b\b\u0010)\u001a\u0004\b\b\u0010!R\u0014\u0010\u0016\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010(R\u0016\u0010\"\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010*R\u0011\u0010\u001c\u001a\u00020\u00198G¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001bR\u0011\u0010\u001f\u001a\u00020\u00128G¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001e¨\u0006."}, d2 = {"Lokhttp3/MultipartBody;", "Lokhttp3/RequestBody;", "Ll9/o;", "boundaryByteString", "Lokhttp3/MediaType;", "type", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/MultipartBody$Part;", "parts", "<init>", "(Ll9/o;Lokhttp3/MediaType;Ljava/util/List;)V", "Ll9/m;", "sink", HttpUrl.FRAGMENT_ENCODE_SET, "countBytes", HttpUrl.FRAGMENT_ENCODE_SET, "writeOrCountBytes", "(Ll9/m;Z)J", HttpUrl.FRAGMENT_ENCODE_SET, "index", "part", "(I)Lokhttp3/MultipartBody$Part;", "contentType", "()Lokhttp3/MediaType;", "-deprecated_type", HttpUrl.FRAGMENT_ENCODE_SET, "-deprecated_boundary", "()Ljava/lang/String;", "boundary", "-deprecated_size", "()I", "size", "-deprecated_parts", "()Ljava/util/List;", "contentLength", "()J", HttpUrl.FRAGMENT_ENCODE_SET, "writeTo", "(Ll9/m;)V", "Ll9/o;", "Lokhttp3/MediaType;", "Ljava/util/List;", "J", "Companion", "Builder", "Part", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MultipartBody extends RequestBody {

    @JvmField
    public static final MediaType ALTERNATIVE;
    private static final byte[] COLONSPACE;
    private static final byte[] CRLF;
    public static final MultipartBody$Companion Companion = new MultipartBody$Companion(null);
    private static final byte[] DASHDASH;

    @JvmField
    public static final MediaType DIGEST;

    @JvmField
    public static final MediaType FORM;

    @JvmField
    public static final MediaType MIXED;

    @JvmField
    public static final MediaType PARALLEL;
    private final o boundaryByteString;
    private long contentLength;
    private final MediaType contentType;
    private final List<MultipartBody$Part> parts;
    private final MediaType type;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        MediaType$Companion mediaType$Companion = MediaType.Companion;
        MIXED = mediaType$Companion.get("multipart/mixed");
        ALTERNATIVE = mediaType$Companion.get("multipart/alternative");
        DIGEST = mediaType$Companion.get("multipart/digest");
        PARALLEL = mediaType$Companion.get("multipart/parallel");
        FORM = mediaType$Companion.get("multipart/form-data");
        COLONSPACE = new byte[]{58, 32};
        CRLF = new byte[]{13, 10};
        DASHDASH = new byte[]{45, 45};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MultipartBody(o oVar, MediaType mediaType, List<MultipartBody$Part> list) {
        oVar.getClass();
        mediaType.getClass();
        list.getClass();
        this.boundaryByteString = oVar;
        this.type = mediaType;
        this.parts = list;
        this.contentType = MediaType.Companion.get(mediaType + "; boundary=" + boundary());
        this.contentLength = -1L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: l9.l */
    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: l9.l */
    /* JADX DEBUG: Multi-variable search result rejected for r0v2, resolved type: l9.l */
    /* JADX WARN: Multi-variable type inference failed */
    private final long writeOrCountBytes(m sink, boolean countBytes) throws EOFException {
        l lVar;
        if (countBytes) {
            sink = new l();
            lVar = sink;
        } else {
            lVar = 0;
        }
        int size = this.parts.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            MultipartBody$Part multipartBody$Part = this.parts.get(i);
            Headers headers = multipartBody$Part.headers();
            RequestBody requestBodyBody = multipartBody$Part.body();
            sink.getClass();
            sink.write(DASHDASH);
            sink.w(this.boundaryByteString);
            sink.write(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    sink.A(headers.name(i2)).write(COLONSPACE).A(headers.value(i2)).write(CRLF);
                }
            }
            MediaType contentType = requestBodyBody.get$contentType();
            if (contentType != null) {
                sink.A("Content-Type: ").A(contentType.getMediaType()).write(CRLF);
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                sink.A("Content-Length: ").Z(jContentLength).write(CRLF);
            } else if (countBytes) {
                lVar.getClass();
                lVar.b();
                return -1L;
            }
            byte[] bArr = CRLF;
            sink.write(bArr);
            if (countBytes) {
                j += jContentLength;
            } else {
                requestBodyBody.writeTo(sink);
            }
            sink.write(bArr);
        }
        sink.getClass();
        byte[] bArr2 = DASHDASH;
        sink.write(bArr2);
        sink.w(this.boundaryByteString);
        sink.write(bArr2);
        sink.write(CRLF);
        if (!countBytes) {
            return j;
        }
        lVar.getClass();
        long j2 = j + lVar.c;
        lVar.b();
        return j2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "boundary", imports = {}))
    @JvmName(name = "-deprecated_boundary")
    /* JADX INFO: renamed from: -deprecated_boundary, reason: not valid java name */
    public final String m259deprecated_boundary() {
        return boundary();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "parts", imports = {}))
    @JvmName(name = "-deprecated_parts")
    /* JADX INFO: renamed from: -deprecated_parts, reason: not valid java name */
    public final List<MultipartBody$Part> m260deprecated_parts() {
        return this.parts;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "size", imports = {}))
    @JvmName(name = "-deprecated_size")
    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m261deprecated_size() {
        return size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "type", imports = {}))
    @JvmName(name = "-deprecated_type")
    /* JADX INFO: renamed from: -deprecated_type, reason: not valid java name and from getter */
    public final MediaType getType() {
        return this.type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "boundary")
    public final String boundary() {
        return this.boundaryByteString.l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.RequestBody
    public long contentLength() throws EOFException {
        long j = this.contentLength;
        if (j != -1) {
            return j;
        }
        long jWriteOrCountBytes = writeOrCountBytes(null, true);
        this.contentLength = jWriteOrCountBytes;
        return jWriteOrCountBytes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: contentType, reason: from getter */
    public MediaType get$contentType() {
        return this.contentType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final MultipartBody$Part part(int index) {
        return this.parts.get(index);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "parts")
    public final List<MultipartBody$Part> parts() {
        return this.parts;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "size")
    public final int size() {
        return this.parts.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "type")
    public final MediaType type() {
        return this.type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.RequestBody
    public void writeTo(m sink) throws EOFException {
        sink.getClass();
        writeOrCountBytes(sink, false);
    }
}
