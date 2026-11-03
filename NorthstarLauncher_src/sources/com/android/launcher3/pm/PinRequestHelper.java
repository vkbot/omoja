package com.android.launcher3.pm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.Parcelable;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.ShortcutCachingLogic;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.Executors;

/* JADX INFO: loaded from: classes.dex */
public class PinRequestHelper {
    public static WorkspaceItemInfo createWorkspaceItemFromPinItemRequest(Context context, final LauncherApps.PinItemRequest request, final long acceptDelay) {
        if (request == null || request.getRequestType() != 1 || !request.isValid()) {
            return null;
        }
        if (acceptDelay <= 0) {
            if (!request.accept()) {
                return null;
            }
        } else {
            Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.pm.PinRequestHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(acceptDelay);
                    } catch (InterruptedException unused) {
                    }
                    if (request.isValid()) {
                        request.accept();
                    }
                }
            });
        }
        ShortcutInfo shortcutInfo = request.getShortcutInfo();
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(shortcutInfo, context);
        workspaceItemInfo.bitmap = new ShortcutCachingLogic().loadIcon(context, shortcutInfo);
        LauncherAppState.getInstance(context).getModel().updateAndBindWorkspaceItem(workspaceItemInfo, shortcutInfo);
        return workspaceItemInfo;
    }

    public static LauncherApps.PinItemRequest getPinItemRequest(Intent intent) {
        Parcelable parcelableExtra = intent.getParcelableExtra("android.content.pm.extra.PIN_ITEM_REQUEST");
        if (parcelableExtra instanceof LauncherApps.PinItemRequest) {
            return (LauncherApps.PinItemRequest) parcelableExtra;
        }
        return null;
    }
}
