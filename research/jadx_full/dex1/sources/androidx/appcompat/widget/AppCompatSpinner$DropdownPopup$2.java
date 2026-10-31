package androidx.appcompat.widget;

import android.view.ViewTreeObserver$OnGlobalLayoutListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatSpinner$DropdownPopup$2 implements ViewTreeObserver$OnGlobalLayoutListener {
    final /* synthetic */ AppCompatSpinner$DropdownPopup this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatSpinner$DropdownPopup$2(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup) {
        this.this$1 = appCompatSpinner$DropdownPopup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnGlobalLayoutListener
    public void onGlobalLayout() {
        AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup = this.this$1;
        boolean zIsVisibleToUser = appCompatSpinner$DropdownPopup.isVisibleToUser(appCompatSpinner$DropdownPopup.this$0);
        AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup2 = this.this$1;
        if (!zIsVisibleToUser) {
            appCompatSpinner$DropdownPopup2.dismiss();
        } else {
            appCompatSpinner$DropdownPopup2.computeContentWidth();
            AppCompatSpinner$DropdownPopup.access$001(this.this$1);
        }
    }
}
