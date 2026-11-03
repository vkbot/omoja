package com.android.launcher3.util;

import android.graphics.Rect;
import com.android.launcher3.model.data.ItemInfo;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class GridOccupancy {
    public static final int MAX_COUNT_X = 256;
    public boolean[][] cells;
    private int mCountX;
    public int mCountY;
    public int mCurrentCountX;

    public GridOccupancy(int countX, int countY) {
        this.mCurrentCountX = 0;
        this.mCountX = countX;
        this.mCountY = countY;
        this.cells = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, countX, countY);
    }

    public boolean findVacantCell(int[] vacantOut, int spanX, int spanY) {
        int i = 0;
        while (true) {
            int i2 = i + spanY;
            if (i2 > this.mCountY) {
                return false;
            }
            int i3 = 0;
            while (true) {
                int i4 = i3 + spanX;
                if (i4 <= this.mCountX) {
                    boolean z = !this.cells[i3][i];
                    for (int i5 = i3; i5 < i4; i5++) {
                        for (int i6 = i; i6 < i2; i6++) {
                            z = z && !this.cells[i5][i6];
                            if (!z) {
                                break;
                            }
                        }
                    }
                    if (z) {
                        vacantOut[0] = i3;
                        vacantOut[1] = i;
                        return true;
                    }
                    i3++;
                }
            }
            i++;
        }
    }

    public void copyTo(GridOccupancy dest) {
        for (int i = 0; i < this.mCountX; i++) {
            for (int i2 = 0; i2 < this.mCountY; i2++) {
                dest.cells[i][i2] = this.cells[i][i2];
            }
        }
    }

    public boolean isRegionVacant(int x, int y, int spanX, int spanY) {
        int i = (spanX + x) - 1;
        int i2 = (spanY + y) - 1;
        if (x < 0 || y < 0 || i >= this.mCountX || i2 >= this.mCountY) {
            return false;
        }
        while (x <= i) {
            for (int i3 = y; i3 <= i2; i3++) {
                if (this.cells[x][i3]) {
                    return false;
                }
            }
            x++;
        }
        return true;
    }

    public void markCells(int cellX, int cellY, int spanX, int spanY, boolean value) {
        if (cellX < 0 || cellY < 0) {
            return;
        }
        for (int i = cellX; i < cellX + spanX && i < this.mCountX; i++) {
            for (int i2 = cellY; i2 < cellY + spanY && i2 < this.mCountY; i2++) {
                this.cells[i][i2] = value;
            }
        }
    }

    public void markCells(Rect r, boolean value) {
        markCells(r.left, r.top, r.width(), r.height(), value);
    }

    public void markCells(CellAndSpan cell, boolean value) {
        markCells(cell.cellX, cell.cellY, cell.spanX, cell.spanY, value);
    }

    public void markCells(ItemInfo item, boolean value) {
        markCells(item.cellX, item.cellY, item.spanX, item.spanY, value);
    }

    public void clear() {
        markCells(0, 0, this.mCountX, this.mCountY, false);
    }

    public GridOccupancy() {
        this.mCurrentCountX = 0;
        this.mCountX = 256;
        this.mCountY = 1;
        this.cells = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 256, 1);
    }

    public void setXY(int x, int y) {
        this.mCountX = x;
        this.mCountY = y;
        this.cells = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, x, y);
    }

    public void increaseCountX(int delta) {
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mCountX + delta, this.mCountY);
        int i = 0;
        while (true) {
            int i2 = this.mCountX;
            if (i >= i2) {
                this.mCountX = i2 + delta;
                this.cells = zArr;
                return;
            } else {
                for (int i3 = 0; i3 < this.mCountY; i3++) {
                    zArr[i][i3] = this.cells[i][i3];
                }
                i++;
            }
        }
    }
}
