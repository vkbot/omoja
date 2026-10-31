package androidx.core.view;

import android.view.View;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: androidx.core.view.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0422g implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f397b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f398c;

    public /* synthetic */ RunnableC0422g(int i10, Object obj) {
        this.f397b = i10;
        this.f398c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f397b) {
            case 0:
                SoftwareKeyboardControllerCompat.Impl20.lambda$show$0((View) this.f398c);
                break;
            default:
                ((Function0) this.f398c).invoke();
                break;
        }
    }
}
