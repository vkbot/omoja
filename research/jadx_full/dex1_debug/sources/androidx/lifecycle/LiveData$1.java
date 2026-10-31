package androidx.lifecycle;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LiveData$1 implements Runnable {
    final /* synthetic */ LiveData this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LiveData$1(LiveData liveData) {
        this.this$0 = liveData;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        synchronized (this.this$0.mDataLock) {
            obj = this.this$0.mPendingData;
            this.this$0.mPendingData = LiveData.NOT_SET;
        }
        this.this$0.setValue(obj);
    }
}
