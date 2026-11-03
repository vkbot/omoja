package mega.blur.utils;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.view.Window;
import androidx.core.content.ContextCompat;
import com.mega.nexus.view.MegaSurfaceControl;
import mega.blur.engine.Blur;
import mega.blur.engine.BlurConfig;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class BlurUtils {
    private static final String BUFFER_PERMISSION = "android.permission.READ_FRAME_BUFFER";
    private static final String TAG = "BlurUtils";

    public static void blurDialogBackground(Dialog dialog, int i, int i2) {
        Context context = dialog.getContext();
        if (context == null) {
            MLog.d(TAG, "context is null..");
            return;
        }
        Window window = dialog.getWindow();
        if (window == null) {
            MLog.d(TAG, "window is null..");
            return;
        }
        Bitmap bitmapCaptureFullScreen = captureFullScreen(context);
        if (bitmapCaptureFullScreen == null) {
            window.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#25000000")));
            MLog.d(TAG, "screenshot is null, set default background");
            return;
        }
        Bitmap bitmapCopy = bitmapCaptureFullScreen.copy(Bitmap.Config.ARGB_8888, true);
        bitmapCaptureFullScreen.recycle();
        Blur blur = new Blur(context, new BlurConfig.Builder().radius(i).build());
        Bitmap bitmapExecute = blur.execute(bitmapCopy, true);
        blur.destroy();
        if (bitmapExecute == null) {
            MLog.d(TAG, "blur failed, set default background");
            window.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#25000000")));
        }
        new Canvas(bitmapExecute).drawARGB(i2, 0, 0, 0);
        window.setBackgroundDrawable(new BitmapDrawable(context.getResources(), bitmapExecute));
    }

    public static Bitmap captureFullScreen(Context context) {
        if (context == null) {
            MLog.e(TAG, "do screenshot but context is null");
            return null;
        }
        Point point = new Point();
        context.getDisplay().getRealSize(point);
        Bitmap bitmapScreenshot = MegaSurfaceControl.screenshot(new Rect(0, 0, point.x, point.y), point.x, point.y, 0);
        if (bitmapScreenshot == null) {
            if (ContextCompat.checkSelfPermission(context, BUFFER_PERMISSION) != 0) {
                MLog.e(TAG, "Please checkout your manifest，we need permission: android.permission.READ_FRAME_BUFFER");
            } else {
                MLog.e("We have the permission to screenshot, but we still failed, permission cache may not updated, uninstall your app then retry..");
            }
        }
        return bitmapScreenshot;
    }

    public static Bitmap captureSelectScreen(Context context, Rect rect, int i) {
        if (context == null) {
            MLog.e(TAG, "do screenshot but context is null");
            return null;
        }
        Bitmap bitmapScreenshot = MegaSurfaceControl.screenshot(rect, rect.right - rect.left, rect.bottom - rect.top, 0);
        if (bitmapScreenshot == null) {
            if (ContextCompat.checkSelfPermission(context, BUFFER_PERMISSION) != 0) {
                MLog.e(TAG, "Please checkout your manifest，we need permission: android.permission.READ_FRAME_BUFFER");
            } else {
                MLog.e("We have the permission to screenshot, but we still failed, permission cache may not updated, uninstall your app then retry..");
            }
        }
        Bitmap bitmapCopy = bitmapScreenshot.copy(Bitmap.Config.ARGB_8888, true);
        bitmapScreenshot.recycle();
        Blur blur = new Blur(context, new BlurConfig.Builder().radius(i).build());
        Bitmap bitmapExecute = blur.execute(bitmapCopy, true);
        blur.destroy();
        return bitmapExecute;
    }

    public static Bitmap captureSelectScreen(Context context, Rect rect, int i, float f) {
        if (context == null) {
            MLog.e(TAG, "do screenshot but context is null");
            return null;
        }
        Bitmap bitmapScreenshot = MegaSurfaceControl.screenshot(rect, rect.right - rect.left, rect.bottom - rect.top, 0);
        if (bitmapScreenshot == null) {
            if (ContextCompat.checkSelfPermission(context, BUFFER_PERMISSION) != 0) {
                MLog.e(TAG, "Please checkout your manifest，we need permission: android.permission.READ_FRAME_BUFFER");
            } else {
                MLog.e("We have the permission to screenshot, but we still failed, permission cache may not updated, uninstall your app then retry..");
            }
        }
        Bitmap bitmapCopy = Bitmap.createScaledBitmap(bitmapScreenshot, Math.round(bitmapScreenshot.getWidth() * f), Math.round(bitmapScreenshot.getHeight() * f), false).copy(Bitmap.Config.ARGB_8888, true);
        bitmapScreenshot.recycle();
        Blur blur = new Blur(context, new BlurConfig.Builder().radius(i).build());
        Bitmap bitmapExecute = blur.execute(bitmapCopy, true);
        blur.destroy();
        return bitmapExecute;
    }
}
