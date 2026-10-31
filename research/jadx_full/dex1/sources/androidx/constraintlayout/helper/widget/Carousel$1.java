package androidx.constraintlayout.helper.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Carousel$1 implements Runnable {
    final /* synthetic */ Carousel this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Carousel$1(Carousel carousel) {
        this.this$0 = carousel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        Carousel.access$000(this.this$0).setProgress(0.0f);
        Carousel.access$100(this.this$0);
        Carousel.access$300(this.this$0).onNewItem(Carousel.access$200(this.this$0));
        float velocity = Carousel.access$000(this.this$0).getVelocity();
        if (Carousel.access$400(this.this$0) != 2 || velocity <= Carousel.access$500(this.this$0) || Carousel.access$200(this.this$0) >= Carousel.access$300(this.this$0).count() - 1) {
            return;
        }
        float fAccess$600 = Carousel.access$600(this.this$0) * velocity;
        if (Carousel.access$200(this.this$0) != 0 || Carousel.access$700(this.this$0) <= Carousel.access$200(this.this$0)) {
            if (Carousel.access$200(this.this$0) != Carousel.access$300(this.this$0).count() - 1 || Carousel.access$700(this.this$0) >= Carousel.access$200(this.this$0)) {
                Carousel.access$000(this.this$0).post(new Carousel$1$1(this, fAccess$600));
            }
        }
    }
}
