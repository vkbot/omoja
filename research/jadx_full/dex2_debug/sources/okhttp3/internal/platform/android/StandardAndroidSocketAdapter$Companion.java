package okhttp3.internal.platform.android;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/platform/android/StandardAndroidSocketAdapter$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "buildIfSupported", "Lokhttp3/internal/platform/android/SocketAdapter;", "packageName", HttpUrl.FRAGMENT_ENCODE_SET, "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class StandardAndroidSocketAdapter$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ StandardAndroidSocketAdapter$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ SocketAdapter buildIfSupported$default(StandardAndroidSocketAdapter$Companion standardAndroidSocketAdapter$Companion, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "com.android.org.conscrypt";
        }
        return standardAndroidSocketAdapter$Companion.buildIfSupported(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final SocketAdapter buildIfSupported(String packageName) {
        packageName.getClass();
        try {
            return new StandardAndroidSocketAdapter(Class.forName(packageName.concat(".OpenSSLSocketImpl")), Class.forName(packageName.concat(".OpenSSLSocketFactoryImpl")), Class.forName(packageName.concat(".SSLParametersImpl")));
        } catch (Exception e) {
            Platform.Companion.get().log("unable to load android socket classes", 5, e);
            return null;
        }
    }

    private StandardAndroidSocketAdapter$Companion() {
    }
}
