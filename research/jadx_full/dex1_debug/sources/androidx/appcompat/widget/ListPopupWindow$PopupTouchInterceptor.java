package androidx.appcompat.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.PopupWindow;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ListPopupWindow$PopupTouchInterceptor implements View$OnTouchListener {
    final /* synthetic */ ListPopupWindow this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListPopupWindow$PopupTouchInterceptor(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        PopupWindow popupWindow;
        int action = motionEvent.getAction();
        int x8 = (int) motionEvent.getX();
        int y8 = (int) motionEvent.getY();
        if (action == 0 && (popupWindow = this.this$0.mPopup) != null && popupWindow.isShowing() && x8 >= 0 && x8 < this.this$0.mPopup.getWidth() && y8 >= 0 && y8 < this.this$0.mPopup.getHeight()) {
            ListPopupWindow listPopupWindow = this.this$0;
            listPopupWindow.mHandler.postDelayed(listPopupWindow.mResizePopupRunnable, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        ListPopupWindow listPopupWindow2 = this.this$0;
        listPopupWindow2.mHandler.removeCallbacks(listPopupWindow2.mResizePopupRunnable);
        return false;
    }
}
