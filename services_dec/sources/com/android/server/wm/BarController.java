package com.android.server.wm;

import android.app.StatusBarManager;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.proto.ProtoOutputStream;
import android.view.ViewRootImpl;
import com.android.server.LocalServices;
import com.android.server.UiThread;
import com.android.server.statusbar.StatusBarManagerInternal;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
public class BarController {
    private static final boolean DEBUG = false;
    private static final int MSG_NAV_BAR_VISIBILITY_CHANGED = 1;
    private static final int TRANSIENT_BAR_HIDING = 3;
    private static final int TRANSIENT_BAR_NONE = 0;
    private static final int TRANSIENT_BAR_SHOWING = 2;
    private static final int TRANSIENT_BAR_SHOW_REQUESTED = 1;
    private static final int TRANSLUCENT_ANIMATION_DELAY_MS = 1000;
    protected final int mDisplayId;
    private long mLastTranslucent;
    private boolean mNoAnimationOnNextShow;
    private boolean mPendingShow;
    private boolean mSetUnHideFlagWhenNextTransparent;
    private boolean mShowTransparent;
    private StatusBarManagerInternal mStatusBarInternal;
    private final int mStatusBarManagerId;
    protected final String mTag;
    private int mTransientBarState;
    private final int mTransientFlag;
    private final int mTranslucentFlag;
    private final int mTranslucentWmFlag;
    private final int mTransparentFlag;
    private final int mUnhideFlag;
    private OnBarVisibilityChangedListener mVisibilityChangeListener;
    protected WindowState mWin;
    private final int mWindowType;
    private final Object mServiceAquireLock = new Object();
    private int mState = 0;
    private final Rect mContentFrame = new Rect();
    protected final Handler mHandler = new BarHandler();

    interface OnBarVisibilityChangedListener {
        void onBarVisibilityChanged(boolean z);
    }

    BarController(String tag, int displayId, int transientFlag, int unhideFlag, int translucentFlag, int statusBarManagerId, int windowType, int translucentWmFlag, int transparentFlag) {
        this.mTag = "BarController." + tag;
        this.mDisplayId = displayId;
        this.mTransientFlag = transientFlag;
        this.mUnhideFlag = unhideFlag;
        this.mTranslucentFlag = translucentFlag;
        this.mStatusBarManagerId = statusBarManagerId;
        this.mWindowType = windowType;
        this.mTranslucentWmFlag = translucentWmFlag;
        this.mTransparentFlag = transparentFlag;
    }

    void setWindow(WindowState win) {
        if (ViewRootImpl.sNewInsetsMode == 2) {
            return;
        }
        this.mWin = win;
    }

    void setContentFrame(Rect frame) {
        this.mContentFrame.set(frame);
    }

    void setShowTransparent(boolean transparent) {
        if (transparent != this.mShowTransparent) {
            this.mShowTransparent = transparent;
            this.mSetUnHideFlagWhenNextTransparent = transparent;
            this.mNoAnimationOnNextShow = true;
        }
    }

    void showTransient() {
        if (this.mWin != null) {
            setTransientBarState(1);
        }
    }

    boolean isTransientShowing() {
        return this.mTransientBarState == 2;
    }

    boolean isTransientShowRequested() {
        return this.mTransientBarState == 1;
    }

    boolean wasRecentlyTranslucent() {
        return SystemClock.uptimeMillis() - this.mLastTranslucent < 1000;
    }

    void adjustSystemUiVisibilityLw(int oldVis, int vis) {
        if (this.mWin != null && this.mTransientBarState == 2 && (this.mTransientFlag & vis) == 0) {
            setTransientBarState(3);
            setBarShowingLw(false);
        } else if (this.mWin != null) {
            int i = this.mUnhideFlag;
            if ((oldVis & i) != 0 && (i & vis) == 0) {
                setBarShowingLw(true);
            }
        }
    }

