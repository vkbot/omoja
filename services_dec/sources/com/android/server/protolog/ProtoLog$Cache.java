package com.android.server.protolog;

import com.android.server.wm.ProtoLogGroup;

/* JADX INFO: loaded from: classes.dex */
public class ProtoLog$Cache {
    public static boolean WM_ERROR_enabled = false;
    public static boolean WM_DEBUG_ORIENTATION_enabled = false;
    public static boolean WM_DEBUG_FOCUS_LIGHT_enabled = false;
    public static boolean WM_DEBUG_BOOT_enabled = false;
    public static boolean WM_DEBUG_RESIZE_enabled = false;
    public static boolean WM_DEBUG_ADD_REMOVE_enabled = false;
    public static boolean WM_DEBUG_FOCUS_enabled = false;
    public static boolean WM_DEBUG_STARTING_WINDOW_enabled = false;
    public static boolean WM_SHOW_TRANSACTIONS_enabled = false;
    public static boolean WM_SHOW_SURFACE_ALLOC_enabled = false;
    public static boolean WM_DEBUG_APP_TRANSITIONS_enabled = false;
    public static boolean WM_DEBUG_APP_TRANSITIONS_ANIM_enabled = false;
    public static boolean WM_DEBUG_RECENTS_ANIMATIONS_enabled = false;
    public static boolean WM_DEBUG_DRAW_enabled = false;
    public static boolean WM_DEBUG_REMOTE_ANIMATIONS_enabled = false;
    public static boolean WM_DEBUG_SCREEN_ON_enabled = false;
    public static boolean WM_DEBUG_KEEP_SCREEN_ON_enabled = false;
    public static boolean WM_DEBUG_WINDOW_MOVEMENT_enabled = false;
    public static boolean WM_DEBUG_IME_enabled = false;
    public static boolean TEST_GROUP_enabled = false;

    static {
        ProtoLogImpl.sCacheUpdater = new Runnable() { // from class: com.android.server.protolog.-$$Lambda$QtQzaT3jZ03CdC3RGYitrH7aUYo
            @Override // java.lang.Runnable
            public final void run() {
                ProtoLog$Cache.update();
            }
        };
        update();
    }

    static void update() {
        WM_ERROR_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_ERROR);
        WM_DEBUG_ORIENTATION_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_ORIENTATION);
        WM_DEBUG_FOCUS_LIGHT_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT);
        WM_DEBUG_BOOT_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_BOOT);
        WM_DEBUG_RESIZE_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_RESIZE);
        WM_DEBUG_ADD_REMOVE_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_ADD_REMOVE);
        WM_DEBUG_FOCUS_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_FOCUS);
        WM_DEBUG_STARTING_WINDOW_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW);
        WM_SHOW_TRANSACTIONS_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_SHOW_TRANSACTIONS);
        WM_SHOW_SURFACE_ALLOC_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC);
        WM_DEBUG_APP_TRANSITIONS_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS);
        WM_DEBUG_APP_TRANSITIONS_ANIM_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM);
        WM_DEBUG_RECENTS_ANIMATIONS_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS);
        WM_DEBUG_DRAW_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_DRAW);
        WM_DEBUG_REMOTE_ANIMATIONS_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS);
        WM_DEBUG_SCREEN_ON_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_SCREEN_ON);
        WM_DEBUG_KEEP_SCREEN_ON_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_KEEP_SCREEN_ON);
        WM_DEBUG_WINDOW_MOVEMENT_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_WINDOW_MOVEMENT);
        WM_DEBUG_IME_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_IME);
        TEST_GROUP_enabled = ProtoLogImpl.isEnabled(ProtoLogGroup.TEST_GROUP);
    }
}
