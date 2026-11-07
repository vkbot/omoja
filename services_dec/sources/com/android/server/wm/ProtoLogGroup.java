package com.android.server.wm;

import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.protolog.common.IProtoLogGroup;

/* JADX INFO: loaded from: classes2.dex */
public enum ProtoLogGroup implements IProtoLogGroup {
    WM_ERROR(true, true, true, "WindowManager"),
    WM_DEBUG_ORIENTATION(true, true, false, "WindowManager"),
    WM_DEBUG_FOCUS_LIGHT(true, true, false, "WindowManager"),
    WM_DEBUG_BOOT(true, true, false, "WindowManager"),
    WM_DEBUG_RESIZE(true, true, false, "WindowManager"),
    WM_DEBUG_ADD_REMOVE(true, true, false, "WindowManager"),
    WM_DEBUG_FOCUS(true, true, false, "WindowManager"),
    WM_DEBUG_STARTING_WINDOW(true, true, false, "WindowManager"),
    WM_SHOW_TRANSACTIONS(true, true, false, "WindowManager"),
    WM_SHOW_SURFACE_ALLOC(true, true, false, "WindowManager"),
    WM_DEBUG_APP_TRANSITIONS(true, true, false, "WindowManager"),
    WM_DEBUG_APP_TRANSITIONS_ANIM(true, true, false, "WindowManager"),
    WM_DEBUG_RECENTS_ANIMATIONS(true, true, false, "WindowManager"),
    WM_DEBUG_DRAW(true, true, false, "WindowManager"),
    WM_DEBUG_REMOTE_ANIMATIONS(true, true, false, "WindowManager"),
    WM_DEBUG_SCREEN_ON(true, true, false, "WindowManager"),
    WM_DEBUG_KEEP_SCREEN_ON(true, true, false, "WindowManager"),
    WM_DEBUG_WINDOW_MOVEMENT(true, true, false, "WindowManager"),
    WM_DEBUG_IME(true, true, false, "WindowManager"),
    TEST_GROUP(true, true, false, "WindowManagetProtoLogTest");

    private final boolean mEnabled;
    private volatile boolean mLogToLogcat;
    private volatile boolean mLogToProto;
    private final String mTag;

    ProtoLogGroup(boolean enabled, boolean logToProto, boolean logToLogcat, String tag) {
        this.mEnabled = enabled;
        this.mLogToProto = logToProto;
        this.mLogToLogcat = logToLogcat;
        this.mTag = tag;
    }

    @Override // com.android.server.protolog.common.IProtoLogGroup
    public boolean isEnabled() {
        return this.mEnabled;
    }

    @Override // com.android.server.protolog.common.IProtoLogGroup
    public boolean isLogToProto() {
        return this.mLogToProto;
    }

    @Override // com.android.server.protolog.common.IProtoLogGroup
    public boolean isLogToLogcat() {
        return this.mLogToLogcat;
    }

    @Override // com.android.server.protolog.common.IProtoLogGroup
    public boolean isLogToAny() {
        return this.mLogToLogcat || this.mLogToProto;
    }

    @Override // com.android.server.protolog.common.IProtoLogGroup
    public String getTag() {
        return this.mTag;
    }

    @Override // com.android.server.protolog.common.IProtoLogGroup
    public void setLogToProto(boolean logToProto) {
        this.mLogToProto = logToProto;
    }

    @Override // com.android.server.protolog.common.IProtoLogGroup
    public void setLogToLogcat(boolean logToLogcat) {
        this.mLogToLogcat = logToLogcat;
    }

    public static void testProtoLog() {
        if (ProtoLog$Cache.TEST_GROUP_enabled) {
            String protoLogParam7 = String.valueOf("ok");
            ProtoLogImpl.e(TEST_GROUP, 676824470, 10839, null, true, 1L, 2L, 3L, Double.valueOf(0.4d), Double.valueOf(0.5d), Double.valueOf(0.6d), protoLogParam7);
        }
    }

    private static class Consts {
        private static final boolean ENABLE_DEBUG = true;
        private static final boolean ENABLE_LOG_TO_PROTO_DEBUG = true;
        private static final String TAG_WM = "WindowManager";

        private Consts() {
        }
    }
}
