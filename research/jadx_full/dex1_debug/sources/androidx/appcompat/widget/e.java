package androidx.appcompat.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f123b;
    public final /* synthetic */ TooltipCompatHandler c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(TooltipCompatHandler tooltipCompatHandler, int i9) {
        this.f123b = i9;
        this.c = tooltipCompatHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f123b) {
            case 0:
                TooltipCompatHandler.a(this.c);
                break;
            default:
                this.c.hide();
                break;
        }
    }
}
