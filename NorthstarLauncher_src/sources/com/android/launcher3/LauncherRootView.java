package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewParent;
import android.view.WindowInsets;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.StatefulActivity;
import java.util.Collections;
import java.util.List;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class LauncherRootView extends InsettableFrameLayout {

    @ViewDebug.ExportedProperty(category = "launcher")
    private static final List<Rect> SYSTEM_GESTURE_EXCLUSION_RECT = Collections.singletonList(new Rect());
    private static final String TAG = "LauncherRootView";
    private final StatefulActivity mActivity;

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mDisallowBackGesture;

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mForceHideBackArrow;
    private final Rect mTempRect;
    private WindowStateListener mWindowStateListener;

    public interface WindowStateListener {
        void onWindowFocusChanged(boolean hasFocus);

        void onWindowVisibilityChanged(int visibility);
    }

    public void setWindowStateListener(WindowStateListener listener) {
        this.mWindowStateListener = listener;
    }

    public LauncherRootView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTempRect = new Rect();
        this.mActivity = (StatefulActivity) StatefulActivity.fromContext(context);
    }

    private void handleSystemWindowInsets(Rect insets) {
        this.mActivity.getDeviceProfile().updateInsets(insets);
        boolean z = !insets.equals(this.mInsets);
        setInsets(insets);
        if (z) {
            this.mActivity.getStateManager().reapplyState(true);
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets insets) {
        this.mTempRect.set(insets.getSystemWindowInsetLeft(), insets.getSystemWindowInsetTop(), insets.getSystemWindowInsetRight(), insets.getSystemWindowInsetBottom());
        handleSystemWindowInsets(this.mTempRect);
        return insets;
    }

    @Override // com.android.launcher3.InsettableFrameLayout, com.android.launcher3.Insettable
    public void setInsets(Rect insets) {
        if (insets.equals(this.mInsets)) {
            return;
        }
        super.setInsets(insets);
    }

    public void dispatchInsets() {
        this.mActivity.getDeviceProfile().updateInsets(this.mInsets);
        super.setInsets(this.mInsets);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
        WindowStateListener windowStateListener = this.mWindowStateListener;
        if (windowStateListener != null) {
            windowStateListener.onWindowFocusChanged(hasWindowFocus);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        WindowStateListener windowStateListener = this.mWindowStateListener;
        if (windowStateListener != null) {
            windowStateListener.onWindowVisibilityChanged(visibility);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        SYSTEM_GESTURE_EXCLUSION_RECT.get(0).set(l, t, r, b);
        setDisallowBackGesture(this.mDisallowBackGesture);
    }

    public void setForceHideBackArrow(boolean forceHideBackArrow) {
        this.mForceHideBackArrow = forceHideBackArrow;
        setDisallowBackGesture(this.mDisallowBackGesture);
    }

    public void setDisallowBackGesture(boolean disallowBackGesture) {
        if (!Utilities.ATLEAST_Q || FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get()) {
            return;
        }
        this.mDisallowBackGesture = disallowBackGesture;
        setSystemGestureExclusionRects((this.mForceHideBackArrow || disallowBackGesture) ? SYSTEM_GESTURE_EXCLUSION_RECT : Collections.emptyList());
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        checkThread();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onDescendantInvalidated(View child, View target) {
        super.onDescendantInvalidated(child, target);
        checkThread();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] location, Rect dirty) {
        checkThread();
        return super.invalidateChildInParent(location, dirty);
    }

    void checkThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        MLog.w(TAG, "checkThread: " + Utilities.getStackTraceSingleLine(new Throwable()));
        throw new RuntimeException("Only the original thread that created a view hierarchy can touch its views.");
    }
}
