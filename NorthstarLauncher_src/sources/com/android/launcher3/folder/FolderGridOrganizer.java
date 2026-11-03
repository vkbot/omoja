package com.android.launcher3.folder;

import android.graphics.Point;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FolderGridOrganizer {
    private int mCountX;
    private int mCountY;
    private final int mMaxCountX;
    private final int mMaxCountY;
    private final int mMaxItemsPerPage;
    private int mNumItemsInFolder;
    private final Point mPoint = new Point();
    private boolean mDisplayingUpperLeftQuadrant = false;

    public int getCountX() {
        return this.mCountX;
    }

    public int getCountY() {
        return this.mCountY;
    }

    public int getMaxItemsPerPage() {
        return this.mMaxItemsPerPage;
    }

    public boolean isItemInPreview(int page, int rank) {
        return rank < 9;
    }

    public FolderGridOrganizer(InvariantDeviceProfile profile) {
        int i = profile.numFolderColumns;
        this.mMaxCountX = i;
        int i2 = profile.numFolderRows;
        this.mMaxCountY = i2;
        this.mMaxItemsPerPage = i * i2;
    }

    public FolderGridOrganizer setFolderInfo(FolderInfo info) {
        return setContentSize(info.contents.size());
    }

    public FolderGridOrganizer setContentSize(int contentSize) {
        if (contentSize != this.mNumItemsInFolder) {
            calculateGridSize(contentSize);
            this.mDisplayingUpperLeftQuadrant = contentSize > 9;
            this.mNumItemsInFolder = contentSize;
        }
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0031  */
    private void calculateGridSize(int count) {
        boolean z;
        int iMax;
        int iMax2;
        int i = this.mCountX;
        int i2 = this.mCountY;
        if (count >= this.mMaxItemsPerPage) {
            i = this.mMaxCountX;
            i2 = this.mMaxCountY;
            z = true;
        } else {
            z = false;
        }
        while (!z) {
            if (i * i2 < count) {
                if ((i <= i2 || i2 == this.mMaxCountY) && i < this.mMaxCountX) {
                    iMax = i + 1;
                } else {
                    if (i2 < this.mMaxCountY) {
                        iMax2 = i2 + 1;
                        iMax = i;
                    } else {
                        iMax = i;
                    }
                    if (iMax2 == 0) {
                        iMax2++;
                    }
                }
                iMax2 = i2;
                if (iMax2 == 0) {
                    iMax2++;
                }
            } else {
                int i3 = i2 - 1;
                if (i3 * i >= count && i2 >= i) {
                    iMax2 = Math.max(0, i3);
                    iMax = i;
                } else {
                    int i4 = i - 1;
                    iMax = i4 * i2 >= count ? Math.max(0, i4) : i;
                    iMax2 = i2;
                }
            }
            boolean z2 = iMax == i && iMax2 == i2;
            i2 = iMax2;
            z = z2;
            i = iMax;
        }
        this.mCountX = 3;
        this.mCountY = 3;
    }

    public boolean updateRankAndPos(ItemInfo item, int rank) {
        Point posForRank = getPosForRank(rank);
        if (posForRank.equals(item.cellX, item.cellY) && rank == item.rank) {
            return false;
        }
        item.rank = rank;
        item.cellX = posForRank.x;
        item.cellY = posForRank.y;
        return true;
    }

    public Point getPosForRank(int rank) {
        int i = rank % this.mMaxItemsPerPage;
        this.mPoint.x = i % this.mCountX;
        this.mPoint.y = i / this.mCountX;
        return this.mPoint;
    }

    public <T, R extends T> ArrayList<R> previewItemsForPage(int page, List<T> contents) {
        ArrayList<R> arrayList = new ArrayList<>();
        int i = this.mCountX * this.mCountY;
        int i2 = page * i;
        int iMin = Math.min(i + i2, contents.size());
        while (i2 < iMin) {
            arrayList.add(contents.get(i2));
            i2++;
        }
        return arrayList;
    }

    public boolean isItemInPreview(int rank) {
        return isItemInPreview(0, rank);
    }
}
