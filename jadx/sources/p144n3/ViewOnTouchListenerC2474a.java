package p144n3;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: renamed from: n3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC2474a implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    public final Dialog f6816b;

    /* JADX INFO: renamed from: c */
    public final int f6817c;

    /* JADX INFO: renamed from: d */
    public final int f6818d;

    /* JADX INFO: renamed from: e */
    public final int f6819e;

    public ViewOnTouchListenerC2474a(Dialog dialog, Rect rect) {
        this.f6816b = dialog;
        this.f6817c = rect.left;
        this.f6818d = rect.top;
        this.f6819e = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = viewFindViewById.getLeft() + this.f6817c;
        int width = viewFindViewById.getWidth() + left;
        int top = viewFindViewById.getTop() + this.f6818d;
        if (new RectF(left, top, width, viewFindViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i10 = this.f6819e;
            motionEventObtain.setLocation((-i10) - 1, (-i10) - 1);
        }
        view.performClick();
        return this.f6816b.onTouchEvent(motionEventObtain);
    }
}
