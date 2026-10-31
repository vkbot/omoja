package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IBinder$DeathRecipient;
import androidx.core.util.Pair;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$ConnectionRecord implements IBinder$DeathRecipient {
    public final MediaSessionManager$RemoteUserInfo browserInfo;
    public final MediaBrowserServiceCompat$ServiceCallbacks callbacks;
    public final int pid;
    public final String pkg;
    public MediaBrowserServiceCompat$BrowserRoot root;
    public final Bundle rootHints;
    public final HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions = new HashMap<>();
    final /* synthetic */ MediaBrowserServiceCompat this$0;
    public final int uid;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaBrowserServiceCompat$ConnectionRecord(MediaBrowserServiceCompat mediaBrowserServiceCompat, String str, int i9, int i10, Bundle bundle, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$0 = mediaBrowserServiceCompat;
        this.pkg = str;
        this.pid = i9;
        this.uid = i10;
        this.browserInfo = new MediaSessionManager$RemoteUserInfo(str, i9, i10);
        this.rootHints = bundle;
        this.callbacks = mediaBrowserServiceCompat$ServiceCallbacks;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.IBinder$DeathRecipient
    public void binderDied() {
        this.this$0.mHandler.post(new MediaBrowserServiceCompat$ConnectionRecord$1(this));
    }
}
