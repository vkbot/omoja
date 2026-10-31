package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuItem;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class SupportActionModeWrapper$CallbackWrapper implements ActionMode$Callback {
    final Context mContext;
    final android.view.ActionMode$Callback mWrappedCallback;
    final ArrayList<SupportActionModeWrapper> mActionModes = new ArrayList<>();
    final SimpleArrayMap<Menu, Menu> mMenus = new SimpleArrayMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SupportActionModeWrapper$CallbackWrapper(Context context, android.view.ActionMode$Callback actionMode$Callback) {
        this.mContext = context;
        this.mWrappedCallback = actionMode$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Menu getMenuWrapper(Menu menu) {
        Menu menu2 = this.mMenus.get(menu);
        if (menu2 != null) {
            return menu2;
        }
        MenuWrapperICS menuWrapperICS = new MenuWrapperICS(this.mContext, (SupportMenu) menu);
        this.mMenus.put(menu, menuWrapperICS);
        return menuWrapperICS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public android.view.ActionMode getActionModeWrapper(ActionMode actionMode) {
        int size = this.mActionModes.size();
        for (int i9 = 0; i9 < size; i9++) {
            SupportActionModeWrapper supportActionModeWrapper = this.mActionModes.get(i9);
            if (supportActionModeWrapper != null && supportActionModeWrapper.mWrappedObject == actionMode) {
                return supportActionModeWrapper;
            }
        }
        SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper(this.mContext, actionMode);
        this.mActionModes.add(supportActionModeWrapper2);
        return supportActionModeWrapper2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.ActionMode$Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.mWrappedCallback.onActionItemClicked(getActionModeWrapper(actionMode), new MenuItemWrapperICS(this.mContext, (SupportMenuItem) menuItem));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.ActionMode$Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.mWrappedCallback.onCreateActionMode(getActionModeWrapper(actionMode), getMenuWrapper(menu));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.ActionMode$Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.mWrappedCallback.onDestroyActionMode(getActionModeWrapper(actionMode));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.ActionMode$Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return this.mWrappedCallback.onPrepareActionMode(getActionModeWrapper(actionMode), getMenuWrapper(menu));
    }
}
