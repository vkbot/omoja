package androidx.media;

import android.os.Parcel;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1 extends MediaBrowserServiceCompat$Result<MediaBrowserCompat$MediaItem> {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 this$1;
    final /* synthetic */ MediaBrowserServiceCompat$ResultWrapper val$resultWrapper;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1(MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 mediaBrowserServiceCompat$MediaBrowserServiceImplApi23, Object obj, MediaBrowserServiceCompat$ResultWrapper mediaBrowserServiceCompat$ResultWrapper) {
        super(obj);
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
        this.val$resultWrapper = mediaBrowserServiceCompat$ResultWrapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$Result
    public void detach() {
        this.val$resultWrapper.detach();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    public void onResultSent2(@Nullable MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
        if (mediaBrowserCompat$MediaItem == null) {
            this.val$resultWrapper.sendResult(null);
            return;
        }
        Parcel parcelObtain = Parcel.obtain();
        mediaBrowserCompat$MediaItem.writeToParcel(parcelObtain, 0);
        this.val$resultWrapper.sendResult(parcelObtain);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.media.MediaBrowserServiceCompat$Result
    public /* bridge */ /* synthetic */ void onResultSent(@Nullable MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
        onResultSent2(mediaBrowserCompat$MediaItem);
    }
}
