package com.mega.common.split;

import com.android.launcher3.util.Const;
import kotlin.Metadata;

/* JADX INFO: compiled from: SplitScreenConstant.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0018\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/mega/common/split/SplitScreenConstant;", "", "()V", "MEGA_SPLIT_SCREEN", "", "MEGA_SPLIT_SCREEN_CLOSE", "", "MEGA_SPLIT_SCREEN_OPEN", "NAVI_STATE", "T1GC_SUPPORT_SPLIT_PKGS", "", "[Ljava/lang/String;", "TIGC_INT_SUPPORT_SPLIT_PKGS", "common-utils_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SplitScreenConstant {
    public static final String MEGA_SPLIT_SCREEN = "persist.sys.setting.split_screen";
    public static final int MEGA_SPLIT_SCREEN_CLOSE = 0;
    public static final int MEGA_SPLIT_SCREEN_OPEN = 1;
    public static final String NAVI_STATE = "navi_state";
    public static final SplitScreenConstant INSTANCE = new SplitScreenConstant();
    public static final String[] T1GC_SUPPORT_SPLIT_PKGS = {Const.PACKAGE_LION_MEDIA};
    public static final String[] TIGC_INT_SUPPORT_SPLIT_PKGS = {Const.PACKAGE_WEATHER_LIONTECH, "com.uma.musicvk", "com.vk.im", "ru.zen.android", "com.vk.vkvideo", "com.huawei.hmsforcar.carmediaui", "com.huawei.hmsforcar.carappinit", "com.huawei.hmsforcar.carvideoui"};

    private SplitScreenConstant() {
    }
}
