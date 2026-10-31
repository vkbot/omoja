package androidx.core.view;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ViewPropertyAnimatorCompat {
    private final WeakReference<View> mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPropertyAnimatorCompat(View view) {
        this.mView = new WeakReference<>(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener, View view, ValueAnimator valueAnimator) {
        lambda$setUpdateListener$0(viewPropertyAnimatorUpdateListener, view, valueAnimator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$setUpdateListener$0(ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener, View view, ValueAnimator valueAnimator) {
        viewPropertyAnimatorUpdateListener.onAnimationUpdate(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setListenerInternal(View view, ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (viewPropertyAnimatorListener != null) {
            view.animate().setListener(new ViewPropertyAnimatorCompat$1(this, viewPropertyAnimatorListener, view));
        } else {
            view.animate().setListener(null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat alpha(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().alpha(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat alphaBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().alphaBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cancel() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getDuration() {
        View view = this.mView.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Interpolator getInterpolator() {
        View view = this.mView.get();
        if (view != null) {
            return (Interpolator) view.animate().getInterpolator();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getStartDelay() {
        View view = this.mView.get();
        if (view != null) {
            return view.animate().getStartDelay();
        }
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat rotation(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotation(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat rotationBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat rotationX(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationX(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat rotationXBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationXBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat rotationY(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationY(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat rotationYBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationYBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat scaleX(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleX(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat scaleXBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleXBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat scaleY(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleY(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat scaleYBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleYBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat setDuration(long j9) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setDuration(j9);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat setInterpolator(@Nullable Interpolator interpolator) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat setListener(@Nullable ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        View view = this.mView.get();
        if (view != null) {
            setListenerInternal(view, viewPropertyAnimatorListener);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat setStartDelay(long j9) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setStartDelay(j9);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat setUpdateListener(@Nullable ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setUpdateListener(viewPropertyAnimatorUpdateListener != null ? new l(viewPropertyAnimatorUpdateListener, view) : null);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void start() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().start();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat translationX(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationX(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat translationXBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationXBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat translationY(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationY(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat translationYBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationYBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat translationZ(float f8) {
        View view = this.mView.get();
        if (view != null) {
            ViewPropertyAnimatorCompat$Api21Impl.translationZ(view.animate(), f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat translationZBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            ViewPropertyAnimatorCompat$Api21Impl.translationZBy(view.animate(), f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat withEndAction(@NonNull Runnable runnable) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().withEndAction(runnable);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat withLayer() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().withLayer();
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat withStartAction(@NonNull Runnable runnable) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().withStartAction(runnable);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat x(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().x(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat xBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().xBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat y(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().y(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat yBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().yBy(f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat z(float f8) {
        View view = this.mView.get();
        if (view != null) {
            ViewPropertyAnimatorCompat$Api21Impl.z(view.animate(), f8);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ViewPropertyAnimatorCompat zBy(float f8) {
        View view = this.mView.get();
        if (view != null) {
            ViewPropertyAnimatorCompat$Api21Impl.zBy(view.animate(), f8);
        }
        return this;
    }
}
