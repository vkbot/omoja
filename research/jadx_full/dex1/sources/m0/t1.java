package m0;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class t1 implements View$OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u1 f3591b;
    public final /* synthetic */ s1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t1(u1 u1Var, s1 s1Var) {
        this.f3591b = u1Var;
        this.c = s1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        u1 u1Var = this.f3591b;
        w1 w1Var = u1Var.e.f3613a;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            u1Var.c = motionEvent.getRawX();
            u1Var.d = motionEvent.getRawY();
            view.animate().cancel();
            view.setTranslationY(0.0f);
            view.setAlpha(1.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                float rawX = motionEvent.getRawX() - u1Var.c;
                float rawY = motionEvent.getRawY() - u1Var.d;
                if (rawY < 0.0f && Math.abs(rawY) > Math.abs(rawX)) {
                    RecyclerView recyclerView = w1Var.f3616b;
                    if (recyclerView != null) {
                        recyclerView.requestDisallowInterceptTouchEvent(true);
                    }
                    float fMin = Math.min(1.0f, Math.abs(rawY) / 126.0f);
                    view.setTranslationY(rawY * 0.65f);
                    view.setAlpha(1.0f - (0.75f * fMin));
                    float f8 = 1.0f - (fMin * 0.06f);
                    view.setScaleX(f8);
                    view.setScaleY(f8);
                }
            } else if (actionMasked == 3) {
                u1.a(view);
                return true;
            }
            return true;
        }
        float rawX2 = motionEvent.getRawX() - u1Var.c;
        float rawY2 = motionEvent.getRawY() - u1Var.d;
        if (rawY2 >= -70.0f || Math.abs(rawY2) <= Math.abs(rawX2)) {
            if (Math.abs(rawX2) >= 12.0f || Math.abs(rawY2) >= 12.0f) {
                u1.a(view);
                return true;
            }
            view.performClick();
            return true;
        }
        Context contextRequireContext = w1Var.requireContext();
        s1 s1Var = this.c;
        if (!w1.t(contextRequireContext, s1Var.f3585b)) {
            u1.a(view);
            return true;
        }
        int adapterPosition = u1Var.getAdapterPosition();
        if (adapterPosition == -1) {
            u1.a(view);
            return true;
        }
        view.animate().translationY((-view.getHeight()) * 0.65f).alpha(0.0f).scaleX(0.92f).scaleY(0.92f).setDuration(240L).withEndAction(new androidx.activity.f(u1Var, s1Var, adapterPosition, 7)).start();
        return true;
    }
}
