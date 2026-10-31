package androidx.core.view;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DifferentialMotionFlingController {
    private final Context mContext;
    private final int[] mFlingVelocityThresholds;
    private float mLastFlingVelocity;
    private int mLastProcessedAxis;
    private int mLastProcessedDeviceId;
    private int mLastProcessedSource;
    private final DifferentialMotionFlingTarget mTarget;
    private final DifferentialMotionFlingController$DifferentialVelocityProvider mVelocityProvider;
    private final DifferentialMotionFlingController$FlingVelocityThresholdCalculator mVelocityThresholdCalculator;

    @Nullable
    private VelocityTracker mVelocityTracker;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public DifferentialMotionFlingController(Context context, DifferentialMotionFlingTarget differentialMotionFlingTarget, DifferentialMotionFlingController$FlingVelocityThresholdCalculator differentialMotionFlingController$FlingVelocityThresholdCalculator, DifferentialMotionFlingController$DifferentialVelocityProvider differentialMotionFlingController$DifferentialVelocityProvider) {
        this.mLastProcessedAxis = -1;
        this.mLastProcessedSource = -1;
        this.mLastProcessedDeviceId = -1;
        this.mFlingVelocityThresholds = new int[]{Integer.MAX_VALUE, 0};
        this.mContext = context;
        this.mTarget = differentialMotionFlingTarget;
        this.mVelocityThresholdCalculator = differentialMotionFlingController$FlingVelocityThresholdCalculator;
        this.mVelocityProvider = differentialMotionFlingController$DifferentialVelocityProvider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(Context context, int[] iArr, MotionEvent motionEvent, int i9) {
        calculateFlingVelocityThresholds(context, iArr, motionEvent, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float b(VelocityTracker velocityTracker, MotionEvent motionEvent, int i9) {
        return getCurrentVelocity(velocityTracker, motionEvent, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean calculateFlingVelocityThresholds(MotionEvent motionEvent, int i9) {
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        if (this.mLastProcessedSource == source && this.mLastProcessedDeviceId == deviceId && this.mLastProcessedAxis == i9) {
            return false;
        }
        this.mVelocityThresholdCalculator.calculateFlingVelocityThresholds(this.mContext, this.mFlingVelocityThresholds, motionEvent, i9);
        this.mLastProcessedSource = source;
        this.mLastProcessedDeviceId = deviceId;
        this.mLastProcessedAxis = i9;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float getCurrentVelocity(MotionEvent motionEvent, int i9) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        return this.mVelocityProvider.getCurrentVelocity(this.mVelocityTracker, motionEvent, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onMotionEvent(@NonNull MotionEvent motionEvent, int i9) {
        boolean zCalculateFlingVelocityThresholds = calculateFlingVelocityThresholds(motionEvent, i9);
        if (this.mFlingVelocityThresholds[0] == Integer.MAX_VALUE) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
                return;
            }
            return;
        }
        float scaledScrollFactor = this.mTarget.getScaledScrollFactor() * getCurrentVelocity(motionEvent, i9);
        float fSignum = Math.signum(scaledScrollFactor);
        if (zCalculateFlingVelocityThresholds || (fSignum != Math.signum(this.mLastFlingVelocity) && fSignum != 0.0f)) {
            this.mTarget.stopDifferentialMotionFling();
        }
        float fAbs = Math.abs(scaledScrollFactor);
        int[] iArr = this.mFlingVelocityThresholds;
        if (fAbs < iArr[0]) {
            return;
        }
        int i10 = iArr[1];
        float fMax = Math.max(-i10, Math.min(scaledScrollFactor, i10));
        this.mLastFlingVelocity = this.mTarget.startDifferentialMotionFling(fMax) ? fMax : 0.0f;
    }

    private static float getCurrentVelocity(VelocityTracker velocityTracker, MotionEvent motionEvent, int i9) {
        VelocityTrackerCompat.addMovement(velocityTracker, motionEvent);
        VelocityTrackerCompat.computeCurrentVelocity(velocityTracker, 1000);
        return VelocityTrackerCompat.getAxisVelocity(velocityTracker, i9);
    }

    public DifferentialMotionFlingController(@NonNull Context context, @NonNull DifferentialMotionFlingTarget differentialMotionFlingTarget) {
        this(context, differentialMotionFlingTarget, new b(), new b());
    }

    private static void calculateFlingVelocityThresholds(Context context, int[] iArr, MotionEvent motionEvent, int i9) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        iArr[0] = ViewConfigurationCompat.getScaledMinimumFlingVelocity(context, viewConfiguration, motionEvent.getDeviceId(), i9, motionEvent.getSource());
        iArr[1] = ViewConfigurationCompat.getScaledMaximumFlingVelocity(context, viewConfiguration, motionEvent.getDeviceId(), i9, motionEvent.getSource());
    }
}
