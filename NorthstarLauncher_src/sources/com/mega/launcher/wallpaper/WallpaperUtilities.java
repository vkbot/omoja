package com.mega.launcher.wallpaper;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.util.AtomicFile;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class WallpaperUtilities {
    public static final String IMG_POSTFIX = ".png";
    private static final String TAG = "WallpaperUtils";
    public static final String WALLPAPER_DIR = "/sdcard/Wallpapers";

    public static boolean dirIsExist(Context context, String dirName) {
        File file = new File("/sdcard/Wallpapers" + dirName);
        boolean zExists = file.exists();
        MLog.d(TAG, "dirIsExist: exists=" + zExists + " " + file);
        return zExists;
    }

    public static boolean createDir(Context context, String dirName) {
        File file = new File("/sdcard/Wallpapers" + dirName);
        MLog.d(TAG, "createDir: file=" + file);
        if (!file.mkdirs()) {
            return false;
        }
        try {
            boolean zCreateNewFile = new File(file, ".nomedia").createNewFile();
            if (!zCreateNewFile) {
                MLog.e(TAG, "createDir: createNewFile failed");
            }
            return zCreateNewFile;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void saveWallpaper(String filePath, Bitmap bitmap) throws IOException {
        File file = new File(filePath);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 85, bufferedOutputStream);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    fileOutputStream.close();
                    MLog.d(TAG, "saveWallpaper: bitmap" + bitmap.getWidth() + "x" + bitmap.getHeight() + " " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms " + filePath);
                } catch (Throwable th) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Throwable th5) {
            MLog.d(TAG, "saveWallpaper: bitmap" + bitmap.getWidth() + "x" + bitmap.getHeight() + " " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms " + filePath);
            throw th5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0066 A[PHI: r5 r9
  0x0066: PHI (r5v3 boolean) = (r5v1 boolean), (r5v6 boolean) binds: [B:18:0x00aa, B:10:0x0060] A[DONT_GENERATE, DONT_INLINE]
  0x0066: PHI (r9v4 java.io.FileOutputStream) = (r9v2 java.io.FileOutputStream), (r9v7 java.io.FileOutputStream) binds: [B:18:0x00aa, B:10:0x0060] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    public static boolean saveOrReplaceWallpaper(Bitmap bitmap, String filePath) {
        boolean zCompress = false;
        if (bitmap == null || TextUtils.isEmpty(filePath)) {
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        AtomicFile atomicFile = new AtomicFile(new File(filePath));
        FileOutputStream fileOutputStreamStartWrite = null;
        try {
            try {
                fileOutputStreamStartWrite = atomicFile.startWrite();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStreamStartWrite);
                zCompress = bitmap.compress(Bitmap.CompressFormat.JPEG, 85, bufferedOutputStream);
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                MLog.d(TAG, "saveOrReplaceBitmap: success=" + zCompress + " " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms  " + filePath);
                if (zCompress) {
                    atomicFile.finishWrite(fileOutputStreamStartWrite);
                } else {
                    atomicFile.failWrite(fileOutputStreamStartWrite);
                }
            } catch (IOException e) {
                MLog.e(TAG, "saveOrReplaceBitmap: failed. " + filePath + " " + e);
                MLog.d(TAG, "saveOrReplaceBitmap: success=" + zCompress + " " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms  " + filePath);
                if (!zCompress) {
                    atomicFile.failWrite(fileOutputStreamStartWrite);
                }
            }
            return zCompress;
        } catch (Throwable th) {
            MLog.d(TAG, "saveOrReplaceBitmap: success=" + zCompress + " " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms  " + filePath);
            if (zCompress) {
                atomicFile.finishWrite(fileOutputStreamStartWrite);
            } else {
                atomicFile.failWrite(fileOutputStreamStartWrite);
            }
            throw th;
        }
    }

    public static void saveWorkspacePreview(String filePath, Bitmap bitmap) throws IOException {
        File file = new File(filePath);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                MLog.d(TAG, "saveWorkspacePreview: filePath=" + filePath + ", bitmap=" + bitmap + " " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms.");
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            MLog.d(TAG, "saveWorkspacePreview: filePath=" + filePath + ", bitmap=" + bitmap + " " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms.");
            throw th3;
        }
    }

    public static boolean deleteFile(String filePath) {
        boolean zDelete = new File(filePath).delete();
        MLog.d(TAG, "deleteFile: " + zDelete + " " + filePath);
        return zDelete;
    }

    public static void deleteFileUnchecked(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return;
        }
        MLog.d(TAG, "deleteFileUnchecked: filePath=" + filePath + ", delete=" + new File(filePath).delete());
    }

    public static int getIdentifier(Context context, String mipmapName) {
        return context.getResources().getIdentifier(mipmapName, "mipmap", context.getPackageName());
    }

    public static String getFilePath(Context context, String infix, String wallpaperName) {
        if (wallpaperName.contains(IMG_POSTFIX)) {
            return "/sdcard/Wallpapers" + infix + wallpaperName;
        }
        return "/sdcard/Wallpapers" + infix + wallpaperName + IMG_POSTFIX;
    }

    public static String getDirectoryPath(Context context, String infix) {
        return "/sdcard/Wallpapers" + infix;
    }
}
