package okhttp3.internal.platform;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;
import org.conscrypt.Conscrypt;
import org.conscrypt.Conscrypt$Version;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bJ\b\u0010\u000b\u001a\u0004\u0018\u00010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0005¨\u0006\r"}, d2 = {"Lokhttp3/internal/platform/ConscryptPlatform$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "isSupported", HttpUrl.FRAGMENT_ENCODE_SET, "()Z", "atLeastVersion", "major", HttpUrl.FRAGMENT_ENCODE_SET, "minor", "patch", "buildIfSupported", "Lokhttp3/internal/platform/ConscryptPlatform;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ConscryptPlatform$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ ConscryptPlatform$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean atLeastVersion$default(ConscryptPlatform$Companion conscryptPlatform$Companion, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = 0;
        }
        return conscryptPlatform$Companion.atLeastVersion(i, i2, i3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean atLeastVersion(int major, int minor, int patch) {
        Conscrypt$Version conscrypt$VersionVersion = Conscrypt.version();
        if (conscrypt$VersionVersion.major() != major) {
            return conscrypt$VersionVersion.major() > major;
        }
        if (conscrypt$VersionVersion.minor() != minor) {
            return conscrypt$VersionVersion.minor() > minor;
        }
        return conscrypt$VersionVersion.patch() >= patch;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ConscryptPlatform buildIfSupported() {
        if (isSupported()) {
            return new ConscryptPlatform(null);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isSupported() {
        return ConscryptPlatform.access$isSupported$cp();
    }

    private ConscryptPlatform$Companion() {
    }
}
