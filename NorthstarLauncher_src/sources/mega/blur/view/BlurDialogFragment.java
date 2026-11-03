package mega.blur.view;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import androidx.fragment.app.DialogFragment;
import mega.blur.utils.AnimUtils;
import mega.blur.utils.BlurUtils;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class BlurDialogFragment extends DialogFragment {
    public static final String KEY_BLUR_ALPHA = "background_alpha";
    public static final String KEY_BLUR_RADIUS = "background_radius";
    private static final String TAG = "BlurDialogFragment";
    private int mBlurRadius = 24;
    private int mBlurAlpha = 18;

    protected boolean enableAnimation() {
        return true;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            int i = arguments.getInt(KEY_BLUR_ALPHA, this.mBlurAlpha);
            this.mBlurAlpha = i;
            this.mBlurAlpha = Math.min(i, 255);
            int i2 = arguments.getInt(KEY_BLUR_RADIUS, this.mBlurRadius);
            this.mBlurRadius = i2;
            this.mBlurRadius = Math.min(i2, 25);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        BlurUtils.blurDialogBackground(getDialog(), this.mBlurRadius, this.mBlurAlpha);
        if (getDialog() == null || getDialog().getWindow() == null) {
            return;
        }
        Window window = getDialog().getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.systemUiVisibility |= 4102;
        window.setAttributes(attributes);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        View view = getView();
        if (view == null || !enableAnimation()) {
            return;
        }
        view.startAnimation(enterAnimation());
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        View view = getView();
        if (view == null || !enableAnimation()) {
            super.dismiss();
            return;
        }
        Animation animationExitAnimation = exitAnimation();
        animationExitAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: mega.blur.view.BlurDialogFragment.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                BlurDialogFragment.super.dismiss();
            }
        });
        view.startAnimation(animationExitAnimation);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new Dialog(requireContext(), getTheme()) { // from class: mega.blur.view.BlurDialogFragment.2
            @Override // android.app.Dialog, android.content.DialogInterface
            public void cancel() {
                if (BlurDialogFragment.this.enableAnimation()) {
                    doExitAnimation();
                } else {
                    callSuperCancel();
                }
            }

            private void doExitAnimation() {
                View view = BlurDialogFragment.this.getView();
                if (view == null) {
                    callSuperCancel();
                    return;
                }
                Animation animationExitAnimation = BlurDialogFragment.this.exitAnimation();
                animationExitAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: mega.blur.view.BlurDialogFragment.2.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        callSuperCancel();
                    }
                });
                view.startAnimation(animationExitAnimation);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void callSuperCancel() {
                super.cancel();
            }

            @Override // android.app.Dialog
            public void setContentView(View view) {
                if (view.getLayoutParams() == null) {
                    super.setContentView(view);
                } else {
                    super.setContentView(view, view.getLayoutParams());
                }
            }
        };
    }

    protected Animation enterAnimation() {
        return AnimUtils.defaultEnterAnimation();
    }

    protected Animation exitAnimation() {
        return AnimUtils.defaultExitAnimation();
    }
}
