package com.android.launcher3.widget;

import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewDebug;
import com.android.launcher3.Reorderable;
import com.android.launcher3.dragndrop.DraggableView;
import java.util.ArrayList;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public abstract class NavigableAppWidgetHostView extends AppWidgetHostView implements DraggableView, Reorderable {
    private static final String TAG = "NavigableAppWidgetHostView";

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mChildrenFocused;
    private float mScaleForReorderBounce;
    private float mScaleToFit;
    private final PointF mTranslationForCentering;
    private final PointF mTranslationForReorderBounce;
    private final PointF mTranslationForReorderPreview;

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View focused, int direction) {
        return this.mChildrenFocused;
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        return this.mChildrenFocused ? 131072 : 393216;
    }

    @Override // com.android.launcher3.Reorderable
    public float getReorderBounceScale() {
        return this.mScaleForReorderBounce;
    }

    public float getScaleToFit() {
        return this.mScaleToFit;
    }

    @Override // com.android.launcher3.Reorderable
    public View getView() {
        return this;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public int getViewType() {
        return 1;
    }

    protected abstract boolean shouldAllowDirectClick();

    public NavigableAppWidgetHostView(Context context) {
        super(context);
        this.mScaleToFit = 1.0f;
        this.mTranslationForCentering = new PointF(0.0f, 0.0f);
        this.mTranslationForReorderBounce = new PointF(0.0f, 0.0f);
        this.mTranslationForReorderPreview = new PointF(0.0f, 0.0f);
        this.mScaleForReorderBounce = 1.0f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (this.mChildrenFocused && event.getKeyCode() == 111 && event.getAction() == 1) {
            this.mChildrenFocused = false;
            requestFocus();
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (!this.mChildrenFocused && keyCode == 66) {
            event.startTracking();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (event.isTracking() && !this.mChildrenFocused && keyCode == 66) {
            this.mChildrenFocused = true;
            ArrayList focusables = getFocusables(2);
            focusables.remove(this);
            int size = focusables.size();
            if (size != 0) {
                if (size == 1 && shouldAllowDirectClick()) {
                    ((View) focusables.get(0)).performClick();
                    this.mChildrenFocused = false;
                    return true;
                }
                ((View) focusables.get(0)).requestFocus();
                return true;
            }
            this.mChildrenFocused = false;
        }
        return super.onKeyUp(keyCode, event);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        if (gainFocus) {
            this.mChildrenFocused = false;
            dispatchChildFocus(false);
        }
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View child, View focused) {
        super.requestChildFocus(child, focused);
        dispatchChildFocus(this.mChildrenFocused && focused != null);
        if (focused != null) {
            focused.setFocusableInTouchMode(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void clearChildFocus(View child) {
        super.clearChildFocus(child);
        dispatchChildFocus(false);
    }

    private void dispatchChildFocus(boolean childIsFocused) {
        setSelected(childIsFocused);
    }

    private void updateTranslation() {
        super.setTranslationX(this.mTranslationForReorderBounce.x + this.mTranslationForReorderPreview.x + this.mTranslationForCentering.x);
        super.setTranslationY(this.mTranslationForReorderBounce.y + this.mTranslationForReorderPreview.y + this.mTranslationForCentering.y);
    }

    public void setTranslationForCentering(float x, float y) {
        this.mTranslationForCentering.set(x, y);
        updateTranslation();
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceOffset(float x, float y) {
        this.mTranslationForReorderBounce.set(x, y);
        updateTranslation();
    }

    @Override // com.android.launcher3.Reorderable
    public void getReorderBounceOffset(PointF offset) {
        offset.set(this.mTranslationForReorderBounce);
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderPreviewOffset(float x, float y) {
        this.mTranslationForReorderPreview.set(x, y);
        updateTranslation();
    }

    @Override // com.android.launcher3.Reorderable
    public void getReorderPreviewOffset(PointF offset) {
        offset.set(this.mTranslationForReorderPreview);
    }

    private void updateScale() {
        super.setScaleX(this.mScaleToFit * this.mScaleForReorderBounce);
        super.setScaleY(this.mScaleToFit * this.mScaleForReorderBounce);
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceScale(float scale) {
        MLog.d(TAG, "setReorderBounceScale() called with: scale = [" + scale + "]");
        this.mScaleForReorderBounce = scale;
        updateScale();
    }

    public void setScaleToFit(float scale) {
        this.mScaleToFit = scale;
        updateScale();
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public void getWorkspaceVisualDragBounds(Rect bounds) {
        bounds.set(0, 0, (int) (getMeasuredWidth() * this.mScaleToFit), (int) (getMeasuredHeight() * this.mScaleToFit));
        MLog.d(TAG, "getWorkspaceVisualDragBounds() called with: bounds = [" + bounds + "]");
    }
}
