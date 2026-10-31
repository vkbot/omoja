package s1;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.Button;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements View$OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5068b;
    public final /* synthetic */ k c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(k kVar, int i9) {
        this.f5068b = i9;
        this.c = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f5068b) {
            case 0:
                this.c.r();
                return false;
            case 1:
                this.c.r();
                return false;
            default:
                k kVar = this.c;
                Button button = kVar.f5107f;
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    return true;
                }
                if (actionMasked == 2) {
                    kVar.A(motionEvent);
                    return true;
                }
                if (actionMasked == 1) {
                    kVar.A(motionEvent);
                    button.setTranslationX(0.0f);
                    button.setTranslationY(0.0f);
                    kVar.d();
                    return true;
                }
                if (actionMasked != 3) {
                    return false;
                }
                button.setTranslationX(0.0f);
                button.setTranslationY(0.0f);
                kVar.d();
                return true;
        }
    }
}
