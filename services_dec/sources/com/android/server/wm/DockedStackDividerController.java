package com.android.server.wm;

import android.graphics.Rect;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class DockedStackDividerController {
    private final DisplayContent mDisplayContent;
    private boolean mResizing;
    private final Rect mTouchRegion = new Rect();

    DockedStackDividerController(DisplayContent displayContent) {
        this.mDisplayContent = displayContent;
    }

    boolean isResizing() {
        return this.mResizing;
    }

    void setResizing(boolean resizing) {
        if (this.mResizing != resizing) {
            this.mResizing = resizing;
            resetDragResizingChangeReported();
        }
    }

    void setTouchRegion(Rect touchRegion) {
        this.mTouchRegion.set(touchRegion);
        if (this.mDisplayContent.mWmService.mAccessibilityController != null) {
            this.mDisplayContent.mWmService.mAccessibilityController.onSomeWindowResizedOrMovedLocked(this.mDisplayContent.getDisplayId());
        }
    }

    void getTouchRegion(Rect outRegion) {
        outRegion.set(this.mTouchRegion);
    }

    private void resetDragResizingChangeReported() {
        this.mDisplayContent.forAllWindows((Consumer<WindowState>) new Consumer() { // from class: com.android.server.wm.-$$Lambda$vhwCX-wzYksBgFM46tASKUCeQRc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowState) obj).resetDragResizingChangeReported();
            }
        }, true);
    }
}
