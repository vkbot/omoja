package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.userevent.nano.LauncherLogProto;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.AbstractSlideInView;
import com.mega.chery.utils.ToastViewUtils;
import java.util.ArrayList;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseWidgetSheet extends AbstractSlideInView implements View.OnClickListener, View.OnLongClickListener, DragSource, PopupDataProvider.PopupDataChangeListener {
    private static final String TAG = "BaseWidgetSheet";

    protected abstract int getElementsRowCount();

    @Override // com.android.launcher3.AbstractFloatingView
    public int getLogContainerType() {
        return 5;
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View target, DropTarget.DragObject d, boolean success) {
    }

    public BaseWidgetSheet(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    protected int getScrimColor(Context context) {
        return GraphicsUtils.setColorAlphaBound(-1, context.getResources().getInteger(R.integer.extracted_color_gradient_alpha));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mLauncher.getPopupDataProvider().setChangeListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mLauncher.getPopupDataProvider().setChangeListener(null);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View v) {
        ToastViewUtils.makeText(getContext(), Utilities.wrapForTts(getContext().getText(R.string.long_press_widget_to_add), getContext().getString(R.string.long_accessible_way_to_add)).toString(), 3000L).show();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View v) {
        TestLogging.recordEvent(TestProtocol.SEQUENCE_MAIN, "Widgets.onLongClick");
        v.cancelLongPress();
        if (!ItemLongClickListener.canStartDrag(this.mLauncher)) {
            return false;
        }
        if (v instanceof WidgetCell) {
            return beginDraggingWidget((WidgetCell) v);
        }
        return true;
    }

    private boolean beginDraggingWidget(WidgetCell v) {
        MLog.d(TAG, "beginDraggingWidget() called with: v = [" + v + "]");
        WidgetImageView widgetView = v.getWidgetView();
        if (widgetView.getBitmap() == null) {
            return false;
        }
        int[] iArr = new int[2];
        getPopupContainer().getLocationInDragLayer(widgetView, iArr);
        new PendingItemDragHelper(v).startDrag(widgetView.getBitmapBounds(), widgetView.getBitmap().getWidth(), widgetView.getWidth(), new Point(iArr[0], iArr[1]), this, new DragOptions());
        close(true);
        return true;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    protected void onCloseComplete() {
        super.onCloseComplete();
        clearNavBarColor();
    }

    protected void clearNavBarColor() {
        getSystemUiController().updateUiState(2, 0);
    }

    protected void setupNavBarColor() {
        getSystemUiController().updateUiState(2, Themes.getAttrBoolean(getContext(), R.attr.isMainColorDark) ? 2 : 1);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils.LogContainerProvider
    public void fillInLogContainerData(ItemInfo childInfo, LauncherLogProto.Target child, ArrayList<LauncherLogProto.Target> parents) {
        LauncherLogProto.Target targetNewContainerTarget = LoggerUtils.newContainerTarget(5);
        targetNewContainerTarget.cardinality = getElementsRowCount();
        parents.add(targetNewContainerTarget);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void logActionCommand(int command) {
        LauncherLogProto.Target targetNewContainerTarget = LoggerUtils.newContainerTarget(getLogContainerType());
        targetNewContainerTarget.cardinality = getElementsRowCount();
        this.mLauncher.getUserEventDispatcher().logActionCommand(command, targetNewContainerTarget);
    }

    protected SystemUiController getSystemUiController() {
        return this.mLauncher.getSystemUiController();
    }
}
