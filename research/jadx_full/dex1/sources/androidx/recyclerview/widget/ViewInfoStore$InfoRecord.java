package androidx.recyclerview.widget;

import androidx.annotation.Nullable;
import androidx.core.util.Pools$Pool;
import androidx.core.util.Pools$SimplePool;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewInfoStore$InfoRecord {
    static final int FLAG_APPEAR = 2;
    static final int FLAG_APPEAR_AND_DISAPPEAR = 3;
    static final int FLAG_APPEAR_PRE_AND_POST = 14;
    static final int FLAG_DISAPPEARED = 1;
    static final int FLAG_POST = 8;
    static final int FLAG_PRE = 4;
    static final int FLAG_PRE_AND_POST = 12;
    static Pools$Pool<ViewInfoStore$InfoRecord> sPool = new Pools$SimplePool(20);
    int flags;

    @Nullable
    RecyclerView$ItemAnimator$ItemHolderInfo postInfo;

    @Nullable
    RecyclerView$ItemAnimator$ItemHolderInfo preInfo;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewInfoStore$InfoRecord() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void drainCache() {
        while (sPool.acquire() != null) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ViewInfoStore$InfoRecord obtain() {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordAcquire = sPool.acquire();
        return viewInfoStore$InfoRecordAcquire == null ? new ViewInfoStore$InfoRecord() : viewInfoStore$InfoRecordAcquire;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void recycle(ViewInfoStore$InfoRecord viewInfoStore$InfoRecord) {
        viewInfoStore$InfoRecord.flags = 0;
        viewInfoStore$InfoRecord.preInfo = null;
        viewInfoStore$InfoRecord.postInfo = null;
        sPool.release(viewInfoStore$InfoRecord);
    }
}
