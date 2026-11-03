package com.android.launcher3.provider;

import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import androidx.core.content.FileProvider;
import com.android.launcher3.Launcher;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.views.blur.BlurRenderWatcher;
import com.mega.launcher.wallpaper.WallpaperUtilities;
import com.mega.launcherapi.utils.LiveWallpaperContract;
import com.mega.nexus.content.pm.MegaPackageManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.UByte;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class PreviewProvider extends FileProvider {
    public static final String AUTHORITY = "com.android.launcher3.preview_provider";
    public static final String METHOD_ENSURE_PREVIEW = "ensure_preview";
    public static final String METHOD_MEDIA_WIDGET_LOCATION = "get_media_widget_location";
    private static final String TABLE_NAME = "Wallpaper";
    private static final String TAG = "PreviewProvider";
    private static final int WALLPAPERS = 1;
    private static final int WORKSPACE_PREVIEW = 0;
    private final AtomicBoolean mEnsurePreviewCalled = new AtomicBoolean();
    private UriMatcher mUriMatcher;

    public PreviewProvider() {
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.mUriMatcher = uriMatcher;
        uriMatcher.addURI(LiveWallpaperContract.AUTHORITY, "workspace_preview", 0);
    }

    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public boolean onCreate() {
        Uri.parse("content://com.android.launcher3.preview_provider");
        MLog.d(TAG, "onCreate: ");
        return false;
    }

    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        MLog.d(TAG, "query: uri = [" + uri + "], projection = [" + projection + "], selection = [" + selection + "], selectionArgs = [" + selectionArgs + "], sortOrder = [" + sortOrder + "]");
        return super.query(uri, projection, selection, selectionArgs, sortOrder);
    }

    @Override // android.content.ContentProvider
    public Bundle call(String method, String arg, Bundle extras) {
        if (Objects.equals(method, METHOD_ENSURE_PREVIEW)) {
            MLog.d(TAG, "call: METHOD_ENSURE_PREVIEW " + this.mEnsurePreviewCalled.get());
            if (this.mEnsurePreviewCalled.compareAndSet(false, true)) {
                Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.provider.PreviewProvider$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m138lambda$call$0$comandroidlauncher3providerPreviewProvider();
                    }
                });
            }
        } else if (Objects.equals(method, METHOD_MEDIA_WIDGET_LOCATION)) {
            Rect rect = (Rect) new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: com.android.launcher3.provider.PreviewProvider$$ExternalSyntheticLambda1
                @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
                public final Object get(Context context) {
                    return PreviewProvider.lambda$call$1(context);
                }
            }).m166x39265fe7(getContext());
            if (rect == null) {
                MLog.w(TAG, "call: null for get_media_widget_location");
                return null;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("left", rect.left);
            bundle.putInt("top", rect.top);
            bundle.putInt("right", rect.right);
            bundle.putInt("bottom", rect.bottom);
            return bundle;
        }
        return super.call(method, arg, extras);
    }

    /* JADX INFO: renamed from: lambda$call$0$com-android-launcher3-provider-PreviewProvider, reason: not valid java name */
    /* synthetic */ void m138lambda$call$0$comandroidlauncher3providerPreviewProvider() {
        if (new File(getContext().getCacheDir(), "image.png").exists()) {
            return;
        }
        getPreviewFile();
    }

    static /* synthetic */ Rect lambda$call$1(Context context) {
        try {
            Launcher launcher = Launcher.sLauncher;
            if (launcher == null) {
                MLog.w(TAG, "call: Launcher is null");
                return null;
            }
            return launcher.getMediaWidgetBounds();
        } catch (RuntimeException e) {
            MLog.e(TAG, "call: failed for get_media_widget_location", e);
            return null;
        }
    }

    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        MLog.d(TAG, "openFile: uri=" + uri + " mode=" + mode);
        File previewFile = getPreviewFile();
        if (previewFile == null) {
            return null;
        }
        return ParcelFileDescriptor.open(previewFile, MegaPackageManager.MATCH_DEBUG_TRIAGED_MISSING);
    }

    private File getPreviewFile() {
        int width;
        int i;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Bitmap bitmap = (Bitmap) new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: com.android.launcher3.provider.PreviewProvider$$ExternalSyntheticLambda2
            @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
            public final Object get(Context context) {
                return PreviewProvider.lambda$getPreviewFile$2(context);
            }
        }).m166x39265fe7(getContext());
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        if (bitmap != null) {
            Bitmap bitmapExtractAlpha = bitmap.extractAlpha();
            width = bitmapExtractAlpha.getWidth() * bitmapExtractAlpha.getHeight();
            byte[] bArr = new byte[width];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.rewind();
            bitmapExtractAlpha.copyPixelsToBuffer(byteBufferWrap);
            i = 0;
            for (int i2 = (width * 2) / 3; i2 < width; i2++) {
                if ((bArr[i2] & UByte.MAX_VALUE) != 0) {
                    i++;
                }
            }
        } else {
            width = 0;
            i = 0;
        }
        long jElapsedRealtime3 = SystemClock.elapsedRealtime();
        File file = new File(getContext().getCacheDir(), "image.png");
        if (bitmap != null && i != 0) {
            try {
                WallpaperUtilities.saveWorkspacePreview(file.getAbsolutePath(), bitmap);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        long jElapsedRealtime4 = SystemClock.elapsedRealtime();
        MLog.d(TAG, "getPreviewFile: createPreview result=" + (bitmap != null) + " step1_bitmap=" + (jElapsedRealtime2 - jElapsedRealtime) + " step2_alpha=" + (jElapsedRealtime3 - jElapsedRealtime2) + " step2_file=" + (jElapsedRealtime4 - jElapsedRealtime3) + " totalMs=" + (jElapsedRealtime4 - jElapsedRealtime) + " opaqueCount=" + i + " totalCount=" + width);
        if (file.isFile()) {
            return file;
        }
        MLog.w(TAG, "getPreviewFile: file not exist");
        return null;
    }

    static /* synthetic */ Bitmap lambda$getPreviewFile$2(Context context) {
        boolean zIsBlurEnabled = BlurRenderWatcher.getInstance().isBlurEnabled();
        if (zIsBlurEnabled) {
            BlurRenderWatcher.getInstance().setBlurEnabled(false);
        }
        Bitmap workspaceBitmap = Launcher.getWorkspaceBitmap();
        if (zIsBlurEnabled) {
            BlurRenderWatcher.getInstance().setBlurEnabled(true);
        }
        return workspaceBitmap;
    }
}
