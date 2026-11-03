package com.android.launcher3.accessibility;

import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class AccessibleDragListenerAdapter implements DragController.DragListener, ViewGroup.OnHierarchyChangeListener {
    private final Function<CellLayout, DragAndDropAccessibilityDelegate> mDelegateFactory;
    private final ViewGroup mViewGroup;

    public AccessibleDragListenerAdapter(ViewGroup parent, Function<CellLayout, DragAndDropAccessibilityDelegate> delegateFactory) {
        this.mViewGroup = parent;
        this.mDelegateFactory = delegateFactory;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions options) {
        this.mViewGroup.setOnHierarchyChangeListener(this);
        enableAccessibleDrag(true);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        this.mViewGroup.setOnHierarchyChangeListener(null);
        enableAccessibleDrag(false);
        Launcher.getLauncher(this.mViewGroup.getContext()).getDragController().removeDragListener(this);
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View parent, View child) {
        if (parent == this.mViewGroup) {
            setEnableForLayout((CellLayout) child, true);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View parent, View child) {
        if (parent == this.mViewGroup) {
            setEnableForLayout((CellLayout) child, false);
        }
    }

    protected void enableAccessibleDrag(boolean enable) {
        for (int i = 0; i < this.mViewGroup.getChildCount(); i++) {
            setEnableForLayout((CellLayout) this.mViewGroup.getChildAt(i), enable);
        }
    }

    protected final void setEnableForLayout(CellLayout layout, boolean enable) {
        layout.setDragAndDropAccessibilityDelegate(enable ? this.mDelegateFactory.apply(layout) : null);
    }
}
