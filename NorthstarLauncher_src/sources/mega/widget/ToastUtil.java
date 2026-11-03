package mega.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.mega.internal.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class ToastUtil {
    private static final float ALPHA_0 = 0.0f;
    private static final float ALPHA_1 = 1.0f;
    private static final int ANIMATION_DURING = 500;
    private static final String TAG = "ToastUtil";
    private static final int TOAST_SHOW_DURATION = 3000;
    private FrameLayout mContainer;
    private AlphaAnimation mEndAnimation;
    private Runnable mEndAnimationRunnable;
    private Handler mHandler;
    private WindowManager.LayoutParams mParams;
    private View mRootView;
    private AlphaAnimation mStartAnimation;
    private TextView mTvContent;
    private WindowManager mWindowManager;

    private ToastUtil() {
        this.mHandler = new Handler(Looper.getMainLooper());
        initParams();
        initAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class InnerToast {
        private static final ToastUtil INSTANCE = new ToastUtil();

        private InnerToast() {
        }
    }

    public static void showToast(Context context, int i) {
        if (context != null) {
            ToastUtil unused = InnerToast.INSTANCE;
            showToast(context, context.getString(i));
        }
    }

    public static void showToast(final Context context, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        InnerToast.INSTANCE.mHandler.post(new Runnable() { // from class: mega.widget.ToastUtil$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ToastUtil.InnerToast.INSTANCE.showTextToast(context, str);
            }
        });
    }

    private void initContainer(Context context) {
        removeContainer();
        if (this.mWindowManager == null) {
            this.mWindowManager = (WindowManager) context.getSystemService("window");
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.common_toast_layout, (ViewGroup) null);
            this.mRootView = viewInflate;
            this.mTvContent = (TextView) viewInflate.findViewById(R.id.toast_custom_tv);
            FrameLayout frameLayout = new FrameLayout(context.getApplicationContext());
            this.mContainer = frameLayout;
            frameLayout.setBackground(null);
            this.mContainer.addView(this.mRootView);
        }
    }

    private void initParams() {
        if (this.mParams == null) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.mParams = layoutParams;
            layoutParams.gravity = 81;
            this.mParams.height = -2;
            this.mParams.width = -2;
            this.mParams.format = -3;
            this.mParams.type = 2038;
            this.mParams.flags = 152;
        }
    }

    private void initAnimation() {
        if (this.mStartAnimation == null) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            this.mStartAnimation = alphaAnimation;
            alphaAnimation.setDuration(500L);
        }
        if (this.mEndAnimation == null) {
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
            this.mEndAnimation = alphaAnimation2;
            alphaAnimation2.setDuration(500L);
            this.mEndAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: mega.widget.ToastUtil.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    MLog.d(ToastUtil.TAG, "onAnimationEnd");
                    ToastUtil.this.removeContainer();
                }
            });
        }
        this.mEndAnimationRunnable = new Runnable() { // from class: mega.widget.ToastUtil$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1800lambda$initAnimation$1$megawidgetToastUtil();
            }
        };
    }

    /* JADX INFO: renamed from: lambda$initAnimation$1$mega-widget-ToastUtil, reason: not valid java name */
    /* synthetic */ void m1800lambda$initAnimation$1$megawidgetToastUtil() {
        this.mRootView.startAnimation(this.mEndAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTextToast(Context context, String str) {
        initContainer(context);
        TextView textView = this.mTvContent;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        textView.setText(str);
        this.mTvContent.setTextColor(context.getColor(R.color.color_toast_text));
        this.mTvContent.setBackground(context.getDrawable(R.drawable.toast_bg));
        MLog.d(TAG, "addView...");
        this.mWindowManager.addView(this.mContainer, this.mParams);
        this.mRootView.startAnimation(this.mStartAnimation);
        this.mHandler.removeCallbacks(this.mEndAnimationRunnable);
        this.mHandler.postDelayed(this.mEndAnimationRunnable, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeContainer() {
        FrameLayout frameLayout;
        if (this.mWindowManager == null || (frameLayout = this.mContainer) == null || frameLayout.getParent() == null) {
            return;
        }
        MLog.d(TAG, "removeContainer");
        this.mWindowManager.removeView(this.mContainer);
    }

    public static void setViewType(int i) {
        InnerToast.INSTANCE.mParams.type = i;
    }
}
