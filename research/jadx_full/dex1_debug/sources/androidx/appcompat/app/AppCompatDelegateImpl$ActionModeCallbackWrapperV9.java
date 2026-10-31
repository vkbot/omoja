package androidx.appcompat.app;

import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ActionMode$Callback;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$ActionModeCallbackWrapperV9 implements ActionMode$Callback {
    private ActionMode$Callback mWrapped;
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$ActionModeCallbackWrapperV9(AppCompatDelegateImpl appCompatDelegateImpl, ActionMode$Callback actionMode$Callback) {
        this.this$0 = appCompatDelegateImpl;
        this.mWrapped = actionMode$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.ActionMode$Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.mWrapped.onActionItemClicked(actionMode, menuItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.ActionMode$Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.mWrapped.onCreateActionMode(actionMode, menu);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.ActionMode$Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.mWrapped.onDestroyActionMode(actionMode);
        AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
        if (appCompatDelegateImpl.mActionModePopup != null) {
            appCompatDelegateImpl.mWindow.getDecorView().removeCallbacks(this.this$0.mShowActionModePopup);
        }
        AppCompatDelegateImpl appCompatDelegateImpl2 = this.this$0;
        if (appCompatDelegateImpl2.mActionModeView != null) {
            appCompatDelegateImpl2.endOnGoingFadeAnimation();
            AppCompatDelegateImpl appCompatDelegateImpl3 = this.this$0;
            appCompatDelegateImpl3.mFadeAnim = ViewCompat.animate(appCompatDelegateImpl3.mActionModeView).alpha(0.0f);
            this.this$0.mFadeAnim.setListener(new AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1(this));
        }
        AppCompatDelegateImpl appCompatDelegateImpl4 = this.this$0;
        AppCompatCallback appCompatCallback = appCompatDelegateImpl4.mAppCompatCallback;
        if (appCompatCallback != null) {
            appCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl4.mActionMode);
        }
        AppCompatDelegateImpl appCompatDelegateImpl5 = this.this$0;
        appCompatDelegateImpl5.mActionMode = null;
        ViewCompat.requestApplyInsets(appCompatDelegateImpl5.mSubDecor);
        this.this$0.updateBackInvokedCallbackState();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.ActionMode$Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        ViewCompat.requestApplyInsets(this.this$0.mSubDecor);
        return this.mWrapped.onPrepareActionMode(actionMode, menu);
    }
}
