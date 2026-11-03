package mega.blur.view;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
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
public class BlurAlertDialog extends AlertDialog {
    private static final String TAG = "BlurAlertDialog";
    private int mBlurAlpha;
    private int mBlurRadius;

    protected boolean enableAnimation() {
        return true;
    }

    public BlurAlertDialog(Context context) {
        this(context, -1);
    }

    protected BlurAlertDialog(Context context, int i) {
        super(context, i);
        this.mBlurRadius = 24;
        this.mBlurAlpha = 18;
        configWindowAttrs();
    }

    protected BlurAlertDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.mBlurRadius = 24;
        this.mBlurAlpha = 18;
        configWindowAttrs();
    }

    @Override // android.app.AlertDialog
    public void setView(View view) {
        super.setView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View alertContentView = getAlertContentView();
        if (alertContentView != null) {
            ((FrameLayout.LayoutParams) alertContentView.getLayoutParams()).gravity = 17;
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        View alertContentView = getAlertContentView();
        if (!enableAnimation() || alertContentView == null) {
            return;
        }
        alertContentView.startAnimation(enterAnimation());
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        configWindowAttrs();
        BlurUtils.blurDialogBackground(this, this.mBlurRadius, this.mBlurAlpha);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        View alertContentView = getAlertContentView();
        if (!enableAnimation() || alertContentView == null) {
            super.dismiss();
            return;
        }
        Animation animationExitAnimation = exitAnimation();
        animationExitAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: mega.blur.view.BlurAlertDialog.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                BlurAlertDialog.super.dismiss();
            }
        });
        alertContentView.startAnimation(animationExitAnimation);
    }

    private View getAlertContentView() {
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
        if (frameLayout != null) {
            return frameLayout.getChildAt(0);
        }
        return null;
    }

    protected void configWindowAttrs() {
        Window window = getWindow();
        window.addFlags(1024);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.gravity = 16;
        attributes.systemUiVisibility |= 6;
        window.setAttributes(attributes);
        window.getDecorView().setPadding(0, 0, 0, 0);
        window.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#25000000")));
    }

    protected Animation enterAnimation() {
        return AnimUtils.defaultEnterAnimation();
    }

    protected Animation exitAnimation() {
        return AnimUtils.defaultExitAnimation();
    }
}
