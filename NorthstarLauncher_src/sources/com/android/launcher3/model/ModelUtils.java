package com.android.launcher3.model;

import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.stream.IntStream;

/* JADX INFO: loaded from: classes.dex */
public class ModelUtils {
    public static <T extends ItemInfo> void filterCurrentWorkspaceItems(int currentScreenId, ArrayList<T> allWorkspaceItems, ArrayList<T> currentScreenItems, ArrayList<T> otherScreenItems) {
        Iterator<T> it = allWorkspaceItems.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                it.remove();
            }
        }
        IntSet intSet = new IntSet();
        Collections.sort(allWorkspaceItems, new Comparator() { // from class: com.android.launcher3.model.ModelUtils$$ExternalSyntheticLambda4
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.compare(((ItemInfo) obj).container, ((ItemInfo) obj2).container);
            }
        });
        for (T t : allWorkspaceItems) {
            if (t.container == -100) {
                if (t.screenId == currentScreenId) {
                    currentScreenItems.add(t);
                    intSet.add(t.id);
                } else {
                    otherScreenItems.add(t);
                }
            } else if (t.container == -101) {
                currentScreenItems.add(t);
                intSet.add(t.id);
            } else if (intSet.contains(t.container)) {
                currentScreenItems.add(t);
                intSet.add(t.id);
            } else {
                otherScreenItems.add(t);
            }
        }
    }

    public static void sortWorkspaceItemsSpatially(InvariantDeviceProfile profile, ArrayList<ItemInfo> workspaceItems) {
        final int i = profile.numColumns;
        final int i2 = profile.numColumns * profile.numRows;
        Collections.sort(workspaceItems, new Comparator() { // from class: com.android.launcher3.model.ModelUtils$$ExternalSyntheticLambda5
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ModelUtils.lambda$sortWorkspaceItemsSpatially$1(i2, i, (ItemInfo) obj, (ItemInfo) obj2);
            }
        });
    }

    static /* synthetic */ int lambda$sortWorkspaceItemsSpatially$1(int i, int i2, ItemInfo itemInfo, ItemInfo itemInfo2) {
        if (itemInfo.container == itemInfo2.container) {
            int i3 = itemInfo.container;
            if (i3 == -101) {
                return Integer.compare(itemInfo.screenId, itemInfo2.screenId);
            }
            if (i3 == -100) {
                return Integer.compare((itemInfo.screenId * i) + (itemInfo.cellY * i2) + itemInfo.cellX, (itemInfo2.screenId * i) + (itemInfo2.cellY * i2) + itemInfo2.cellX);
            }
            throw new RuntimeException("Unexpected container type when sorting workspace items.");
        }
        return Integer.compare(itemInfo.container, itemInfo2.container);
    }

    public static IntArray getMissingHotseatRanks(List<ItemInfo> items, int len) {
        final IntSet intSet = new IntSet();
        items.stream().filter(new Predicate() { // from class: com.android.launcher3.model.ModelUtils$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ModelUtils.lambda$getMissingHotseatRanks$2((ItemInfo) obj);
            }
        }).forEach(new Consumer() { // from class: com.android.launcher3.model.ModelUtils$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                intSet.add(((ItemInfo) obj).screenId);
            }
        });
        final IntArray intArray = new IntArray(len);
        IntStream intStreamFilter = IntStream.range(0, len).filter(new IntPredicate() { // from class: com.android.launcher3.model.ModelUtils$$ExternalSyntheticLambda2
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                return ModelUtils.lambda$getMissingHotseatRanks$4(intSet, i);
            }
        });
        Objects.requireNonNull(intArray);
        intStreamFilter.forEach(new IntConsumer() { // from class: com.android.launcher3.model.ModelUtils$$ExternalSyntheticLambda3
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                intArray.add(i);
            }
        });
        return intArray;
    }

    static /* synthetic */ boolean lambda$getMissingHotseatRanks$2(ItemInfo itemInfo) {
        return itemInfo.container == -101;
    }

    static /* synthetic */ boolean lambda$getMissingHotseatRanks$4(IntSet intSet, int i) {
        return !intSet.contains(i);
    }
}
