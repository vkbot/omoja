package com.mega.common.split;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonSplitTaskManager.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\b"}, d2 = {"Lcom/mega/common/split/CommonSplitTaskManager;", "", "()V", "isInNaviState", "", "context", "Landroid/content/Context;", "isSettingSplitScreenOpen", "common-utils_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CommonSplitTaskManager {
    public static final CommonSplitTaskManager INSTANCE = new CommonSplitTaskManager();

    private CommonSplitTaskManager() {
    }

    public final boolean isInNaviState(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int i = Settings.Global.getInt(context.getContentResolver(), SplitScreenConstant.NAVI_STATE, 0);
        Log.i("CommonSplitTaskManager", "checkEnterSplit " + i);
        return i == 1;
    }

    public final boolean isSettingSplitScreenOpen(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Settings.Global.getInt(context.getContentResolver(), SplitScreenConstant.MEGA_SPLIT_SCREEN, 1) == 1;
    }
}
