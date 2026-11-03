package com.android.launcher3.folder;

import android.graphics.drawable.Drawable;
import com.android.launcher3.model.data.WorkspaceItemInfo;

/* JADX INFO: loaded from: classes.dex */
class PreviewItemDrawingParams {
    public FolderPreviewItemAnim anim;
    public Drawable drawable;
    public boolean hidden;
    public WorkspaceItemInfo item;
    float overlayAlpha;
    float scale;
    float transX;
    float transY;

    PreviewItemDrawingParams(float transX, float transY, float scale, float overlayAlpha) {
        this.transX = transX;
        this.transY = transY;
        this.scale = scale;
        this.overlayAlpha = overlayAlpha;
    }

    public void update(float transX, float transY, float scale) {
        FolderPreviewItemAnim folderPreviewItemAnim = this.anim;
        if (folderPreviewItemAnim != null) {
            if (folderPreviewItemAnim.finalState[1] == transX || this.anim.finalState[2] == transY || this.anim.finalState[0] == scale) {
                return;
            } else {
                this.anim.cancel();
            }
        }
        this.transX = transX;
        this.transY = transY;
        this.scale = scale;
    }
}
