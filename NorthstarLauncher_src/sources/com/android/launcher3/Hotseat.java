package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewDebug;
import android.widget.FrameLayout;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Hotseat extends CellLayout implements StatsLogUtils.LogContainerProvider, Insettable {
    private static final String TAG = "Hotseat";

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mHasVerticalHotseat;
    private boolean mSendTouchToWorkspace;
    private Workspace mWorkspace;

    public int getCellXFromOrder(int rank) {
        if (this.mHasVerticalHotseat) {
            return 0;
        }
        return rank;
    }

    @Override // com.android.launcher3.CellLayout, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return false;
    }

    public void setWorkspace(Workspace w) {
        this.mWorkspace = w;
    }

    public Hotseat(Context context) {
        this(context, null);
        setVisibility(8);
    }

    public Hotseat(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
        setVisibility(8);
    }

    public Hotseat(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setVisibility(8);
    }

    public int getCellYFromOrder(int rank) {
        if (this.mHasVerticalHotseat) {
            return getCountY() - (rank + 1);
        }
        return 0;
    }

    public void resetLayout(boolean hasVerticalHotseat) {
        removeAllViewsInLayout();
        this.mHasVerticalHotseat = hasVerticalHotseat;
        InvariantDeviceProfile invariantDeviceProfile = this.mActivity.getDeviceProfile().inv;
        if (hasVerticalHotseat) {
            setGridSize(1, invariantDeviceProfile.numHotseatIcons);
        } else {
            setGridSize(invariantDeviceProfile.numHotseatIcons, 1);
        }
        setVisibility(8);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils.LogContainerProvider
    public void fillInLogContainerData(ItemInfo childInfo, LauncherLogProto.Target child, ArrayList<LauncherLogProto.Target> parents) {
        child.rank = childInfo.rank;
        child.gridX = childInfo.cellX;
        child.gridY = childInfo.cellY;
        parents.add(LoggerUtils.newContainerTarget(2));
        setVisibility(8);
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect insets) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (deviceProfile.isVerticalBarLayout()) {
            layoutParams.height = -1;
            if (deviceProfile.isSeascape()) {
                layoutParams.gravity = 3;
                layoutParams.width = deviceProfile.hotseatBarSizePx + insets.left;
            } else {
                layoutParams.gravity = 5;
                layoutParams.width = deviceProfile.hotseatBarSizePx + insets.right;
            }
        } else {
            layoutParams.gravity = 80;
            layoutParams.width = -1;
            layoutParams.height = deviceProfile.hotseatBarSizePx + insets.bottom;
        }
        Rect hotseatLayoutPadding = deviceProfile.getHotseatLayoutPadding();
        setPadding(hotseatLayoutPadding.left, hotseatLayoutPadding.top, hotseatLayoutPadding.right, hotseatLayoutPadding.bottom);
        setLayoutParams(layoutParams);
        InsettableFrameLayout.dispatchInsets(this, insets);
        setVisibility(8);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return event.getY() > ((float) getCellHeight());
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(8);
    }
}
