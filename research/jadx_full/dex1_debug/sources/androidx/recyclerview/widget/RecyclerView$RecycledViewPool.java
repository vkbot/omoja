package androidx.recyclerview.widget;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.customview.poolingcontainer.PoolingContainer;
import j1.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$RecycledViewPool {
    private static final int DEFAULT_MAX_SCRAP = 5;
    SparseArray<RecyclerView$RecycledViewPool$ScrapData> mScrap = new SparseArray<>();
    int mAttachCountForClearing = 0;
    Set<RecyclerView$Adapter<?>> mAttachedAdaptersForPoolingContainer = Collections.newSetFromMap(new IdentityHashMap());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RecyclerView$RecycledViewPool$ScrapData getScrapDataForType(int i9) {
        RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData = this.mScrap.get(i9);
        if (recyclerView$RecycledViewPool$ScrapData != null) {
            return recyclerView$RecycledViewPool$ScrapData;
        }
        RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData2 = new RecyclerView$RecycledViewPool$ScrapData();
        this.mScrap.put(i9, recyclerView$RecycledViewPool$ScrapData2);
        return recyclerView$RecycledViewPool$ScrapData2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void attach() {
        this.mAttachCountForClearing++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void attachForPoolingContainer(@NonNull RecyclerView$Adapter<?> recyclerView$Adapter) {
        this.mAttachedAdaptersForPoolingContainer.add(recyclerView$Adapter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        for (int i9 = 0; i9 < this.mScrap.size(); i9++) {
            RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapDataValueAt = this.mScrap.valueAt(i9);
            ArrayList<RecyclerView$ViewHolder> arrayList = recyclerView$RecycledViewPool$ScrapDataValueAt.mScrapHeap;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                RecyclerView$ViewHolder recyclerView$ViewHolder = arrayList.get(i10);
                i10++;
                PoolingContainer.callPoolingContainerOnRelease(recyclerView$ViewHolder.itemView);
            }
            recyclerView$RecycledViewPool$ScrapDataValueAt.mScrapHeap.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detach() {
        this.mAttachCountForClearing--;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detachForPoolingContainer(@NonNull RecyclerView$Adapter<?> recyclerView$Adapter, boolean z8) {
        this.mAttachedAdaptersForPoolingContainer.remove(recyclerView$Adapter);
        if (this.mAttachedAdaptersForPoolingContainer.size() != 0 || z8) {
            return;
        }
        for (int i9 = 0; i9 < this.mScrap.size(); i9++) {
            SparseArray<RecyclerView$RecycledViewPool$ScrapData> sparseArray = this.mScrap;
            ArrayList<RecyclerView$ViewHolder> arrayList = sparseArray.get(sparseArray.keyAt(i9)).mScrapHeap;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                PoolingContainer.callPoolingContainerOnRelease(arrayList.get(i10).itemView);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void factorInBindTime(int i9, long j9) {
        RecyclerView$RecycledViewPool$ScrapData scrapDataForType = getScrapDataForType(i9);
        scrapDataForType.mBindRunningAverageNs = runningAverage(scrapDataForType.mBindRunningAverageNs, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void factorInCreateTime(int i9, long j9) {
        RecyclerView$RecycledViewPool$ScrapData scrapDataForType = getScrapDataForType(i9);
        scrapDataForType.mCreateRunningAverageNs = runningAverage(scrapDataForType.mCreateRunningAverageNs, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$ViewHolder getRecycledView(int i9) {
        RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData = this.mScrap.get(i9);
        if (recyclerView$RecycledViewPool$ScrapData == null || recyclerView$RecycledViewPool$ScrapData.mScrapHeap.isEmpty()) {
            return null;
        }
        ArrayList<RecyclerView$ViewHolder> arrayList = recyclerView$RecycledViewPool$ScrapData.mScrapHeap;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!arrayList.get(size).isAttachedToTransitionOverlay()) {
                return arrayList.remove(size);
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRecycledViewCount(int i9) {
        return getScrapDataForType(i9).mScrapHeap.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onAdapterChanged(RecyclerView$Adapter<?> recyclerView$Adapter, RecyclerView$Adapter<?> recyclerView$Adapter2, boolean z8) {
        if (recyclerView$Adapter != null) {
            detach();
        }
        if (!z8 && this.mAttachCountForClearing == 0) {
            clear();
        }
        if (recyclerView$Adapter2 != null) {
            attach();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putRecycledView(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        int itemViewType = recyclerView$ViewHolder.getItemViewType();
        ArrayList<RecyclerView$ViewHolder> arrayList = getScrapDataForType(itemViewType).mScrapHeap;
        if (this.mScrap.get(itemViewType).mMaxScrap <= arrayList.size()) {
            PoolingContainer.callPoolingContainerOnRelease(recyclerView$ViewHolder.itemView);
        } else if (RecyclerView.sDebugAssertionsEnabled && arrayList.contains(recyclerView$ViewHolder)) {
            i.k("this scrap item already exists");
        } else {
            recyclerView$ViewHolder.resetInternal();
            arrayList.add(recyclerView$ViewHolder);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long runningAverage(long j9, long j10) {
        if (j9 == 0) {
            return j10;
        }
        return (j10 / 4) + ((j9 / 4) * 3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxRecycledViews(int i9, int i10) {
        RecyclerView$RecycledViewPool$ScrapData scrapDataForType = getScrapDataForType(i9);
        scrapDataForType.mMaxScrap = i10;
        ArrayList<RecyclerView$ViewHolder> arrayList = scrapDataForType.mScrapHeap;
        while (arrayList.size() > i10) {
            arrayList.remove(arrayList.size() - 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        int size = 0;
        for (int i9 = 0; i9 < this.mScrap.size(); i9++) {
            ArrayList<RecyclerView$ViewHolder> arrayList = this.mScrap.valueAt(i9).mScrapHeap;
            if (arrayList != null) {
                size = arrayList.size() + size;
            }
        }
        return size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean willBindInTime(int i9, long j9, long j10) {
        long j11 = getScrapDataForType(i9).mBindRunningAverageNs;
        return j11 == 0 || j9 + j11 < j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean willCreateInTime(int i9, long j9, long j10) {
        long j11 = getScrapDataForType(i9).mCreateRunningAverageNs;
        return j11 == 0 || j9 + j11 < j10;
    }
}
