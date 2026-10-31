package androidx.media;

import android.media.browse.MediaBrowser$MediaItem;
import android.os.Parcel;
import android.service.media.MediaBrowserService$Result;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class MediaBrowserServiceCompat$ResultWrapper<T> {
    MediaBrowserService$Result mResultFwk;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaBrowserServiceCompat$ResultWrapper(MediaBrowserService$Result mediaBrowserService$Result) {
        this.mResultFwk = mediaBrowserService$Result;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detach() {
        this.mResultFwk.detach();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<MediaBrowser$MediaItem> parcelListToItemList(List<Parcel> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (Parcel parcel : list) {
            parcel.setDataPosition(0);
            arrayList.add((MediaBrowser$MediaItem) MediaBrowser$MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v4, resolved type: android.service.media.MediaBrowserService$Result */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: T */
    /* JADX WARN: Multi-variable type inference failed */
    public void sendResult(T t) {
        if (t instanceof List) {
            this.mResultFwk.sendResult(parcelListToItemList((List) t));
            return;
        }
        if (!(t instanceof Parcel)) {
            this.mResultFwk.sendResult(null);
            return;
        }
        Parcel parcel = (Parcel) t;
        parcel.setDataPosition(0);
        this.mResultFwk.sendResult(MediaBrowser$MediaItem.CREATOR.createFromParcel(parcel));
        parcel.recycle();
    }
}
