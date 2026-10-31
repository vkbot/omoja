package androidx.media;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class MediaBrowserServiceCompat$BrowserRoot {
    public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
    public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
    public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";

    @Deprecated
    public static final String EXTRA_SUGGESTION_KEYWORDS = "android.service.media.extra.SUGGESTION_KEYWORDS";
    private final Bundle mExtras;
    private final String mRootId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaBrowserServiceCompat$BrowserRoot(@NonNull String str, @Nullable Bundle bundle) {
        if (str == null) {
            i.k("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
            throw null;
        }
        this.mRootId = str;
        this.mExtras = bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$000(MediaBrowserServiceCompat$BrowserRoot mediaBrowserServiceCompat$BrowserRoot) {
        return mediaBrowserServiceCompat$BrowserRoot.mRootId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Bundle access$100(MediaBrowserServiceCompat$BrowserRoot mediaBrowserServiceCompat$BrowserRoot) {
        return mediaBrowserServiceCompat$BrowserRoot.mExtras;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Bundle getExtras() {
        return this.mExtras;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getRootId() {
        return this.mRootId;
    }
}
