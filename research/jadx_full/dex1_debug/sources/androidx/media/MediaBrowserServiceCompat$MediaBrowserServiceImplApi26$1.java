package androidx.media;

import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1 extends MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 this$1;
    final /* synthetic */ Bundle val$options;
    final /* synthetic */ MediaBrowserServiceCompat$ResultWrapper val$resultWrapper;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1(MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 mediaBrowserServiceCompat$MediaBrowserServiceImplApi26, Object obj, MediaBrowserServiceCompat$ResultWrapper mediaBrowserServiceCompat$ResultWrapper, Bundle bundle) {
        super(obj);
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi26;
        this.val$resultWrapper = mediaBrowserServiceCompat$ResultWrapper;
        this.val$options = bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$Result
    public void detach() {
        this.val$resultWrapper.detach();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    public void onResultSent2(@Nullable List<MediaBrowserCompat$MediaItem> list) {
        if (list == null) {
            this.val$resultWrapper.sendResult(null);
            return;
        }
        if ((getFlags() & 1) != 0) {
            list = this.this$1.this$0.applyOptions(list, this.val$options);
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem : list) {
            Parcel parcelObtain = Parcel.obtain();
            mediaBrowserCompat$MediaItem.writeToParcel(parcelObtain, 0);
            arrayList.add(parcelObtain);
        }
        this.val$resultWrapper.sendResult(arrayList);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.media.MediaBrowserServiceCompat$Result
    public /* bridge */ /* synthetic */ void onResultSent(@Nullable List<MediaBrowserCompat$MediaItem> list) {
        onResultSent2(list);
    }
}
