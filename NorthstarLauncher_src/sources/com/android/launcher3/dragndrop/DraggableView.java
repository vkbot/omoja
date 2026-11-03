package com.android.launcher3.dragndrop;

import android.graphics.Rect;
import com.android.launcher3.util.SafeCloseable;

/* JADX INFO: loaded from: classes.dex */
public interface DraggableView {
    public static final int DRAGGABLE_ICON = 0;
    public static final int DRAGGABLE_WIDGET = 1;

    static /* synthetic */ int lambda$ofType$0(int i) {
        return i;
    }

    static /* synthetic */ void lambda$prepareDrawDragView$1() {
    }

    int getViewType();

    default void getWorkspaceVisualDragBounds(Rect bounds) {
    }

    static DraggableView ofType(final int type) {
        return new DraggableView() { // from class: com.android.launcher3.dragndrop.DraggableView$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.dragndrop.DraggableView
            public final int getViewType() {
                return DraggableView.lambda$ofType$0(type);
            }
        };
    }

    default SafeCloseable prepareDrawDragView() {
        return new SafeCloseable() { // from class: com.android.launcher3.dragndrop.DraggableView$$ExternalSyntheticLambda1
            @Override // com.android.launcher3.util.SafeCloseable, java.lang.AutoCloseable
            public final void close() {
                DraggableView.lambda$prepareDrawDragView$1();
            }
        };
    }

    default void getSourceVisualDragBounds(Rect bounds) {
        getWorkspaceVisualDragBounds(bounds);
    }
}
