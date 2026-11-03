package mega.blur.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import mega.blur.utils.AnimUtils;
import mega.blur.utils.BlurUtils;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class BlurDialog extends Dialog {
    private static final String TAG = "BlurDialog";
    private int mBlurAlpha;
    private int mBlurRadius;
    private FrameLayout mContainer;
    private View mContentView;

    protected boolean enableAnimation() {
        return true;
    }

    public BlurDialog(Context context) {
        this(context, -1);
    }

    public BlurDialog(Context context, int i) {
        super(context, i);
        this.mBlurRadius = 24;
        this.mBlurAlpha = 18;
        init(context);
    }

    protected BlurDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.mBlurRadius = 24;
        this.mBlurAlpha = 18;
        init(context);
    }

    private void init(Context context) {
        this.mContainer = new FrameLayout(context);
        configWindowAttrs();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this.mContainer, false);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewInflate.getLayoutParams();
        if (layoutParams.gravity == -1) {
            layoutParams.gravity = 17;
        }
        setContentView(viewInflate, viewInflate.getLayoutParams());
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setContentView(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mContentView = view;
        this.mContainer.addView(view, layoutParams);
        super.setContentView(this.mContainer, new ViewGroup.LayoutParams(-1, -1));
        configDecorLayoutParams();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        View view;
        super.onAttachedToWindow();
        if (!enableAnimation() || (view = this.mContentView) == null) {
            return;
        }
        view.startAnimation(enterAnimation());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (!enableAnimation()) {
            super.dismiss();
            return;
        }
        Animation animationExitAnimation = exitAnimation();
        animationExitAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: mega.blur.view.BlurDialog.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                BlurDialog.super.dismiss();
            }
        });
        this.mContentView.startAnimation(animationExitAnimation);
    }

    @Override // android.app.Dialog
    public void show() {
        showWithBlur(true);
    }

    public void showWithBlur(boolean z) {
        super.show();
        if (z) {
            blurBackground();
        }
    }

    public void blurBackground() {
        BlurUtils.blurDialogBackground(this, this.mBlurRadius, this.mBlurAlpha);
    }

    protected void configWindowAttrs() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.gravity = 17;
        attributes.systemUiVisibility |= 4102;
        window.setAttributes(attributes);
        window.getDecorView().setPadding(0, 0, 0, 0);
    }

    protected void configDecorLayoutParams() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
    }

    protected Animation enterAnimation() {
        return AnimUtils.defaultEnterAnimation();
    }

    protected Animation exitAnimation() {
        return AnimUtils.defaultExitAnimation();
    }
}
