package androidx.appcompat.widget;

/* JADX INFO: renamed from: androidx.appcompat.widget.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0244b implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f280b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Toolbar f281c;

    public /* synthetic */ RunnableC0244b(Toolbar toolbar, int i10) {
        this.f280b = i10;
        this.f281c = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f280b) {
            case 0:
                this.f281c.collapseActionView();
                break;
            default:
                this.f281c.invalidateMenu();
                break;
        }
    }
}
