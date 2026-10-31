package androidx.media;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$1 extends MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> {
    final /* synthetic */ MediaBrowserServiceCompat this$0;
    final /* synthetic */ MediaBrowserServiceCompat$ConnectionRecord val$connection;
    final /* synthetic */ Bundle val$notifyChildrenChangedOptions;
    final /* synthetic */ String val$parentId;
    final /* synthetic */ Bundle val$subscribeOptions;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaBrowserServiceCompat$1(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, String str, Bundle bundle, Bundle bundle2) {
        super(obj);
        this.this$0 = mediaBrowserServiceCompat;
        this.val$connection = mediaBrowserServiceCompat$ConnectionRecord;
        this.val$parentId = str;
        this.val$subscribeOptions = bundle;
        this.val$notifyChildrenChangedOptions = bundle2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    public void onResultSent2(@Nullable List<MediaBrowserCompat$MediaItem> list) {
        if (this.this$0.mConnections.get(this.val$connection.callbacks.asBinder()) != this.val$connection) {
            if (MediaBrowserServiceCompat.DEBUG) {
                Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + this.val$connection.pkg + " id=" + this.val$parentId);
                return;
            }
            return;
        }
        if ((getFlags() & 1) != 0) {
            list = this.this$0.applyOptions(list, this.val$subscribeOptions);
        }
        try {
            this.val$connection.callbacks.onLoadChildren(this.val$parentId, list, this.val$subscribeOptions, this.val$notifyChildrenChangedOptions);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + this.val$parentId + " package=" + this.val$connection.pkg);
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.media.MediaBrowserServiceCompat$Result
    public /* bridge */ /* synthetic */ void onResultSent(@Nullable List<MediaBrowserCompat$MediaItem> list) {
        onResultSent2(list);
    }
}
