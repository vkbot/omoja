package com.android.launcher3.widget;

import android.animation.ObjectAnimator;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.Advanceable;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.OnAlphaChangedListener;
import com.android.launcher3.R;
import com.android.launcher3.ShakeView;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.touch.LaunchHistory;
import com.android.launcher3.util.Const;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.FlavorUtils;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.BaseDragLayer;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAppWidgetHostView extends NavigableAppWidgetHostView implements BaseDragLayer.TouchCompleteListener, View.OnLongClickListener, ShakeView {
    private static final long ADVANCE_INTERVAL = 20000;
    private static final long ADVANCE_STAGGER = 250;
    private static final long CLICK_INTERVAL = 500;
    private static final String KEY_EDIT_STATE = "editState";
    private static final String KEY_SUPER_STATE = "superState";
    private static final String TAG = "LauncherAppWidgetHostView";
    private static final SparseBooleanArray sAutoAdvanceWidgetIds = new SparseBooleanArray();
    private OnAlphaChangedListener mAlphaListener;
    private Runnable mAutoAdvanceRunnable;
    protected final LayoutInflater mInflater;
    private boolean mIsAttachedToWindow;
    private boolean mIsAutoAdvanceRegistered;
    private boolean mIsScrollable;
    private boolean mIsShaking;
    protected final Launcher mLauncher;
    private final CheckLongPressHelper mLongPressHelper;

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mReinflateOnConfigChange;
    private ObjectAnimator mShakeAnimator;

    @Override // com.android.launcher3.ShakeView
    public boolean isShaking() {
        return this.mIsShaking;
    }

    public void setAlphaListener(OnAlphaChangedListener alphaListener) {
        this.mAlphaListener = alphaListener;
    }

    public LauncherAppWidgetHostView(Context context) {
        super(context);
        this.mIsShaking = false;
        Launcher launcher = Launcher.getLauncher(context);
        this.mLauncher = launcher;
        this.mLongPressHelper = new CheckLongPressHelper(this, this);
        this.mInflater = LayoutInflater.from(context);
        setAccessibilityDelegate(launcher.getAccessibilityDelegate());
        setBackgroundResource(R.drawable.widget_internal_focus_bg);
        if (Utilities.ATLEAST_OREO) {
            setExecutor(Executors.THREAD_POOL_EXECUTOR);
        }
        if (Utilities.ATLEAST_Q && Themes.getAttrBoolean(launcher, R.attr.isWorkspaceDarkText)) {
            setOnLightBackground(true);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        MLog.d(TAG, "onLongClick: view=" + view);
        if (this.mIsScrollable) {
            Launcher.getLauncher(getContext()).getDragLayer().requestDisallowInterceptTouchEvent(false);
        }
        view.performLongClick();
        return true;
    }

    @Override // android.appwidget.AppWidgetHostView
    protected View getErrorView() {
        return this.mInflater.inflate(R.layout.appwidget_error, (ViewGroup) this, false);
    }

    @Override // android.appwidget.AppWidgetHostView
    public void updateAppWidget(RemoteViews remoteViews) {
        super.updateAppWidget(remoteViews);
        MLog.d(TAG, "updateAppWidget: remoteViews=" + remoteViews + " " + getAppWidgetInfo());
        checkIfAutoAdvance();
        this.mReinflateOnConfigChange = !isSameOrientation();
        if (shouldEnsureMarquee()) {
            ensureMarquee(this);
        }
    }

    @Override // android.appwidget.AppWidgetHostView
    protected View getDefaultView() {
        View defaultView = super.getDefaultView();
        if (defaultView != null && defaultView.hasOnClickListeners() && shouldEnsureMarquee()) {
            defaultView.setOnClickListener(null);
        }
        return defaultView;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View child) {
        super.onViewAdded(child);
        hideFindChargeStationView(child);
        if (FlavorUtils.isT1GCInt() || FlavorUtils.isT19CFL1()) {
            hideViewsByTag(child, "hideWhenT1gcInt");
        }
    }

    private boolean isEvAppWidget() {
        return Optional.ofNullable(getAppWidgetInfo()).map(new Function() { // from class: com.android.launcher3.widget.LauncherAppWidgetHostView$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AppWidgetProviderInfo) obj).provider;
            }
        }).filter(new Predicate() { // from class: com.android.launcher3.widget.LauncherAppWidgetHostView$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.equals((ComponentName) obj, Const.WIDGET_EV);
            }
        }).isPresent();
    }

    private void hideFindChargeStationView(View parent) {
        View viewFindViewWithTag;
        if (parent == null || !isEvAppWidget()) {
            return;
        }
        if ((!FlavorUtils.isT1GCInt() && !FlavorUtils.isT19CFL1()) || FlavorUtils.isNetworkArea() || (viewFindViewWithTag = parent.findViewWithTag("find_charge_station")) == null) {
            return;
        }
        viewFindViewWithTag.setVisibility(8);
    }

    private void hideViewsByTag(View parent, String tag) {
        View viewFindViewWithTag;
        if (parent == null || TextUtils.isEmpty(tag) || (viewFindViewWithTag = parent.findViewWithTag(tag)) == null) {
            return;
        }
        viewFindViewWithTag.setVisibility(8);
    }

    private boolean shouldEnsureMarquee() {
        return Optional.ofNullable(getAppWidgetInfo()).map(new Function() { // from class: com.android.launcher3.widget.LauncherAppWidgetHostView$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AppWidgetProviderInfo) obj).provider;
            }
        }).map(new Function() { // from class: com.android.launcher3.widget.LauncherAppWidgetHostView$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ComponentName) obj).getPackageName();
            }
        }).filter(new Predicate() { // from class: com.android.launcher3.widget.LauncherAppWidgetHostView$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.equals((String) obj, Const.PACKAGE_WIDGET);
            }
        }).isPresent();
    }

    private void ensureMarquee(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (!textView.isSelected() && textView.getMaxLines() == 1 && textView.getEllipsize() == TextUtils.TruncateAt.MARQUEE) {
                textView.setSelected(true);
                return;
            }
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                ensureMarquee(viewGroup.getChildAt(i));
            }
        }
    }

    private boolean isSameOrientation() {
        return this.mLauncher.getResources().getConfiguration().orientation == this.mLauncher.getOrientation();
    }

    private boolean checkScrollableRecursively(ViewGroup viewGroup) {
        if (viewGroup instanceof AdapterView) {
            return true;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof ViewGroup) && checkScrollableRecursively((ViewGroup) childAt)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0) {
            DragLayer dragLayer = Launcher.getLauncher(getContext()).getDragLayer();
            if (this.mIsScrollable) {
                dragLayer.requestDisallowInterceptTouchEvent(true);
            }
            dragLayer.setTouchCompleteListener(this);
        }
        this.mLongPressHelper.onTouchEvent(ev);
        return this.mLongPressHelper.hasPerformedLongPress();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        this.mLongPressHelper.onTouchEvent(ev);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttachedToWindow = true;
        checkIfAutoAdvance();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsAttachedToWindow = false;
        checkIfAutoAdvance();
    }

    @Override // android.view.View
    public void setAlpha(float alpha) {
        MLog.d(TAG, "setAlpha: " + alpha + " <- " + getAlpha() + " " + getAppWidgetInfo().provider);
        super.setAlpha(alpha);
        OnAlphaChangedListener onAlphaChangedListener = this.mAlphaListener;
        if (onAlphaChangedListener != null) {
            onAlphaChangedListener.onAlphaChanged(alpha);
        }
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        MLog.d(TAG, "setVisibility: " + visibility + " <- " + getVisibility() + " " + getAppWidgetInfo().provider);
        super.setVisibility(visibility);
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    @Override // android.appwidget.AppWidgetHostView
    public AppWidgetProviderInfo getAppWidgetInfo() {
        AppWidgetProviderInfo appWidgetInfo = super.getAppWidgetInfo();
        if (appWidgetInfo == null || (appWidgetInfo instanceof LauncherAppWidgetProviderInfo)) {
            return appWidgetInfo;
        }
        throw new IllegalStateException("Launcher widget must have LauncherAppWidgetProviderInfo");
    }

    @Override // com.android.launcher3.views.BaseDragLayer.TouchCompleteListener
    public void onTouchComplete() {
        if (this.mLongPressHelper.hasPerformedLongPress()) {
            return;
        }
        this.mLongPressHelper.cancelLongPress();
    }

    public void switchToErrorView() {
        updateAppWidget(new RemoteViews(getAppWidgetInfo().provider.getPackageName(), 0));
    }

    @Override // android.appwidget.AppWidgetHostView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        try {
            super.onLayout(changed, left, top, right, bottom);
        } catch (RuntimeException unused) {
            post(new Runnable() { // from class: com.android.launcher3.widget.LauncherAppWidgetHostView.1
                @Override // java.lang.Runnable
                public void run() {
                    LauncherAppWidgetHostView.this.switchToErrorView();
                }
            });
        }
        this.mIsScrollable = checkScrollableRecursively(this);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(getClass().getName());
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        maybeRegisterAutoAdvance();
    }

    private void checkIfAutoAdvance() {
        boolean z;
        Advanceable advanceable = getAdvanceable();
        if (advanceable != null) {
            advanceable.fyiWillBeAdvancedByHostKThx();
            z = true;
        } else {
            z = false;
        }
        SparseBooleanArray sparseBooleanArray = sAutoAdvanceWidgetIds;
        if (z != (sparseBooleanArray.indexOfKey(getAppWidgetId()) >= 0)) {
            if (z) {
                sparseBooleanArray.put(getAppWidgetId(), true);
            } else {
                sparseBooleanArray.delete(getAppWidgetId());
            }
            maybeRegisterAutoAdvance();
        }
    }

    private Advanceable getAdvanceable() {
        AppWidgetProviderInfo appWidgetInfo = getAppWidgetInfo();
        if (appWidgetInfo == null || appWidgetInfo.autoAdvanceViewId == -1 || !this.mIsAttachedToWindow) {
            return null;
        }
        KeyEvent.Callback callbackFindViewById = findViewById(appWidgetInfo.autoAdvanceViewId);
        if (callbackFindViewById instanceof Advanceable) {
            return (Advanceable) callbackFindViewById;
        }
        return null;
    }

    private void maybeRegisterAutoAdvance() {
        Handler handler = getHandler();
        boolean z = getWindowVisibility() == 0 && handler != null && sAutoAdvanceWidgetIds.indexOfKey(getAppWidgetId()) >= 0;
        if (z != this.mIsAutoAdvanceRegistered) {
            this.mIsAutoAdvanceRegistered = z;
            if (this.mAutoAdvanceRunnable == null) {
                this.mAutoAdvanceRunnable = new Runnable() { // from class: com.android.launcher3.widget.LauncherAppWidgetHostView$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.runAutoAdvance();
                    }
                };
            }
            handler.removeCallbacks(this.mAutoAdvanceRunnable);
            scheduleNextAdvance();
        }
    }

    private void scheduleNextAdvance() {
        if (this.mIsAutoAdvanceRegistered) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long jIndexOfKey = jUptimeMillis + (ADVANCE_INTERVAL - (jUptimeMillis % ADVANCE_INTERVAL)) + (((long) sAutoAdvanceWidgetIds.indexOfKey(getAppWidgetId())) * ADVANCE_STAGGER);
            Handler handler = getHandler();
            if (handler != null) {
                handler.postAtTime(this.mAutoAdvanceRunnable, jIndexOfKey);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runAutoAdvance() {
        Advanceable advanceable = getAdvanceable();
        if (advanceable != null) {
            advanceable.advance();
        }
        scheduleNextAdvance();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.mReinflateOnConfigChange && isSameOrientation()) {
            this.mReinflateOnConfigChange = false;
            reInflate();
        }
    }

    public void reInflate() {
        if (isAttachedToWindow()) {
            MLog.d(TAG, "reInflate() called");
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) getTag();
            this.mLauncher.removeItem(this, launcherAppWidgetInfo, false);
            this.mLauncher.bindAppWidget(launcherAppWidgetInfo);
        }
    }

    @Override // com.android.launcher3.widget.NavigableAppWidgetHostView
    protected boolean shouldAllowDirectClick() {
        if (!(getTag() instanceof ItemInfo)) {
            return false;
        }
        ItemInfo itemInfo = (ItemInfo) getTag();
        return itemInfo.spanX == 1 && itemInfo.spanY == 1;
    }

    @Override // android.view.View
    public String toString() {
        return super.toString() + " " + getTag();
    }

    @Override // com.android.launcher3.ShakeView
    public void startShake() {
        this.mIsShaking = true;
        ObjectAnimator objectAnimator = this.mShakeAnimator;
        if (objectAnimator == null) {
            this.mShakeAnimator = ShakeView.getShakeAnimator(this);
        } else {
            objectAnimator.cancel();
        }
        this.mShakeAnimator.start();
    }

    @Override // com.android.launcher3.ShakeView
    public void stopShake() {
        this.mIsShaking = false;
        ObjectAnimator objectAnimator = this.mShakeAnimator;
        if (objectAnimator != null) {
            objectAnimator.end();
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(KEY_SUPER_STATE, super.onSaveInstanceState());
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (state instanceof Bundle) {
            super.onRestoreInstanceState(((Bundle) state).getParcelable(KEY_SUPER_STATE));
        } else {
            super.onRestoreInstanceState(state);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        int actionMasked = event.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            LaunchHistory.get().noteAppLaunched(this, (ItemInfo) getTag());
        }
        if (Launcher.getLauncher(getContext()).getStateManager().isInWidgetEditState()) {
            return true;
        }
        return super.dispatchTouchEvent(event);
    }
}
