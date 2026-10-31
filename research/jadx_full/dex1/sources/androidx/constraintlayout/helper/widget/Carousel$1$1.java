package androidx.constraintlayout.helper.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Carousel$1$1 implements Runnable {
    final /* synthetic */ Carousel$1 this$1;
    final /* synthetic */ float val$v;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public Carousel$1$1(Carousel$1 carousel$1, float f8) {
        this.this$1 = carousel$1;
        this.val$v = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        Carousel.access$000(this.this$1.this$0).touchAnimateTo(5, 1.0f, this.val$v);
    }
}
