package com.android.launcher3;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import com.android.launcher3.icons.IconNormalizer;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.WindowBounds;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class DeviceProfile {
    private static final float LARGE_TABLET_MIN_DPS = 720.0f;
    private static final float MAX_HORIZONTAL_PADDING_PERCENT = 0.14f;
    private static final int PORTRAIT_TABLET_LEFT_RIGHT_PADDING_MULTIPLIER = 4;
    private static final float TABLET_MIN_DPS = 600.0f;
    private static final float TALL_DEVICE_ASPECT_RATIO_THRESHOLD = 2.0f;
    public int allAppsCellHeightPx;
    public int allAppsCellWidthPx;
    public int allAppsIconDrawablePaddingPx;
    public int allAppsIconSizePx;
    public float allAppsIconTextSizePx;
    public final float aspectRatio;
    public final int availableHeightPx;
    public final int availableWidthPx;
    public int cellHeightPx;
    public final int cellLayoutBottomPaddingPx;
    public final int cellLayoutPaddingLeftRightPx;
    public int cellWidthPx;
    public final int desiredWorkspaceLeftRightMarginPx;
    public int dropTargetBarSizePx;
    public final int edgeMarginPx;
    public int folderCellHeightPx;
    public int folderCellWidthPx;
    public int folderChildDrawablePaddingPx;
    public int folderChildIconSizePx;
    public int folderChildTextSizePx;
    public int folderIconOffsetYPx;
    public int folderIconSizePx;
    public final int heightPx;
    public int hotseatBarBottomPaddingPx;
    public final int hotseatBarSidePaddingEndPx;
    public final int hotseatBarSidePaddingStartPx;
    public int hotseatBarSizePx;
    public final int hotseatBarTopPaddingPx;
    public int hotseatCellHeightPx;
    public int iconDrawablePaddingOriginalPx;
    public int iconDrawablePaddingPx;
    public int iconSizePx;
    public int iconTextSizePx;
    public final InvariantDeviceProfile inv;
    public final boolean isLandscape;
    public final boolean isLargeTablet;
    public final boolean isMultiWindowMode;
    public final boolean isPhone;
    public final boolean isTablet;
    private final DefaultDisplay.Info mInfo;
    private boolean mIsSeascape;
    private final int mWorkspacePageIndicatorOverlapWorkspace;
    public final boolean transposeLayoutWithOrientation;
    public final int widthPx;
    public final int windowX;
    public final int windowY;
    public int workspaceCellPaddingXPx;
    public final int workspacePageIndicatorHeight;
    public float workspaceSpringLoadShrinkFactor;
    public final int workspaceSpringLoadedBottomSpace;
    public final PointF appWidgetScale = new PointF(1.0f, 1.0f);
    private final Rect mInsets = new Rect();
    public final Rect workspacePadding = new Rect();
    private final Rect mHotseatPadding = new Rect();

    public interface OnDeviceProfileChangeListener {
        void onDeviceProfileChanged(DeviceProfile dp);
    }

    public static int calculateCellHeight(int height, int countY) {
        return 339;
    }

    public static int calculateCellWidth(int width, int countX) {
        return 338;
    }

    public int getCellHeight(int containerType) {
        if (containerType == 0) {
            return this.cellHeightPx;
        }
        if (containerType == 1) {
            return this.hotseatCellHeightPx;
        }
        if (containerType != 2) {
            return 0;
        }
        return this.folderCellHeightPx;
    }

    public Rect getInsets() {
        return this.mInsets;
    }

    public boolean isVerticalBarLayout() {
        return this.isLandscape && this.transposeLayoutWithOrientation;
    }

    DeviceProfile(Context context, InvariantDeviceProfile inv, DefaultDisplay.Info info, Point minSize, Point maxSize, int width, int height, boolean isLandscape, boolean isMultiWindowMode, boolean transposeLayoutWithOrientation, Point windowPosition) {
        this.inv = inv;
        this.isLandscape = isLandscape;
        this.isMultiWindowMode = isMultiWindowMode;
        this.windowX = windowPosition.x;
        this.windowY = windowPosition.y;
        this.widthPx = width;
        this.heightPx = height;
        if (isLandscape) {
            this.availableWidthPx = maxSize.x;
            this.availableHeightPx = minSize.y;
        } else {
            this.availableWidthPx = minSize.x;
            this.availableHeightPx = maxSize.y;
        }
        this.mInfo = info;
        float fDpiFromPx = Utilities.dpiFromPx(Math.min(info.smallestSize.x, info.smallestSize.y), info.metrics);
        int i = 1;
        boolean z = fDpiFromPx >= TABLET_MIN_DPS;
        this.isTablet = z;
        boolean z2 = fDpiFromPx >= LARGE_TABLET_MIN_DPS;
        this.isLargeTablet = z2;
        boolean z3 = (z || z2) ? false : true;
        this.isPhone = z3;
        float fMax = Math.max(width, height) / Math.min(width, height);
        this.aspectRatio = fMax;
        boolean z4 = Float.compare(fMax, TALL_DEVICE_ASPECT_RATIO_THRESHOLD) >= 0;
        this.transposeLayoutWithOrientation = transposeLayoutWithOrientation;
        Resources resources = getContext(context, info, isVerticalBarLayout() ? 2 : 1).getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.dynamic_grid_edge_margin);
        this.edgeMarginPx = dimensionPixelSize;
        this.desiredWorkspaceLeftRightMarginPx = isVerticalBarLayout() ? 0 : dimensionPixelSize;
        if (!isVerticalBarLayout() && z) {
            i = 4;
        }
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.dynamic_grid_cell_layout_padding);
        if (isLandscape) {
            this.cellLayoutPaddingLeftRightPx = 0;
            this.cellLayoutBottomPaddingPx = dimensionPixelSize2;
        } else {
            this.cellLayoutPaddingLeftRightPx = i * dimensionPixelSize2;
            this.cellLayoutBottomPaddingPx = 0;
        }
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.workspace_page_indicator_height);
        this.workspacePageIndicatorHeight = dimensionPixelSize3;
        this.mWorkspacePageIndicatorOverlapWorkspace = resources.getDimensionPixelSize(R.dimen.workspace_page_indicator_overlap_workspace);
        this.iconDrawablePaddingOriginalPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_icon_drawable_padding);
        this.dropTargetBarSizePx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_drop_target_size);
        this.workspaceSpringLoadedBottomSpace = resources.getDimensionPixelSize(R.dimen.dynamic_grid_min_spring_loaded_space);
        this.workspaceCellPaddingXPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_cell_padding_x);
        this.hotseatBarTopPaddingPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_top_padding);
        this.hotseatBarBottomPaddingPx = (z4 ? 0 : resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_bottom_non_tall_padding)) + resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_bottom_padding);
        this.hotseatBarSidePaddingEndPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_side_padding);
        this.hotseatBarSidePaddingStartPx = isVerticalBarLayout() ? dimensionPixelSize3 : 0;
        this.hotseatBarSizePx = 0;
        updateAvailableDimensions(resources);
        if (!isVerticalBarLayout() && z3 && z4) {
            int i2 = ((getCellSize().y - this.iconSizePx) - (this.iconDrawablePaddingPx * 2)) - dimensionPixelSize3;
            this.hotseatBarSizePx += i2;
            this.hotseatBarBottomPaddingPx += i2;
            updateAvailableDimensions(resources);
        }
        updateWorkspacePadding();
    }

    public Builder toBuilder(Context context) {
        Point point = new Point(this.availableWidthPx, this.availableHeightPx);
        return new Builder(context, this.inv, this.mInfo).setSizeRange(point, point).setSize(this.widthPx, this.heightPx).setWindowPosition(this.windowX, this.windowY).setMultiWindowMode(this.isMultiWindowMode);
    }

    public DeviceProfile copy(Context context) {
        return toBuilder(context).build();
    }

    public DeviceProfile getMultiWindowProfile(Context context, WindowBounds windowBounds) {
        Point point = new Point(Math.min(this.availableWidthPx, windowBounds.availableSize.x), Math.min(this.availableHeightPx, windowBounds.availableSize.y));
        DeviceProfile deviceProfileBuild = toBuilder(context).setSizeRange(point, point).setSize(windowBounds.bounds.width(), windowBounds.bounds.height()).setWindowPosition(windowBounds.bounds.left, windowBounds.bounds.top).setMultiWindowMode(true).build();
        if (((deviceProfileBuild.getCellSize().y - deviceProfileBuild.iconSizePx) - this.iconDrawablePaddingPx) - deviceProfileBuild.iconTextSizePx < deviceProfileBuild.iconDrawablePaddingPx * 2) {
            deviceProfileBuild.adjustToHideWorkspaceLabels();
        }
        deviceProfileBuild.appWidgetScale.set(1.0f, 1.0f);
        deviceProfileBuild.updateWorkspacePadding();
        return deviceProfileBuild;
    }

    public DeviceProfile getFullScreenProfile() {
        boolean z = this.isLandscape;
        InvariantDeviceProfile invariantDeviceProfile = this.inv;
        return z ? invariantDeviceProfile.landscapeProfile : invariantDeviceProfile.portraitProfile;
    }

    private void adjustToHideWorkspaceLabels() {
        this.iconTextSizePx = 0;
        this.iconDrawablePaddingPx = 0;
        this.cellHeightPx = this.iconSizePx;
        autoResizeAllAppsCells();
    }

    public void autoResizeAllAppsCells() {
        this.allAppsCellHeightPx = this.allAppsIconSizePx + this.allAppsIconDrawablePaddingPx + Utilities.calculateTextHeight(this.allAppsIconTextSizePx) + (this.allAppsIconDrawablePaddingPx * (isVerticalBarLayout() ? 2 : 1) * 2);
    }

    private void updateAvailableDimensions(Resources res) {
        updateIconSize(1.0f, res);
        float f = this.cellHeightPx * this.inv.numRows;
        float f2 = this.availableHeightPx - getTotalWorkspacePadding().y;
        if (f > f2) {
            updateIconSize(f2 / f, res);
        }
        updateAvailableFolderCellDimensions(res);
    }

    private void updateIconSize(float scale, Resources res) {
        boolean zIsVerticalBarLayout = isVerticalBarLayout();
        InvariantDeviceProfile invariantDeviceProfile = this.inv;
        this.iconSizePx = Math.max(1, (int) (ResourceUtils.pxFromDp(zIsVerticalBarLayout ? invariantDeviceProfile.landscapeIconSize : invariantDeviceProfile.iconSize, this.mInfo.metrics) * scale));
        this.iconTextSizePx = (int) (Utilities.pxFromSp(this.inv.iconTextSize, this.mInfo.metrics) * scale);
        int i = (int) (this.iconDrawablePaddingOriginalPx * scale);
        this.iconDrawablePaddingPx = i;
        this.cellHeightPx = this.iconSizePx + i;
        int i2 = getCellSize().y;
        int i3 = this.cellHeightPx;
        int i4 = (i2 - i3) / 2;
        int i5 = this.iconDrawablePaddingPx;
        if (i5 > i4 && !zIsVerticalBarLayout && !this.isMultiWindowMode) {
            this.cellHeightPx = i3 - (i5 - i4);
            this.iconDrawablePaddingPx = i4;
        }
        this.cellWidthPx = this.iconSizePx + this.iconDrawablePaddingPx;
        if (allAppsHasDifferentNumColumns()) {
            this.allAppsIconSizePx = ResourceUtils.pxFromDp(this.inv.allAppsIconSize, this.mInfo.metrics);
            float fPxFromSp = Utilities.pxFromSp(this.inv.allAppsIconTextSize, this.mInfo.metrics);
            this.allAppsIconTextSizePx = fPxFromSp;
            int i6 = this.iconDrawablePaddingOriginalPx;
            this.allAppsIconDrawablePaddingPx = i6;
            this.allAppsCellHeightPx = Math.round(this.allAppsIconSizePx + fPxFromSp + (i6 * 4));
        } else {
            this.allAppsIconSizePx = this.iconSizePx;
            this.allAppsIconTextSizePx = this.iconTextSizePx;
            this.allAppsIconDrawablePaddingPx = this.iconDrawablePaddingPx;
            this.allAppsCellHeightPx = getCellSize().y;
        }
        this.allAppsCellWidthPx = this.allAppsIconSizePx + this.allAppsIconDrawablePaddingPx;
        if (isVerticalBarLayout()) {
            adjustToHideWorkspaceLabels();
        }
        if (zIsVerticalBarLayout) {
            this.hotseatBarSizePx = this.iconSizePx + this.hotseatBarSidePaddingStartPx + this.hotseatBarSidePaddingEndPx;
        }
        this.hotseatCellHeightPx = this.iconSizePx;
        if (!zIsVerticalBarLayout) {
            this.workspaceSpringLoadShrinkFactor = Math.min(res.getInteger(R.integer.config_workspaceSpringLoadShrinkPercentage) / 100.0f, 1.0f - ((this.dropTargetBarSizePx + this.workspaceSpringLoadedBottomSpace) / (((this.availableHeightPx - this.hotseatBarSizePx) - this.workspacePageIndicatorHeight) - this.edgeMarginPx)));
        } else {
            this.workspaceSpringLoadShrinkFactor = res.getInteger(R.integer.config_workspaceSpringLoadShrinkPercentage) / 100.0f;
        }
        int normalizedCircleSize = IconNormalizer.getNormalizedCircleSize(this.iconSizePx);
        this.folderIconSizePx = normalizedCircleSize;
        this.folderIconOffsetYPx = (this.iconSizePx - normalizedCircleSize) / 2;
    }

    private void updateAvailableFolderCellDimensions(Resources res) {
        int dimensionPixelSize = res.getDimensionPixelSize(R.dimen.folder_label_padding_top) + res.getDimensionPixelSize(R.dimen.folder_label_padding_bottom) + Utilities.calculateTextHeight(res.getDimension(R.dimen.folder_label_text_size));
        updateFolderCellSize(0.75f, res);
        int i = this.edgeMarginPx * 2;
        Point totalWorkspacePadding = getTotalWorkspacePadding();
        float fMin = Math.min(((this.availableWidthPx - totalWorkspacePadding.x) - i) / (this.folderCellWidthPx * this.inv.numFolderColumns), (((this.availableHeightPx - totalWorkspacePadding.y) - dimensionPixelSize) - i) / (this.folderCellHeightPx * this.inv.numFolderRows));
        if (fMin < 1.0f) {
            updateFolderCellSize(fMin, res);
        }
    }

    private void updateFolderCellSize(float scale, Resources res) {
        this.folderChildIconSizePx = (int) (ResourceUtils.pxFromDp(this.inv.iconSize, this.mInfo.metrics) * scale);
        int dimensionPixelSize = (int) (res.getDimensionPixelSize(R.dimen.folder_child_text_size) * scale);
        this.folderChildTextSizePx = dimensionPixelSize;
        int iCalculateTextHeight = Utilities.calculateTextHeight(dimensionPixelSize);
        int dimensionPixelSize2 = (int) (res.getDimensionPixelSize(R.dimen.folder_cell_x_padding_mega) * scale);
        int dimensionPixelSize3 = (int) (res.getDimensionPixelSize(R.dimen.folder_cell_y_padding_mega) * scale);
        int i = this.folderChildIconSizePx;
        this.folderCellWidthPx = (dimensionPixelSize2 * 2) + i;
        this.folderCellHeightPx = i + (dimensionPixelSize3 * 2) + iCalculateTextHeight;
        MLog.d("FOLDER", "updateFolderCellSize() textHeight = [" + iCalculateTextHeight + "], folderPx = [" + this.folderChildIconSizePx + "], folderChildDrawablePaddingPx = [" + this.folderChildDrawablePaddingPx + "], folderCellWidthPx = [" + this.folderCellWidthPx + "], folderCellWidthPx = [" + this.folderCellHeightPx + "]");
    }

    public void updateInsets(Rect insets) {
        this.mInsets.set(insets);
        updateWorkspacePadding();
    }

    public Point getCellSize() {
        return getCellSize(this.inv.numColumns, this.inv.numRows);
    }

    private Point getCellSize(int numColumns, int numRows) {
        Point point = new Point();
        Point totalWorkspacePadding = getTotalWorkspacePadding();
        point.x = calculateCellWidth((this.availableWidthPx - totalWorkspacePadding.x) - (this.cellLayoutPaddingLeftRightPx * 2), numColumns);
        point.y = calculateCellHeight((this.availableHeightPx - totalWorkspacePadding.y) - this.cellLayoutBottomPaddingPx, numRows);
        return point;
    }

    public Point getTotalWorkspacePadding() {
        updateWorkspacePadding();
        return new Point(this.workspacePadding.left + this.workspacePadding.right, this.workspacePadding.top + this.workspacePadding.bottom);
    }

    private void updateWorkspacePadding() {
        Rect rect = this.workspacePadding;
        if (isVerticalBarLayout()) {
            rect.top = 0;
            rect.bottom = this.edgeMarginPx;
            if (isSeascape()) {
                rect.left = this.hotseatBarSizePx;
                rect.right = this.hotseatBarSidePaddingStartPx;
                return;
            } else {
                rect.left = this.hotseatBarSidePaddingStartPx;
                rect.right = this.hotseatBarSizePx;
                return;
            }
        }
        int i = (this.hotseatBarSizePx + this.workspacePageIndicatorHeight) - this.mWorkspacePageIndicatorOverlapWorkspace;
        if (this.isTablet) {
            Math.min(Math.max(0, this.widthPx - ((this.inv.numColumns * this.cellWidthPx) + ((this.inv.numColumns - 1) * this.cellWidthPx))), this.widthPx * MAX_HORIZONTAL_PADDING_PERCENT);
            Math.max(0, ((((this.heightPx - this.edgeMarginPx) - i) - ((this.inv.numRows * 2) * this.cellHeightPx)) - this.hotseatBarTopPaddingPx) - this.hotseatBarBottomPaddingPx);
            rect.set(0, this.edgeMarginPx, 0, 0);
        } else {
            int i2 = this.desiredWorkspaceLeftRightMarginPx;
            rect.set(i2, this.edgeMarginPx, i2, i);
        }
    }

    public Rect getHotseatLayoutPadding() {
        if (isVerticalBarLayout()) {
            if (isSeascape()) {
                this.mHotseatPadding.set(this.mInsets.left + this.hotseatBarSidePaddingStartPx, this.mInsets.top, this.hotseatBarSidePaddingEndPx, this.mInsets.bottom);
            } else {
                this.mHotseatPadding.set(this.hotseatBarSidePaddingEndPx, this.mInsets.top, this.mInsets.right + this.hotseatBarSidePaddingStartPx, this.mInsets.bottom);
            }
        } else {
            int iRound = Math.round(((this.widthPx / this.inv.numColumns) - (this.widthPx / this.inv.numHotseatIcons)) / TALL_DEVICE_ASPECT_RATIO_THRESHOLD);
            this.mHotseatPadding.set(this.workspacePadding.left + iRound + this.cellLayoutPaddingLeftRightPx + this.mInsets.left, this.hotseatBarTopPaddingPx, iRound + this.workspacePadding.right + this.cellLayoutPaddingLeftRightPx + this.mInsets.right, this.hotseatBarBottomPaddingPx + this.mInsets.bottom + this.cellLayoutBottomPaddingPx);
        }
        return this.mHotseatPadding;
    }

    public Rect getAbsoluteOpenFolderBounds() {
        if (isVerticalBarLayout()) {
            return new Rect(this.mInsets.left + this.dropTargetBarSizePx + this.edgeMarginPx, this.mInsets.top, ((this.mInsets.left + this.availableWidthPx) - this.hotseatBarSizePx) - this.edgeMarginPx, this.mInsets.top + this.availableHeightPx);
        }
        return new Rect(this.mInsets.left + this.edgeMarginPx, this.mInsets.top + this.dropTargetBarSizePx + this.edgeMarginPx, (this.mInsets.left + this.availableWidthPx) - this.edgeMarginPx, (((this.mInsets.top + this.availableHeightPx) - this.hotseatBarSizePx) - this.workspacePageIndicatorHeight) - this.edgeMarginPx);
    }

    private boolean allAppsHasDifferentNumColumns() {
        return this.inv.numAllAppsColumns != this.inv.numColumns;
    }

    public boolean updateIsSeascape(Context context) {
        if (isVerticalBarLayout()) {
            boolean z = DefaultDisplay.INSTANCE.m166x39265fe7(context).getInfo().rotation == 3;
            if (this.mIsSeascape != z) {
                this.mIsSeascape = z;
                return true;
            }
        }
        return false;
    }

    public boolean isSeascape() {
        return isVerticalBarLayout() && this.mIsSeascape;
    }

    public boolean shouldFadeAdjacentWorkspaceScreens() {
        return isVerticalBarLayout() || this.isLargeTablet;
    }

    private static Context getContext(Context c, DefaultDisplay.Info info, int orientation) {
        Configuration configuration = new Configuration(c.getResources().getConfiguration());
        configuration.orientation = orientation;
        configuration.densityDpi = info.metrics.densityDpi;
        return c.createConfigurationContext(configuration);
    }

    public static class Builder {
        private Context mContext;
        private int mHeight;
        private DefaultDisplay.Info mInfo;
        private InvariantDeviceProfile mInv;
        private boolean mIsLandscape;
        private Point mMaxSize;
        private Point mMinSize;
        private boolean mTransposeLayoutWithOrientation;
        private int mWidth;
        private final Point mWindowPosition = new Point();
        private boolean mIsMultiWindowMode = false;

        public Builder setMultiWindowMode(boolean isMultiWindowMode) {
            this.mIsMultiWindowMode = isMultiWindowMode;
            return this;
        }

        public Builder setSize(int width, int height) {
            this.mWidth = width;
            this.mHeight = height;
            this.mIsLandscape = width > height;
            return this;
        }

        public Builder setSizeRange(Point minSize, Point maxSize) {
            this.mMinSize = minSize;
            this.mMaxSize = maxSize;
            return this;
        }

        public Builder setTransposeLayoutWithOrientation(boolean transposeLayoutWithOrientation) {
            this.mTransposeLayoutWithOrientation = transposeLayoutWithOrientation;
            return this;
        }

        public Builder(Context context, InvariantDeviceProfile inv, DefaultDisplay.Info info) {
            this.mContext = context;
            this.mInv = inv;
            this.mInfo = info;
            this.mTransposeLayoutWithOrientation = context.getResources().getBoolean(R.bool.hotseat_transpose_layout_with_orientation);
        }

        public Builder setWindowPosition(int x, int y) {
            this.mWindowPosition.set(x, y);
            return this;
        }

        public DeviceProfile build() {
            return new DeviceProfile(this.mContext, this.mInv, this.mInfo, this.mMinSize, this.mMaxSize, this.mWidth, this.mHeight, this.mIsLandscape, this.mIsMultiWindowMode, this.mTransposeLayoutWithOrientation, this.mWindowPosition);
        }
    }
}
