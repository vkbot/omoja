package androidx.media;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$ConnectionRecord$1 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ConnectionRecord this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaBrowserServiceCompat$ConnectionRecord$1(MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord) {
        this.this$1 = mediaBrowserServiceCompat$ConnectionRecord;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = this.this$1;
        mediaBrowserServiceCompat$ConnectionRecord.this$0.mConnections.remove(mediaBrowserServiceCompat$ConnectionRecord.callbacks.asBinder());
    }
}
