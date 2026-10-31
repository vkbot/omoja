package androidx.media;

import android.content.Context;
import android.media.browse.MediaBrowser$MediaItem;
import android.os.Bundle;
import android.service.media.MediaBrowserService$Result;
import android.support.v4.media.session.h;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23 {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26(MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 mediaBrowserServiceCompat$MediaBrowserServiceImplApi26, Context context) {
        super(mediaBrowserServiceCompat$MediaBrowserServiceImplApi26, context);
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi26;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.service.media.MediaBrowserService
    public void onLoadChildren(String str, MediaBrowserService$Result<List<MediaBrowser$MediaItem>> mediaBrowserService$Result, Bundle bundle) {
        h.a(bundle);
        MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 mediaBrowserServiceCompat$MediaBrowserServiceImplApi26 = this.this$1;
        MediaBrowserServiceCompat mediaBrowserServiceCompat = mediaBrowserServiceCompat$MediaBrowserServiceImplApi26.this$0;
        mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
        mediaBrowserServiceCompat$MediaBrowserServiceImplApi26.onLoadChildren(str, new MediaBrowserServiceCompat$ResultWrapper<>(mediaBrowserService$Result), bundle);
        this.this$1.this$0.mCurConnection = null;
    }
}
