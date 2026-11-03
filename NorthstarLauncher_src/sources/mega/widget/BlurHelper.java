package mega.widget;

import android.view.View;
import android.view.ViewTreeObserver;
import com.mega.nexus.view.MegaSurfaceControl;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class BlurHelper {
    private static final float DEFAULT_ALPHA = 0.3f;
    private static final int DEFAULT_BLUR_RADIUS = 200;
    private static final float MAX_ALPHA = 1.0f;
    private static final String TAG = "BlurHelper";
    private float mAlpha;
    private int mBlurRadius;
    private ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener;
    private View mView;

    private BlurHelper() {
        init();
    }

    private static class InnerBlur {
        private static final BlurHelper INSTANCE = new BlurHelper();

        private InnerBlur() {
        }
    }

    public static BlurHelper getInstance() {
        return InnerBlur.INSTANCE;
    }

    private void init() {
        this.mBlurRadius = 200;
        this.mAlpha = 0.3f;
        this.mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: mega.widget.BlurHelper$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.f$0.m1798lambda$init$0$megawidgetBlurHelper();
            }
        };
    }

    /* JADX INFO: renamed from: lambda$init$0$mega-widget-BlurHelper, reason: not valid java name */
    /* synthetic */ void m1798lambda$init$0$megawidgetBlurHelper() {
        MLog.i(TAG, "mGlobalLayoutListener");
        applyBackgroundBlur();
    }

    private void applyBackgroundBlur() {
        String str = TAG;
        MLog.i(str, "applyBackgroundBlur start");
        this.mView.setAlpha(this.mAlpha);
        boolean backgroundBlurRadius = MegaSurfaceControl.setBackgroundBlurRadius(this.mView, this.mBlurRadius);
        if (backgroundBlurRadius) {
            this.mView.getViewTreeObserver().removeOnGlobalLayoutListener(this.mGlobalLayoutListener);
        }
        MLog.i(str, "applyBackgroundBlur end and isBlurSuccess=" + backgroundBlurRadius);
    }

    public void addBlur(View view) {
        this.mView = view;
        view.getViewTreeObserver().addOnGlobalLayoutListener(this.mGlobalLayoutListener);
        applyBackgroundBlur();
    }

    public void addBlur(View view, int i, float f) {
        if (i > 0) {
            this.mBlurRadius = i;
        }
        if (f > 0.0f && f < 1.0f) {
            this.mAlpha = f;
        }
        addBlur(view);
    }
}
