package androidx.appcompat.view;

import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class ViewPropertyAnimatorCompatSet {
    private Interpolator mInterpolator;
    private boolean mIsStarted;
    ViewPropertyAnimatorListener mListener;
    private long mDuration = -1;
    private final ViewPropertyAnimatorListenerAdapter mProxyListener = new ViewPropertyAnimatorCompatSet$1(this);
    final ArrayList<ViewPropertyAnimatorCompat> mAnimators = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cancel() {
        if (this.mIsStarted) {
            ArrayList<ViewPropertyAnimatorCompat> arrayList = this.mAnimators;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = arrayList.get(i9);
                i9++;
                viewPropertyAnimatorCompat.cancel();
            }
            this.mIsStarted = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onAnimationsEnded() {
        this.mIsStarted = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPropertyAnimatorCompatSet play(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.mIsStarted) {
            this.mAnimators.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPropertyAnimatorCompatSet playSequentially(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.mAnimators.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.setStartDelay(viewPropertyAnimatorCompat.getDuration());
        this.mAnimators.add(viewPropertyAnimatorCompat2);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPropertyAnimatorCompatSet setDuration(long j9) {
        if (!this.mIsStarted) {
            this.mDuration = j9;
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPropertyAnimatorCompatSet setInterpolator(Interpolator interpolator) {
        if (!this.mIsStarted) {
            this.mInterpolator = interpolator;
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPropertyAnimatorCompatSet setListener(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.mIsStarted) {
            this.mListener = viewPropertyAnimatorListener;
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void start() {
        if (this.mIsStarted) {
            return;
        }
        ArrayList<ViewPropertyAnimatorCompat> arrayList = this.mAnimators;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = arrayList.get(i9);
            i9++;
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = viewPropertyAnimatorCompat;
            long j9 = this.mDuration;
            if (j9 >= 0) {
                viewPropertyAnimatorCompat2.setDuration(j9);
            }
            Interpolator interpolator = this.mInterpolator;
            if (interpolator != null) {
                viewPropertyAnimatorCompat2.setInterpolator(interpolator);
            }
            if (this.mListener != null) {
                viewPropertyAnimatorCompat2.setListener(this.mProxyListener);
            }
            viewPropertyAnimatorCompat2.start();
        }
        this.mIsStarted = true;
    }
}
