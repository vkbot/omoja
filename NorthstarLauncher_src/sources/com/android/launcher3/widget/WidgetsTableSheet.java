package com.android.launcher3.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.PropertyValuesHolder;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.util.Consumer;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetHost;
import com.android.launcher3.LauncherState;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.WidgetsTable2x1Adapter;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.userevent.nano.LauncherLogProto;
import com.android.launcher3.util.LinkManagerKt;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.AbstractFadeInView;
import com.android.launcher3.views.LiveWidgetContainer;
import com.android.launcher3.views.dragableviews.ItemViewMovementController;
import com.mega.chery.utils.ToastViewUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class WidgetsTableSheet extends AbstractFadeInView implements WidgetsTable1x1Adapter.OnItemClickListener, View.OnLongClickListener, DragSource, PopupDataProvider.PopupDataChangeListener, Insettable, LauncherAppWidgetHost.ProviderChangedListener, StateManager.StateListener<LauncherState> {
    private static final long DEFAULT_OPEN_DURATION = 267;
    private static final long FADE_IN_DURATION = 150;
    private static final String KEY_CURRENT_SELECTED_WIDGET_TABLE = "currentSelectedWidgetTable";
    private static final String KEY_SUPER_STATE = "superState";
    private static final String TAG = "WidgetsTableSheet";
    private static final float VERTICAL_START_POSITION = 0.3f;
    private static final int WIDGET_TABLE_1X1_ID = 1;
    private static final int WIDGET_TABLE_2X1_ID = 0;
    private final Observer<Boolean> mAndroidAutoObserver;
    private final Observer<Boolean> mCarPlayObserver;
    private int mCurrentSelectedWidgetTable;
    private final DragController.DragListener mDragListener;
    private final Rect mInsets;
    private GridLayoutManager mRecyclerLayoutManager1x1;
    private GridLayoutManager mRecyclerLayoutManager2x1;
    private RecyclerView mRecyclerView1x1;
    private RecyclerView mRecyclerView2x1;
    private Runnable mRenderFinishListener;
    private ItemViewMovementController.IWidgetTableDelegate mTableController;
    private TextView mTvWidget1x1;
    private TextView mTvWidget2x1;
    private final WidgetsTable1x1Adapter mWidgetAdapter1x1;
    private final WidgetsTable2x1Adapter mWidgetAdapter2x1;
    private final int mWidgetItem1x1BottomSpace;
    private final int mWidgetItem1x1ItemHeight;
    private final int mWidgetItem2x1BottomSpace;
    private final int mWidgetItem2x1ItemHeight;

    @Override // com.android.launcher3.logging.StatsLogUtils.LogContainerProvider
    public void fillInLogContainerData(ItemInfo childInfo, LauncherLogProto.Target child, ArrayList<LauncherLogProto.Target> parents) {
    }

    @Override // com.android.launcher3.AbstractFloatingView
    protected boolean isOfType(int type) {
        return (type & 16) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int command) {
    }

    @Override // com.android.launcher3.views.AbstractFadeInView, com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        return false;
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect insets) {
    }

    /* JADX INFO: renamed from: lambda$new$0$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m199lambda$new$0$comandroidlauncher3widgetWidgetsTableSheet(Boolean bool) {
        onLinkStateChanged(1, bool != null && bool.booleanValue());
    }

    /* JADX INFO: renamed from: lambda$new$1$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m200lambda$new$1$comandroidlauncher3widgetWidgetsTableSheet(Boolean bool) {
        onLinkStateChanged(8, bool != null && bool.booleanValue());
    }

    public void onLinkStateChanged(int type, boolean connected) {
        WidgetsTable1x1Adapter widgetsTable1x1Adapter = this.mWidgetAdapter1x1;
        if (widgetsTable1x1Adapter != null) {
            if (type == 1) {
                widgetsTable1x1Adapter.onCarPlayConnectionChanged(connected);
            } else if (type == 8) {
                widgetsTable1x1Adapter.onAndroidAutoConnectionChanged(connected);
            }
        }
    }

    /* JADX INFO: renamed from: com.android.launcher3.widget.WidgetsTableSheet$1, reason: invalid class name */
    class AnonymousClass1 implements DragController.DragListener {
        private DropTarget.DragObject mDragObject;

        AnonymousClass1() {
        }

        @Override // com.android.launcher3.dragndrop.DragController.DragListener
        public void onDragStart(DropTarget.DragObject dragObject, DragOptions options) {
            this.mDragObject = dragObject;
            ItemInfo itemInfo = dragObject.dragInfo;
            MLog.d(WidgetsTableSheet.TAG, "onDragStart: " + itemInfo);
            WidgetsTableSheet.this.notifyWidgetItemDragging(itemInfo, true);
        }

        @Override // com.android.launcher3.dragndrop.DragController.DragListener
        public void onDragEnd() {
            MLog.d(WidgetsTableSheet.TAG, "onDragEnd: ");
            final DropTarget.DragObject dragObject = this.mDragObject;
            if (dragObject != null) {
                if (dragObject.deferRemoveShadowView) {
                    WidgetsTableSheet.this.postDelayed(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m213xb8f80835(dragObject);
                        }
                    }, 350L);
                } else {
                    WidgetsTableSheet.this.notifyWidgetItemDragging(dragObject.dragInfo, false);
                }
            }
            this.mDragObject = null;
        }

        /* JADX INFO: renamed from: lambda$onDragEnd$0$com-android-launcher3-widget-WidgetsTableSheet$1, reason: not valid java name */
        /* synthetic */ void m213xb8f80835(DropTarget.DragObject dragObject) {
            WidgetsTableSheet.this.notifyWidgetItemDragging(dragObject.dragInfo, false);
        }
    }

    public WidgetsTableSheet(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WidgetsTableSheet(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mInsets = new Rect();
        this.mCurrentSelectedWidgetTable = 0;
        this.mCarPlayObserver = new Observer() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m199lambda$new$0$comandroidlauncher3widgetWidgetsTableSheet((Boolean) obj);
            }
        };
        this.mAndroidAutoObserver = new Observer() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda6
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m200lambda$new$1$comandroidlauncher3widgetWidgetsTableSheet((Boolean) obj);
            }
        };
        this.mDragListener = new AnonymousClass1();
        this.mTableController = new ItemViewMovementController.IWidgetTableDelegate() { // from class: com.android.launcher3.widget.WidgetsTableSheet.2
            private Paint mPaint = new Paint();

            @Override // com.android.launcher3.views.dragableviews.ItemViewMovementController.IWidgetTableDelegate
            public boolean isWidgetViewShow() {
                return WidgetsTableSheet.this.mCurrentSelectedWidgetTable == 0;
            }

            @Override // com.android.launcher3.views.dragableviews.ItemViewMovementController.IWidgetTableDelegate
            public void getTargetViewPosition(ItemInfo info, Consumer<Rect> consumer) {
                Rect rect;
                boolean z = WidgetsTableSheet.this.mCurrentSelectedWidgetTable == 0;
                WidgetsTableSheet widgetsTableSheet = WidgetsTableSheet.this;
                int i = z ? widgetsTableSheet.mWidgetItem2x1ItemHeight : widgetsTableSheet.mWidgetItem1x1ItemHeight;
                WidgetsTableSheet widgetsTableSheet2 = WidgetsTableSheet.this;
                int i2 = z ? widgetsTableSheet2.mWidgetItem2x1BottomSpace : widgetsTableSheet2.mWidgetItem1x1BottomSpace;
                WidgetsTableSheet widgetsTableSheet3 = WidgetsTableSheet.this;
                RecyclerView recyclerView = z ? widgetsTableSheet3.mRecyclerView2x1 : widgetsTableSheet3.mRecyclerView1x1;
                GridLayoutManager gridLayoutManager = z ? WidgetsTableSheet.this.mRecyclerLayoutManager2x1 : WidgetsTableSheet.this.mRecyclerLayoutManager1x1;
                WidgetsTableSheet widgetsTableSheet4 = WidgetsTableSheet.this;
                int iFindWidgetInfoPosition = WidgetsTableSheet.findWidgetInfoPosition(info, (z ? widgetsTableSheet4.mWidgetAdapter2x1 : widgetsTableSheet4.mWidgetAdapter1x1).mWidgetsList);
                int iFindFirstCompletelyVisibleItemPosition = gridLayoutManager.findFirstCompletelyVisibleItemPosition();
                int iFindLastCompletelyVisibleItemPosition = gridLayoutManager.findLastCompletelyVisibleItemPosition();
                MLog.e(WidgetsTableSheet.TAG, "findWidgetInfoPosition " + iFindWidgetInfoPosition + " firstCompVis=" + iFindFirstCompletelyVisibleItemPosition + " lastCompVis=" + iFindLastCompletelyVisibleItemPosition);
                GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
                int spanCount = gridLayoutManager.getSpanCount();
                int spanGroupIndex = spanSizeLookup.getSpanGroupIndex(iFindWidgetInfoPosition, spanCount);
                int[] iArr = new int[2];
                if (iFindWidgetInfoPosition < iFindFirstCompletelyVisibleItemPosition) {
                    int spanIndex = spanSizeLookup.getSpanIndex(iFindWidgetInfoPosition, spanCount);
                    int spanIndex2 = spanSizeLookup.getSpanIndex(iFindFirstCompletelyVisibleItemPosition, spanCount);
                    int spanGroupIndex2 = spanSizeLookup.getSpanGroupIndex(iFindFirstCompletelyVisibleItemPosition, spanCount);
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition((iFindFirstCompletelyVisibleItemPosition + spanIndex) - spanIndex2);
                    if (viewHolderFindViewHolderForAdapterPosition == null) {
                        consumer.accept(ItemViewMovementController.DEFAULT_EMPTY_LOCATION);
                        return;
                    }
                    int top = viewHolderFindViewHolderForAdapterPosition.itemView.getTop();
                    recyclerView.smoothScrollBy(0, -(((spanGroupIndex2 - spanGroupIndex) * (i + i2)) - top));
                    viewHolderFindViewHolderForAdapterPosition.itemView.getLocationOnScreen(iArr);
                    int i3 = iArr[0];
                    rect = new Rect(i3, iArr[1], viewHolderFindViewHolderForAdapterPosition.itemView.getWidth() + i3, iArr[1] + viewHolderFindViewHolderForAdapterPosition.itemView.getHeight());
                    rect.offset(0, -top);
                } else if (iFindWidgetInfoPosition > iFindLastCompletelyVisibleItemPosition) {
                    int spanIndex3 = spanSizeLookup.getSpanIndex(iFindWidgetInfoPosition, spanCount);
                    int spanIndex4 = spanSizeLookup.getSpanIndex(iFindLastCompletelyVisibleItemPosition, spanCount);
                    int spanGroupIndex3 = spanSizeLookup.getSpanGroupIndex(iFindLastCompletelyVisibleItemPosition, spanCount);
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = recyclerView.findViewHolderForAdapterPosition(iFindLastCompletelyVisibleItemPosition - (spanIndex4 - spanIndex3));
                    if (viewHolderFindViewHolderForAdapterPosition2 == null) {
                        consumer.accept(ItemViewMovementController.DEFAULT_EMPTY_LOCATION);
                        return;
                    }
                    int height = (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - viewHolderFindViewHolderForAdapterPosition2.itemView.getBottom();
                    recyclerView.smoothScrollBy(0, (((spanGroupIndex - spanGroupIndex3) * (i + i2)) - height) + i2);
                    viewHolderFindViewHolderForAdapterPosition2.itemView.getLocationOnScreen(iArr);
                    int i4 = iArr[0];
                    Rect rect2 = new Rect(i4, iArr[1], viewHolderFindViewHolderForAdapterPosition2.itemView.getWidth() + i4, iArr[1] + viewHolderFindViewHolderForAdapterPosition2.itemView.getHeight());
                    rect2.offset(0, height - i2);
                    rect = rect2;
                } else {
                    WidgetsTableItemViewHolder widgetsTableItemViewHolder = (WidgetsTableItemViewHolder) recyclerView.findViewHolderForAdapterPosition(iFindWidgetInfoPosition);
                    if (widgetsTableItemViewHolder == null) {
                        consumer.accept(ItemViewMovementController.DEFAULT_EMPTY_LOCATION);
                        return;
                    } else {
                        widgetsTableItemViewHolder.itemView.getLocationOnScreen(iArr);
                        int i5 = iArr[0];
                        rect = new Rect(i5, iArr[1], widgetsTableItemViewHolder.itemView.getWidth() + i5, iArr[1] + widgetsTableItemViewHolder.itemView.getHeight());
                    }
                }
                consumer.accept(rect);
            }

            @Override // com.android.launcher3.views.dragableviews.ItemViewMovementController.IWidgetTableDelegate
            public void setWidgetTableRenderFinishListener(Runnable listener) {
                WidgetsTableSheet.this.mRenderFinishListener = listener;
            }

            @Override // com.android.launcher3.views.dragableviews.ItemViewMovementController.IWidgetTableDelegate
            public void notifyWidgetItemRemoved(ItemInfo info) {
                WidgetsTableSheet.this.notifyWidgetItemRemoved(info);
            }

            @Override // com.android.launcher3.views.dragableviews.ItemViewMovementController.IWidgetTableDelegate
            public void updateHardwareLayerType(int type) {
                WidgetsTableSheet.this.setLayerType(0, this.mPaint);
            }
        };
        LauncherAppState launcherAppState = LauncherAppState.getInstance(context);
        this.mWidgetAdapter1x1 = new WidgetsTable1x1Adapter(context, LayoutInflater.from(context), launcherAppState.getWidgetCache(), launcherAppState.getIconCache(), this, this);
        this.mWidgetAdapter2x1 = new WidgetsTable2x1Adapter(context, LayoutInflater.from(context), launcherAppState.getWidgetCache(), launcherAppState.getIconCache(), this, this);
        this.mWidgetItem1x1BottomSpace = (int) getResources().getDimension(R.dimen.widget_table_recycler_item_margin_bottom);
        this.mWidgetItem1x1ItemHeight = getResources().getDimensionPixelSize(R.dimen.widget_item_1x1_height);
        this.mWidgetItem2x1BottomSpace = (int) getResources().getDimension(R.dimen.widget_table_recycler_2x1_item_margin_bottom);
        this.mWidgetItem2x1ItemHeight = getResources().getDimensionPixelSize(R.dimen.widget_item_2x1_height);
    }

    public static WidgetsTableSheet show(Launcher launcher, boolean animate) {
        WidgetsTableSheet widgetsTableSheet = (WidgetsTableSheet) launcher.getLayoutInflater().inflate(R.layout.widgets_table_sheet, (ViewGroup) launcher.getDragLayer(), false);
        MLog.d(TAG, "show() called.");
        widgetsTableSheet.attachToContainer();
        widgetsTableSheet.mIsOpen = true;
        widgetsTableSheet.open(animate);
        return widgetsTableSheet;
    }

    @Override // com.android.launcher3.views.AbstractFadeInView
    protected void attachToContainer() {
        if (this.mColorScrim != null) {
            getPopupContainer().addView(this.mColorScrim);
        }
        getPopupContainer().addView(this, getPopupContainer().indexOfChild(Launcher.sLauncher.getDragLayer().findViewById(R.id.workspace)));
    }

    public static <T extends ItemInfo> boolean hasSameWidgetInfo(ItemInfo info, ArrayList<T> infos) {
        if (info instanceof PendingAddShortcutInfo) {
            PendingAddShortcutInfo pendingAddShortcutInfo = (PendingAddShortcutInfo) info;
            for (T t : infos) {
                if (t.itemType == pendingAddShortcutInfo.itemType && pendingAddShortcutInfo.componentName.equals(t.getIntent().getComponent())) {
                    return true;
                }
            }
            return false;
        }
        if (!(info instanceof PendingAddWidgetInfo)) {
            return false;
        }
        PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) info;
        for (T t2 : infos) {
            if (t2 instanceof LauncherAppWidgetInfo) {
                LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) t2;
                if (launcherAppWidgetInfo.itemType == pendingAddWidgetInfo.itemType && pendingAddWidgetInfo.componentName.equals(launcherAppWidgetInfo.providerName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isSameWith(ItemInfo info, ItemInfo other) {
        if (info instanceof PendingAddShortcutInfo) {
            PendingAddShortcutInfo pendingAddShortcutInfo = (PendingAddShortcutInfo) info;
            return other.itemType == pendingAddShortcutInfo.itemType && pendingAddShortcutInfo.componentName.equals(other.getTargetComponent());
        }
        if (!(info instanceof PendingAddWidgetInfo)) {
            return false;
        }
        PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) info;
        return other.itemType == pendingAddWidgetInfo.itemType && pendingAddWidgetInfo.componentName.equals(other.getTargetComponent());
    }

    public static int findWidgetInfoPosition(ItemInfo info, List<WidgetItem> infos) {
        int i = 0;
        if (info instanceof WorkspaceItemInfo) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) info;
            while (i < infos.size()) {
                if (!workspaceItemInfo.getIntent().getComponent().equals(infos.get(i).componentName)) {
                    i++;
                }
            }
            return -1;
        }
        if (info instanceof LauncherAppWidgetInfo) {
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) info;
            while (i < infos.size()) {
                if (!launcherAppWidgetInfo.providerName.equals(infos.get(i).widgetInfo.provider)) {
                    i++;
                }
            }
            return -1;
        }
        if (info instanceof PendingAddShortcutInfo) {
            ComponentName targetComponent = ((PendingAddShortcutInfo) info).appInfo.getTargetComponent();
            while (i < infos.size()) {
                if (!Objects.equals(targetComponent, infos.get(i).componentName)) {
                    i++;
                }
            }
            return -1;
        }
        if (!(info instanceof PendingAddWidgetInfo)) {
            return -1;
        }
        ComponentName targetComponent2 = ((PendingAddWidgetInfo) info).getTargetComponent();
        while (i < infos.size()) {
            if (!Objects.equals(targetComponent2, infos.get(i).widgetInfo.provider)) {
                i++;
            }
        }
        return -1;
        return i;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = findViewById(R.id.container);
        TextView textView = (TextView) findViewById(R.id.ib_widget_1x1);
        this.mTvWidget1x1 = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m203xed5df519(view);
            }
        });
        TextView textView2 = (TextView) findViewById(R.id.ib_widget_2x1);
        this.mTvWidget2x1 = textView2;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m204x272896f8(view);
            }
        });
        ((Button) findViewById(R.id.btn_widget_finish)).setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m205x60f338d7(view);
            }
        });
        this.mRecyclerView1x1 = (RecyclerView) findViewById(R.id.rv_widgets_1x1);
        this.mRecyclerView2x1 = (RecyclerView) findViewById(R.id.rv_widgets_2x1);
        setupViewPager();
        updateSelectedByTab(false);
    }

    /* JADX INFO: renamed from: lambda$onFinishInflate$2$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m203xed5df519(View view) {
        if (this.mCurrentSelectedWidgetTable != 1) {
            this.mCurrentSelectedWidgetTable = 1;
            updateSelectedByTab(true);
        }
    }

    /* JADX INFO: renamed from: lambda$onFinishInflate$3$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m204x272896f8(View view) {
        if (this.mCurrentSelectedWidgetTable != 0) {
            this.mCurrentSelectedWidgetTable = 0;
            updateSelectedByTab(true);
        }
    }

    /* JADX INFO: renamed from: lambda$onFinishInflate$4$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m205x60f338d7(View view) {
        close(true);
    }

    private void setupViewPager() {
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 5);
        this.mRecyclerLayoutManager1x1 = gridLayoutManager;
        gridLayoutManager.setUsingSpansToEstimateScrollbarDimensions(true);
        this.mRecyclerView1x1.setLayoutManager(this.mRecyclerLayoutManager1x1);
        this.mRecyclerView1x1.addItemDecoration(new WidgetsTable1x1ItemDecoration(getContext()));
        this.mRecyclerView1x1.setAdapter(this.mWidgetAdapter1x1);
        GridLayoutManager gridLayoutManager2 = new GridLayoutManager(getContext(), 3);
        this.mRecyclerLayoutManager2x1 = gridLayoutManager2;
        gridLayoutManager2.setUsingSpansToEstimateScrollbarDimensions(true);
        this.mRecyclerView2x1.setLayoutManager(this.mRecyclerLayoutManager2x1);
        this.mRecyclerView2x1.addItemDecoration(new WidgetsTable2x1ItemDecoration(getContext()));
        this.mRecyclerView2x1.setAdapter(this.mWidgetAdapter2x1);
        this.mWidgetAdapter1x1.setApplyBitmapDeferred(true, this.mRecyclerView1x1);
        this.mWidgetAdapter2x1.setApplyBitmapDeferred(true, this.mRecyclerView2x1);
    }

    private void updateSelectedByTab(boolean animate) {
        int color;
        int color2;
        MLog.d(TAG, "updateSelectedByTab: " + this.mCurrentSelectedWidgetTable);
        int i = this.mCurrentSelectedWidgetTable;
        if (i == 0) {
            if (animate) {
                this.mRecyclerView1x1.animate().alpha(0.0f).setDuration(50L).withEndAction(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m211xd55ccd91();
                    }
                }).start();
                this.mRecyclerView2x1.setTranslationX(-100.0f);
                this.mRecyclerView2x1.setAlpha(0.0f);
                this.mRecyclerView2x1.setVisibility(0);
                this.mRecyclerView2x1.animate().translationX(0.0f).alpha(1.0f).setDuration(300L).start();
            } else {
                this.mRecyclerView1x1.animate().cancel();
                this.mRecyclerView2x1.animate().cancel();
                this.mRecyclerView1x1.setVisibility(8);
                this.mRecyclerView2x1.setVisibility(0);
            }
        } else if (i == 1) {
            if (animate) {
                this.mRecyclerView2x1.animate().alpha(0.0f).setDuration(50L).withEndAction(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m212xf276f70();
                    }
                }).start();
                this.mRecyclerView1x1.setTranslationX(100.0f);
                this.mRecyclerView1x1.setAlpha(0.0f);
                this.mRecyclerView1x1.setVisibility(0);
                this.mRecyclerView1x1.animate().translationX(0.0f).alpha(1.0f).setDuration(300L).start();
            } else {
                this.mRecyclerView1x1.animate().cancel();
                this.mRecyclerView2x1.animate().cancel();
                this.mRecyclerView1x1.setVisibility(0);
                this.mRecyclerView2x1.setVisibility(8);
            }
        }
        TextView textView = this.mTvWidget1x1;
        if (this.mCurrentSelectedWidgetTable == 1) {
            color = getResources().getColor(R.color.widget_sheet_tab_selected);
        } else {
            color = getResources().getColor(R.color.widget_sheet_tab_unselected);
        }
        textView.setTextColor(color);
        TextView textView2 = this.mTvWidget2x1;
        if (this.mCurrentSelectedWidgetTable == 0) {
            color2 = getResources().getColor(R.color.widget_sheet_tab_selected);
        } else {
            color2 = getResources().getColor(R.color.widget_sheet_tab_unselected);
        }
        textView2.setTextColor(color2);
    }

    /* JADX INFO: renamed from: lambda$updateSelectedByTab$5$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m211xd55ccd91() {
        this.mRecyclerView1x1.setVisibility(8);
    }

    /* JADX INFO: renamed from: lambda$updateSelectedByTab$6$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m212xf276f70() {
        this.mRecyclerView2x1.setVisibility(8);
    }

    private void updateSelectedBySwipe(int page) {
        int color;
        int color2;
        if (page == 0) {
            this.mCurrentSelectedWidgetTable = 0;
        }
        if (page == 1) {
            this.mCurrentSelectedWidgetTable = 1;
        }
        TextView textView = this.mTvWidget1x1;
        if (this.mCurrentSelectedWidgetTable == 1) {
            color = getResources().getColor(R.color.widget_sheet_tab_selected);
        } else {
            color = getResources().getColor(R.color.widget_sheet_tab_unselected);
        }
        textView.setTextColor(color);
        TextView textView2 = this.mTvWidget2x1;
        if (this.mCurrentSelectedWidgetTable == 0) {
            color2 = getResources().getColor(R.color.widget_sheet_tab_selected);
        } else {
            color2 = getResources().getColor(R.color.widget_sheet_tab_unselected);
        }
        textView2.setTextColor(color2);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    protected Pair<View, String> getAccessibilityTarget() {
        return Pair.create(this.mRecyclerView1x1, getContext().getString(this.mIsOpen ? R.string.widgets_list : R.string.widgets_list_closed));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MLog.d(TAG, "onAttachedToWindow: ");
        this.mLauncher.getPopupDataProvider().setChangeListener(this);
        this.mLauncher.getAppWidgetHost().addProviderChangeListener(this);
        notifyWidgetProvidersChanged();
        this.mLauncher.getStateManager().goToState(LauncherState.WIDGET_SPRING_LOADED);
        this.mLauncher.getStateManager().addStateListener(this);
        ItemViewMovementController.getInstance().setWidgetTable(this.mTableController);
        observeAndroidAuto();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MLog.d(TAG, "onDetachedFromWindow: ");
        ItemViewMovementController.getInstance().setWidgetTable(null);
        this.mLauncher.getPopupDataProvider().setChangeListener(null);
        this.mLauncher.getAppWidgetHost().removeProviderChangeListener(this);
        this.mLauncher.getStateManager().removeStateListener(this);
        if (this.mLauncher.isInState(LauncherState.WIDGET_SPRING_LOADED)) {
            this.mLauncher.getStateManager().goToState(LauncherState.NORMAL);
        }
        removeAndroidAutoObserver();
    }

    private void observeAndroidAuto() {
        LinkManagerKt.getLinkManager(getContext()).getCarPlayState().observeForever(this.mCarPlayObserver);
        LinkManagerKt.getLinkManager(getContext()).getAndroidAutoState().observeForever(this.mAndroidAutoObserver);
    }

    private void removeAndroidAutoObserver() {
        LinkManagerKt.getLinkManager(getContext()).getCarPlayState().removeObserver(this.mCarPlayObserver);
        LinkManagerKt.getLinkManager(getContext()).getAndroidAutoState().removeObserver(this.mAndroidAutoObserver);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(KEY_SUPER_STATE, super.onSaveInstanceState());
        bundle.putInt(KEY_CURRENT_SELECTED_WIDGET_TABLE, this.mCurrentSelectedWidgetTable);
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (state instanceof Bundle) {
            Bundle bundle = (Bundle) state;
            super.onRestoreInstanceState(bundle.getParcelable(KEY_SUPER_STATE));
            int i = bundle.getInt(KEY_CURRENT_SELECTED_WIDGET_TABLE);
            if (this.mCurrentSelectedWidgetTable != i) {
                this.mCurrentSelectedWidgetTable = i;
                updateSelectedByTab(false);
                return;
            }
            return;
        }
        super.onRestoreInstanceState(state);
    }

    protected void clearNavBarColor() {
        this.mLauncher.getSystemUiController().updateUiState(2, 0);
    }

    protected void setupNavBarColor() {
        this.mLauncher.getSystemUiController().updateUiState(2, Themes.getAttrBoolean(getContext(), R.attr.isMainColorDark) ? 2 : 1);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int iMax;
        if (this.mInsets.bottom > 0) {
            iMax = this.mInsets.left + this.mInsets.right;
        } else {
            Rect rect = this.mLauncher.getDeviceProfile().workspacePadding;
            iMax = Math.max(rect.left + rect.right, (this.mInsets.left + this.mInsets.right) * 2);
        }
        measureChildWithMargins(this.mContent, widthMeasureSpec, iMax, heightMeasureSpec, this.mInsets.top + this.mLauncher.getDeviceProfile().edgeMarginPx);
        setMeasuredDimension(View.MeasureSpec.getSize(widthMeasureSpec), View.MeasureSpec.getSize(heightMeasureSpec));
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int measuredWidth = this.mContent.getMeasuredWidth();
        int i = (((((r - l) - measuredWidth) - this.mInsets.left) - this.mInsets.right) / 2) + this.mInsets.left;
        this.mContent.layout(i, 0, measuredWidth + i, b - t);
        setTranslationShift(this.mTranslationShift);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(ev);
        TestLogging.noteLauncherTouch(this, "dispatchTouchEvent", ev, "handled=" + zDispatchTouchEvent);
        return zDispatchTouchEvent;
    }

    @Override // com.android.launcher3.LauncherAppWidgetHost.ProviderChangedListener
    public void notifyWidgetProvidersChanged() {
        this.mLauncher.refreshAndBindWidgetsForPackageUser(null);
    }

    @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    public void onWidgetsBound(boolean updateAppsOnly) {
        this.mWidgetAdapter1x1.setWidgets(this.mLauncher.getPopupDataProvider().getAllWidgets());
        if (!updateAppsOnly) {
            this.mWidgetAdapter2x1.setWidgets(this.mLauncher.getPopupDataProvider().getAllWidgets());
        }
        Runnable runnable = this.mRenderFinishListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    private void open(boolean animate) {
        MLog.d(TAG, "open() called with: animate = [" + animate + "]");
        if (animate) {
            if (getPopupContainer().getInsets().bottom > 0) {
                this.mContent.setAlpha(0.0f);
                setTranslationShift(0.3f);
            }
            this.mOpenCloseAnimator.setValues(PropertyValuesHolder.ofFloat(TRANSLATION_SHIFT, 0.0f));
            this.mOpenCloseAnimator.setDuration(DEFAULT_OPEN_DURATION).setInterpolator(AnimationUtils.loadInterpolator(getContext(), 17563662));
            this.mRecyclerView1x1.setLayoutFrozen(true);
            this.mOpenCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.widget.WidgetsTableSheet.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    WidgetsTableSheet.this.mRecyclerView1x1.setLayoutFrozen(false);
                    WidgetsTableSheet.this.mWidgetAdapter1x1.setApplyBitmapDeferred(false, WidgetsTableSheet.this.mRecyclerView1x1);
                    WidgetsTableSheet.this.mWidgetAdapter2x1.setApplyBitmapDeferred(false, WidgetsTableSheet.this.mRecyclerView2x1);
                    WidgetsTableSheet.this.mOpenCloseAnimator.removeListener(this);
                }
            });
            post(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m210lambda$open$7$comandroidlauncher3widgetWidgetsTableSheet();
                }
            });
        } else {
            setTranslationShift(0.0f);
            this.mWidgetAdapter1x1.setApplyBitmapDeferred(false, this.mRecyclerView1x1);
            this.mWidgetAdapter2x1.setApplyBitmapDeferred(false, this.mRecyclerView2x1);
            post(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.announceAccessibilityChanges();
                }
            });
        }
        Launcher.getLauncher(getContext()).getDragController().removeDragListener(this.mDragListener);
        Launcher.getLauncher(getContext()).getDragController().addDragListener(this.mDragListener);
    }

    /* JADX INFO: renamed from: lambda$open$7$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m210lambda$open$7$comandroidlauncher3widgetWidgetsTableSheet() {
        this.mOpenCloseAnimator.start();
        this.mContent.animate().alpha(1.0f).setDuration(150L);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    protected void handleClose(boolean animate) {
        MLog.d(TAG, "close: animate=" + animate + " " + Utilities.getStackTraceSingleLine(new Throwable()));
        handleClose(animate, DEFAULT_OPEN_DURATION);
        Launcher.getLauncher(getContext()).getDragController().removeDragListener(this.mDragListener);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void addHintCloseAnim(float distanceToMove, Interpolator interpolator, PendingAnimation target) {
        target.setFloat(this.mRecyclerView1x1, LauncherAnimUtils.VIEW_TRANSLATE_Y, -distanceToMove, interpolator);
        target.setViewAlpha(this.mRecyclerView1x1, 0.5f, interpolator);
    }

    @Override // com.android.launcher3.views.AbstractFadeInView
    protected void onCloseComplete() {
        super.onCloseComplete();
        clearNavBarColor();
        AccessibilityManagerCompat.sendStateEventToTest(getContext(), 0);
        this.mWidgetAdapter2x1.onClosed(getContext());
    }

    @Override // com.android.launcher3.widget.WidgetsTable1x1Adapter.OnItemClickListener
    public void onItemClick(final View view, final int position) {
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        MLog.d(TAG, "onItemClick: " + itemInfo);
        final int[] iArr = new int[2];
        if (checkWidgetExist(itemInfo)) {
            return;
        }
        final int iFindSpaceOnInfiniteWorkspace = this.mLauncher.getAccessibilityDelegate().findSpaceOnInfiniteWorkspace(itemInfo, iArr);
        MLog.d(TAG, "onClick() called with: screenId = [" + iFindSpaceOnInfiniteWorkspace + "], item=" + itemInfo);
        if (iFindSpaceOnInfiniteWorkspace < 0) {
            ToastViewUtils.makeText(this.mLauncher, this.mLauncher.getString(R.string.txt_cant_add_new_screen_tips), 3000L).show();
            return;
        }
        if (itemInfo instanceof PendingAddShortcutInfo) {
            final WorkspaceItemInfo workspaceItemInfoMakeWorkspaceItem = ((PendingAddShortcutInfo) itemInfo).appInfo.makeWorkspaceItem();
            final Workspace workspace = this.mLauncher.getWorkspace();
            workspace.post(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m206x5ed9adb5(workspaceItemInfoMakeWorkspaceItem, iFindSpaceOnInfiniteWorkspace, iArr, workspace, view, position);
                }
            });
        } else if (itemInfo instanceof PendingAddItemInfo) {
            final PendingAddItemInfo pendingAddItemInfo = (PendingAddItemInfo) itemInfo;
            final Workspace workspace2 = this.mLauncher.getWorkspace();
            workspace2.post(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m208xd26ef173(workspace2, iFindSpaceOnInfiniteWorkspace, pendingAddItemInfo, iArr, view, position);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$onItemClick$10$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m206x5ed9adb5(WorkspaceItemInfo workspaceItemInfo, int i, int[] iArr, Workspace workspace, View view, final int i2) {
        this.mLauncher.getModelWriter().addItemToDatabase(workspaceItemInfo, -100, i, iArr[0], iArr[1]);
        workspaceItemInfo.runtime.putLong(ItemInfo.RT_SHOW_DELAY, 200L);
        ArrayList arrayList = new ArrayList();
        arrayList.add(workspaceItemInfo);
        workspace.snapToPage(workspace.getPageIndexForScreenId(i));
        this.mLauncher.bindItems(arrayList, true);
        ItemViewMovementController.getInstance().handleViewMovement(view, false, null);
        delayToRunMainTask(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m209xf9954211(i2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onItemClick$9$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m209xf9954211(int i) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(WidgetsTable1x1Adapter.WIDGET_EXIST, true);
        this.mWidgetAdapter1x1.notifyItemChanged(i, bundle);
    }

    /* JADX INFO: renamed from: lambda$onItemClick$12$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m208xd26ef173(Workspace workspace, int i, PendingAddItemInfo pendingAddItemInfo, int[] iArr, View view, final int i2) {
        workspace.snapToPage(workspace.getPageIndexForScreenId(i));
        pendingAddItemInfo.runtime.putLong(ItemInfo.RT_SHOW_DELAY, 200L);
        this.mLauncher.addPendingItem(pendingAddItemInfo, -100, i, iArr, pendingAddItemInfo.spanX, pendingAddItemInfo.spanY);
        ItemViewMovementController.getInstance().handleViewMovement(view, false, null);
        delayToRunMainTask(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m207x98a44f94(i2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onItemClick$11$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m207x98a44f94(int i) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(WidgetsTable1x1Adapter.WIDGET_EXIST, true);
        this.mWidgetAdapter2x1.notifyItemChanged(i, bundle);
    }

    private boolean checkWidgetExist(ItemInfo item) {
        if (item.itemType == 0) {
            if (!hasSameWidgetInfo(item, this.mLauncher.getModel().getBgDataModel().workspaceItems)) {
                return false;
            }
            MLog.d(TAG, "checkWidgetExist: item already added to workspace =" + item);
            ToastViewUtils.makeText(this.mLauncher, this.mLauncher.getString(R.string.txt_shortcut_already_exists), 3000L).show();
            return true;
        }
        if (item.itemType != 4 || !hasSameWidgetInfo(item, this.mLauncher.getModel().getBgDataModel().appWidgets)) {
            return false;
        }
        MLog.d(TAG, "checkWidgetExist: item already added to workspace =" + item);
        ToastViewUtils.makeText(this.mLauncher, this.mLauncher.getString(R.string.txt_shortcut_already_exists), 3000L).show();
        return true;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View v) {
        TestLogging.recordEvent(TestProtocol.SEQUENCE_MAIN, "Widgets.onLongClick");
        v.cancelLongPress();
        if (!ItemLongClickListener.canStartDrag(this.mLauncher)) {
            return false;
        }
        Object tag = v.getTag();
        if (!(tag instanceof ItemInfo)) {
            MLog.w(TAG, "onLongClick: not an itemInfo " + tag);
            return false;
        }
        ItemInfo itemInfo = (ItemInfo) tag;
        MLog.d(TAG, "onLongClick: item=" + itemInfo);
        if (checkWidgetExist(itemInfo)) {
            return false;
        }
        if (v instanceof WidgetCell) {
            return beginDraggingWidget((WidgetCell) v);
        }
        return true;
    }

    private boolean beginDraggingWidget(WidgetCell v) {
        MLog.d(TAG, "beginDraggingWidget() called with: v = [" + v + "]");
        if (handleLiveWidget(v)) {
            return true;
        }
        WidgetImageView widgetView = v.getWidgetView();
        Bitmap bitmap = widgetView.getBitmap();
        if (bitmap == null) {
            return false;
        }
        int[] iArr = new int[2];
        getPopupContainer().getLocationInDragLayer(widgetView, iArr);
        Rect bitmapBounds = widgetView.getBitmapBounds();
        int iWidth = (int) (bitmapBounds.width() * 1.5f);
        new PendingItemDragHelper(v).startDrag(bitmapBounds, iWidth, widgetView.getWidth(), new Point(iArr[0], iArr[1]), this, new DragOptions(), Bitmap.createScaledBitmap(bitmap, iWidth, iWidth, false));
        return true;
    }

    private boolean handleLiveWidget(WidgetCell widgetCell) {
        LauncherAppWidgetHostView launcherAppWidgetHostView;
        View childAt;
        LiveWidgetContainer liveWidgetContainer = widgetCell.getLiveWidgetContainer();
        if (liveWidgetContainer == null) {
            return false;
        }
        View childAt2 = liveWidgetContainer.getChildAt(0);
        if (!(childAt2 instanceof LauncherAppWidgetHostView) || (childAt = (launcherAppWidgetHostView = (LauncherAppWidgetHostView) childAt2).getChildAt(0)) == null) {
            return false;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(childAt.getWidth(), childAt.getHeight(), Bitmap.Config.ARGB_8888);
        childAt.draw(new Canvas(bitmapCreateBitmap));
        int[] iArr = new int[2];
        getPopupContainer().getLocationInDragLayer(launcherAppWidgetHostView, iArr);
        new PendingItemDragHelper(widgetCell).startDrag(new Rect(0, 0, launcherAppWidgetHostView.getWidth(), launcherAppWidgetHostView.getHeight()), bitmapCreateBitmap.getWidth(), launcherAppWidgetHostView.getWidth(), new Point(iArr[0], iArr[1]), this, new DragOptions(), bitmapCreateBitmap);
        return true;
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View target, DropTarget.DragObject d, boolean success) {
        ItemInfo itemInfo = d.dragInfo;
        MLog.d(TAG, "onDropCompleted: success=" + success + "dragInfo=" + d.dragInfo);
        if (itemInfo != null && success) {
            notifyWidgetItemAddToWorkspace(itemInfo);
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionStart(LauncherState toState) {
        MLog.d(TAG, "onStateTransitionStart: toState=" + toState);
        if (toState != LauncherState.WIDGET_SPRING_LOADED) {
            close(false);
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(LauncherState finalState) {
        MLog.d(TAG, "onStateTransitionComplete: finalState=" + finalState);
    }

    public void notifyWidgetItemAddToWorkspace(final ItemInfo itemInfo) {
        MLog.d(TAG, "notifyWidgetItemAddToWorkspace: itemInfo=" + itemInfo);
        notifyWidgetItemChanged(itemInfo, true);
    }

    public void notifyWidgetItemRemoved(final ItemInfo itemInfo) {
        MLog.d(TAG, "notifyWidgetItemRemoved: itemInfo = [" + itemInfo + "]");
        notifyWidgetItemChanged(itemInfo, false);
    }

    public void notifyWidgetItemChanged(final ItemInfo itemInfo, final boolean added) {
        MLog.d(TAG, "notifyWidgetItemAddToWorkspace: itemInfo=" + itemInfo);
        if (itemInfo.itemType == 4) {
            final int iFindWidgetInfoPosition = findWidgetInfoPosition(itemInfo, this.mWidgetAdapter2x1.mWidgetsList);
            MLog.d(TAG, "notifyWidgetItemAddToWorkspace() position:" + iFindWidgetInfoPosition);
            if (iFindWidgetInfoPosition >= 0) {
                delayToRunMainTask(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m201xb448cb30(added, iFindWidgetInfoPosition);
                    }
                });
                return;
            }
            return;
        }
        if (itemInfo.itemType == 0) {
            final int iFindWidgetInfoPosition2 = findWidgetInfoPosition(itemInfo, this.mWidgetAdapter1x1.mWidgetsList);
            MLog.d(TAG, "notifyWidgetItemAddToWorkspace() ITEM_TYPE_APPLICATION position:" + iFindWidgetInfoPosition2);
            if (iFindWidgetInfoPosition2 >= 0) {
                delayToRunMainTask(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTableSheet$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m202xee136d0f(added, iFindWidgetInfoPosition2);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: lambda$notifyWidgetItemChanged$13$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m201xb448cb30(boolean z, int i) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(WidgetsTable1x1Adapter.WIDGET_EXIST, z);
        this.mWidgetAdapter2x1.notifyItemChanged(i, bundle);
    }

    /* JADX INFO: renamed from: lambda$notifyWidgetItemChanged$14$com-android-launcher3-widget-WidgetsTableSheet, reason: not valid java name */
    /* synthetic */ void m202xee136d0f(boolean z, int i) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(WidgetsTable1x1Adapter.WIDGET_EXIST, z);
        this.mWidgetAdapter1x1.notifyItemChanged(i, bundle);
    }

    public void notifyWidgetItemDragging(ItemInfo itemInfo, boolean dragging) {
        MLog.d(TAG, "notifyWidgetItemDragging: dragging=" + dragging + " itemInfo=" + itemInfo);
        if (itemInfo == null) {
            return;
        }
        if (itemInfo.itemType == 4) {
            int iFindWidgetInfoPosition = findWidgetInfoPosition(itemInfo, this.mWidgetAdapter2x1.mWidgetsList);
            MLog.d(TAG, "notifyWidgetItemDragging: position=" + iFindWidgetInfoPosition);
            WidgetsTable2x1Adapter widgetsTable2x1Adapter = this.mWidgetAdapter2x1;
            if (!dragging) {
                itemInfo = null;
            }
            widgetsTable2x1Adapter.setDraggingInfo(itemInfo);
            if (iFindWidgetInfoPosition >= 0) {
                this.mWidgetAdapter2x1.notifyItemChanged(iFindWidgetInfoPosition);
                return;
            }
            return;
        }
        if (itemInfo.itemType == 0) {
            int iFindWidgetInfoPosition2 = findWidgetInfoPosition(itemInfo, this.mWidgetAdapter1x1.mWidgetsList);
            MLog.d(TAG, "notifyWidgetItemDragging: position=" + iFindWidgetInfoPosition2);
            WidgetsTable1x1Adapter widgetsTable1x1Adapter = this.mWidgetAdapter1x1;
            if (!dragging) {
                itemInfo = null;
            }
            widgetsTable1x1Adapter.setDraggingInfo(itemInfo);
            if (iFindWidgetInfoPosition2 >= 0) {
                this.mWidgetAdapter1x1.notifyItemChanged(iFindWidgetInfoPosition2);
            }
        }
    }

    private void delayToRunMainTask(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    private static class PagerViewHolder extends RecyclerView.ViewHolder {
        public PagerViewHolder(View itemView) {
            super(itemView);
        }
    }

    private static class PagerViewAdapter extends RecyclerView.Adapter<PagerViewHolder> {
        private static final int TYPE_APP_ICON = 1;
        private static final int TYPE_APP_WIDGET = 0;
        private final View mAppWidgetView;
        private final View mIconView;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return position == 0 ? 0 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(PagerViewHolder holder, int position) {
        }

        public PagerViewAdapter(View appWidget, View icon) {
            this.mAppWidgetView = appWidget;
            this.mIconView = icon;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public PagerViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            if (viewType == 0) {
                return new PagerViewHolder(this.mAppWidgetView);
            }
            return new PagerViewHolder(this.mIconView);
        }
    }
}
