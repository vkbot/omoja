package p190s1;

import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;

/* JADX INFO: renamed from: s1.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnTouchListenerC3139d implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8989b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3153k f8990c;

    public /* synthetic */ ViewOnTouchListenerC3139d(C3153k c3153k, int i10) {
        this.f8989b = i10;
        this.f8990c = c3153k;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f8989b) {
            case 0:
                this.f8990c.m5006r();
                return false;
            case 1:
                this.f8990c.m5006r();
                return false;
            default:
                C3153k c3153k = this.f8990c;
                Button button = c3153k.f9058f;
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    return true;
                }
                if (actionMasked == 2) {
                    c3153k.m4988A(motionEvent);
                    return true;
                }
                if (actionMasked == 1) {
                    c3153k.m4988A(motionEvent);
                    button.setTranslationX(0.0f);
                    button.setTranslationY(0.0f);
                    c3153k.m4993d();
                    return true;
                }
                if (actionMasked != 3) {
                    return false;
                }
                button.setTranslationX(0.0f);
                button.setTranslationY(0.0f);
                c3153k.m4993d();
                return true;
        }
    }
}
