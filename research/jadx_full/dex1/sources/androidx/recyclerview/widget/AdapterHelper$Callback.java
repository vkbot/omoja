package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface AdapterHelper$Callback {
    RecyclerView$ViewHolder findViewHolder(int i9);

    void markViewHoldersUpdated(int i9, int i10, Object obj);

    void offsetPositionsForAdd(int i9, int i10);

    void offsetPositionsForMove(int i9, int i10);

    void offsetPositionsForRemovingInvisible(int i9, int i10);

    void offsetPositionsForRemovingLaidOutOrNewView(int i9, int i10);

    void onDispatchFirstPass(AdapterHelper$UpdateOp adapterHelper$UpdateOp);

    void onDispatchSecondPass(AdapterHelper$UpdateOp adapterHelper$UpdateOp);
}
