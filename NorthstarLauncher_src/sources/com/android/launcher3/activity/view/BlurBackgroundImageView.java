package com.android.launcher3.activity.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.mega.nexus.view.MegaSurfaceControl;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
import mega.blur.engine.Blur;
import mega.blur.engine.BlurConfig;
import mega.blur.engine.BlurEngine;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class BlurBackgroundImageView extends ImageView {
    public static final String TAG = "BlurBackgroundImageVie";
    private boolean mIsDebug;
    private boolean mSupportBlur;

    public BlurBackgroundImageView(Context context) {
        this(context, null);
    }

    public BlurBackgroundImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BlurBackgroundImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mSupportBlur = true;
        this.mIsDebug = false;
        init();
    }

    private void init() {
        setVisibility(8);
    }

    public void reBlur() {
        if (this.mSupportBlur) {
            new PathBlur().blur(getContext(), this, new BlurEngine.Callback() { // from class: com.android.launcher3.activity.view.BlurBackgroundImageView$$ExternalSyntheticLambda0
                @Override // mega.blur.engine.BlurEngine.Callback
                public final void onFinished(Bitmap bitmap) {
                    this.f$0.m76x22fd04dc(bitmap);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$reBlur$0$com-android-launcher3-activity-view-BlurBackgroundImageView, reason: not valid java name */
    /* synthetic */ void m76x22fd04dc(Bitmap bitmap) {
        setVisibility(0);
    }

    public void blurWithImage(Bitmap bitmap, int shade) {
        if (this.mSupportBlur) {
            new PathBlur(bitmap).blur(getContext(), this, shade, null, new BlurEngine.Callback() { // from class: com.android.launcher3.activity.view.BlurBackgroundImageView$$ExternalSyntheticLambda1
                @Override // mega.blur.engine.BlurEngine.Callback
                public final void onFinished(Bitmap bitmap2) {
                    this.f$0.m75x6ea5e497(bitmap2);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$blurWithImage$1$com-android-launcher3-activity-view-BlurBackgroundImageView, reason: not valid java name */
    /* synthetic */ void m75x6ea5e497(Bitmap bitmap) {
        setVisibility(0);
    }

    class PathBlur {
        private Bitmap mSrcBitmap;

        public PathBlur() {
        }

        public PathBlur(Bitmap srcBitmap) {
            this.mSrcBitmap = srcBitmap;
        }

        public void blur(Context context, ImageView target) {
            blur(context, target, null);
        }

        public void blur(Context context, ImageView target, BlurEngine.Callback callback) {
            blur(context, target, -1, null, callback);
        }

        public void blur(Context context, ImageView target, int shadeValue, Path[] path, BlurEngine.Callback callback) {
            AtomicInteger atomicInteger = new AtomicInteger(102);
            if (shadeValue >= 0 && shadeValue <= 255) {
                atomicInteger.set(shadeValue);
            }
            if (target.isShown()) {
                setUpTargetView(context, target, atomicInteger.get(), path, callback);
            } else {
                target.getViewTreeObserver().addOnPreDrawListener(new AnonymousClass1(target, context, atomicInteger, path, callback));
            }
        }

        /* JADX INFO: renamed from: com.android.launcher3.activity.view.BlurBackgroundImageView$PathBlur$1, reason: invalid class name */
        class AnonymousClass1 implements ViewTreeObserver.OnPreDrawListener {
            final /* synthetic */ BlurEngine.Callback val$callback;
            final /* synthetic */ Context val$context;
            final /* synthetic */ Path[] val$path;
            final /* synthetic */ AtomicInteger val$realShadeValue;
            final /* synthetic */ ImageView val$target;

            AnonymousClass1(final ImageView val$target, final Context val$context, final AtomicInteger val$realShadeValue, final Path[] val$path, final BlurEngine.Callback val$callback) {
                this.val$target = val$target;
                this.val$context = val$context;
                this.val$realShadeValue = val$realShadeValue;
                this.val$path = val$path;
                this.val$callback = val$callback;
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                this.val$target.getViewTreeObserver().removeOnPreDrawListener(this);
                final ImageView imageView = this.val$target;
                final Context context = this.val$context;
                final AtomicInteger atomicInteger = this.val$realShadeValue;
                final Path[] pathArr = this.val$path;
                final BlurEngine.Callback callback = this.val$callback;
                imageView.post(new Runnable() { // from class: com.android.launcher3.activity.view.BlurBackgroundImageView$PathBlur$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m77xa4b4d8cd(context, imageView, atomicInteger, pathArr, callback);
                    }
                });
                return true;
            }

            /* JADX INFO: renamed from: lambda$onPreDraw$0$com-android-launcher3-activity-view-BlurBackgroundImageView$PathBlur$1, reason: not valid java name */
            /* synthetic */ void m77xa4b4d8cd(Context context, ImageView imageView, AtomicInteger atomicInteger, Path[] pathArr, BlurEngine.Callback callback) {
                PathBlur.this.setUpTargetView(context, imageView, atomicInteger.get(), pathArr, callback);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUpTargetView(Context context, final ImageView target, final int shadeValue, final Path[] path, final BlurEngine.Callback callback) {
            Bitmap bitmapCreateScaledBitmap;
            int[] iArr = new int[2];
            target.getLocationOnScreen(iArr);
            Bitmap bitmap = this.mSrcBitmap;
            if (bitmap == null) {
                int i = iArr[0];
                Bitmap bitmapScreenshot = MegaSurfaceControl.screenshot(new Rect(i, iArr[1], target.getWidth() + i, iArr[1] + target.getHeight()), target.getWidth(), target.getHeight(), 0);
                if (bitmapScreenshot == null) {
                    MLog.w(BlurBackgroundImageView.TAG, "can't blur for screen shot fail");
                    return;
                }
                bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapScreenshot, this.mSrcBitmap.getWidth() / 8, this.mSrcBitmap.getHeight() / 8, true);
            } else {
                bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() / 8, this.mSrcBitmap.getHeight() / 8, true);
            }
            new Blur(context, blurConfig()).execute(bitmapCreateScaledBitmap, true, new BlurEngine.Callback() { // from class: com.android.launcher3.activity.view.BlurBackgroundImageView$PathBlur$$ExternalSyntheticLambda0
                @Override // mega.blur.engine.BlurEngine.Callback
                public final void onFinished(Bitmap bitmap2) {
                    BlurBackgroundImageView.PathBlur.lambda$setUpTargetView$0(shadeValue, path, target, callback, bitmap2);
                }
            });
        }

        static /* synthetic */ void lambda$setUpTargetView$0(int i, Path[] pathArr, ImageView imageView, BlurEngine.Callback callback, Bitmap bitmap) {
            if (bitmap == null) {
                MLog.w(BlurBackgroundImageView.TAG, "bitmap null exception");
                return;
            }
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint();
            canvas.drawARGB(i, 0, 0, 0);
            if (pathArr != null) {
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                for (Path path : pathArr) {
                    canvas.drawPath(path, paint);
                }
                paint.setXfermode(null);
            }
            imageView.setImageBitmap(bitmap);
            if (callback != null) {
                callback.onFinished(bitmap);
            }
        }

        protected BlurConfig blurConfig() {
            return new BlurConfig.Builder().radius(25).build();
        }

        private void saveBitmap(String name, Bitmap bm, Context context) {
            String str = context.getFilesDir() + "/images/";
            MLog.d(BlurBackgroundImageView.TAG, "saveBitmap: targetPath=" + str);
            if (!fileIsExist(str)) {
                MLog.d(BlurBackgroundImageView.TAG, "targetPath isn't exist");
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(str, name));
                bm.compress(Bitmap.CompressFormat.PNG, 20, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        private boolean fileIsExist(String fileName) {
            File file = new File(fileName);
            if (file.exists()) {
                return true;
            }
            MLog.d(BlurBackgroundImageView.TAG, "Save Bitmap, new Path=" + fileName);
            return file.mkdirs();
        }
    }
}
