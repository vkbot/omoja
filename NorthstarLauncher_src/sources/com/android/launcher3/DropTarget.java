package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.folder.FolderNameProvider;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;

/* JADX INFO: loaded from: classes.dex */
public interface DropTarget {
    boolean acceptDrop(DragObject dragObject);

    void getHitRectRelativeToDragLayer(Rect outRect);

    boolean isDropEnabled();

    void onDragEnter(DragObject dragObject);

    void onDragExit(DragObject dragObject);

    void onDragOver(DragObject dragObject);

    void onDrop(DragObject dragObject, DragOptions options);

    void prepareAccessibilityDrop();

    public static class DragObject {
        public FolderNameProvider folderNameProvider;
        public DragViewStateAnnouncer stateAnnouncer;
        public int x = -1;
        public int y = -1;
        public int xOffset = -1;
        public int yOffset = -1;
        public boolean dragComplete = false;
        public DragView dragView = null;
        public ItemInfo dragInfo = null;
        public ItemInfo originalDragInfo = null;
        public DragSource dragSource = null;
        public DropTarget dropTarget = null;
        public boolean cancelled = false;
        public boolean deferDragViewCleanupPostAnimation = true;
        public boolean deferRemoveShadowView = false;
        public DraggableView originalView = null;
        public final InstanceId logInstanceId = new InstanceIdSequence(1048576).newInstanceId();

        public DragObject(final Context context) {
            if (FeatureFlags.FOLDER_NAME_SUGGEST.get()) {
                Executors.MODEL_EXECUTOR.post(new Runnable() { // from class: com.android.launcher3.DropTarget$DragObject$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m19lambda$new$0$comandroidlauncher3DropTarget$DragObject(context);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$new$0$com-android-launcher3-DropTarget$DragObject, reason: not valid java name */
        /* synthetic */ void m19lambda$new$0$comandroidlauncher3DropTarget$DragObject(Context context) {
            this.folderNameProvider = FolderNameProvider.newInstance(context);
        }

        public final float[] getVisualCenter(float[] recycle) {
            if (recycle == null) {
                recycle = new float[2];
            }
            Rect dragRegion = this.dragView.getDragRegion();
            int i = (this.x - this.xOffset) - dragRegion.left;
            int i2 = (this.y - this.yOffset) - dragRegion.top;
            recycle[0] = i + (dragRegion.width() / 2);
            recycle[1] = i2 + (dragRegion.height() / 2);
            return recycle;
        }

        public boolean isMoved() {
            return (this.dragInfo.cellX == this.originalDragInfo.cellX && this.dragInfo.cellY == this.originalDragInfo.cellY && this.dragInfo.screenId == this.originalDragInfo.screenId && this.dragInfo.container == this.originalDragInfo.container) ? false : true;
        }

        public String toString() {
            return "DragObject{x=" + this.x + ", y=" + this.y + ", xOffset=" + this.xOffset + ", yOffset=" + this.yOffset + ", dragComplete=" + this.dragComplete + ", dragView=" + this.dragView + ", dragInfo=" + this.dragInfo + ", originalDragInfo=" + this.originalDragInfo + ", dragSource=" + this.dragSource + ", cancelled=" + this.cancelled + ", deferDragViewCleanupPostAnimation=" + this.deferDragViewCleanupPostAnimation + ", stateAnnouncer=" + this.stateAnnouncer + ", folderNameProvider=" + this.folderNameProvider + ", originalView=" + this.originalView + ", logInstanceId=" + this.logInstanceId + '}';
        }
    }
}
