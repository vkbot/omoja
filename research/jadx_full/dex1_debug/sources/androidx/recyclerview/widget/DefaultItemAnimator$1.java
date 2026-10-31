package androidx.recyclerview.widget;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DefaultItemAnimator$1 implements Runnable {
    final /* synthetic */ DefaultItemAnimator this$0;
    final /* synthetic */ ArrayList val$moves;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public DefaultItemAnimator$1(DefaultItemAnimator defaultItemAnimator, ArrayList arrayList) {
        this.this$0 = defaultItemAnimator;
        this.val$moves = arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.val$moves;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            DefaultItemAnimator$MoveInfo defaultItemAnimator$MoveInfo = (DefaultItemAnimator$MoveInfo) obj;
            this.this$0.animateMoveImpl(defaultItemAnimator$MoveInfo.holder, defaultItemAnimator$MoveInfo.fromX, defaultItemAnimator$MoveInfo.fromY, defaultItemAnimator$MoveInfo.toX, defaultItemAnimator$MoveInfo.toY);
        }
        this.val$moves.clear();
        this.this$0.mMovesList.remove(this.val$moves);
    }
}
