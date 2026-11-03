package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.BitmapUtils;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SerialExecutor;
import com.mega.launcher.wallpaper.WallpaperPreference;
import com.mega.launcherapi.utils.WallpaperUtils;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: LandmarkWallpaperView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000i\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b*\u0001\u001d\u0018\u0000 02\u00020\u0001:\u0003/01B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020!H\u0002J\u0012\u0010%\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010\bH\u0003J\u0010\u0010'\u001a\u00020#2\u0006\u0010$\u001a\u00020!H\u0014J\u0010\u0010(\u001a\u00020#2\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020\bH\u0002J\u0006\u0010-\u001a\u00020#J\u0006\u0010.\u001a\u00020#R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/android/launcher3/views/LandmarkWallpaperView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "bitmap", "Landroid/graphics/Bitmap;", "crossFadeAnimator", "Landroid/animation/ValueAnimator;", "dragViewListener", "Lcom/android/launcher3/views/LandmarkWallpaperView$IDragViewListener;", "getDragViewListener", "()Lcom/android/launcher3/views/LandmarkWallpaperView$IDragViewListener;", "setDragViewListener", "(Lcom/android/launcher3/views/LandmarkWallpaperView$IDragViewListener;)V", "loadExecutor", "Lcom/android/launcher3/util/SerialExecutor;", "nextBitmap", LauncherSettings.Favorites.OPTIONS, "Landroid/graphics/BitmapFactory$Options;", "paint", "Landroid/graphics/Paint;", "progress", "", "rect", "Landroid/graphics/Rect;", "uiHandler", "com/android/launcher3/views/LandmarkWallpaperView$uiHandler$1", "Lcom/android/launcher3/views/LandmarkWallpaperView$uiHandler$1;", "workspaceCache", "workspaceCacheCanvas", "Landroid/graphics/Canvas;", "drawOnce", "", "canvas", "ensureBitmapCache", "currentShownBitmap", "onDraw", "show", "position", "", "showNextWhenLoaded", "next", "start", "stop", "BitmapLoader", "Companion", "IDragViewListener", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LandmarkWallpaperView extends View {
    private static final int MSG_SHOW = 100;
    public static final long SHOW_NEXT_DELAY = 900000;
    private static final String TAG = "LandmarkWallpaperView";
    private Bitmap bitmap;
    private ValueAnimator crossFadeAnimator;
    private IDragViewListener dragViewListener;
    private final SerialExecutor loadExecutor;
    private Bitmap nextBitmap;
    private final BitmapFactory.Options options;
    private final Paint paint;
    private float progress;
    private final Rect rect;
    private final LandmarkWallpaperView$uiHandler$1 uiHandler;
    private Bitmap workspaceCache;
    private Canvas workspaceCacheCanvas;

    /* JADX INFO: compiled from: LandmarkWallpaperView.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/android/launcher3/views/LandmarkWallpaperView$IDragViewListener;", "", "onWallpaperChanged", "", "bitmap", "Landroid/graphics/Bitmap;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface IDragViewListener {
        void onWallpaperChanged(Bitmap bitmap);
    }

    public final IDragViewListener getDragViewListener() {
        return this.dragViewListener;
    }

    public final void setDragViewListener(IDragViewListener iDragViewListener) {
        this.dragViewListener = iDragViewListener;
    }

    public /* synthetic */ LandmarkWallpaperView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.launcher3.views.LandmarkWallpaperView$uiHandler$1] */
    public LandmarkWallpaperView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.paint = new Paint();
        this.rect = new Rect();
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.options = options;
        SerialExecutor serialExecutorNewSerialExecutor = Executors.newSerialExecutor();
        Intrinsics.checkNotNullExpressionValue(serialExecutorNewSerialExecutor, "newSerialExecutor()");
        this.loadExecutor = serialExecutorNewSerialExecutor;
        final Looper mainLooper = Looper.getMainLooper();
        this.uiHandler = new Handler(mainLooper) { // from class: com.android.launcher3.views.LandmarkWallpaperView$uiHandler$1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (msg.what == 100) {
                    int i = msg.arg1;
                    this.this$0.show(i);
                    removeMessages(100);
                    sendMessageDelayed(Message.obtain(this, 100, i + 1, 0), WallpaperPreference.INSTANCE.getLandmarkInterval());
                }
            }
        };
        WindowManager windowManager = (WindowManager) context.getSystemService(WindowManager.class);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.outWidth = displayMetrics.widthPixels;
        options.outHeight = displayMetrics.heightPixels;
    }

    public final void start() {
        MLog.d(TAG, "start: " + Utilities.getStackTraceSingleLine(new Throwable()));
        removeMessages(100);
        Message.obtain(this.uiHandler, 100, 0, 0).sendToTarget();
    }

    public final void stop() {
        MLog.d(TAG, "stop: " + Utilities.getStackTraceSingleLine(new Throwable()));
        removeMessages(100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void show(int position) {
        int landmarkWallpaperNumber = WallpaperUtils.getLandmarkWallpaperNumber(getContext());
        List<File> landmarkWallpapers = WallpaperUtils.getLandmarkWallpapers(landmarkWallpaperNumber);
        int iAbs = Math.abs(position) % landmarkWallpapers.size();
        MLog.d(TAG, "show: number=" + landmarkWallpaperNumber + " position=" + position + '/' + iAbs + " size=" + landmarkWallpapers.size());
        List<File> list = landmarkWallpapers;
        if (list == null || list.isEmpty()) {
            return;
        }
        SerialExecutor serialExecutor = this.loadExecutor;
        File file = landmarkWallpapers.get(iAbs);
        Intrinsics.checkNotNullExpressionValue(file, "wallpapers[fixPosition]");
        serialExecutor.execute(new BitmapLoader(this, landmarkWallpaperNumber, file, new AnonymousClass1(this)));
    }

    /* JADX INFO: renamed from: com.android.launcher3.views.LandmarkWallpaperView$show$1, reason: invalid class name */
    /* JADX INFO: compiled from: LandmarkWallpaperView.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<Bitmap, Unit> {
        AnonymousClass1(Object obj) {
            super(1, obj, LandmarkWallpaperView.class, "showNextWhenLoaded", "showNextWhenLoaded(Landroid/graphics/Bitmap;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Bitmap bitmap) {
            invoke2(bitmap);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Bitmap p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((LandmarkWallpaperView) this.receiver).showNextWhenLoaded(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showNextWhenLoaded(final Bitmap next) {
        final int iHashCode = next.hashCode();
        MLog.d(TAG, "showNextWhenLoaded: " + iHashCode);
        if (this.bitmap == null) {
            this.bitmap = next;
            invalidate();
            return;
        }
        ValueAnimator valueAnimator = this.crossFadeAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.views.LandmarkWallpaperView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LandmarkWallpaperView.showNextWhenLoaded$lambda$1$lambda$0(this.f$0, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.LandmarkWallpaperView$showNextWhenLoaded$1$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                this.this$0.progress = 0.0f;
                this.this$0.nextBitmap = next;
                MLog.d("LandmarkWallpaperView", "showNextWhenLoaded: start " + iHashCode);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                this.this$0.progress = 0.0f;
                LandmarkWallpaperView landmarkWallpaperView = this.this$0;
                landmarkWallpaperView.bitmap = landmarkWallpaperView.nextBitmap;
                this.this$0.nextBitmap = null;
                this.this$0.invalidate();
                MLog.d("LandmarkWallpaperView", "showNextWhenLoaded: end " + iHashCode);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                MLog.d("LandmarkWallpaperView", "showNextWhenLoaded: cancel " + iHashCode);
            }
        });
        valueAnimatorOfFloat.setDuration(350L);
        this.crossFadeAnimator = valueAnimatorOfFloat;
        if (valueAnimatorOfFloat != null) {
            valueAnimatorOfFloat.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showNextWhenLoaded$lambda$1$lambda$0(LandmarkWallpaperView this$0, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.progress = valueAnimator.getAnimatedFraction();
        this$0.invalidate();
    }

    private final void ensureBitmapCache(Bitmap currentShownBitmap) {
        if (isLaidOut() && currentShownBitmap != null && this.workspaceCache == null) {
            this.workspaceCache = Bitmap.createScaledBitmap(currentShownBitmap, (int) (getWidth() * 0.125f), (int) (getHeight() * 0.125f), false);
            Bitmap bitmap = this.workspaceCache;
            Intrinsics.checkNotNull(bitmap);
            this.workspaceCacheCanvas = new Canvas(bitmap);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        drawOnce(canvas);
        ensureBitmapCache(this.bitmap);
        Canvas canvas2 = this.workspaceCacheCanvas;
        if (canvas2 != null) {
            if (canvas2 != null) {
                canvas2.drawColor(0);
                canvas2.save();
                canvas2.scale(0.125f, 0.125f);
                drawOnce(canvas2);
                canvas2.restore();
            }
            post(new Runnable() { // from class: com.android.launcher3.views.LandmarkWallpaperView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LandmarkWallpaperView.onDraw$lambda$3(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDraw$lambda$3(LandmarkWallpaperView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        IDragViewListener iDragViewListener = this$0.dragViewListener;
        if (iDragViewListener != null) {
            iDragViewListener.onWallpaperChanged(this$0.workspaceCache);
        }
    }

    private final void drawOnce(Canvas canvas) {
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            this.rect.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
            Rect rect = this.rect;
            canvas.drawBitmap(bitmap, rect, rect, (Paint) null);
        }
        Bitmap bitmap2 = this.nextBitmap;
        if (bitmap2 != null) {
            this.rect.set(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
            this.paint.setAlpha((int) (this.progress * 255));
            Rect rect2 = this.rect;
            canvas.drawBitmap(bitmap2, rect2, rect2, this.paint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: LandmarkWallpaperView.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\tH\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/android/launcher3/views/LandmarkWallpaperView$BitmapLoader;", "Ljava/lang/Runnable;", "landmarkNumber", "", "file", "Ljava/io/File;", "callback", "Lkotlin/Function1;", "Landroid/graphics/Bitmap;", "", "(Lcom/android/launcher3/views/LandmarkWallpaperView;ILjava/io/File;Lkotlin/jvm/functions/Function1;)V", "run", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    final class BitmapLoader implements Runnable {
        private final Function1<Bitmap, Unit> callback;
        private final File file;
        private final int landmarkNumber;
        final /* synthetic */ LandmarkWallpaperView this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public BitmapLoader(LandmarkWallpaperView landmarkWallpaperView, int i, File file, Function1<? super Bitmap, Unit> callback) {
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.this$0 = landmarkWallpaperView;
            this.landmarkNumber = i;
            this.file = file;
            this.callback = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            final Bitmap bitmapLoadBitmap = BitmapUtils.loadBitmap(this.file.getAbsolutePath(), this.this$0.options.outWidth, this.this$0.options.outHeight);
            if (bitmapLoadBitmap != null) {
                WallpaperUtils.setCurrentLandmarkWallpaper(this.this$0.getContext(), this.landmarkNumber, this.file.getName());
                post(new Runnable() { // from class: com.android.launcher3.views.LandmarkWallpaperView$BitmapLoader$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LandmarkWallpaperView.BitmapLoader.run$lambda$0(this.f$0, bitmapLoadBitmap);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void run$lambda$0(BitmapLoader this$0, Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.callback.invoke(bitmap);
        }
    }
}
