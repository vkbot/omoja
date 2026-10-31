package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DefaultItemAnimator$ChangeInfo {
    public int fromX;
    public int fromY;
    public RecyclerView$ViewHolder newHolder;
    public RecyclerView$ViewHolder oldHolder;
    public int toX;
    public int toY;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DefaultItemAnimator$ChangeInfo(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ViewHolder recyclerView$ViewHolder2, int i9, int i10, int i11, int i12) {
        this(recyclerView$ViewHolder, recyclerView$ViewHolder2);
        this.fromX = i9;
        this.fromY = i10;
        this.toX = i11;
        this.toY = i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "ChangeInfo{oldHolder=" + this.oldHolder + ", newHolder=" + this.newHolder + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + '}';
    }

    private DefaultItemAnimator$ChangeInfo(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ViewHolder recyclerView$ViewHolder2) {
        this.oldHolder = recyclerView$ViewHolder;
        this.newHolder = recyclerView$ViewHolder2;
    }
}
