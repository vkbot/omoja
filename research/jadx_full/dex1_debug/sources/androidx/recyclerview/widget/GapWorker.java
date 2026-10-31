package androidx.recyclerview.widget;

import android.os.Trace;
import androidx.annotation.Nullable;
import androidx.core.os.TraceCompat;
import j1.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class GapWorker implements Runnable {
    static final ThreadLocal<GapWorker> sGapWorker = new ThreadLocal<>();
    static Comparator<GapWorker$Task> sTaskComparator = new GapWorker$1();
    long mFrameIntervalNs;
    long mPostTimeNs;
    ArrayList<RecyclerView> mRecyclerViews = new ArrayList<>();
    private final ArrayList<GapWorker$Task> mTasks = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void buildTaskList() {
        GapWorker$Task gapWorker$Task;
        int size = this.mRecyclerViews.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            RecyclerView recyclerView = this.mRecyclerViews.get(i10);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.collectPrefetchPositionsFromView(recyclerView, false);
                i9 += recyclerView.mPrefetchRegistry.mCount;
            }
        }
        this.mTasks.ensureCapacity(i9);
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView recyclerView2 = this.mRecyclerViews.get(i12);
            if (recyclerView2.getWindowVisibility() == 0) {
                GapWorker$LayoutPrefetchRegistryImpl gapWorker$LayoutPrefetchRegistryImpl = recyclerView2.mPrefetchRegistry;
                int iAbs = Math.abs(gapWorker$LayoutPrefetchRegistryImpl.mPrefetchDy) + Math.abs(gapWorker$LayoutPrefetchRegistryImpl.mPrefetchDx);
                for (int i13 = 0; i13 < gapWorker$LayoutPrefetchRegistryImpl.mCount * 2; i13 += 2) {
                    if (i11 >= this.mTasks.size()) {
                        gapWorker$Task = new GapWorker$Task();
                        this.mTasks.add(gapWorker$Task);
                    } else {
                        gapWorker$Task = this.mTasks.get(i11);
                    }
                    int[] iArr = gapWorker$LayoutPrefetchRegistryImpl.mPrefetchArray;
                    int i14 = iArr[i13 + 1];
                    gapWorker$Task.neededNextFrame = i14 <= iAbs;
                    gapWorker$Task.viewVelocity = iAbs;
                    gapWorker$Task.distanceToItem = i14;
                    gapWorker$Task.view = recyclerView2;
                    gapWorker$Task.position = iArr[i13];
                    i11++;
                }
            }
        }
        Collections.sort(this.mTasks, sTaskComparator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void flushTaskWithDeadline(GapWorker$Task gapWorker$Task, long j9) {
        RecyclerView$ViewHolder recyclerView$ViewHolderPrefetchPositionWithDeadline = prefetchPositionWithDeadline(gapWorker$Task.view, gapWorker$Task.position, gapWorker$Task.neededNextFrame ? Long.MAX_VALUE : j9);
        if (recyclerView$ViewHolderPrefetchPositionWithDeadline == null || recyclerView$ViewHolderPrefetchPositionWithDeadline.mNestedRecyclerView == null || !recyclerView$ViewHolderPrefetchPositionWithDeadline.isBound() || recyclerView$ViewHolderPrefetchPositionWithDeadline.isInvalid()) {
            return;
        }
        prefetchInnerRecyclerViewWithDeadline(recyclerView$ViewHolderPrefetchPositionWithDeadline.mNestedRecyclerView.get(), j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void flushTasksWithDeadline(long j9) {
        for (int i9 = 0; i9 < this.mTasks.size(); i9++) {
            GapWorker$Task gapWorker$Task = this.mTasks.get(i9);
            if (gapWorker$Task.view == null) {
                return;
            }
            flushTaskWithDeadline(gapWorker$Task, j9);
            gapWorker$Task.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isPrefetchPositionAttached(RecyclerView recyclerView, int i9) {
        int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
        for (int i10 = 0; i10 < unfilteredChildCount; i10++) {
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i10));
            if (childViewHolderInt.mPosition == i9 && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void prefetchInnerRecyclerViewWithDeadline(@Nullable RecyclerView recyclerView, long j9) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.getUnfilteredChildCount() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        GapWorker$LayoutPrefetchRegistryImpl gapWorker$LayoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
        gapWorker$LayoutPrefetchRegistryImpl.collectPrefetchPositionsFromView(recyclerView, true);
        if (gapWorker$LayoutPrefetchRegistryImpl.mCount != 0) {
            try {
                Trace.beginSection(j9 == Long.MAX_VALUE ? "RV Nested Prefetch" : "RV Nested Prefetch forced - needed next frame");
                recyclerView.mState.prepareForNestedPrefetch(recyclerView.mAdapter);
                for (int i9 = 0; i9 < gapWorker$LayoutPrefetchRegistryImpl.mCount * 2; i9 += 2) {
                    prefetchPositionWithDeadline(recyclerView, gapWorker$LayoutPrefetchRegistryImpl.mPrefetchArray[i9], j9);
                }
                Trace.endSection();
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RecyclerView$ViewHolder prefetchPositionWithDeadline(RecyclerView recyclerView, int i9, long j9) {
        if (isPrefetchPositionAttached(recyclerView, i9)) {
            return null;
        }
        RecyclerView$Recycler recyclerView$Recycler = recyclerView.mRecycler;
        if (j9 == Long.MAX_VALUE) {
            try {
                if (TraceCompat.isEnabled()) {
                    Trace.beginSection("RV Prefetch forced - needed next frame");
                }
            } finally {
                recyclerView.onExitLayoutOrScroll(false);
                Trace.endSection();
            }
        }
        recyclerView.onEnterLayoutOrScroll();
        RecyclerView$ViewHolder recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline = recyclerView$Recycler.tryGetViewHolderForPositionByDeadline(i9, false, j9);
        if (recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline != null) {
            if (!recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline.isBound() || recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline.isInvalid()) {
                recyclerView$Recycler.addViewHolderToRecycledViewPool(recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline, false);
            } else {
                recyclerView$Recycler.recycleView(recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline.itemView);
            }
        }
        return recyclerView$ViewHolderTryGetViewHolderForPositionByDeadline;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(RecyclerView recyclerView) {
        if (RecyclerView.sDebugAssertionsEnabled && this.mRecyclerViews.contains(recyclerView)) {
            i.l("RecyclerView already present in worker list!");
        } else {
            this.mRecyclerViews.add(recyclerView);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void postFromTraversal(RecyclerView recyclerView, int i9, int i10) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.mRecyclerViews.contains(recyclerView)) {
                i.l("attempting to post unregistered view!");
                return;
            } else if (this.mPostTimeNs == 0) {
                this.mPostTimeNs = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        recyclerView.mPrefetchRegistry.setPrefetchVector(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void prefetch(long j9) {
        buildTaskList();
        flushTasksWithDeadline(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void remove(RecyclerView recyclerView) {
        boolean zRemove = this.mRecyclerViews.remove(recyclerView);
        if (!RecyclerView.sDebugAssertionsEnabled || zRemove) {
            return;
        }
        i.l("RecyclerView removal failed!");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        try {
            Trace.beginSection("RV Prefetch");
            if (!this.mRecyclerViews.isEmpty()) {
                int size = this.mRecyclerViews.size();
                long jMax = 0;
                for (int i9 = 0; i9 < size; i9++) {
                    RecyclerView recyclerView = this.mRecyclerViews.get(i9);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    prefetch(TimeUnit.MILLISECONDS.toNanos(jMax) + this.mFrameIntervalNs);
                }
            }
        } finally {
            this.mPostTimeNs = 0L;
            Trace.endSection();
        }
    }
}
