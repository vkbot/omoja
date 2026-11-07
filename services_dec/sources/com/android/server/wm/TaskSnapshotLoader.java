package com.android.server.wm;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.GraphicBuffer;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Slog;
import com.android.server.wm.nano.WindowManagerProtos;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

/* JADX INFO: loaded from: classes2.dex */
class TaskSnapshotLoader {
    private static final String TAG = "WindowManager";
    private final TaskSnapshotPersister mPersister;

    TaskSnapshotLoader(TaskSnapshotPersister persister) {
        this.mPersister = persister;
    }

    static class PreRLegacySnapshotConfig {
        final boolean mForceLoadReducedJpeg;
        final float mScale;

        PreRLegacySnapshotConfig(float scale, boolean forceLoadReducedJpeg) {
            this.mScale = scale;
            this.mForceLoadReducedJpeg = forceLoadReducedJpeg;
        }
    }

    PreRLegacySnapshotConfig getLegacySnapshotConfig(int taskWidth, float legacyScale, boolean highResFileExists, boolean loadLowResolutionBitmap) {
        float preRLegacyScale = 0.0f;
        boolean forceLoadReducedJpeg = false;
        boolean isPreRLegacySnapshot = taskWidth == 0;
        if (!isPreRLegacySnapshot) {
            return null;
        }
        boolean isPreQLegacyProto = isPreRLegacySnapshot && Float.compare(legacyScale, 0.0f) == 0;
        if (isPreQLegacyProto) {
            if (ActivityManager.isLowRamDeviceStatic() && !highResFileExists) {
                preRLegacyScale = 0.6f;
                forceLoadReducedJpeg = true;
            } else {
                preRLegacyScale = loadLowResolutionBitmap ? 0.5f : 1.0f;
            }
        } else if (isPreRLegacySnapshot) {
            if (ActivityManager.isLowRamDeviceStatic()) {
                preRLegacyScale = legacyScale;
                forceLoadReducedJpeg = true;
            } else {
                preRLegacyScale = loadLowResolutionBitmap ? 0.5f * legacyScale : legacyScale;
            }
        }
        return new PreRLegacySnapshotConfig(preRLegacyScale, forceLoadReducedJpeg);
    }

    ActivityManager.TaskSnapshot loadTask(int taskId, int userId, boolean loadLowResolutionBitmap) {
        File lowResolutionBitmapFile;
        Bitmap.Config config;
        Point taskSize;
        File protoFile = this.mPersister.getProtoFile(taskId, userId);
        if (!protoFile.exists()) {
            return null;
        }
        try {
            byte[] bytes = Files.readAllBytes(protoFile.toPath());
            WindowManagerProtos.TaskSnapshotProto proto = WindowManagerProtos.TaskSnapshotProto.parseFrom(bytes);
            File highResBitmap = this.mPersister.getHighResolutionBitmapFile(taskId, userId);
            PreRLegacySnapshotConfig legacyConfig = getLegacySnapshotConfig(proto.taskWidth, proto.legacyScale, highResBitmap.exists(), loadLowResolutionBitmap);
            boolean forceLoadReducedJpeg = legacyConfig != null && legacyConfig.mForceLoadReducedJpeg;
            if (loadLowResolutionBitmap || forceLoadReducedJpeg) {
                lowResolutionBitmapFile = this.mPersister.getLowResolutionBitmapFile(taskId, userId);
            } else {
                lowResolutionBitmapFile = highResBitmap;
            }
            File bitmapFile = lowResolutionBitmapFile;
            if (!bitmapFile.exists()) {
                return null;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            if (this.mPersister.use16BitFormat() && !proto.isTranslucent) {
                config = Bitmap.Config.RGB_565;
            } else {
                config = Bitmap.Config.ARGB_8888;
            }
            options.inPreferredConfig = config;
            Bitmap bitmap = BitmapFactory.decodeFile(bitmapFile.getPath(), options);
            if (bitmap != null) {
                Bitmap hwBitmap = bitmap.copy(Bitmap.Config.HARDWARE, false);
                bitmap.recycle();
                if (hwBitmap == null) {
                    Slog.w(TAG, "Failed to create hardware bitmap: " + bitmapFile.getPath());
                    return null;
                }
                GraphicBuffer buffer = hwBitmap.createGraphicBufferHandle();
                if (buffer == null) {
                    Slog.w(TAG, "Failed to retrieve gralloc buffer for bitmap: " + bitmapFile.getPath());
                    return null;
                }
                ComponentName topActivityComponent = ComponentName.unflattenFromString(proto.topActivityComponent);
                if (legacyConfig != null) {
                    int taskWidth = (int) (hwBitmap.getWidth() / legacyConfig.mScale);
                    int taskHeight = (int) (hwBitmap.getHeight() / legacyConfig.mScale);
                    Point taskSize2 = new Point(taskWidth, taskHeight);
                    taskSize = taskSize2;
                } else {
                    taskSize = new Point(proto.taskWidth, proto.taskHeight);
                }
                try {
                    return new ActivityManager.TaskSnapshot(proto.id, topActivityComponent, buffer, hwBitmap.getColorSpace(), proto.orientation, proto.rotation, taskSize, new Rect(proto.insetLeft, proto.insetTop, proto.insetRight, proto.insetBottom), loadLowResolutionBitmap, proto.isRealSnapshot, proto.windowingMode, proto.systemUiVisibility, proto.isTranslucent);
                } catch (IOException e) {
                    Slog.w(TAG, "Unable to load task snapshot data for taskId=" + taskId);
                    return null;
                }
            }
            Slog.w(TAG, "Failed to load bitmap: " + bitmapFile.getPath());
            return null;
        } catch (IOException e2) {
        }
    }
}