    int applyTranslucentFlagLw(WindowState win, int vis, int oldVis) {
        int vis2;
        if (this.mWin != null) {
            if (win != null) {
                int fl = PolicyControl.getWindowFlags(win, null);
                if ((this.mTranslucentWmFlag & fl) != 0) {
                    vis2 = vis | this.mTranslucentFlag;
                } else {
                    vis2 = vis & (~this.mTranslucentFlag);
                }
                if ((Integer.MIN_VALUE & fl) != 0 && isTransparentAllowed(win)) {
                    return vis2 | this.mTransparentFlag;
                }
                return vis2 & (~this.mTransparentFlag);
            }
            int i = this.mTranslucentFlag;
            int vis3 = ((~i) & vis) | (i & oldVis);
            int i2 = this.mTransparentFlag;
            return ((~i2) & vis3) | (i2 & oldVis);
        }
        return vis;
    }

    private Rect getContentFrame(WindowState win) {
        Rect rotatedContentFrame = win.mToken.getFixedRotationBarContentFrame(this.mWindowType);
        return rotatedContentFrame != null ? rotatedContentFrame : this.mContentFrame;
    }

    boolean isLightAppearanceAllowed(WindowState win) {
        if (win == null) {
            return true;
        }
        return true ^ win.isLetterboxedOverlappingWith(getContentFrame(win));
    }

    boolean isTransparentAllowed(WindowState win) {
        if (win == null) {
            return true;
        }
        return win.letterboxNotIntersectsOrFullyContains(getContentFrame(win));
    }

    boolean setBarShowingLw(boolean z) {
        boolean zHideLw;
        if (this.mWin == null) {
            return false;
        }
        if (z && this.mTransientBarState == 3) {
            this.mPendingShow = true;
            return false;
        }
        boolean zIsVisibleLw = this.mWin.isVisibleLw();
        boolean zIsAnimatingLw = this.mWin.isAnimatingLw();
        boolean zSkipAnimation = skipAnimation();
        if (z) {
            zHideLw = this.mWin.showLw((this.mNoAnimationOnNextShow || zSkipAnimation) ? false : true);
        } else {
            zHideLw = this.mWin.hideLw((this.mNoAnimationOnNextShow || zSkipAnimation) ? false : true);
        }
        this.mNoAnimationOnNextShow = false;
        boolean zUpdateStateLw = updateStateLw(computeStateLw(zIsVisibleLw, zIsAnimatingLw, this.mWin, zHideLw));
        if (zHideLw && this.mVisibilityChangeListener != null) {
            this.mHandler.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
        }
        return zHideLw || zUpdateStateLw;
    }

    void setOnBarVisibilityChangedListener(OnBarVisibilityChangedListener listener, boolean invokeWithState) {
        this.mVisibilityChangeListener = listener;
        if (invokeWithState) {
            this.mHandler.obtainMessage(1, this.mState == 0 ? 1 : 0, 0).sendToTarget();
        }
    }

    protected boolean skipAnimation() {
        return !this.mWin.isDrawnLw();
    }

    private int computeStateLw(boolean wasVis, boolean wasAnim, WindowState win, boolean change) {
        if (win.isDrawnLw()) {
            boolean vis = win.isVisibleLw();
            boolean anim = win.isAnimatingLw();
            if (this.mState == 1 && !change && !vis) {
                return 2;
            }
            if (this.mState == 2 && vis) {
                return 0;
            }
            if (change) {
                return (wasVis && vis && !wasAnim && anim) ? 1 : 0;
            }
        }
        return this.mState;
    }

    private boolean updateStateLw(final int state) {
        if (this.mWin != null && state != this.mState) {
            this.mState = state;
            this.mHandler.post(new Runnable() { // from class: com.android.server.wm.BarController.1
                @Override // java.lang.Runnable
                public void run() {
                    StatusBarManagerInternal statusbar = BarController.this.getStatusBarInternal();
                    if (statusbar != null) {
                        statusbar.setWindowState(BarController.this.mDisplayId, BarController.this.mStatusBarManagerId, state);
                    }
                }
            });
            return true;
        }
        return false;
    }

