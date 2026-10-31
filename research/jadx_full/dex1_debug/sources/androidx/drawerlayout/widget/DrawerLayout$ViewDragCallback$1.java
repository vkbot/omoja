package androidx.drawerlayout.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DrawerLayout$ViewDragCallback$1 implements Runnable {
    final /* synthetic */ DrawerLayout$ViewDragCallback this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DrawerLayout$ViewDragCallback$1(DrawerLayout$ViewDragCallback drawerLayout$ViewDragCallback) {
        this.this$1 = drawerLayout$ViewDragCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.this$1.peekDrawer();
    }
}
