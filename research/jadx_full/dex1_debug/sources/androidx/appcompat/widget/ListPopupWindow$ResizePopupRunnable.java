package androidx.appcompat.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ListPopupWindow$ResizePopupRunnable implements Runnable {
    final /* synthetic */ ListPopupWindow this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListPopupWindow$ResizePopupRunnable(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        DropDownListView dropDownListView = this.this$0.mDropDownList;
        if (dropDownListView == null || !dropDownListView.isAttachedToWindow() || this.this$0.mDropDownList.getCount() <= this.this$0.mDropDownList.getChildCount()) {
            return;
        }
        int childCount = this.this$0.mDropDownList.getChildCount();
        ListPopupWindow listPopupWindow = this.this$0;
        if (childCount <= listPopupWindow.mListItemExpandMaximum) {
            listPopupWindow.mPopup.setInputMethodMode(2);
            this.this$0.show();
        }
    }
}
