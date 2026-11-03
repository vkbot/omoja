package com.android.launcher3.dragndrop;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.android.launcher3.Launcher;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.graphics.ShiftedBitmapDrawable;
import com.android.launcher3.icons.BitmapRenderer;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.Preconditions;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class FolderAdaptiveIcon extends AdaptiveIconDrawable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String TAG = "FolderAdaptiveIcon";
    private static final Rect sTmpRect = new Rect();
    private final Drawable mBadge;
    private final Drawable.ConstantState mConstantState;
    private final Path mMask;

    public Drawable getBadge() {
        return this.mBadge;
    }

    @Override // android.graphics.drawable.AdaptiveIconDrawable, android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.mConstantState;
    }

    @Override // android.graphics.drawable.AdaptiveIconDrawable
    public Path getIconMask() {
        return this.mMask;
    }

    private FolderAdaptiveIcon(Drawable bg, Drawable fg, Drawable badge, Path mask) {
        super(bg, fg);
        this.mBadge = badge;
        this.mMask = mask;
        this.mConstantState = new MyConstantState(bg.getConstantState(), fg.getConstantState(), badge.getConstantState(), mask);
    }

    public static FolderAdaptiveIcon createFolderAdaptiveIcon(final Launcher launcher, final int folderId, final Point dragViewSize) {
        Preconditions.assertNonUiThread();
        try {
            return (FolderAdaptiveIcon) Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: com.android.launcher3.dragndrop.FolderAdaptiveIcon$$ExternalSyntheticLambda2
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return FolderAdaptiveIcon.lambda$createFolderAdaptiveIcon$0(launcher, folderId, dragViewSize);
                }
            }).get();
        } catch (Exception e) {
            Log.e(TAG, "Unable to create folder icon", e);
            return null;
        }
    }

    static /* synthetic */ FolderAdaptiveIcon lambda$createFolderAdaptiveIcon$0(Launcher launcher, int i, Point point) throws Exception {
        FolderIcon folderIconFindFolderIcon = launcher.findFolderIcon(i);
        if (folderIconFindFolderIcon == null) {
            return null;
        }
        return createDrawableOnUiThread(folderIconFindFolderIcon, point);
    }

    private static FolderAdaptiveIcon createDrawableOnUiThread(final FolderIcon icon, Point dragViewSize) {
        Preconditions.assertUIThread();
        Rect rect = sTmpRect;
        icon.getPreviewBounds(rect);
        final PreviewBackground folderBackground = icon.getFolderBackground();
        int iWidth = (dragViewSize.x - rect.width()) / 2;
        final float f = (-rect.left) + iWidth;
        final float f2 = (-rect.top) + iWidth;
        Bitmap bitmapCreateHardwareBitmap = BitmapRenderer.createHardwareBitmap(dragViewSize.x, dragViewSize.y, new BitmapRenderer() { // from class: com.android.launcher3.dragndrop.FolderAdaptiveIcon$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.icons.BitmapRenderer
            public final void draw(Canvas canvas) {
                FolderAdaptiveIcon.lambda$createDrawableOnUiThread$1(f, f2, folderBackground, icon, canvas);
            }
        });
        Path path = new Path();
        Matrix matrix = new Matrix();
        matrix.setTranslate(f, f2);
        folderBackground.getClipPath().transform(matrix, path);
        Bitmap bitmapCreateHardwareBitmap2 = BitmapRenderer.createHardwareBitmap(dragViewSize.x, dragViewSize.y, new BitmapRenderer() { // from class: com.android.launcher3.dragndrop.FolderAdaptiveIcon$$ExternalSyntheticLambda1
            @Override // com.android.launcher3.icons.BitmapRenderer
            public final void draw(Canvas canvas) {
                FolderAdaptiveIcon.lambda$createDrawableOnUiThread$2(f, f2, icon, canvas);
            }
        });
        return new FolderAdaptiveIcon(new ColorDrawable(folderBackground.getBgColor()), new ShiftedBitmapDrawable(bitmapCreateHardwareBitmap2, 0.0f, 0.0f), new ShiftedBitmapDrawable(bitmapCreateHardwareBitmap, 0.0f, 0.0f), path);
    }

    static /* synthetic */ void lambda$createDrawableOnUiThread$1(float f, float f2, PreviewBackground previewBackground, FolderIcon folderIcon, Canvas canvas) {
        canvas.save();
        canvas.translate(f, f2);
        previewBackground.drawBackgroundStroke(canvas);
        folderIcon.drawDot(canvas);
        canvas.restore();
    }

    static /* synthetic */ void lambda$createDrawableOnUiThread$2(float f, float f2, FolderIcon folderIcon, Canvas canvas) {
        canvas.save();
        canvas.translate(f, f2);
        folderIcon.getPreviewItemManager().draw(canvas);
        canvas.restore();
    }

    private static class MyConstantState extends Drawable.ConstantState {
        private final Drawable.ConstantState mBadge;
        private final Drawable.ConstantState mBg;
        private final Drawable.ConstantState mFg;
        private final Path mMask;

        MyConstantState(Drawable.ConstantState bg, Drawable.ConstantState fg, Drawable.ConstantState badge, Path mask) {
            this.mBg = bg;
            this.mFg = fg;
            this.mBadge = badge;
            this.mMask = mask;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new FolderAdaptiveIcon(this.mBg.newDrawable(), this.mFg.newDrawable(), this.mBadge.newDrawable(), this.mMask);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mBadge.getChangingConfigurations() & this.mBg.getChangingConfigurations() & this.mFg.getChangingConfigurations();
        }
    }
}
