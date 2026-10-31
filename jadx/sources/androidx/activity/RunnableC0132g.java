package androidx.activity;

/* JADX INFO: renamed from: androidx.activity.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0132g implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f244b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ComponentActivity f245c;

    public /* synthetic */ RunnableC0132g(ComponentActivity componentActivity, int i10) {
        this.f244b = i10;
        this.f245c = componentActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f244b) {
            case 0:
                ComponentActivity$onBackPressedDispatcher$2.invoke$lambda$0(this.f245c);
                break;
            default:
                this.f245c.invalidateMenu();
                break;
        }
    }
}
