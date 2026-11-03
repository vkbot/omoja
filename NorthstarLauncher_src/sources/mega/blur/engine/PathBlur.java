package mega.blur.engine;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.mega.nexus.view.MegaSurfaceControl;
import java.util.concurrent.atomic.AtomicInteger;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class PathBlur {
    private static final int RADIUS = 25;
    private static final String TAG = "PathBlur";

    public static void blur(Context context, ImageView imageView) {
        blur(context, imageView, null);
    }

    public static void blur(Context context, ImageView imageView, BlurEngine.Callback callback) {
        blur(context, imageView, -1, null, callback);
    }

    public static void blur(Context context, ImageView imageView, int i, Path[] pathArr, BlurEngine.Callback callback) {
        AtomicInteger atomicInteger = new AtomicInteger(153);
        if (i >= 0 && i <= 255) {
            atomicInteger.set(i);
        }
        if (imageView.isShown()) {
            setUpTargetView(context, imageView, atomicInteger.get(), pathArr, callback);
        } else {
            imageView.getViewTreeObserver().addOnPreDrawListener(new AnonymousClass1(imageView, context, atomicInteger, pathArr, callback));
        }
    }

    /* JADX INFO: renamed from: mega.blur.engine.PathBlur$1, reason: invalid class name */
    class AnonymousClass1 implements ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ BlurEngine.Callback val$callback;
        final /* synthetic */ Context val$context;
        final /* synthetic */ Path[] val$path;
        final /* synthetic */ AtomicInteger val$realShadeValue;
        final /* synthetic */ ImageView val$target;

        AnonymousClass1(ImageView imageView, Context context, AtomicInteger atomicInteger, Path[] pathArr, BlurEngine.Callback callback) {
            this.val$target = imageView;
            this.val$context = context;
            this.val$realShadeValue = atomicInteger;
            this.val$path = pathArr;
            this.val$callback = callback;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.val$target.getViewTreeObserver().removeOnPreDrawListener(this);
            final ImageView imageView = this.val$target;
            final Context context = this.val$context;
            final AtomicInteger atomicInteger = this.val$realShadeValue;
            final Path[] pathArr = this.val$path;
            final BlurEngine.Callback callback = this.val$callback;
            imageView.post(new Runnable() { // from class: mega.blur.engine.PathBlur$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PathBlur.setUpTargetView(context, imageView, atomicInteger.get(), pathArr, callback);
                }
            });
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setUpTargetView(Context context, final ImageView imageView, final int i, final Path[] pathArr, final BlurEngine.Callback callback) {
        int[] iArr = new int[2];
        imageView.getLocationOnScreen(iArr);
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i2 = iArr[0];
        Bitmap bitmapScreenshot = MegaSurfaceControl.screenshot(new Rect(i2, iArr[1], imageView.getWidth() + i2, iArr[1] + imageView.getHeight()), imageView.getWidth(), imageView.getHeight(), 0);
        if (bitmapScreenshot == null) {
            MLog.w(TAG, "can`t blur for screen shot fail");
            return;
        }
        MLog.e("screenShot", "cost: " + (System.currentTimeMillis() - jCurrentTimeMillis) + ", size: " + (bitmapScreenshot.getByteCount() / 1024.0f));
        new Blur(context, blurConfig()).execute(bitmapScreenshot.copy(Bitmap.Config.ARGB_8888, true), true, new BlurEngine.Callback() { // from class: mega.blur.engine.PathBlur$$ExternalSyntheticLambda0
            @Override // mega.blur.engine.BlurEngine.Callback
            public final void onFinished(Bitmap bitmap) {
                PathBlur.lambda$setUpTargetView$0(i, pathArr, imageView, callback, bitmap);
            }
        });
    }

    static /* synthetic */ void lambda$setUpTargetView$0(int i, Path[] pathArr, ImageView imageView, BlurEngine.Callback callback, Bitmap bitmap) {
        if (bitmap == null) {
            MLog.w(TAG, "bitmap null exception");
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

    protected static BlurConfig blurConfig() {
        return new BlurConfig.Builder().radius(25).build();
    }
}
