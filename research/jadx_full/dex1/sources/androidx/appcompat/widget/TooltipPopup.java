package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$style;
import androidx.core.view.PointerIconCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
class TooltipPopup {
    private static final String TAG = "TooltipPopup";
    private final View mContentView;
    private final Context mContext;
    private final WindowManager$LayoutParams mLayoutParams;
    private final TextView mMessageView;
    private final int[] mTmpAnchorPos;
    private final int[] mTmpAppPos;
    private final Rect mTmpDisplayFrame;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TooltipPopup(@NonNull Context context) {
        WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams();
        this.mLayoutParams = windowManager$LayoutParams;
        this.mTmpDisplayFrame = new Rect();
        this.mTmpAnchorPos = new int[2];
        this.mTmpAppPos = new int[2];
        this.mContext = context;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.abc_tooltip, (ViewGroup) null);
        this.mContentView = viewInflate;
        this.mMessageView = (TextView) viewInflate.findViewById(R$id.message);
        windowManager$LayoutParams.setTitle(getClass().getSimpleName());
        windowManager$LayoutParams.packageName = context.getPackageName();
        windowManager$LayoutParams.type = PointerIconCompat.TYPE_HAND;
        windowManager$LayoutParams.width = -2;
        windowManager$LayoutParams.height = -2;
        windowManager$LayoutParams.format = -3;
        windowManager$LayoutParams.windowAnimations = R$style.Animation_AppCompat_Tooltip;
        windowManager$LayoutParams.flags = 24;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void computePosition(View view, int i9, int i10, boolean z8, WindowManager$LayoutParams windowManager$LayoutParams) {
        int height;
        int i11;
        windowManager$LayoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.mContext.getResources().getDimensionPixelOffset(R$dimen.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i9 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.mContext.getResources().getDimensionPixelOffset(R$dimen.tooltip_precise_anchor_extra_offset);
            height = i10 + dimensionPixelOffset2;
            i11 = i10 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i11 = 0;
        }
        windowManager$LayoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.mContext.getResources().getDimensionPixelOffset(z8 ? R$dimen.tooltip_y_offset_touch : R$dimen.tooltip_y_offset_non_touch);
        View appRootView = getAppRootView(view);
        if (appRootView == null) {
            Log.e(TAG, "Cannot find app view");
            return;
        }
        appRootView.getWindowVisibleDisplayFrame(this.mTmpDisplayFrame);
        Rect rect = this.mTmpDisplayFrame;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.mContext.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.mTmpDisplayFrame.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        appRootView.getLocationOnScreen(this.mTmpAppPos);
        view.getLocationOnScreen(this.mTmpAnchorPos);
        int[] iArr = this.mTmpAnchorPos;
        int i12 = iArr[0];
        int[] iArr2 = this.mTmpAppPos;
        int i13 = i12 - iArr2[0];
        iArr[0] = i13;
        iArr[1] = iArr[1] - iArr2[1];
        windowManager$LayoutParams.x = (i13 + i9) - (appRootView.getWidth() / 2);
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
        this.mContentView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        int measuredHeight = this.mContentView.getMeasuredHeight();
        int i14 = this.mTmpAnchorPos[1];
        int i15 = ((i11 + i14) - dimensionPixelOffset3) - measuredHeight;
        int i16 = i14 + height + dimensionPixelOffset3;
        if (z8) {
            if (i15 >= 0) {
                windowManager$LayoutParams.y = i15;
                return;
            } else {
                windowManager$LayoutParams.y = i16;
                return;
            }
        }
        if (measuredHeight + i16 <= this.mTmpDisplayFrame.height()) {
            windowManager$LayoutParams.y = i16;
        } else {
            windowManager$LayoutParams.y = i15;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static View getAppRootView(View view) {
        View rootView = view.getRootView();
        ViewGroup$LayoutParams layoutParams = rootView.getLayoutParams();
        if (!(layoutParams instanceof WindowManager$LayoutParams) || ((WindowManager$LayoutParams) layoutParams).type != 2) {
            for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                if (context instanceof Activity) {
                    return ((Activity) context).getWindow().getDecorView();
                }
            }
        }
        return rootView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void hide() {
        if (isShowing()) {
            ((WindowManager) this.mContext.getSystemService("window")).removeView(this.mContentView);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isShowing() {
        return this.mContentView.getParent() != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void show(View view, int i9, int i10, boolean z8, CharSequence charSequence) {
        if (isShowing()) {
            hide();
        }
        this.mMessageView.setText(charSequence);
        computePosition(view, i9, i10, z8, this.mLayoutParams);
        ((WindowManager) this.mContext.getSystemService("window")).addView(this.mContentView, this.mLayoutParams);
    }
}
