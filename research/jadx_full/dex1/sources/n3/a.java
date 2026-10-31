package n3;

import android.R$id;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build$VERSION;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements View$OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Dialog f3851b;
    public final int c;
    public final int d;
    public final int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Dialog dialog, Rect rect) {
        this.f3851b = dialog;
        this.c = rect.left;
        this.d = rect.top;
        this.e = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R$id.content);
        int left = viewFindViewById.getLeft() + this.c;
        int width = viewFindViewById.getWidth() + left;
        int top = viewFindViewById.getTop() + this.d;
        if (new RectF(left, top, width, viewFindViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build$VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i9 = this.e;
            motionEventObtain.setLocation((-i9) - 1, (-i9) - 1);
        }
        view.performClick();
        return this.f3851b.onTouchEvent(motionEventObtain);
    }
}
