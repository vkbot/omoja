package androidx.media;

import android.content.Context;
import android.media.browse.MediaBrowser$MediaItem;
import android.service.media.MediaBrowserService$Result;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$MediaBrowserServiceApi21 {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23(MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 mediaBrowserServiceCompat$MediaBrowserServiceImplApi23, Context context) {
        super(mediaBrowserServiceCompat$MediaBrowserServiceImplApi23, context);
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.service.media.MediaBrowserService
    public void onLoadItem(String str, MediaBrowserService$Result<MediaBrowser$MediaItem> mediaBrowserService$Result) {
        this.this$1.onLoadItem(str, new MediaBrowserServiceCompat$ResultWrapper<>(mediaBrowserService$Result));
    }
}
