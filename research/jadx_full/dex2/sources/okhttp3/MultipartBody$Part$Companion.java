package okhttp3;

import j1.i;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0007J\"\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\u000e"}, d2 = {"Lokhttp3/MultipartBody$Part$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "create", "Lokhttp3/MultipartBody$Part;", "headers", "Lokhttp3/Headers;", "body", "Lokhttp3/RequestBody;", "createFormData", "name", HttpUrl.FRAGMENT_ENCODE_SET, "value", "filename", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMultipartBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartBody.kt\nokhttp3/MultipartBody$Part$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,345:1\n1#2:346\n*E\n"})
public final class MultipartBody$Part$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ MultipartBody$Part$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final MultipartBody$Part create(Headers headers, RequestBody body) {
        body.getClass();
        if ((headers != null ? headers.get("Content-Type") : null) != null) {
            i.k("Unexpected header: Content-Type");
            return null;
        }
        if ((headers != null ? headers.get("Content-Length") : null) == null) {
            return new MultipartBody$Part(headers, body, null);
        }
        i.k("Unexpected header: Content-Length");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final MultipartBody$Part createFormData(String name, String filename, RequestBody body) {
        name.getClass();
        body.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append("form-data; name=");
        MultipartBody$Companion multipartBody$Companion = MultipartBody.Companion;
        multipartBody$Companion.appendQuotedString$okhttp(sb, name);
        if (filename != null) {
            sb.append("; filename=");
            multipartBody$Companion.appendQuotedString$okhttp(sb, filename);
        }
        return create(new Headers$Builder().addUnsafeNonAscii("Content-Disposition", sb.toString()).build(), body);
    }

    private MultipartBody$Part$Companion() {
    }

    @JvmStatic
    public final MultipartBody$Part create(RequestBody body) {
        body.getClass();
        return create(null, body);
    }

    @JvmStatic
    public final MultipartBody$Part createFormData(String name, String value) {
        name.getClass();
        value.getClass();
        return createFormData(name, null, RequestBody$Companion.create$default(RequestBody.Companion, value, (MediaType) null, 1, (Object) null));
    }
}
