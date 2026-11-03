package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityWallpaperMockBinding implements ViewBinding {
    public final Button btnChangeCurrentWallpaper;
    public final Button btnConnectService;
    public final Button btnDisableLiveWallpaper;
    public final Button btnDisconnectService;
    public final Button btnEnableLiveWallpaper;
    public final Button btnFakeDeleteGroupWallpaper;
    public final Button btnFakeDeleteWallpaper;
    public final Button btnFakeSet1GroupWallpaper;
    public final Button btnFakeSet1Wallpaper;
    public final Button btnFakeSet5GroupWallpaper;
    public final Button btnGetCurrentWallpaper;
    public final Button btnGetCustomWallpapers;
    public final Button btnGetDefaultWallpapers;
    public final Button btnGetWallpapers;
    public final Button btnHideWallpaper;
    public final Button btnListenWallpaperChange;
    public final Button btnRegisterCallback;
    public final Button btnReplaceDefaultWallpaper;
    public final Button btnReplaceUserWallpaper;
    public final Button btnResetSystemWallpaper;
    public final Button btnShowWallpaper;
    public final Button btnUnregisterCallback;
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private ActivityWallpaperMockBinding(LinearLayout rootView, Button btnChangeCurrentWallpaper, Button btnConnectService, Button btnDisableLiveWallpaper, Button btnDisconnectService, Button btnEnableLiveWallpaper, Button btnFakeDeleteGroupWallpaper, Button btnFakeDeleteWallpaper, Button btnFakeSet1GroupWallpaper, Button btnFakeSet1Wallpaper, Button btnFakeSet5GroupWallpaper, Button btnGetCurrentWallpaper, Button btnGetCustomWallpapers, Button btnGetDefaultWallpapers, Button btnGetWallpapers, Button btnHideWallpaper, Button btnListenWallpaperChange, Button btnRegisterCallback, Button btnReplaceDefaultWallpaper, Button btnReplaceUserWallpaper, Button btnResetSystemWallpaper, Button btnShowWallpaper, Button btnUnregisterCallback, RecyclerView recyclerView) {
        this.rootView = rootView;
        this.btnChangeCurrentWallpaper = btnChangeCurrentWallpaper;
        this.btnConnectService = btnConnectService;
        this.btnDisableLiveWallpaper = btnDisableLiveWallpaper;
        this.btnDisconnectService = btnDisconnectService;
        this.btnEnableLiveWallpaper = btnEnableLiveWallpaper;
        this.btnFakeDeleteGroupWallpaper = btnFakeDeleteGroupWallpaper;
        this.btnFakeDeleteWallpaper = btnFakeDeleteWallpaper;
        this.btnFakeSet1GroupWallpaper = btnFakeSet1GroupWallpaper;
        this.btnFakeSet1Wallpaper = btnFakeSet1Wallpaper;
        this.btnFakeSet5GroupWallpaper = btnFakeSet5GroupWallpaper;
        this.btnGetCurrentWallpaper = btnGetCurrentWallpaper;
        this.btnGetCustomWallpapers = btnGetCustomWallpapers;
        this.btnGetDefaultWallpapers = btnGetDefaultWallpapers;
        this.btnGetWallpapers = btnGetWallpapers;
        this.btnHideWallpaper = btnHideWallpaper;
        this.btnListenWallpaperChange = btnListenWallpaperChange;
        this.btnRegisterCallback = btnRegisterCallback;
        this.btnReplaceDefaultWallpaper = btnReplaceDefaultWallpaper;
        this.btnReplaceUserWallpaper = btnReplaceUserWallpaper;
        this.btnResetSystemWallpaper = btnResetSystemWallpaper;
        this.btnShowWallpaper = btnShowWallpaper;
        this.btnUnregisterCallback = btnUnregisterCallback;
        this.recyclerView = recyclerView;
    }

    public static ActivityWallpaperMockBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityWallpaperMockBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_wallpaper_mock, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityWallpaperMockBinding bind(View rootView) {
        int i = R.id.btn_change_current_wallpaper;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_change_current_wallpaper);
        if (button != null) {
            i = R.id.btn_connect_service;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_connect_service);
            if (button2 != null) {
                i = R.id.btn_disable_live_wallpaper;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_disable_live_wallpaper);
                if (button3 != null) {
                    i = R.id.btn_disconnect_service;
                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_disconnect_service);
                    if (button4 != null) {
                        i = R.id.btn_enable_live_wallpaper;
                        Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_enable_live_wallpaper);
                        if (button5 != null) {
                            i = R.id.btn_fake_delete_group_wallpaper;
                            Button button6 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_fake_delete_group_wallpaper);
                            if (button6 != null) {
                                i = R.id.btn_fake_delete_wallpaper;
                                Button button7 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_fake_delete_wallpaper);
                                if (button7 != null) {
                                    i = R.id.btn_fake_set1_group_wallpaper;
                                    Button button8 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_fake_set1_group_wallpaper);
                                    if (button8 != null) {
                                        i = R.id.btn_fake_set1_wallpaper;
                                        Button button9 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_fake_set1_wallpaper);
                                        if (button9 != null) {
                                            i = R.id.btn_fake_set5_group_wallpaper;
                                            Button button10 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_fake_set5_group_wallpaper);
                                            if (button10 != null) {
                                                i = R.id.btn_get_current_wallpaper;
                                                Button button11 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_get_current_wallpaper);
                                                if (button11 != null) {
                                                    i = R.id.btn_get_custom_wallpapers;
                                                    Button button12 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_get_custom_wallpapers);
                                                    if (button12 != null) {
                                                        i = R.id.btn_get_default_wallpapers;
                                                        Button button13 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_get_default_wallpapers);
                                                        if (button13 != null) {
                                                            i = R.id.btn_get_wallpapers;
                                                            Button button14 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_get_wallpapers);
                                                            if (button14 != null) {
                                                                i = R.id.btn_hide_wallpaper;
                                                                Button button15 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_hide_wallpaper);
                                                                if (button15 != null) {
                                                                    i = R.id.btn_listen_wallpaper_change;
                                                                    Button button16 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_listen_wallpaper_change);
                                                                    if (button16 != null) {
                                                                        i = R.id.btn_register_callback;
                                                                        Button button17 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_register_callback);
                                                                        if (button17 != null) {
                                                                            i = R.id.btn_replace_default_wallpaper;
                                                                            Button button18 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_replace_default_wallpaper);
                                                                            if (button18 != null) {
                                                                                i = R.id.btn_replace_user_wallpaper;
                                                                                Button button19 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_replace_user_wallpaper);
                                                                                if (button19 != null) {
                                                                                    i = R.id.btn_reset_system_wallpaper;
                                                                                    Button button20 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_reset_system_wallpaper);
                                                                                    if (button20 != null) {
                                                                                        i = R.id.btn_show_wallpaper;
                                                                                        Button button21 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_show_wallpaper);
                                                                                        if (button21 != null) {
                                                                                            i = R.id.btn_unregister_callback;
                                                                                            Button button22 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_unregister_callback);
                                                                                            if (button22 != null) {
                                                                                                i = R.id.recycler_view;
                                                                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recycler_view);
                                                                                                if (recyclerView != null) {
                                                                                                    return new ActivityWallpaperMockBinding((LinearLayout) rootView, button, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, button18, button19, button20, button21, button22, recyclerView);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
