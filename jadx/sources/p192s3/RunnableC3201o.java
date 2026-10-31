package p192s3;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.content.ContextCompat;

/* JADX INFO: renamed from: s3.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3201o implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9373b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ View f9374c;

    public /* synthetic */ RunnableC3201o(int i10, View view) {
        this.f9373b = i10;
        this.f9374c = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9373b) {
            case 0:
                View view = this.f9374c;
                ((InputMethodManager) ContextCompat.getSystemService(view.getContext(), InputMethodManager.class)).showSoftInput(view, 1);
                break;
            case 1:
                this.f9374c.setVisibility(8);
                break;
            default:
                this.f9374c.performClick();
                break;
        }
    }
}
