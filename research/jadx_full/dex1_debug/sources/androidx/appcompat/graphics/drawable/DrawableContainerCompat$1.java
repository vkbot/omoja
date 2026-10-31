package androidx.appcompat.graphics.drawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DrawableContainerCompat$1 implements Runnable {
    final /* synthetic */ DrawableContainerCompat this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DrawableContainerCompat$1(DrawableContainerCompat drawableContainerCompat) {
        this.this$0 = drawableContainerCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.this$0.animate(true);
        this.this$0.invalidateSelf();
    }
}
