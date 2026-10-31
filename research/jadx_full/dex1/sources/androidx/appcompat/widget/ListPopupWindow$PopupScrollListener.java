package androidx.appcompat.widget;

import android.widget.AbsListView;
import android.widget.AbsListView$OnScrollListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ListPopupWindow$PopupScrollListener implements AbsListView$OnScrollListener {
    final /* synthetic */ ListPopupWindow this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListPopupWindow$PopupScrollListener(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AbsListView$OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i9) {
        if (i9 != 1 || this.this$0.isInputMethodNotNeeded() || this.this$0.mPopup.getContentView() == null) {
            return;
        }
        ListPopupWindow listPopupWindow = this.this$0;
        listPopupWindow.mHandler.removeCallbacks(listPopupWindow.mResizePopupRunnable);
        this.this$0.mResizePopupRunnable.run();
    }

    @Override // android.widget.AbsListView$OnScrollListener
    public void onScroll(AbsListView absListView, int i9, int i10, int i11) {
    }
}
