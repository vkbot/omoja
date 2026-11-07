package com.android.server.policy;

import android.R;
import android.content.Context;
import android.os.UserManager;
import com.android.internal.globalactions.LongPressAction;
import com.android.internal.globalactions.SinglePressAction;

/* JADX INFO: loaded from: classes.dex */
public final class RestartAction extends SinglePressAction implements LongPressAction {
    private final Context mContext;
    private final WindowManagerPolicy.WindowManagerFuncs mWindowManagerFuncs;

    public RestartAction(Context context, WindowManagerPolicy.WindowManagerFuncs windowManagerFuncs) {
        super(R.drawable.$notification_progress_indeterminate_horizontal_material__0, R.string.PERSOSUBSTATE_SIM_CORPORATE_PUK_SUCCESS);
        this.mContext = context;
        this.mWindowManagerFuncs = windowManagerFuncs;
    }

    public boolean onLongPress() {
        UserManager um = (UserManager) this.mContext.getSystemService(UserManager.class);
        if (!um.hasUserRestriction("no_safe_boot")) {
            this.mWindowManagerFuncs.rebootSafeMode(true);
            return true;
        }
        return false;
    }

    public boolean showDuringKeyguard() {
        return true;
    }

    public boolean showBeforeProvisioning() {
        return true;
    }

    public void onPress() {
        this.mWindowManagerFuncs.reboot(false);
    }
}
