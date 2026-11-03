package com.android.launcher3;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.DynamicResource;
import com.android.systemui.plugins.ResourceProvider;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class WorkspaceStateTransitionAnimation {
    private static final String TAG = "WorkspaceStateTransitionAnimation";
    private final Launcher mLauncher;
    private float mNewScale;
    private final Workspace mWorkspace;

    public float getFinalScale() {
        return this.mNewScale;
    }

    public WorkspaceStateTransitionAnimation(Launcher launcher, Workspace workspace) {
        this.mLauncher = launcher;
        this.mWorkspace = workspace;
    }

    public void setState(LauncherState toState) {
        setWorkspaceProperty(toState, PropertySetter.NO_ANIM_PROPERTY_SETTER, new StateAnimationConfig());
    }

    public void setStateWithAnimation(LauncherState toState, StateAnimationConfig config, PendingAnimation animation) {
        setWorkspaceProperty(toState, animation, config);
    }

    private void setWorkspaceProperty(LauncherState state, PropertySetter propertySetter, StateAnimationConfig config) {
        Interpolator interpolator;
        MLog.d(TAG, "setWorkspaceProperty() called with: state = [" + state + "], propertySetter = [" + propertySetter + "], config = [" + config + "]");
        LauncherState.ScaleAndTranslation workspaceScaleAndTranslation = state.getWorkspaceScaleAndTranslation(this.mLauncher);
        LauncherState.ScaleAndTranslation hotseatScaleAndTranslation = state.getHotseatScaleAndTranslation(this.mLauncher);
        state.getQsbScaleAndTranslation(this.mLauncher);
        this.mNewScale = workspaceScaleAndTranslation.scale;
        LauncherState.PageAlphaProvider workspacePageAlphaProvider = state.getWorkspacePageAlphaProvider(this.mLauncher);
        int childCount = this.mWorkspace.getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            applyChildState(state, (CellLayout) this.mWorkspace.getChildAt(i), i, workspacePageAlphaProvider, propertySetter, config);
        }
        int visibleElements = state.getVisibleElements(this.mLauncher);
        Interpolator interpolator2 = config.getInterpolator(3, workspacePageAlphaProvider.interpolator);
        boolean zPlayAtomicOverviewScaleComponent = config.playAtomicOverviewScaleComponent();
        Hotseat hotseat = this.mWorkspace.getHotseat();
        if (zPlayAtomicOverviewScaleComponent) {
            Interpolator interpolator3 = config.getInterpolator(1, Interpolators.ZOOM_OUT);
            LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().getState();
            if ((propertySetter instanceof PendingAnimation) && launcherState == LauncherState.HINT_STATE && state == LauncherState.NORMAL) {
                z = true;
            }
            if (z) {
                ((PendingAnimation) propertySetter).add(getSpringScaleAnimator(this.mLauncher, this.mWorkspace, this.mNewScale));
            } else {
                propertySetter.setFloat(this.mWorkspace, LauncherAnimUtils.SCALE_PROPERTY, this.mNewScale, interpolator3);
            }
            setPivotToScaleWithWorkspace(hotseat);
            float f = hotseatScaleAndTranslation.scale;
            if (z) {
                ((PendingAnimation) propertySetter).add(getSpringScaleAnimator(this.mLauncher, hotseat, f));
            } else {
                propertySetter.setFloat(hotseat, LauncherAnimUtils.SCALE_PROPERTY, f, config.getInterpolator(4, interpolator3));
            }
            float f2 = (visibleElements & 1) != 0 ? 1.0f : 0.0f;
            propertySetter.setViewAlpha(hotseat, f2, interpolator2);
            propertySetter.setViewAlpha(this.mLauncher.getWorkspace().getPageIndicator(), f2, interpolator2);
        }
        if (config.onlyPlayAtomicComponent()) {
            return;
        }
        if (state == LauncherState.NORMAL) {
            interpolator = config.getInterpolator(2, Interpolators.DEACCEL);
        } else {
            interpolator = config.getInterpolator(2, Interpolators.ACCEL);
        }
        propertySetter.setFloat(this.mWorkspace, LauncherAnimUtils.VIEW_TRANSLATE_X, workspaceScaleAndTranslation.translationX, interpolator);
        propertySetter.setFloat(this.mWorkspace, LauncherAnimUtils.VIEW_TRANSLATE_Y, workspaceScaleAndTranslation.translationY, interpolator);
        Interpolator interpolator4 = config.getInterpolator(5, interpolator);
        propertySetter.setFloat(hotseat, LauncherAnimUtils.VIEW_TRANSLATE_Y, hotseatScaleAndTranslation.translationY, interpolator4);
        propertySetter.setFloat(this.mWorkspace.getPageIndicator(), LauncherAnimUtils.VIEW_TRANSLATE_Y, hotseatScaleAndTranslation.translationY, interpolator4);
    }

    private void setPivotToScaleWithWorkspace(View sibling) {
        MLog.d(TAG, "setPivotToScaleWithWorkspace() called: sibling = [" + sibling + "]");
        sibling.setPivotY(((this.mWorkspace.getPivotY() + this.mWorkspace.getTop()) - sibling.getTop()) - sibling.getTranslationY());
        sibling.setPivotX(((this.mWorkspace.getPivotX() + this.mWorkspace.getLeft()) - sibling.getLeft()) - sibling.getTranslationX());
    }

    public void applyChildState(LauncherState state, CellLayout cl, int childIndex) {
        applyChildState(state, cl, childIndex, state.getWorkspacePageAlphaProvider(this.mLauncher), PropertySetter.NO_ANIM_PROPERTY_SETTER, new StateAnimationConfig());
    }

    private void applyChildState(LauncherState state, CellLayout cl, int childIndex, LauncherState.PageAlphaProvider pageAlphaProvider, PropertySetter propertySetter, StateAnimationConfig config) {
        float pageAlpha = pageAlphaProvider.getPageAlpha(childIndex);
        int iRound = state.hasFlag(LauncherState.FLAG_WORKSPACE_HAS_BACKGROUNDS) ? Math.round(255.0f * pageAlpha) : 0;
        if (!config.onlyPlayAtomicComponent()) {
            if (state != LauncherState.SPRING_LOADED) {
                propertySetter.setInt(cl.getScrimBackground(), LauncherAnimUtils.DRAWABLE_ALPHA, iRound, Interpolators.ZOOM_OUT);
            }
            cl.applyChildState(state);
        }
        if (config.playAtomicOverviewScaleComponent()) {
            propertySetter.setFloat(cl.getShortcutsAndWidgets(), LauncherAnimUtils.VIEW_ALPHA, pageAlpha, config.getInterpolator(3, pageAlphaProvider.interpolator));
        }
    }

    public static ValueAnimator getSpringScaleAnimator(Launcher launcher, View v, float scale) {
        ResourceProvider resourceProviderProvider = DynamicResource.provider(launcher);
        float f = resourceProviderProvider.getFloat(R.dimen.hint_scale_damping_ratio);
        float f2 = resourceProviderProvider.getFloat(R.dimen.hint_scale_stiffness);
        return new SpringAnimationBuilder(v.getContext()).setStiffness(f2).setDampingRatio(f).setMinimumVisibleChange(0.002f).setEndValue(scale).setStartValue(((Float) LauncherAnimUtils.SCALE_PROPERTY.get(v)).floatValue()).setStartVelocity(resourceProviderProvider.getDimension(R.dimen.hint_scale_velocity_dp_per_s)).build(v, LauncherAnimUtils.SCALE_PROPERTY);
    }
}
