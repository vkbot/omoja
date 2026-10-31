package androidx.appcompat.app;

import android.view.ActionMode;
import android.view.ActionMode$Callback;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.View;
import android.view.Window$Callback;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.view.SupportActionModeWrapper$CallbackWrapper;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.MenuBuilder;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$AppCompatWindowCallback extends WindowCallbackWrapper {
    private AppCompatDelegateImpl$ActionBarMenuCallback mActionBarCallback;
    private boolean mDispatchKeyEventBypassEnabled;
    private boolean mOnContentChangedBypassEnabled;
    private boolean mOnPanelClosedBypassEnabled;
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatDelegateImpl$AppCompatWindowCallback(AppCompatDelegateImpl appCompatDelegateImpl, Window$Callback window$Callback) {
        super(window$Callback);
        this.this$0 = appCompatDelegateImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean bypassDispatchKeyEvent(Window$Callback window$Callback, KeyEvent keyEvent) {
        try {
            this.mDispatchKeyEventBypassEnabled = true;
            return window$Callback.dispatchKeyEvent(keyEvent);
        } finally {
            this.mDispatchKeyEventBypassEnabled = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void bypassOnContentChanged(Window$Callback window$Callback) {
        try {
            this.mOnContentChangedBypassEnabled = true;
            window$Callback.onContentChanged();
        } finally {
            this.mOnContentChangedBypassEnabled = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void bypassOnPanelClosed(Window$Callback window$Callback, int i9, Menu menu) {
        try {
            this.mOnPanelClosedBypassEnabled = true;
            window$Callback.onPanelClosed(i9, menu);
        } finally {
            this.mOnPanelClosedBypassEnabled = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.mDispatchKeyEventBypassEnabled) {
            return getWrapped().dispatchKeyEvent(keyEvent);
        }
        return this.this$0.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return super.dispatchKeyShortcutEvent(keyEvent) || this.this$0.onKeyShortcut(keyEvent.getKeyCode(), keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    public void onContentChanged() {
        if (this.mOnContentChangedBypassEnabled) {
            getWrapped().onContentChanged();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean onCreatePanelMenu(int i9, Menu menu) {
        if (i9 != 0 || (menu instanceof MenuBuilder)) {
            return super.onCreatePanelMenu(i9, menu);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    public View onCreatePanelView(int i9) {
        View viewOnCreatePanelView;
        AppCompatDelegateImpl$ActionBarMenuCallback appCompatDelegateImpl$ActionBarMenuCallback = this.mActionBarCallback;
        return (appCompatDelegateImpl$ActionBarMenuCallback == null || (viewOnCreatePanelView = appCompatDelegateImpl$ActionBarMenuCallback.onCreatePanelView(i9)) == null) ? super.onCreatePanelView(i9) : viewOnCreatePanelView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean onMenuOpened(int i9, Menu menu) {
        super.onMenuOpened(i9, menu);
        this.this$0.onMenuOpened(i9);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    public void onPanelClosed(int i9, Menu menu) {
        if (this.mOnPanelClosedBypassEnabled) {
            getWrapped().onPanelClosed(i9, menu);
        } else {
            super.onPanelClosed(i9, menu);
            this.this$0.onPanelClosed(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean onPreparePanel(int i9, View view, Menu menu) {
        MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
        if (i9 == 0 && menuBuilder == null) {
            return false;
        }
        if (menuBuilder != null) {
            menuBuilder.setOverrideVisibleItems(true);
        }
        AppCompatDelegateImpl$ActionBarMenuCallback appCompatDelegateImpl$ActionBarMenuCallback = this.mActionBarCallback;
        boolean zOnPreparePanel = appCompatDelegateImpl$ActionBarMenuCallback != null && appCompatDelegateImpl$ActionBarMenuCallback.onPreparePanel(i9);
        if (!zOnPreparePanel) {
            zOnPreparePanel = super.onPreparePanel(i9, view, menu);
        }
        if (menuBuilder != null) {
            menuBuilder.setOverrideVisibleItems(false);
        }
        return zOnPreparePanel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    @RequiresApi(24)
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i9) {
        MenuBuilder menuBuilder;
        AppCompatDelegateImpl$PanelFeatureState panelState = this.this$0.getPanelState(0, true);
        if (panelState == null || (menuBuilder = panelState.menu) == null) {
            super.onProvideKeyboardShortcuts(list, menu, i9);
        } else {
            super.onProvideKeyboardShortcuts(list, menuBuilder, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    @RequiresApi(23)
    public ActionMode onWindowStartingActionMode(ActionMode$Callback actionMode$Callback, int i9) {
        return (this.this$0.isHandleNativeActionModesEnabled() && i9 == 0) ? startAsSupportActionMode(actionMode$Callback) : super.onWindowStartingActionMode(actionMode$Callback, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setActionBarCallback(@Nullable AppCompatDelegateImpl$ActionBarMenuCallback appCompatDelegateImpl$ActionBarMenuCallback) {
        this.mActionBarCallback = appCompatDelegateImpl$ActionBarMenuCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ActionMode startAsSupportActionMode(ActionMode$Callback actionMode$Callback) {
        SupportActionModeWrapper$CallbackWrapper supportActionModeWrapper$CallbackWrapper = new SupportActionModeWrapper$CallbackWrapper(this.this$0.mContext, actionMode$Callback);
        androidx.appcompat.view.ActionMode actionModeStartSupportActionMode = this.this$0.startSupportActionMode(supportActionModeWrapper$CallbackWrapper);
        if (actionModeStartSupportActionMode != null) {
            return supportActionModeWrapper$CallbackWrapper.getActionModeWrapper(actionModeStartSupportActionMode);
        }
        return null;
    }

    @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window$Callback
    public ActionMode onWindowStartingActionMode(ActionMode$Callback actionMode$Callback) {
        return null;
    }
}
