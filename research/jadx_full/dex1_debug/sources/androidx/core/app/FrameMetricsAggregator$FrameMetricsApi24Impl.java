package androidx.core.app;

import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.Window$OnFrameMetricsAvailableListener;
import androidx.annotation.RequiresApi;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class FrameMetricsAggregator$FrameMetricsApi24Impl extends FrameMetricsAggregator$FrameMetricsBaseImpl {
    private static final int NANOS_PER_MS = 1000000;
    private static final int NANOS_ROUNDING_VALUE = 500000;
    private static Handler sHandler;
    private static HandlerThread sHandlerThread;
    int mTrackingFlags;
    SparseIntArray[] mMetrics = new SparseIntArray[9];
    private final ArrayList<WeakReference<Activity>> mActivities = new ArrayList<>();
    Window$OnFrameMetricsAvailableListener mListener = new FrameMetricsAggregator$FrameMetricsApi24Impl$1(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FrameMetricsAggregator$FrameMetricsApi24Impl(int i9) {
        this.mTrackingFlags = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public void add(Activity activity) {
        if (sHandlerThread == null) {
            HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
            sHandlerThread = handlerThread;
            handlerThread.start();
            sHandler = new Handler(sHandlerThread.getLooper());
        }
        for (int i9 = 0; i9 <= 8; i9++) {
            SparseIntArray[] sparseIntArrayArr = this.mMetrics;
            if (sparseIntArrayArr[i9] == null && (this.mTrackingFlags & (1 << i9)) != 0) {
                sparseIntArrayArr[i9] = new SparseIntArray();
            }
        }
        activity.getWindow().addOnFrameMetricsAvailableListener(this.mListener, sHandler);
        this.mActivities.add(new WeakReference<>(activity));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addDurationItem(SparseIntArray sparseIntArray, long j9) {
        if (sparseIntArray != null) {
            int i9 = (int) ((500000 + j9) / 1000000);
            if (j9 >= 0) {
                sparseIntArray.put(i9, sparseIntArray.get(i9) + 1);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public SparseIntArray[] getMetrics() {
        return this.mMetrics;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public SparseIntArray[] remove(Activity activity) {
        ArrayList<WeakReference<Activity>> arrayList = this.mActivities;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            WeakReference<Activity> weakReference = arrayList.get(i9);
            i9++;
            WeakReference<Activity> weakReference2 = weakReference;
            if (weakReference2.get() == activity) {
                this.mActivities.remove(weakReference2);
                break;
            }
        }
        activity.getWindow().removeOnFrameMetricsAvailableListener(this.mListener);
        return this.mMetrics;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public SparseIntArray[] reset() {
        SparseIntArray[] sparseIntArrayArr = this.mMetrics;
        this.mMetrics = new SparseIntArray[9];
        return sparseIntArrayArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public SparseIntArray[] stop() {
        for (int size = this.mActivities.size() - 1; size >= 0; size--) {
            WeakReference<Activity> weakReference = this.mActivities.get(size);
            Activity activity = weakReference.get();
            if (weakReference.get() != null) {
                activity.getWindow().removeOnFrameMetricsAvailableListener(this.mListener);
                this.mActivities.remove(size);
            }
        }
        return this.mMetrics;
    }
}
