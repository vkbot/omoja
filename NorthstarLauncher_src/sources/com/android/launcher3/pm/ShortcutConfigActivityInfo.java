package com.android.launcher3.pm;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.R;
import com.android.launcher3.icons.ComponentWithLabelAndIcon;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.PackageUserKey;
import com.mega.chery.utils.ToastViewUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ShortcutConfigActivityInfo implements ComponentWithLabelAndIcon {
    private static final String TAG = "SCActivityInfo";
    private final ComponentName mCn;
    private final UserHandle mUser;

    public WorkspaceItemInfo createWorkspaceItemInfo() {
        return null;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public ComponentName getComponent() {
        return this.mCn;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabelAndIcon
    public abstract Drawable getFullResIcon(IconCache cache);

    public int getItemType() {
        return 1;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public UserHandle getUser() {
        return this.mUser;
    }

    public boolean isPersistable() {
        return true;
    }

    protected ShortcutConfigActivityInfo(ComponentName cn, UserHandle user) {
        this.mCn = cn;
        this.mUser = user;
    }

    public boolean startConfigActivity(Activity activity, int requestCode) {
        Intent component = new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(getComponent());
        try {
            activity.startActivityForResult(component, requestCode);
            return true;
        } catch (ActivityNotFoundException unused) {
            ToastViewUtils.makeText(activity, R.string.activity_not_found, 3000L).show();
            return false;
        } catch (SecurityException e) {
            ToastViewUtils.makeText(activity, R.string.activity_not_found, 3000L).show();
            Log.e(TAG, "Launcher does not have the permission to launch " + component + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.", e);
            return false;
        }
    }

    static class ShortcutConfigActivityInfoVL extends ShortcutConfigActivityInfo {
        private final ActivityInfo mInfo;

        ShortcutConfigActivityInfoVL(ActivityInfo info) {
            super(new ComponentName(info.packageName, info.name), Process.myUserHandle());
            this.mInfo = info;
        }

        @Override // com.android.launcher3.icons.ComponentWithLabel
        public CharSequence getLabel(PackageManager pm) {
            return this.mInfo.loadLabel(pm);
        }

        @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo, com.android.launcher3.icons.ComponentWithLabelAndIcon
        public Drawable getFullResIcon(IconCache cache) {
            return cache.getFullResIcon(this.mInfo);
        }
    }

    public static class ShortcutConfigActivityInfoVO extends ShortcutConfigActivityInfo {
        private final LauncherActivityInfo mInfo;

        public ShortcutConfigActivityInfoVO(LauncherActivityInfo info) {
            super(info.getComponentName(), info.getUser());
            this.mInfo = info;
        }

        @Override // com.android.launcher3.icons.ComponentWithLabel
        public CharSequence getLabel(PackageManager pm) {
            return this.mInfo.getLabel();
        }

        @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo, com.android.launcher3.icons.ComponentWithLabelAndIcon
        public Drawable getFullResIcon(IconCache cache) {
            return cache.getFullResIcon(this.mInfo);
        }

        @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
        public boolean startConfigActivity(Activity activity, int requestCode) {
            if (getUser().equals(Process.myUserHandle())) {
                return super.startConfigActivity(activity, requestCode);
            }
            try {
                activity.startIntentSenderForResult(((LauncherApps) activity.getSystemService(LauncherApps.class)).getShortcutConfigActivityIntent(this.mInfo), requestCode, null, 0, 0, 0);
                return true;
            } catch (IntentSender.SendIntentException unused) {
                ToastViewUtils.makeText(activity, R.string.activity_not_found, 3000L).show();
                return false;
            }
        }
    }

    public static List<ShortcutConfigActivityInfo> queryList(Context context, PackageUserKey packageUser) {
        return new ArrayList();
    }
}
