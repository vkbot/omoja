package r7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum a {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    /* JADX INFO: Fake field, exist only in values array */
    INVALID_STREAM(1),
    /* JADX INFO: Fake field, exist only in values array */
    UNSUPPORTED_VERSION(1),
    /* JADX INFO: Fake field, exist only in values array */
    STREAM_ALREADY_CLOSED(1),
    /* JADX INFO: Fake field, exist only in values array */
    STREAM_ALREADY_CLOSED(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    STREAM_CLOSED(5),
    FRAME_TOO_LARGE(6),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    /* JADX INFO: Fake field, exist only in values array */
    HTTP_1_1_REQUIRED(13),
    /* JADX INFO: Fake field, exist only in values array */
    INVALID_CREDENTIALS(-1);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5002b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    a(int i9) {
        this.f5002b = i9;
    }
}