    boolean checkHiddenLw() {
        WindowState windowState = this.mWin;
        if (windowState != null && windowState.isDrawnLw()) {
            if (!this.mWin.isVisibleLw() && !this.mWin.isAnimatingLw()) {
                updateStateLw(2);
            }
            if (this.mTransientBarState == 3 && !this.mWin.isVisibleLw()) {
                setTransientBarState(0);
                if (this.mPendingShow) {
                    setBarShowingLw(true);
                    this.mPendingShow = false;
                }
                return true;
            }
        }
        return false;
    }

    boolean checkShowTransientBarLw() {
        WindowState windowState;
        int i = this.mTransientBarState;
        return (i == 2 || i == 1 || (windowState = this.mWin) == null || windowState.isDisplayedLw()) ? false : true;
    }

    int updateVisibilityLw(boolean transientAllowed, int oldVis, int vis) {
        if (this.mWin == null) {
            return vis;
        }
        if (isTransientShowing() || isTransientShowRequested()) {
            if (transientAllowed) {
                int i = this.mTransientFlag;
                vis |= i;
                if ((i & oldVis) == 0) {
                    vis |= this.mUnhideFlag;
                }
                setTransientBarState(2);
            } else {
                setTransientBarState(0);
            }
        }
        if (this.mShowTransparent) {
            vis |= this.mTransparentFlag;
            if (this.mSetUnHideFlagWhenNextTransparent) {
                vis |= this.mUnhideFlag;
                this.mSetUnHideFlagWhenNextTransparent = false;
            }
        }
        if (this.mTransientBarState != 0) {
            vis = (vis | this.mTransientFlag) & (-2);
        }
        int i2 = this.mTranslucentFlag;
        if ((vis & i2) != 0 || (i2 & oldVis) != 0 || ((vis | oldVis) & this.mTransparentFlag) != 0) {
            this.mLastTranslucent = SystemClock.uptimeMillis();
        }
        return vis;
    }

    private void setTransientBarState(int state) {
        int i;
        if (this.mWin != null && state != (i = this.mTransientBarState)) {
            if (i == 2 || state == 2) {
                this.mLastTranslucent = SystemClock.uptimeMillis();
            }
            this.mTransientBarState = state;
        }
    }

    protected StatusBarManagerInternal getStatusBarInternal() {
        StatusBarManagerInternal statusBarManagerInternal;
        synchronized (this.mServiceAquireLock) {
            if (this.mStatusBarInternal == null) {
                this.mStatusBarInternal = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
            }
            statusBarManagerInternal = this.mStatusBarInternal;
        }
        return statusBarManagerInternal;
    }

    private static String transientBarStateToString(int state) {
        if (state == 3) {
            return "TRANSIENT_BAR_HIDING";
        }
        if (state == 2) {
            return "TRANSIENT_BAR_SHOWING";
        }
        if (state == 1) {
            return "TRANSIENT_BAR_SHOW_REQUESTED";
        }
        if (state == 0) {
            return "TRANSIENT_BAR_NONE";
        }
        throw new IllegalArgumentException("Unknown state " + state);
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1159641169921L, this.mState);
        proto.write(1159641169922L, this.mTransientBarState);
        proto.end(token);
    }

    void dump(PrintWriter pw, String prefix) {
        if (this.mWin != null) {
            pw.print(prefix);
            pw.println(this.mTag);
            pw.print(prefix);
            pw.print("  ");
            pw.print("mState");
            pw.print('=');
            pw.println(StatusBarManager.windowStateToString(this.mState));
            pw.print(prefix);
            pw.print("  ");
            pw.print("mTransientBar");
            pw.print('=');
            pw.println(transientBarStateToString(this.mTransientBarState));
            pw.print(prefix);
            pw.print("  mContentFrame=");
            pw.println(this.mContentFrame);
        }
    }

    private class BarHandler extends Handler {
        BarHandler() {
            super(UiThread.getHandler().getLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                boolean visible = msg.arg1 != 0;
                if (BarController.this.mVisibilityChangeListener != null) {
                    BarController.this.mVisibilityChangeListener.onBarVisibilityChanged(visible);
                }
            }
        }
    }
}
