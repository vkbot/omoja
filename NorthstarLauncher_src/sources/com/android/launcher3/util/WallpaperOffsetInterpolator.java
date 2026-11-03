package com.android.launcher3.util;

import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.animation.Interpolator;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.Interpolators;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperOffsetInterpolator extends BroadcastReceiver {
    private static final int ANIMATION_DURATION = 250;
    private static final int MIN_PARALLAX_PAGE_SPAN = 4;
    private static final int MSG_APPLY_OFFSET = 3;
    private static final int MSG_JUMP_TO_FINAL = 5;
    private static final int MSG_SET_NUM_PARALLAX = 4;
    private static final int MSG_START_ANIMATION = 1;
    private static final int MSG_UPDATE_OFFSET = 2;
    private static final String TAG = "WPOffsetInterpolator";
    private static final int[] sTempInt = new int[2];
    private final Handler mHandler;
    private final boolean mIsRtl;
    private boolean mLockedToDefaultPage;
    private int mNumScreens;
    private boolean mRegistered = false;
    private boolean mWallpaperIsLiveWallpaper;
    private IBinder mWindowToken;
    private final Workspace mWorkspace;

    public boolean isLockedToDefaultPage() {
        return this.mLockedToDefaultPage;
    }

    public void setLockToDefaultPage(boolean lockToDefaultPage) {
        this.mLockedToDefaultPage = lockToDefaultPage;
    }

    public WallpaperOffsetInterpolator(Workspace workspace) {
        this.mWorkspace = workspace;
        this.mIsRtl = Utilities.isRtl(workspace.getResources());
        this.mHandler = new OffsetHandler(workspace.getContext());
    }

    private void wallpaperOffsetForScroll(int i, int i2, int[] iArr) {
        int i3;
        int i4;
        iArr[1] = 1;
        if (this.mLockedToDefaultPage || i2 <= 1) {
            iArr[0] = this.mIsRtl ? 1 : 0;
            return;
        }
        int iMax = this.mWallpaperIsLiveWallpaper ? i2 : Math.max(4, i2);
        if (this.mIsRtl) {
            i4 = i2 - 1;
            i3 = 0;
        } else {
            i3 = i2 - 1;
            i4 = 0;
        }
        int scrollForPage = this.mWorkspace.getScrollForPage(i4);
        int scrollForPage2 = this.mWorkspace.getScrollForPage(i3) - scrollForPage;
        if (scrollForPage2 <= 0) {
            iArr[0] = 0;
            return;
        }
        int iBoundToRange = Utilities.boundToRange((i - scrollForPage) - this.mWorkspace.getLayoutTransitionOffsetForPage(0), 0, scrollForPage2);
        int i5 = (iMax - 1) * scrollForPage2;
        iArr[1] = i5;
        iArr[0] = (this.mIsRtl ? i5 - ((i2 - 1) * scrollForPage2) : 0) + (iBoundToRange * (i2 - 1));
    }

    public float wallpaperOffsetForScroll(int scroll) {
        int numScreensExcludingEmpty = getNumScreensExcludingEmpty();
        int[] iArr = sTempInt;
        wallpaperOffsetForScroll(scroll, numScreensExcludingEmpty, iArr);
        return iArr[0] / iArr[1];
    }

    private int getNumScreensExcludingEmpty() {
        int childCount = this.mWorkspace.getChildCount();
        return (childCount < 4 || !this.mWorkspace.hasExtraEmptyScreen()) ? childCount : childCount - 1;
    }

    public void syncWithScroll() {
        int numScreensExcludingEmpty = getNumScreensExcludingEmpty();
        int scrollX = this.mWorkspace.getScrollX();
        int[] iArr = sTempInt;
        wallpaperOffsetForScroll(scrollX, numScreensExcludingEmpty, iArr);
        Message messageObtain = Message.obtain(this.mHandler, 2, iArr[0], iArr[1], this.mWindowToken);
        int i = this.mNumScreens;
        if (numScreensExcludingEmpty != i) {
            if (i > 0) {
                messageObtain.what = 1;
            }
            this.mNumScreens = numScreensExcludingEmpty;
            updateOffset();
        }
        messageObtain.sendToTarget();
    }

    private void updateOffset() {
        Message.obtain(this.mHandler, 4, this.mWallpaperIsLiveWallpaper ? this.mNumScreens : Math.max(4, this.mNumScreens), 0, this.mWindowToken).sendToTarget();
    }

    public void jumpToFinal() {
        Message.obtain(this.mHandler, 5, this.mWindowToken).sendToTarget();
    }

    public void setWindowToken(IBinder token) {
        this.mWindowToken = token;
        if (token == null && this.mRegistered) {
            this.mWorkspace.getContext().unregisterReceiver(this);
            this.mRegistered = false;
        } else {
            if (token == null || this.mRegistered) {
                return;
            }
            this.mWorkspace.getContext().registerReceiver(this, new IntentFilter("android.intent.action.WALLPAPER_CHANGED"));
            onReceive(this.mWorkspace.getContext(), null);
            this.mRegistered = true;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.mWallpaperIsLiveWallpaper = WallpaperManager.getInstance(this.mWorkspace.getContext()).getWallpaperInfo() != null;
        updateOffset();
    }

    private static class OffsetHandler extends Handler {
        private boolean mAnimating;
        private float mAnimationStartOffset;
        private long mAnimationStartTime;
        private float mCurrentOffset;
        private float mFinalOffset;
        private final Interpolator mInterpolator;
        private float mOffsetX;
        private final WallpaperManager mWM;

        public OffsetHandler(Context context) {
            super(Executors.UI_HELPER_EXECUTOR.getLooper());
            this.mCurrentOffset = 0.5f;
            this.mInterpolator = Interpolators.DEACCEL_1_5;
            this.mWM = WallpaperManager.getInstance(context);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x0059  */
        /* JADX WARN: Code duplicated, block: B:28:0x0079  */
        /* JADX WARN: Code duplicated, block: B:30:0x007d  */
        /* JADX WARN: Code duplicated, block: B:33:0x0089  */
        /* JADX WARN: Code duplicated, block: B:36:0x0097  */
        /* JADX WARN: Code duplicated, block: B:38:? A[RETURN, SYNTHETIC] */
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            float f;
            IBinder iBinder = (IBinder) msg.obj;
            if (iBinder == null) {
                return;
            }
            int i = msg.what;
            if (i == 1) {
                this.mAnimating = true;
                this.mAnimationStartOffset = this.mCurrentOffset;
                this.mAnimationStartTime = msg.getWhen();
            } else {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            float f2 = 1.0f / (msg.arg1 - 1);
                            this.mOffsetX = f2;
                            this.mWM.setWallpaperOffsetSteps(f2, 1.0f);
                            return;
                        } else {
                            if (i != 5) {
                                return;
                            }
                            if (Float.compare(this.mCurrentOffset, this.mFinalOffset) != 0) {
                                this.mCurrentOffset = this.mFinalOffset;
                                setOffsetSafely(iBinder);
                            }
                            this.mAnimating = false;
                            return;
                        }
                    }
                }
                f = this.mCurrentOffset;
                if (this.mAnimating) {
                    long jUptimeMillis = SystemClock.uptimeMillis() - this.mAnimationStartTime;
                    float interpolation = this.mInterpolator.getInterpolation(jUptimeMillis / 250.0f);
                    float f3 = this.mAnimationStartOffset;
                    this.mCurrentOffset = f3 + ((this.mFinalOffset - f3) * interpolation);
                    this.mAnimating = jUptimeMillis < 250;
                } else {
                    this.mCurrentOffset = this.mFinalOffset;
                }
                if (Float.compare(this.mCurrentOffset, f) != 0) {
                    setOffsetSafely(iBinder);
                    this.mWM.setWallpaperOffsetSteps(this.mOffsetX, 1.0f);
                }
                if (this.mAnimating) {
                    Message.obtain(this, 3, iBinder).sendToTarget();
                }
            }
            this.mFinalOffset = msg.arg1 / msg.arg2;
            f = this.mCurrentOffset;
            if (this.mAnimating) {
                long jUptimeMillis2 = SystemClock.uptimeMillis() - this.mAnimationStartTime;
                float interpolation2 = this.mInterpolator.getInterpolation(jUptimeMillis2 / 250.0f);
                float f4 = this.mAnimationStartOffset;
                this.mCurrentOffset = f4 + ((this.mFinalOffset - f4) * interpolation2);
                this.mAnimating = jUptimeMillis2 < 250;
            } else {
                this.mCurrentOffset = this.mFinalOffset;
            }
            if (Float.compare(this.mCurrentOffset, f) != 0) {
                setOffsetSafely(iBinder);
                this.mWM.setWallpaperOffsetSteps(this.mOffsetX, 1.0f);
            }
            if (this.mAnimating) {
                Message.obtain(this, 3, iBinder).sendToTarget();
            }
        }

        private void setOffsetSafely(IBinder token) {
            try {
                this.mWM.setWallpaperOffsets(token, this.mCurrentOffset, 0.5f);
            } catch (IllegalArgumentException e) {
                Log.e(WallpaperOffsetInterpolator.TAG, "Error updating wallpaper offset: " + e);
            }
        }
    }
}
