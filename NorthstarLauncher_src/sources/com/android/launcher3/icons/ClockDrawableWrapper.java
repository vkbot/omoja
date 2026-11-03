package com.android.launcher3.icons;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import com.android.launcher3.FastBitmapDrawable;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class ClockDrawableWrapper extends AdaptiveIconDrawable implements BitmapInfo.Extender {
    private static final String DEFAULT_HOUR_METADATA_KEY = "com.android.launcher3.DEFAULT_HOUR";
    private static final String DEFAULT_MINUTE_METADATA_KEY = "com.android.launcher3.DEFAULT_MINUTE";
    private static final String DEFAULT_SECOND_METADATA_KEY = "com.android.launcher3.DEFAULT_SECOND";
    private static final boolean DISABLE_SECONDS = true;
    private static final String HOUR_INDEX_METADATA_KEY = "com.android.launcher3.HOUR_LAYER_INDEX";
    public static final int INVALID_VALUE = -1;
    private static final String LAUNCHER_PACKAGE = "com.android.launcher3";
    private static final int LEVELS_PER_SECOND = 10;
    private static final String MINUTE_INDEX_METADATA_KEY = "com.android.launcher3.MINUTE_LAYER_INDEX";
    private static final String ROUND_ICON_METADATA_KEY = "com.android.launcher3.LEVEL_PER_TICK_ICON_ROUND";
    private static final String SECOND_INDEX_METADATA_KEY = "com.android.launcher3.SECOND_LAYER_INDEX";
    private static final String TAG = "ClockDrawableWrapper";
    public static final long TICK_MS = TimeUnit.MINUTES.toMillis(1);
    private final AnimationInfo mAnimationInfo;
    private int mTargetSdkVersion;

    public ClockDrawableWrapper(AdaptiveIconDrawable base) {
        super(base.getBackground(), base.getForeground());
        this.mAnimationInfo = new AnimationInfo();
    }

    public static ClockDrawableWrapper forPackage(Context context, String pkg, int iconDpi) {
        int i;
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(pkg, 8320);
            Bundle bundle = applicationInfo.metaData;
            if (bundle == null || (i = bundle.getInt(ROUND_ICON_METADATA_KEY, 0)) == 0) {
                return null;
            }
            Drawable drawableMutate = packageManager.getResourcesForApplication(applicationInfo).getDrawableForDensity(i, iconDpi).mutate();
            if (!(drawableMutate instanceof AdaptiveIconDrawable)) {
                return null;
            }
            ClockDrawableWrapper clockDrawableWrapper = new ClockDrawableWrapper((AdaptiveIconDrawable) drawableMutate);
            clockDrawableWrapper.mTargetSdkVersion = applicationInfo.targetSdkVersion;
            AnimationInfo animationInfo = clockDrawableWrapper.mAnimationInfo;
            animationInfo.baseDrawableState = drawableMutate.getConstantState();
            animationInfo.hourLayerIndex = bundle.getInt(HOUR_INDEX_METADATA_KEY, -1);
            animationInfo.minuteLayerIndex = bundle.getInt(MINUTE_INDEX_METADATA_KEY, -1);
            animationInfo.secondLayerIndex = bundle.getInt(SECOND_INDEX_METADATA_KEY, -1);
            animationInfo.defaultHour = bundle.getInt(DEFAULT_HOUR_METADATA_KEY, 0);
            animationInfo.defaultMinute = bundle.getInt(DEFAULT_MINUTE_METADATA_KEY, 0);
            animationInfo.defaultSecond = bundle.getInt(DEFAULT_SECOND_METADATA_KEY, 0);
            LayerDrawable layerDrawable = (LayerDrawable) clockDrawableWrapper.getForeground();
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            if (animationInfo.hourLayerIndex < 0 || animationInfo.hourLayerIndex >= numberOfLayers) {
                animationInfo.hourLayerIndex = -1;
            }
            if (animationInfo.minuteLayerIndex < 0 || animationInfo.minuteLayerIndex >= numberOfLayers) {
                animationInfo.minuteLayerIndex = -1;
            }
            if (animationInfo.secondLayerIndex < 0 || animationInfo.secondLayerIndex >= numberOfLayers) {
                animationInfo.secondLayerIndex = -1;
            } else {
                layerDrawable.setDrawable(animationInfo.secondLayerIndex, null);
                animationInfo.secondLayerIndex = -1;
            }
            return clockDrawableWrapper;
        } catch (Exception e) {
            Log.d(TAG, "Unable to load clock drawable info", e);
            return null;
        }
    }

    @Override // com.android.launcher3.icons.BitmapInfo.Extender
    public BitmapInfo getExtendedInfo(Bitmap bitmap, int color, BaseIconFactory iconFactory) {
        iconFactory.disableColorExtraction();
        float[] fArr = new float[1];
        return new ClockBitmapInfo(bitmap, color, fArr[0], this.mAnimationInfo, iconFactory.createBadgedIconBitmap((Drawable) new AdaptiveIconDrawable(getBackground().getConstantState().newDrawable(), null), Process.myUserHandle(), this.mTargetSdkVersion, false, fArr).icon);
    }

    @Override // com.android.launcher3.icons.BitmapInfo.Extender
    public void prepareToDrawOnUi() {
        this.mAnimationInfo.applyTime(Calendar.getInstance(), (LayerDrawable) getForeground());
    }

    private static class AnimationInfo {
        public Drawable.ConstantState baseDrawableState;
        public int defaultHour;
        public int defaultMinute;
        public int defaultSecond;
        public int hourLayerIndex;
        public int minuteLayerIndex;
        public int secondLayerIndex;

        private AnimationInfo() {
        }

        boolean applyTime(Calendar time, LayerDrawable foregroundDrawable) {
            time.setTimeInMillis(System.currentTimeMillis());
            int i = (time.get(10) + (12 - this.defaultHour)) % 12;
            int i2 = (time.get(12) + (60 - this.defaultMinute)) % 60;
            int i3 = (time.get(13) + (60 - this.defaultSecond)) % 60;
            int i4 = this.hourLayerIndex;
            boolean z = i4 != -1 && foregroundDrawable.getDrawable(i4).setLevel((i * 60) + time.get(12));
            int i5 = this.minuteLayerIndex;
            if (i5 != -1 && foregroundDrawable.getDrawable(i5).setLevel((time.get(10) * 60) + i2)) {
                z = true;
            }
            int i6 = this.secondLayerIndex;
            if (i6 == -1 || !foregroundDrawable.getDrawable(i6).setLevel(i3 * 10)) {
                return z;
            }
            return true;
        }
    }

    private static class ClockBitmapInfo extends BitmapInfo implements FastBitmapDrawable.Factory {
        public final AnimationInfo animInfo;
        public final Bitmap mFlattenedBackground;
        public final int offset;
        public final float scale;

        ClockBitmapInfo(Bitmap icon, int color, float scale, AnimationInfo animInfo, Bitmap background) {
            super(icon, color);
            this.scale = scale;
            this.animInfo = animInfo;
            this.offset = (int) Math.ceil(icon.getWidth() * 0.010416667f);
            this.mFlattenedBackground = background;
        }

        @Override // com.android.launcher3.FastBitmapDrawable.Factory
        public FastBitmapDrawable newDrawable() {
            return new ClockIconDrawable(this);
        }
    }

    private static class ClockIconDrawable extends FastBitmapDrawable implements Runnable {
        private final LayerDrawable mForeground;
        private final AdaptiveIconDrawable mFullDrawable;
        private final ClockBitmapInfo mInfo;
        private final Calendar mTime;

        ClockIconDrawable(ClockBitmapInfo clockInfo) {
            super(clockInfo);
            this.mTime = Calendar.getInstance();
            this.mInfo = clockInfo;
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) clockInfo.animInfo.baseDrawableState.newDrawable();
            this.mFullDrawable = adaptiveIconDrawable;
            this.mForeground = (LayerDrawable) adaptiveIconDrawable.getForeground();
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(Rect bounds) {
            super.onBoundsChange(bounds);
            this.mFullDrawable.setBounds(bounds);
        }

        @Override // com.android.launcher3.FastBitmapDrawable
        public void drawInternal(Canvas canvas, Rect bounds) {
            ClockBitmapInfo clockBitmapInfo = this.mInfo;
            if (clockBitmapInfo == null) {
                super.drawInternal(canvas, bounds);
                return;
            }
            canvas.drawBitmap(clockBitmapInfo.mFlattenedBackground, (Rect) null, bounds, this.mPaint);
            this.mInfo.animInfo.applyTime(this.mTime, this.mForeground);
            canvas.scale(this.mInfo.scale, this.mInfo.scale, bounds.exactCenterX() + this.mInfo.offset, bounds.exactCenterY() + this.mInfo.offset);
            canvas.clipPath(this.mFullDrawable.getIconMask());
            this.mForeground.draw(canvas);
            reschedule();
        }

        @Override // com.android.launcher3.FastBitmapDrawable
        protected void updateFilter() {
            super.updateFilter();
            this.mFullDrawable.setColorFilter(this.mPaint.getColorFilter());
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mInfo.animInfo.applyTime(this.mTime, this.mForeground)) {
                invalidateSelf();
            } else {
                reschedule();
            }
        }

        @Override // android.graphics.drawable.Drawable
        public boolean setVisible(boolean visible, boolean restart) {
            boolean visible2 = super.setVisible(visible, restart);
            if (visible) {
                reschedule();
            } else {
                unscheduleSelf(this);
            }
            return visible2;
        }

        private void reschedule() {
            if (isVisible()) {
                unscheduleSelf(this);
                long jUptimeMillis = SystemClock.uptimeMillis();
                long j = ClockDrawableWrapper.TICK_MS;
                scheduleSelf(this, (jUptimeMillis - (jUptimeMillis % j)) + j);
            }
        }

        @Override // com.android.launcher3.FastBitmapDrawable, android.graphics.drawable.Drawable
        public Drawable.ConstantState getConstantState() {
            return new ClockConstantState(this.mInfo, isDisabled());
        }

        private static class ClockConstantState extends FastBitmapDrawable.MyConstantState {
            private final ClockBitmapInfo mInfo;

            ClockConstantState(ClockBitmapInfo info, boolean isDisabled) {
                super(info.icon, info.color, isDisabled);
                this.mInfo = info;
            }

            @Override // com.android.launcher3.FastBitmapDrawable.MyConstantState, android.graphics.drawable.Drawable.ConstantState
            public FastBitmapDrawable newDrawable() {
                ClockIconDrawable clockIconDrawable = new ClockIconDrawable(this.mInfo);
                clockIconDrawable.setIsDisabled(this.mIsDisabled);
                return clockIconDrawable;
            }
        }
    }
}
