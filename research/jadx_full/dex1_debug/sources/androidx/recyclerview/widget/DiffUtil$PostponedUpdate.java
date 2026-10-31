package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DiffUtil$PostponedUpdate {
    int currentPos;
    int posInOwnerList;
    boolean removal;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DiffUtil$PostponedUpdate(int i9, int i10, boolean z8) {
        this.posInOwnerList = i9;
        this.currentPos = i10;
        this.removal = z8;
    }
}
