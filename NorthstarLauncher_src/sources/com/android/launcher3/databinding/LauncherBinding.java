package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.LauncherRootView;
import com.android.launcher3.R;
import com.android.launcher3.Workspace;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.views.FestivalImageView;
import com.android.launcher3.views.ImageDragView;
import com.android.launcher3.views.LandmarkWallpaperView;
import com.android.launcher3.views.LiveWallpaperView;
import com.android.launcher3.views.blur.BlurView;

/* JADX INFO: loaded from: classes.dex */
public final class LauncherBinding implements ViewBinding {
    public final DragLayer dragLayer;
    public final FestivalImageView festivalView;
    public final FrameLayout folderBg;
    public final HotseatBinding hotseat;
    public final LandmarkWallpaperView landmarkWallpaperView;
    public final LauncherRootView launcher;
    public final LiveWallpaperView liveWallpaperView;
    public final BlurView naviBlurView;
    public final OverviewPanelBinding overviewPanel;
    private final LauncherRootView rootView;
    public final View view;
    public final ImageDragView viewWallpaper;
    public final Workspace workspace;

    @Override // androidx.viewbinding.ViewBinding
    public LauncherRootView getRoot() {
        return this.rootView;
    }

    private LauncherBinding(LauncherRootView rootView, DragLayer dragLayer, FestivalImageView festivalView, FrameLayout folderBg, HotseatBinding hotseat, LandmarkWallpaperView landmarkWallpaperView, LauncherRootView launcher, LiveWallpaperView liveWallpaperView, BlurView naviBlurView, OverviewPanelBinding overviewPanel, View view, ImageDragView viewWallpaper, Workspace workspace) {
        this.rootView = rootView;
        this.dragLayer = dragLayer;
        this.festivalView = festivalView;
        this.folderBg = folderBg;
        this.hotseat = hotseat;
        this.landmarkWallpaperView = landmarkWallpaperView;
        this.launcher = launcher;
        this.liveWallpaperView = liveWallpaperView;
        this.naviBlurView = naviBlurView;
        this.overviewPanel = overviewPanel;
        this.view = view;
        this.viewWallpaper = viewWallpaper;
        this.workspace = workspace;
    }

    public static LauncherBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LauncherBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.launcher, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LauncherBinding bind(View rootView) {
        int i = R.id.drag_layer;
        DragLayer dragLayer = (DragLayer) ViewBindings.findChildViewById(rootView, R.id.drag_layer);
        if (dragLayer != null) {
            i = R.id.festival_view;
            FestivalImageView festivalImageView = (FestivalImageView) ViewBindings.findChildViewById(rootView, R.id.festival_view);
            if (festivalImageView != null) {
                i = R.id.folder_bg;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.folder_bg);
                if (frameLayout != null) {
                    i = R.id.hotseat;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.hotseat);
                    if (viewFindChildViewById != null) {
                        HotseatBinding hotseatBindingBind = HotseatBinding.bind(viewFindChildViewById);
                        i = R.id.landmark_wallpaper_view;
                        LandmarkWallpaperView landmarkWallpaperView = (LandmarkWallpaperView) ViewBindings.findChildViewById(rootView, R.id.landmark_wallpaper_view);
                        if (landmarkWallpaperView != null) {
                            LauncherRootView launcherRootView = (LauncherRootView) rootView;
                            i = R.id.live_wallpaper_view;
                            LiveWallpaperView liveWallpaperView = (LiveWallpaperView) ViewBindings.findChildViewById(rootView, R.id.live_wallpaper_view);
                            if (liveWallpaperView != null) {
                                i = R.id.navi_blur_view;
                                BlurView blurView = (BlurView) ViewBindings.findChildViewById(rootView, R.id.navi_blur_view);
                                if (blurView != null) {
                                    i = R.id.overview_panel;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.overview_panel);
                                    if (viewFindChildViewById2 != null) {
                                        OverviewPanelBinding overviewPanelBindingBind = OverviewPanelBinding.bind(viewFindChildViewById2);
                                        i = R.id.view;
                                        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.view);
                                        if (viewFindChildViewById3 != null) {
                                            i = R.id.view_wallpaper;
                                            ImageDragView imageDragView = (ImageDragView) ViewBindings.findChildViewById(rootView, R.id.view_wallpaper);
                                            if (imageDragView != null) {
                                                i = R.id.workspace;
                                                Workspace workspace = (Workspace) ViewBindings.findChildViewById(rootView, R.id.workspace);
                                                if (workspace != null) {
                                                    return new LauncherBinding(launcherRootView, dragLayer, festivalImageView, frameLayout, hotseatBindingBind, landmarkWallpaperView, launcherRootView, liveWallpaperView, blurView, overviewPanelBindingBind, viewFindChildViewById3, imageDragView, workspace);
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
