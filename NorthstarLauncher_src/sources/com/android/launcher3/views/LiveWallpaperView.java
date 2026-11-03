package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.Transformations;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PowerObserver;
import com.mega.launcher.wallpaper.bean.WallpaperInfo;
import com.mega.launcherapi.utils.WallpaperUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;
import org.libpag.PAGDecoder;
import org.libpag.PAGFile;
import org.libpag.PAGView;

/* JADX INFO: compiled from: LiveWallpaperView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 ;2\u00020\u0001:\u0003;<=B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0014\u0010 \u001a\u0004\u0018\u00010\u000b2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0012\u0010'\u001a\u00020$2\b\u0010(\u001a\u0004\u0018\u00010\u000bH\u0002J\b\u0010)\u001a\u00020$H\u0014J\b\u0010*\u001a\u00020$H\u0014J\u0018\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020\u00132\u0006\u0010-\u001a\u00020\u0013H\u0014J\u0018\u0010.\u001a\u00020$2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0013H\u0014J\u0010\u00102\u001a\u00020$2\u0006\u00101\u001a\u00020\u0013H\u0014J\b\u00103\u001a\u00020$H\u0016J\b\u00104\u001a\u00020$H\u0016J\u0010\u00105\u001a\u00020$2\b\u00106\u001a\u0004\u0018\u00010\u0011J\u0018\u00107\u001a\u00020$2\u0006\u00108\u001a\u00020\u001f2\u0006\u00109\u001a\u00020&H\u0007J\b\u0010:\u001a\u00020$H\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcom/android/launcher3/views/LiveWallpaperView;", "Lorg/libpag/PAGView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "_playLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "mBitmap", "Landroid/graphics/Bitmap;", "mLastFrame", "", "mListener", "Lorg/libpag/PAGView$PAGViewListener;", "mOnWallpaperChangedListener", "Lcom/android/launcher3/views/LiveWallpaperView$OnWallpaperChangedListener;", "mSkipFrames", "", "mTotalFrames", "mUiHandler", "Landroid/os/Handler;", "playLiveData", "Landroidx/lifecycle/LiveData;", "powerObserver", "Lcom/android/launcher3/util/PowerObserver;", "powerState", "Landroidx/lifecycle/Observer;", "shouldPlay", "targetWallpaperInfo", "Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "getFirstFrame", "decoder", "Lorg/libpag/PAGDecoder;", "notifyBitmap", "", "pagFilePath", "", "notifyBitmap2", "bitmap", "onAttachedToWindow", "onDetachedFromWindow", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onVisibilityChanged", "changedView", "Landroid/view/View;", "visibility", "onWindowVisibilityChanged", "pause", "play", "setOnWallpaperListener", "listener", "setWallpaper", "wallpaperInfo", "reason", "stop", "Companion", "OnWallpaperChangedListener", "PagListener", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LiveWallpaperView extends PAGView {
    private static final String TAG = "LiveWallpaperView";
    private final MutableLiveData<Boolean> _playLiveData;
    private final Bitmap mBitmap;
    private long mLastFrame;
    private final PAGView.PAGViewListener mListener;
    private OnWallpaperChangedListener mOnWallpaperChangedListener;
    private int mSkipFrames;
    private int mTotalFrames;
    private final Handler mUiHandler;
    private final LiveData<Boolean> playLiveData;
    private final PowerObserver powerObserver;
    private final Observer<Boolean> powerState;
    private boolean shouldPlay;
    private WallpaperInfo targetWallpaperInfo;

    /* JADX INFO: compiled from: LiveWallpaperView.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/android/launcher3/views/LiveWallpaperView$OnWallpaperChangedListener;", "", "onWallpaperChanged", "", "bitmap", "Landroid/graphics/Bitmap;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface OnWallpaperChangedListener {
        void onWallpaperChanged(Bitmap bitmap);
    }

    public final void setOnWallpaperListener(OnWallpaperChangedListener listener) {
        this.mOnWallpaperChangedListener = listener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveWallpaperView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mListener = new PagListener();
        this.mUiHandler = new Handler(Looper.getMainLooper());
        this.mTotalFrames = -1;
        this.mSkipFrames = -1;
        this.mLastFrame = -1L;
        this.powerObserver = PowerObserver.INSTANCE.getInstance(context);
        this.powerState = new Observer() { // from class: com.android.launcher3.views.LiveWallpaperView$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiveWallpaperView.powerState$lambda$0(this.f$0, (Boolean) obj);
            }
        };
        MutableLiveData<Boolean> mutableLiveData = new MutableLiveData<>();
        this._playLiveData = mutableLiveData;
        LiveData<Boolean> liveDataDistinctUntilChanged = Transformations.distinctUntilChanged(mutableLiveData);
        Intrinsics.checkExpressionValueIsNotNull(liveDataDistinctUntilChanged, "Transformations.distinctUntilChanged(this)");
        this.playLiveData = liveDataDistinctUntilChanged;
        setRepeatCount(0);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(320, 180, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(width, heig… Bitmap.Config.ARGB_8888)");
        this.mBitmap = bitmapCreateBitmap;
        final Function1<Boolean, Unit> function1 = new Function1<Boolean, Unit>() { // from class: com.android.launcher3.views.LiveWallpaperView.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                    LiveWallpaperView.this.play();
                } else {
                    LiveWallpaperView.this.pause();
                }
            }
        };
        liveDataDistinctUntilChanged.observeForever(new Observer() { // from class: com.android.launcher3.views.LiveWallpaperView$$ExternalSyntheticLambda2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiveWallpaperView._init_$lambda$1(function1, obj);
            }
        });
    }

    public /* synthetic */ LiveWallpaperView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void powerState$lambda$0(LiveWallpaperView this$0, Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MLog.d(TAG, "Observer: shouldPlay=" + this$0.shouldPlay + " isAttached=" + this$0.isAttachedToWindow() + " visibility=" + this$0.getVisibility() + " windowVisibility=" + this$0.getWindowVisibility() + " isActive=" + this$0.powerObserver.isActive());
        if (this$0.isAttachedToWindow() && this$0.shouldPlay && this$0.getVisibility() == 0 && this$0.getWindowVisibility() == 0) {
            if (this$0.powerObserver.isActive() && !this$0.isPlaying()) {
                WallpaperInfo wallpaperInfo = this$0.targetWallpaperInfo;
                if (wallpaperInfo != null) {
                    this$0.setWallpaper(wallpaperInfo, "recovery");
                } else {
                    MLog.d(TAG, "onPowerStatusChanged: play");
                    this$0._playLiveData.postValue(true);
                }
            }
            if (this$0.powerObserver.isActive() || !this$0.isPlaying()) {
                return;
            }
            MLog.d(TAG, "onPowerStatusChanged: pause");
            this$0._playLiveData.postValue(false);
            this$0.shouldPlay = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // org.libpag.PAGView, android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.powerObserver.observeForever(this.powerState);
        MLog.d(TAG, "onAttachedToWindow: shouldPlay=" + this.shouldPlay + " isAttached=" + isAttachedToWindow() + " visibility=" + getVisibility() + " windowVisibility=" + getWindowVisibility() + " isActive=" + this.powerObserver.isActive());
        if (this.shouldPlay && getVisibility() == 0 && getWindowVisibility() == 0 && this.powerObserver.isActive()) {
            MLog.d(TAG, "onAttachedToWindow: play");
            this._playLiveData.postValue(true);
        }
    }

    @Override // org.libpag.PAGView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MLog.d(TAG, "onDetachedFromWindow: stop");
        this._playLiveData.postValue(false);
        this.shouldPlay = false;
        this.powerObserver.removeObserver(this.powerState);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        MLog.d(TAG, "onWindowVisibilityChanged: " + visibility + " shouldPlay=" + this.shouldPlay + " isAttached=" + isAttachedToWindow() + " visibility=" + visibility + " windowVisibility=" + getWindowVisibility() + " isActive=" + this.powerObserver.isActive());
        if (isAttachedToWindow()) {
            if (this.shouldPlay && visibility == 0 && getWindowVisibility() == 0 && this.powerObserver.isActive()) {
                MLog.d(TAG, "onWindowVisibilityChanged: play");
                this._playLiveData.postValue(true);
            } else {
                MLog.d(TAG, "onWindowVisibilityChanged: pause");
                this._playLiveData.postValue(false);
            }
        }
    }

    @Override // android.view.TextureView, android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, visibility);
        MLog.d(TAG, "onVisibilityChanged: " + visibility + " shouldPlay=" + this.shouldPlay + " isAttached=" + isAttachedToWindow() + " visibility=" + visibility + " windowVisibility=" + getWindowVisibility() + " isActive=" + this.powerObserver.isActive());
        if (isAttachedToWindow()) {
            if (this.shouldPlay && visibility == 0 && getWindowVisibility() == 0 && this.powerObserver.isActive()) {
                MLog.d(TAG, "onVisibilityChanged: play");
                this._playLiveData.postValue(true);
            } else {
                MLog.d(TAG, "onVisibilityChanged: pause");
                this._playLiveData.postValue(false);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(2560, BasicMeasure.EXACTLY), heightMeasureSpec);
    }

    @Override // org.libpag.PAGView
    public void play() {
        super.play();
        MLog.d(TAG, "play:");
    }

    @Override // org.libpag.PAGView
    public void pause() {
        super.pause();
        MLog.d(TAG, "pause:");
    }

    @Override // org.libpag.PAGView
    public void stop() {
        super.stop();
        MLog.d(TAG, "stop:");
    }

    public final void setWallpaper(WallpaperInfo wallpaperInfo, String reason) {
        Intrinsics.checkNotNullParameter(wallpaperInfo, "wallpaperInfo");
        Intrinsics.checkNotNullParameter(reason, "reason");
        MLog.d(TAG, "setWallpaper: " + wallpaperInfo.getWallpaper().getName() + ' ' + wallpaperInfo.getAdaptivePath(Utilities.isDarkTheme(getContext())) + ' ' + reason);
        this.targetWallpaperInfo = wallpaperInfo;
        String adaptivePath = wallpaperInfo.getAdaptivePath(Utilities.isDarkTheme(getContext()));
        setComposition(PAGFile.Load(adaptivePath));
        this.shouldPlay = true;
        MLog.d(TAG, "setWallpaper: isAttached=" + isAttachedToWindow() + " visibility=" + getVisibility() + " windowVisibility=" + getWindowVisibility() + " isPowerActive=" + this.powerObserver.isActive());
        if (isAttachedToWindow() && this.shouldPlay && getVisibility() == 0 && getWindowVisibility() == 0 && this.powerObserver.isActive()) {
            MLog.d(TAG, "setWallpaper: play");
            this._playLiveData.postValue(true);
        }
        notifyBitmap(adaptivePath);
    }

    private final Bitmap getFirstFrame(PAGDecoder decoder) {
        if (decoder == null) {
            return null;
        }
        if (decoder.numFrames() > 0) {
            return decoder.frameAtIndex(0);
        }
        MLog.w(TAG, "getFirstFrame: no frames");
        return null;
    }

    private final void notifyBitmap(final String pagFilePath) {
        Executors.runOnWork(TAG, new Runnable() { // from class: com.android.launcher3.views.LiveWallpaperView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LiveWallpaperView.notifyBitmap$lambda$2(pagFilePath, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyBitmap$lambda$2(String pagFilePath, LiveWallpaperView this$0) {
        Intrinsics.checkNotNullParameter(pagFilePath, "$pagFilePath");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Bitmap firstFrame = this$0.getFirstFrame(PAGDecoder.Make(PAGFile.Load(pagFilePath)));
        if (firstFrame == null || this$0.mOnWallpaperChangedListener == null) {
            return;
        }
        if (firstFrame.getConfig() == Bitmap.Config.HARDWARE) {
            firstFrame = firstFrame.copy(Bitmap.Config.ARGB_8888, true);
            Intrinsics.checkNotNullExpressionValue(firstFrame, "fixed.copy(Bitmap.Config.ARGB_8888, true)");
        }
        float width = 320.0f / firstFrame.getWidth();
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(firstFrame, (int) (firstFrame.getWidth() * width), (int) (firstFrame.getHeight() * width), false);
        OnWallpaperChangedListener onWallpaperChangedListener = this$0.mOnWallpaperChangedListener;
        if (onWallpaperChangedListener != null) {
            onWallpaperChangedListener.onWallpaperChanged(bitmapCreateScaledBitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyBitmap2(Bitmap bitmap) {
        OnWallpaperChangedListener onWallpaperChangedListener;
        if (bitmap == null || (onWallpaperChangedListener = this.mOnWallpaperChangedListener) == null) {
            return;
        }
        onWallpaperChangedListener.onWallpaperChanged(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: LiveWallpaperView.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/android/launcher3/views/LiveWallpaperView$PagListener;", "Lorg/libpag/PAGView$PAGViewListener;", "(Lcom/android/launcher3/views/LiveWallpaperView;)V", "mUpdateRunnable", "Ljava/lang/Runnable;", "onAnimationCancel", "", "pagView", "Lorg/libpag/PAGView;", "onAnimationEnd", "onAnimationRepeat", "onAnimationStart", "onAnimationUpdate", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    final class PagListener implements PAGView.PAGViewListener {
        private final Runnable mUpdateRunnable;

        @Override // org.libpag.PAGView.PAGViewListener
        public void onAnimationCancel(PAGView pagView) {
            Intrinsics.checkNotNullParameter(pagView, "pagView");
        }

        @Override // org.libpag.PAGView.PAGViewListener
        public void onAnimationEnd(PAGView pagView) {
            Intrinsics.checkNotNullParameter(pagView, "pagView");
        }

        @Override // org.libpag.PAGView.PAGViewListener
        public void onAnimationRepeat(PAGView pagView) {
            Intrinsics.checkNotNullParameter(pagView, "pagView");
        }

        public PagListener() {
            this.mUpdateRunnable = new Runnable() { // from class: com.android.launcher3.views.LiveWallpaperView$PagListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LiveWallpaperView.PagListener.mUpdateRunnable$lambda$0(liveWallpaperView);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void mUpdateRunnable$lambda$0(LiveWallpaperView this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            long jCurrentFrame = this$0.currentFrame();
            long j = jCurrentFrame > this$0.mLastFrame ? jCurrentFrame - this$0.mLastFrame : (((long) this$0.mTotalFrames) + jCurrentFrame) - this$0.mLastFrame;
            if (!WallpaperUtils.realtimeBlur() || j < this$0.mSkipFrames) {
                return;
            }
            Bitmap bitmap = this$0.getBitmap(this$0.mBitmap);
            Intrinsics.checkNotNullExpressionValue(bitmap, "getBitmap(mBitmap)");
            this$0.notifyBitmap2(bitmap);
            this$0.mLastFrame = jCurrentFrame;
        }

        @Override // org.libpag.PAGView.PAGViewListener
        public void onAnimationStart(PAGView pagView) {
            Intrinsics.checkNotNullParameter(pagView, "pagView");
            LiveWallpaperView.this.setBackground(null);
        }

        @Override // org.libpag.PAGView.PAGViewListener
        public void onAnimationUpdate(PAGView pagView) {
            Intrinsics.checkNotNullParameter(pagView, "pagView");
            if (!WallpaperUtils.realtimeBlur() || LiveWallpaperView.this.mUiHandler.hasCallbacks(this.mUpdateRunnable)) {
                return;
            }
            LiveWallpaperView.this.mUiHandler.post(this.mUpdateRunnable);
        }
    }
}
