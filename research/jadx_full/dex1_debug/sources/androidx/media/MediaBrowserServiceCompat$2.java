package androidx.media;

import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import androidx.annotation.Nullable;
import b.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$2 extends MediaBrowserServiceCompat$Result<MediaBrowserCompat$MediaItem> {
    final /* synthetic */ MediaBrowserServiceCompat this$0;
    final /* synthetic */ d val$receiver;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaBrowserServiceCompat$2(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, d dVar) {
        super(obj);
        this.this$0 = mediaBrowserServiceCompat;
        this.val$receiver = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    public void onResultSent2(@Nullable MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
        if ((getFlags() & 2) != 0) {
            this.val$receiver.r(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, mediaBrowserCompat$MediaItem);
        this.val$receiver.r(0, bundle);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.media.MediaBrowserServiceCompat$Result
    public /* bridge */ /* synthetic */ void onResultSent(@Nullable MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
        onResultSent2(mediaBrowserCompat$MediaItem);
    }
}
