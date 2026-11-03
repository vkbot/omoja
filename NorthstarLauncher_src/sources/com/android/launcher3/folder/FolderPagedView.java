package com.android.launcher3.folder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewDebug;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.PagedView;
import com.android.launcher3.R;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pageindicators.PageIndicatorDots;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.util.ViewCache;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class FolderPagedView extends PagedView<PageIndicatorDots> {
    private static final int REORDER_ANIMATION_DURATION = 230;
    private static final float SCROLL_HINT_FRACTION = 0.07f;
    private static final int START_VIEW_REORDER_DELAY = 30;
    private static final String TAG = "FolderPagedView";
    private static final float VIEW_REORDER_DELAY_FACTOR = 0.9f;
    private static final int[] sTmpArray = new int[2];
    private int mAllocatedContentSize;
    private final ViewGroupFocusHelper mFocusIndicatorHelper;
    private Folder mFolder;

    @ViewDebug.ExportedProperty(category = "launcher")
    private int mGridCountX;

    @ViewDebug.ExportedProperty(category = "launcher")
    private int mGridCountY;
    public final boolean mIsRtl;
    private final FolderGridOrganizer mOrganizer;
    final ArrayMap<View, Runnable> mPendingAnimations;
    private final ViewCache mViewCache;
    private boolean mViewsBound;

    static /* synthetic */ int lambda$getFirstItem$0(ShortcutAndWidgetContainer shortcutAndWidgetContainer) {
        return 0;
    }

    public boolean areViewsBound() {
        return this.mViewsBound;
    }

    public int getAllocatedContentSize() {
        return this.mAllocatedContentSize;
    }

    public FolderPagedView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mPendingAnimations = new ArrayMap<>();
        this.mViewsBound = false;
        this.mOrganizer = new FolderGridOrganizer(LauncherAppState.getIDP(context));
        this.mIsRtl = Utilities.isRtl(getResources());
        setImportantForAccessibility(1);
        this.mFocusIndicatorHelper = new ViewGroupFocusHelper(this);
        this.mViewCache = BaseActivity.fromContext(context).getViewCache();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T extends android.view.View & com.android.launcher3.pageindicators.PageIndicator, android.view.View] */
    public void setFolder(Folder folder) {
        this.mFolder = folder;
        this.mPageIndicator = folder.findViewById(R.id.folder_page_indicator);
        initParentViews(folder);
    }

    private void setupContentDimensions(int count) {
        this.mAllocatedContentSize = count;
        this.mOrganizer.setContentSize(count);
        this.mGridCountX = this.mOrganizer.getCountX();
        this.mGridCountY = this.mOrganizer.getCountY();
        for (int pageCount = getPageCount() - 1; pageCount >= 0; pageCount--) {
            getPageAt(pageCount).setGridSize(this.mGridCountX, this.mGridCountY);
        }
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.mFocusIndicatorHelper.draw(canvas);
        super.dispatchDraw(canvas);
    }

    public void bindItems(List<WorkspaceItemInfo> items) {
        if (this.mViewsBound) {
            unbindItems();
        }
        arrangeChildren((List) items.stream().map(new Function() { // from class: com.android.launcher3.folder.FolderPagedView$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.createNewView((WorkspaceItemInfo) obj);
            }
        }).collect(Collectors.toList()));
        this.mViewsBound = true;
    }

    public void unbindItems() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount >= 0) {
                CellLayout cellLayout = (CellLayout) getChildAt(childCount);
                ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
                for (int childCount2 = shortcutsAndWidgets.getChildCount() - 1; childCount2 >= 0; childCount2--) {
                    shortcutsAndWidgets.getChildAt(childCount2).setVisibility(0);
                    this.mViewCache.recycleView(R.layout.folder_application, shortcutsAndWidgets.getChildAt(childCount2));
                }
                cellLayout.removeAllViews();
                this.mViewCache.recycleView(R.layout.folder_page, cellLayout);
            } else {
                removeAllViews();
                this.mViewsBound = false;
                return;
            }
        }
    }

    public View createAndAddViewForRank(WorkspaceItemInfo item, int rank) {
        View viewCreateNewView = createNewView(item);
        if (!this.mViewsBound) {
            return viewCreateNewView;
        }
        ArrayList arrayList = new ArrayList(this.mFolder.getIconsInReadingOrder());
        arrayList.add(rank, viewCreateNewView);
        arrangeChildren(arrayList);
        return viewCreateNewView;
    }

    public void addViewForRank(View view, WorkspaceItemInfo item, int rank) {
        int maxItemsPerPage = rank / this.mOrganizer.getMaxItemsPerPage();
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        layoutParams.setXY(this.mOrganizer.getPosForRank(rank));
        getPageAt(maxItemsPerPage).addViewToCellLayout(view, -1, item.getViewId(), layoutParams, true);
    }

    public View createNewView(WorkspaceItemInfo item) {
        if (item == null) {
            return null;
        }
        MLog.d(TAG, "createNewView() called with: item = [" + item + "]");
        BubbleTextView bubbleTextView = (BubbleTextView) this.mViewCache.getView(R.layout.folder_application, getContext(), null);
        bubbleTextView.applyFromWorkspaceItem(item);
        bubbleTextView.setOnClickListener(ItemClickHandler.INSTANCE);
        bubbleTextView.setOnLongClickListener(this.mFolder);
        bubbleTextView.setOnFocusChangeListener(this.mFocusIndicatorHelper);
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) bubbleTextView.getLayoutParams();
        if (layoutParams == null) {
            bubbleTextView.setLayoutParams(new CellLayout.LayoutParams(item.cellX, item.cellY, item.spanX, item.spanY));
        } else {
            layoutParams.cellX = item.cellX;
            layoutParams.cellY = item.cellY;
            layoutParams.cellVSpan = 1;
            layoutParams.cellHSpan = 1;
        }
        return bubbleTextView;
    }

    @Override // com.android.launcher3.PagedView
    public CellLayout getPageAt(int index) {
        return (CellLayout) getChildAt(index);
    }

    public CellLayout getCurrentCellLayout() {
        return getPageAt(getNextPage());
    }

    private CellLayout createAndAddNewPage() {
        DeviceProfile deviceProfile = Launcher.getLauncher(getContext()).getDeviceProfile();
        CellLayout cellLayout = (CellLayout) this.mViewCache.getView(R.layout.folder_page, getContext(), this);
        cellLayout.setCellDimensions(deviceProfile.folderCellWidthPx, deviceProfile.folderCellHeightPx);
        cellLayout.getShortcutsAndWidgets().setMotionEventSplittingEnabled(false);
        cellLayout.setInvertIfRtl(true);
        cellLayout.setGridSize(3, 3);
        addView(cellLayout, -1, generateDefaultLayoutParams());
        return cellLayout;
    }

    @Override // com.android.launcher3.PagedView
    protected int getChildGap() {
        return getPaddingLeft() + getPaddingRight();
    }

    public void setFixedSize(int width, int height) {
        int paddingLeft = width - (getPaddingLeft() + getPaddingRight());
        int paddingTop = height - (getPaddingTop() + getPaddingBottom());
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            ((CellLayout) getChildAt(childCount)).setFixedSize(paddingLeft, paddingTop);
        }
    }

    public void removeItem(View v) {
        MLog.d(TAG, "removeItem() called with: v = [" + v + "]");
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            getPageAt(childCount).removeView(v);
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        if (this.mMaxScroll > 0) {
            ((PageIndicatorDots) this.mPageIndicator).setScroll(l, this.mMaxScroll);
        }
    }

    public void arrangeChildren(List<View> list) {
        MLog.d(TAG, "arrangeChildren() called with: list = [" + list + "]");
        int size = list.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            cellLayout.removeAllViews();
            arrayList.add(cellLayout);
        }
        this.mOrganizer.setFolderInfo(this.mFolder.getInfo());
        setupContentDimensions(size);
        Iterator it = arrayList.iterator();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        CellLayout cellLayoutCreateAndAddNewPage = null;
        while (true) {
            if (i2 >= size) {
                break;
            }
            View view = list.size() > i2 ? list.get(i2) : null;
            if (cellLayoutCreateAndAddNewPage == null || i3 >= this.mOrganizer.getMaxItemsPerPage()) {
                if (it.hasNext()) {
                    cellLayoutCreateAndAddNewPage = (CellLayout) it.next();
                } else {
                    cellLayoutCreateAndAddNewPage = createAndAddNewPage();
                }
                i3 = 0;
            }
            if (view != null) {
                CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
                ItemInfo itemInfo = (ItemInfo) view.getTag();
                layoutParams.setXY(this.mOrganizer.getPosForRank(i4));
                cellLayoutCreateAndAddNewPage.addViewToCellLayout(view, -1, itemInfo.getViewId(), layoutParams, true);
                if (this.mOrganizer.isItemInPreview(i4) && (view instanceof BubbleTextView)) {
                    ((BubbleTextView) view).verifyHighRes();
                }
            }
            i4++;
            i3++;
            i2++;
        }
        boolean z = false;
        while (it.hasNext()) {
            removeView((View) it.next());
            z = true;
        }
        if (z) {
            setCurrentPage(0);
        }
        setEnableOverscroll(getPageCount() > 1);
        ((PageIndicatorDots) this.mPageIndicator).setVisibility(getPageCount() <= 1 ? 8 : 0);
        this.mFolder.mFolderName.setGravity(getPageCount() > 1 ? this.mIsRtl ? 5 : 3 : 1);
    }

    public int getDesiredWidth() {
        if (getPageCount() > 0) {
            return getPageAt(0).getDesiredWidth() + getPaddingLeft() + getPaddingRight();
        }
        return 0;
    }

    public int getDesiredHeight() {
        if (getPageCount() > 0) {
            return getPageAt(0).getDesiredHeight() + getPaddingTop() + getPaddingBottom();
        }
        return 0;
    }

    public int findNearestArea(int pixelX, int pixelY) {
        int nextPage = getNextPage();
        CellLayout pageAt = getPageAt(nextPage);
        int[] iArr = sTmpArray;
        pageAt.findNearestArea(pixelX, pixelY, 1, 1, iArr);
        if (this.mFolder.isLayoutRtl()) {
            iArr[0] = (pageAt.getCountX() - iArr[0]) - 1;
        }
        return Math.min(this.mAllocatedContentSize - 1, (nextPage * this.mOrganizer.getMaxItemsPerPage()) + (iArr[1] * this.mGridCountX) + iArr[0]);
    }

    public View getFirstItem() {
        return getViewInCurrentPage(new ToIntFunction() { // from class: com.android.launcher3.folder.FolderPagedView$$ExternalSyntheticLambda0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return FolderPagedView.lambda$getFirstItem$0((ShortcutAndWidgetContainer) obj);
            }
        });
    }

    static /* synthetic */ int lambda$getLastItem$1(ShortcutAndWidgetContainer shortcutAndWidgetContainer) {
        return shortcutAndWidgetContainer.getChildCount() - 1;
    }

    public View getLastItem() {
        return getViewInCurrentPage(new ToIntFunction() { // from class: com.android.launcher3.folder.FolderPagedView$$ExternalSyntheticLambda2
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return FolderPagedView.lambda$getLastItem$1((ShortcutAndWidgetContainer) obj);
            }
        });
    }

    private View getViewInCurrentPage(ToIntFunction<ShortcutAndWidgetContainer> rankProvider) {
        if (getChildCount() < 1) {
            return null;
        }
        ShortcutAndWidgetContainer shortcutsAndWidgets = getCurrentCellLayout().getShortcutsAndWidgets();
        int iApplyAsInt = rankProvider.applyAsInt(shortcutsAndWidgets);
        int i = this.mGridCountX;
        if (i > 0) {
            return shortcutsAndWidgets.getChildAt(iApplyAsInt % i, iApplyAsInt / i);
        }
        return shortcutsAndWidgets.getChildAt(iApplyAsInt);
    }

    public View iterateOverItems(Workspace.ItemOperator op) {
        for (int i = 0; i < getChildCount(); i++) {
            CellLayout pageAt = getPageAt(i);
            for (int i2 = 0; i2 < pageAt.getCountY(); i2++) {
                for (int i3 = 0; i3 < pageAt.getCountX(); i3++) {
                    View childAt = pageAt.getChildAt(i3, i2);
                    if (childAt != null && op.evaluate((ItemInfo) childAt.getTag(), childAt)) {
                        return childAt;
                    }
                }
            }
        }
        return null;
    }

    public String getAccessibilityDescription() {
        return getContext().getString(R.string.folder_opened, Integer.valueOf(this.mGridCountX), Integer.valueOf(this.mGridCountY));
    }

    public void setFocusOnFirstChild() {
        View childAt = getCurrentCellLayout().getChildAt(0, 0);
        if (childAt != null) {
            childAt.requestFocus();
        }
    }

    @Override // com.android.launcher3.PagedView
    protected void notifyPageSwitchListener(int prevPage) {
        super.notifyPageSwitchListener(prevPage);
        Folder folder = this.mFolder;
        if (folder != null) {
            folder.updateTextViewFocus();
        }
    }

    public void showScrollHint(int direction) {
        int scrollForPage = (getScrollForPage(getNextPage()) + ((int) (((direction == 0) ^ this.mIsRtl ? -0.07f : 0.07f) * getWidth()))) - getScrollX();
        if (scrollForPage != 0) {
            this.mScroller.setInterpolator(Interpolators.DEACCEL);
            this.mScroller.startScroll(getScrollX(), scrollForPage, 500);
            invalidate();
        }
    }

    public void clearScrollHint() {
        if (getScrollX() != getScrollForPage(getNextPage())) {
            snapToPage(getNextPage());
        }
    }

    public void completePendingPageChanges() {
        if (this.mPendingAnimations.isEmpty()) {
            return;
        }
        for (Map.Entry entry : new ArrayMap(this.mPendingAnimations).entrySet()) {
            ((View) entry.getKey()).animate().cancel();
            ((Runnable) entry.getValue()).run();
        }
    }

    public boolean rankOnCurrentPage(int rank) {
        return rank / this.mOrganizer.getMaxItemsPerPage() == getNextPage();
    }

    @Override // com.android.launcher3.PagedView
    protected void onPageBeginTransition() {
        super.onPageBeginTransition();
        verifyVisibleHighResIcons(getCurrentPage() - 1);
        verifyVisibleHighResIcons(getCurrentPage() + 1);
    }

    public void verifyVisibleHighResIcons(int pageNo) {
        CellLayout pageAt = getPageAt(pageNo);
        if (pageAt != null) {
            ShortcutAndWidgetContainer shortcutsAndWidgets = pageAt.getShortcutsAndWidgets();
            for (int childCount = shortcutsAndWidgets.getChildCount() - 1; childCount >= 0; childCount--) {
                BubbleTextView bubbleTextView = (BubbleTextView) shortcutsAndWidgets.getChildAt(childCount);
                bubbleTextView.verifyHighRes();
                Drawable drawable = bubbleTextView.getCompoundDrawables()[1];
                if (drawable != null) {
                    drawable.setCallback(bubbleTextView);
                }
            }
        }
    }

    public void realTimeReorder(int empty, int target) {
        int i;
        int i2;
        final int i3 = empty;
        if (this.mViewsBound) {
            completePendingPageChanges();
            int nextPage = getNextPage();
            int maxItemsPerPage = this.mOrganizer.getMaxItemsPerPage();
            int i4 = target % maxItemsPerPage;
            if (target / maxItemsPerPage != nextPage) {
                Log.e(TAG, "Cannot animate when the target cell is invisible");
            }
            int i5 = i3 % maxItemsPerPage;
            int i6 = i3 / maxItemsPerPage;
            if (target == i3) {
                return;
            }
            int i7 = -1;
            int i8 = 0;
            if (target > i3) {
                if (i6 < nextPage) {
                    i7 = nextPage * maxItemsPerPage;
                    i5 = 0;
                } else {
                    i3 = -1;
                }
                i2 = 1;
            } else {
                if (i6 > nextPage) {
                    i = ((nextPage + 1) * maxItemsPerPage) - 1;
                    i5 = maxItemsPerPage - 1;
                } else {
                    i3 = -1;
                    i = -1;
                }
                i7 = i;
                i2 = -1;
            }
            while (i3 != i7) {
                int i9 = i3 + i2;
                int i10 = i9 / maxItemsPerPage;
                int i11 = i9 % maxItemsPerPage;
                int i12 = this.mGridCountX;
                int i13 = i11 % i12;
                int i14 = i11 / i12;
                CellLayout pageAt = getPageAt(i10);
                final View childAt = pageAt.getChildAt(i13, i14);
                if (childAt != null) {
                    if (nextPage != i10) {
                        pageAt.removeView(childAt);
                        addViewForRank(childAt, (WorkspaceItemInfo) childAt.getTag(), i3);
                    } else {
                        final float translationX = childAt.getTranslationX();
                        Runnable runnable = new Runnable() { // from class: com.android.launcher3.folder.FolderPagedView.1
                            @Override // java.lang.Runnable
                            public void run() {
                                FolderPagedView.this.mPendingAnimations.remove(childAt);
                                childAt.setTranslationX(translationX);
                                ((CellLayout) childAt.getParent().getParent()).removeView(childAt);
                                FolderPagedView folderPagedView = FolderPagedView.this;
                                View view = childAt;
                                folderPagedView.addViewForRank(view, (WorkspaceItemInfo) view.getTag(), i3);
                            }
                        };
                        childAt.animate().translationXBy((i2 > 0) ^ this.mIsRtl ? -childAt.getWidth() : childAt.getWidth()).setDuration(230L).setStartDelay(0L).withEndAction(runnable);
                        this.mPendingAnimations.put(childAt, runnable);
                    }
                }
                i3 = i9;
            }
            if ((i4 - i5) * i2 <= 0) {
                return;
            }
            CellLayout pageAt2 = getPageAt(nextPage);
            float f = 30.0f;
            while (i5 != i4) {
                int i15 = i5 + i2;
                int i16 = this.mGridCountX;
                View childAt2 = pageAt2.getChildAt(i15 % i16, i15 / i16);
                int i17 = this.mGridCountX;
                if (pageAt2.animateChildToPosition(childAt2, i5 % i17, i5 / i17, REORDER_ANIMATION_DURATION, i8, true, true)) {
                    int i18 = (int) (i8 + f);
                    f *= VIEW_REORDER_DELAY_FACTOR;
                    i8 = i18;
                }
                i5 = i15;
            }
        }
    }

    @Override // com.android.launcher3.PagedView
    protected boolean canScroll(float absVScroll, float absHScroll) {
        return AbstractFloatingView.getTopOpenViewWithType(this.mFolder.mLauncher, 8190) == null;
    }

    public int itemsPerPage() {
        return this.mOrganizer.getMaxItemsPerPage();
    }
}
