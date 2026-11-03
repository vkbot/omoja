package com.android.launcher3.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AtomicFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class BitmapUtils {
    private static final String TAG = "BitmapUtils";

    public static Bitmap createBitmapAndReconfigure(Bitmap src, Bitmap reuse, boolean recycleReuse) {
        if (reuse == null || reuse.isRecycled() || reuse.getAllocationByteCount() < src.getByteCount()) {
            if (recycleReuse && reuse != null && !reuse.isRecycled()) {
                reuse.recycle();
            }
            reuse = Bitmap.createBitmap(src.getWidth(), src.getHeight(), src.getConfig());
        }
        if (reuse.getWidth() != src.getWidth() || reuse.getHeight() != src.getHeight() || reuse.getConfig() != src.getConfig()) {
            reuse.reconfigure(src.getWidth(), src.getHeight(), src.getConfig());
        }
        return reuse;
    }

    public static void copyPixels(Bitmap from, Bitmap to) {
        if (from == null || to == null) {
            return;
        }
        new Canvas(to).drawBitmap(from, 0.0f, 0.0f, (Paint) null);
    }

    public static void copyPixelsWidthAlpha(Bitmap from, Bitmap to, int alpha) {
        if (from == null || to == null) {
            return;
        }
        Canvas canvas = new Canvas(to);
        canvas.saveLayerAlpha(0.0f, 0.0f, from.getWidth(), from.getHeight(), alpha);
        canvas.drawBitmap(from, 0.0f, 0.0f, (Paint) null);
        canvas.restore();
    }

    public static void tryRecycle(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    public static Bitmap loadBitmap(Context context, int resId, int reqWidth, int reqHeight) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = false;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(context.getResources(), resId, options);
        options.inJustDecodeBounds = false;
        options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
        return fixDimension(fixRatio(BitmapFactory.decodeResource(context.getResources(), resId, options), reqWidth, reqHeight), reqWidth, reqHeight);
    }

    public static Bitmap loadBitmap(String path, int reqWidth, int reqHeight) {
        try {
            FileInputStream fileInputStreamOpenRead = new AtomicFile(new File(path)).openRead();
            try {
                FileChannel channel = fileInputStreamOpenRead.getChannel();
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inScaled = false;
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(fileInputStreamOpenRead, null, options);
                    options.inJustDecodeBounds = false;
                    options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
                    channel.position(0L);
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStreamOpenRead, null, options);
                    if (bitmapDecodeStream == null) {
                        MLog.w(TAG, "loadBitmap: load failed. " + path);
                        if (channel != null) {
                            channel.close();
                        }
                        if (fileInputStreamOpenRead != null) {
                            fileInputStreamOpenRead.close();
                        }
                        return null;
                    }
                    Bitmap bitmapFixDimension = fixDimension(fixRatio(bitmapDecodeStream, reqWidth, reqHeight), reqWidth, reqHeight);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(reqWidth, reqHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    canvas.drawColor(-16777216);
                    canvas.drawBitmap(bitmapFixDimension, 0.0f, 0.0f, (Paint) null);
                    bitmapFixDimension.recycle();
                    if (channel != null) {
                        channel.close();
                    }
                    if (fileInputStreamOpenRead != null) {
                        fileInputStreamOpenRead.close();
                    }
                    return bitmapCreateBitmap;
                } catch (Throwable th) {
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (fileInputStreamOpenRead != null) {
                    try {
                        fileInputStreamOpenRead.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (IOException e) {
            MLog.e(TAG, "loadBitmap: failed", e);
            return null;
        }
    }

    private static Bitmap fixDimension(Bitmap bitmap, int reqWidth, int reqHeight) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width == reqWidth && height == reqHeight) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, reqWidth, reqHeight, false);
        if (bitmap != bitmapCreateScaledBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateScaledBitmap;
    }

    private static Bitmap fixRatio(Bitmap bitmap, int reqWidth, int reqHeight) {
        int i;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f = width;
        float f2 = height;
        float f3 = (f * 1.0f) / f2;
        float f4 = (reqWidth * 1.0f) / reqHeight;
        if (Float.compare(f3, f4) == 0) {
            return bitmap;
        }
        int i2 = 0;
        if (f4 > f3) {
            int i3 = (int) (f / f4);
            int i4 = (height - i3) / 2;
            height = i3;
            i = i4;
        } else if (f4 < f3) {
            int i5 = (int) (f2 * f4);
            int i6 = (width - i5) / 2;
            width = i5;
            i = 0;
            i2 = i6;
        } else {
            i = 0;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i2, i, width, height);
        if (bitmap != bitmapCreateBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int i = 1;
        if (reqWidth > 0 && reqHeight > 0) {
            int i2 = options.outHeight;
            int i3 = options.outWidth;
            if (i2 > reqHeight || i3 > reqWidth) {
                int i4 = i2 / 2;
                int i5 = i3 / 2;
                while (i4 / i >= reqHeight && i5 / i >= reqWidth) {
                    i *= 2;
                }
            }
        }
        return i;
    }
}
