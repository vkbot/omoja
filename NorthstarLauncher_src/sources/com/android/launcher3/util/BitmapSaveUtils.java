package com.android.launcher3.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.mega.launcher.wallpaper.WallpaperUtilities;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class BitmapSaveUtils {
    public static final boolean DEBUG_CACHE = true;
    private static final String TAG = "BitmapSaveUtils";
    private static ExecutorService sSingleExecutor = java.util.concurrent.Executors.newSingleThreadExecutor();

    public static void saveDrawable(String str, Drawable drawable, Context context) {
        saveBitmap(str, drawableToBitmap(drawable), context);
    }

    public static void saveBitmap(final String str, final Bitmap bitmap, final Context context) {
        if (bitmap == null || bitmap.getHeight() <= 1) {
            return;
        }
        if (!str.contains("png")) {
            str = str + WallpaperUtilities.IMG_POSTFIX;
        }
        sSingleExecutor.submit(new Runnable() { // from class: com.android.launcher3.util.BitmapSaveUtils$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BitmapSaveUtils.lambda$saveBitmap$0(context, str, bitmap);
            }
        });
    }

    static /* synthetic */ void lambda$saveBitmap$0(Context context, String str, Bitmap bitmap) {
        String str2 = context.getFilesDir() + "/images/";
        if (!fileIsExist(str2)) {
            Log.d(TAG, "targetPath isn't exist");
            return;
        }
        File file = new File(str2, str);
        Log.d(TAG, "saveBitmap: saveFile=" + file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 20, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565, true);
        drawable.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    private static boolean fileIsExist(String str) {
        File file = new File(str);
        if (file.exists()) {
            return true;
        }
        return file.mkdirs();
    }
}
