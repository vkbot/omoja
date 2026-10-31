package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DiffUtil {
    private static final Comparator<DiffUtil$Diagonal> DIAGONAL_COMPARATOR = new DiffUtil$1();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DiffUtil() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static DiffUtil$Snake backward(DiffUtil$Range diffUtil$Range, DiffUtil$Callback diffUtil$Callback, DiffUtil$CenteredArray diffUtil$CenteredArray, DiffUtil$CenteredArray diffUtil$CenteredArray2, int i9) {
        int i10;
        int i11;
        int i12;
        boolean z8 = (diffUtil$Range.oldSize() - diffUtil$Range.newSize()) % 2 == 0;
        int iOldSize = diffUtil$Range.oldSize() - diffUtil$Range.newSize();
        int i13 = -i9;
        for (int i14 = i13; i14 <= i9; i14 += 2) {
            if (i14 == i13 || (i14 != i9 && diffUtil$CenteredArray2.get(i14 + 1) < diffUtil$CenteredArray2.get(i14 - 1))) {
                i10 = diffUtil$CenteredArray2.get(i14 + 1);
                i11 = i10;
            } else {
                i10 = diffUtil$CenteredArray2.get(i14 - 1);
                i11 = i10 - 1;
            }
            int i15 = diffUtil$Range.newListEnd - ((diffUtil$Range.oldListEnd - i11) - i14);
            int i16 = (i9 == 0 || i11 != i10) ? i15 : i15 + 1;
            while (i11 > diffUtil$Range.oldListStart && i15 > diffUtil$Range.newListStart && diffUtil$Callback.areItemsTheSame(i11 - 1, i15 - 1)) {
                i11--;
                i15--;
            }
            diffUtil$CenteredArray2.set(i14, i11);
            if (z8 && (i12 = iOldSize - i14) >= i13 && i12 <= i9 && diffUtil$CenteredArray.get(i12) >= i11) {
                DiffUtil$Snake diffUtil$Snake = new DiffUtil$Snake();
                diffUtil$Snake.startX = i11;
                diffUtil$Snake.startY = i15;
                diffUtil$Snake.endX = i10;
                diffUtil$Snake.endY = i16;
                diffUtil$Snake.reverse = true;
                return diffUtil$Snake;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static DiffUtil$DiffResult calculateDiff(@NonNull DiffUtil$Callback diffUtil$Callback, boolean z8) {
        int oldListSize = diffUtil$Callback.getOldListSize();
        int newListSize = diffUtil$Callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new DiffUtil$Range(0, oldListSize, 0, newListSize));
        int i9 = ((((oldListSize + newListSize) + 1) / 2) * 2) + 1;
        DiffUtil$CenteredArray diffUtil$CenteredArray = new DiffUtil$CenteredArray(i9);
        DiffUtil$CenteredArray diffUtil$CenteredArray2 = new DiffUtil$CenteredArray(i9);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            DiffUtil$Range diffUtil$Range = (DiffUtil$Range) arrayList2.remove(arrayList2.size() - 1);
            DiffUtil$Snake diffUtil$SnakeMidPoint = midPoint(diffUtil$Range, diffUtil$Callback, diffUtil$CenteredArray, diffUtil$CenteredArray2);
            if (diffUtil$SnakeMidPoint != null) {
                if (diffUtil$SnakeMidPoint.diagonalSize() > 0) {
                    arrayList.add(diffUtil$SnakeMidPoint.toDiagonal());
                }
                DiffUtil$Range diffUtil$Range2 = arrayList3.isEmpty() ? new DiffUtil$Range() : (DiffUtil$Range) arrayList3.remove(arrayList3.size() - 1);
                diffUtil$Range2.oldListStart = diffUtil$Range.oldListStart;
                diffUtil$Range2.newListStart = diffUtil$Range.newListStart;
                diffUtil$Range2.oldListEnd = diffUtil$SnakeMidPoint.startX;
                diffUtil$Range2.newListEnd = diffUtil$SnakeMidPoint.startY;
                arrayList2.add(diffUtil$Range2);
                diffUtil$Range.oldListEnd = diffUtil$Range.oldListEnd;
                diffUtil$Range.newListEnd = diffUtil$Range.newListEnd;
                diffUtil$Range.oldListStart = diffUtil$SnakeMidPoint.endX;
                diffUtil$Range.newListStart = diffUtil$SnakeMidPoint.endY;
                arrayList2.add(diffUtil$Range);
            } else {
                arrayList3.add(diffUtil$Range);
            }
        }
        Collections.sort(arrayList, DIAGONAL_COMPARATOR);
        return new DiffUtil$DiffResult(diffUtil$Callback, arrayList, diffUtil$CenteredArray.backingData(), diffUtil$CenteredArray2.backingData(), z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static DiffUtil$Snake forward(DiffUtil$Range diffUtil$Range, DiffUtil$Callback diffUtil$Callback, DiffUtil$CenteredArray diffUtil$CenteredArray, DiffUtil$CenteredArray diffUtil$CenteredArray2, int i9) {
        int i10;
        int i11;
        int i12;
        boolean z8 = Math.abs(diffUtil$Range.oldSize() - diffUtil$Range.newSize()) % 2 == 1;
        int iOldSize = diffUtil$Range.oldSize() - diffUtil$Range.newSize();
        int i13 = -i9;
        for (int i14 = i13; i14 <= i9; i14 += 2) {
            if (i14 == i13 || (i14 != i9 && diffUtil$CenteredArray.get(i14 + 1) > diffUtil$CenteredArray.get(i14 - 1))) {
                i10 = diffUtil$CenteredArray.get(i14 + 1);
                i11 = i10;
            } else {
                i10 = diffUtil$CenteredArray.get(i14 - 1);
                i11 = i10 + 1;
            }
            int i15 = ((i11 - diffUtil$Range.oldListStart) + diffUtil$Range.newListStart) - i14;
            int i16 = (i9 == 0 || i11 != i10) ? i15 : i15 - 1;
            while (i11 < diffUtil$Range.oldListEnd && i15 < diffUtil$Range.newListEnd && diffUtil$Callback.areItemsTheSame(i11, i15)) {
                i11++;
                i15++;
            }
            diffUtil$CenteredArray.set(i14, i11);
            if (z8 && (i12 = iOldSize - i14) >= i13 + 1 && i12 <= i9 - 1 && diffUtil$CenteredArray2.get(i12) <= i11) {
                DiffUtil$Snake diffUtil$Snake = new DiffUtil$Snake();
                diffUtil$Snake.startX = i10;
                diffUtil$Snake.startY = i16;
                diffUtil$Snake.endX = i11;
                diffUtil$Snake.endY = i15;
                diffUtil$Snake.reverse = false;
                return diffUtil$Snake;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static DiffUtil$Snake midPoint(DiffUtil$Range diffUtil$Range, DiffUtil$Callback diffUtil$Callback, DiffUtil$CenteredArray diffUtil$CenteredArray, DiffUtil$CenteredArray diffUtil$CenteredArray2) {
        if (diffUtil$Range.oldSize() >= 1 && diffUtil$Range.newSize() >= 1) {
            int iOldSize = ((diffUtil$Range.oldSize() + diffUtil$Range.newSize()) + 1) / 2;
            diffUtil$CenteredArray.set(1, diffUtil$Range.oldListStart);
            diffUtil$CenteredArray2.set(1, diffUtil$Range.oldListEnd);
            for (int i9 = 0; i9 < iOldSize; i9++) {
                DiffUtil$Snake diffUtil$SnakeForward = forward(diffUtil$Range, diffUtil$Callback, diffUtil$CenteredArray, diffUtil$CenteredArray2, i9);
                if (diffUtil$SnakeForward != null) {
                    return diffUtil$SnakeForward;
                }
                DiffUtil$Snake diffUtil$SnakeBackward = backward(diffUtil$Range, diffUtil$Callback, diffUtil$CenteredArray, diffUtil$CenteredArray2, i9);
                if (diffUtil$SnakeBackward != null) {
                    return diffUtil$SnakeBackward;
                }
            }
        }
        return null;
    }

    @NonNull
    public static DiffUtil$DiffResult calculateDiff(@NonNull DiffUtil$Callback diffUtil$Callback) {
        return calculateDiff(diffUtil$Callback, true);
    }
}
