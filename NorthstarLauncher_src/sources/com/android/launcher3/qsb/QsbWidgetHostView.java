package com.android.launcher3.qsb;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import com.android.launcher3.Launcher;
import com.android.launcher3.R;
import com.android.launcher3.widget.NavigableAppWidgetHostView;

/* JADX INFO: loaded from: classes.dex */
public class QsbWidgetHostView extends NavigableAppWidgetHostView {

    @ViewDebug.ExportedProperty(category = "launcher")
    private int mPreviousOrientation;

    public boolean isReinflateRequired(int orientation) {
        return this.mPreviousOrientation != orientation;
    }

    @Override // com.android.launcher3.widget.NavigableAppWidgetHostView
    protected boolean shouldAllowDirectClick() {
        return true;
    }

    public QsbWidgetHostView(Context context) {
        super(context);
        setFocusable(true);
        setBackgroundResource(R.drawable.qsb_host_view_focus_bg);
    }

    @Override // android.appwidget.AppWidgetHostView
    public void updateAppWidget(RemoteViews remoteViews) {
        this.mPreviousOrientation = getResources().getConfiguration().orientation;
        super.updateAppWidget(remoteViews);
    }

    @Override // android.view.View
    public void setPadding(int left, int top, int right, int bottom) {
        super.setPadding(0, 0, 0, 0);
    }

    @Override // android.appwidget.AppWidgetHostView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        try {
            super.onLayout(changed, left, top, right, bottom);
        } catch (RuntimeException unused) {
            post(new Runnable() { // from class: com.android.launcher3.qsb.QsbWidgetHostView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m141lambda$onLayout$0$comandroidlauncher3qsbQsbWidgetHostView();
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$onLayout$0$com-android-launcher3-qsb-QsbWidgetHostView, reason: not valid java name */
    /* synthetic */ void m141lambda$onLayout$0$comandroidlauncher3qsbQsbWidgetHostView() {
        updateAppWidget(new RemoteViews(getAppWidgetInfo().provider.getPackageName(), 0));
    }

    @Override // android.appwidget.AppWidgetHostView
    protected View getErrorView() {
        return getDefaultView(this);
    }

    @Override // android.appwidget.AppWidgetHostView
    protected View getDefaultView() {
        View defaultView = super.getDefaultView();
        defaultView.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.qsb.QsbWidgetHostView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m140x2dc27f56(view);
            }
        });
        return defaultView;
    }

    /* JADX INFO: renamed from: lambda$getDefaultView$1$com-android-launcher3-qsb-QsbWidgetHostView, reason: not valid java name */
    /* synthetic */ void m140x2dc27f56(View view) {
        Launcher.getLauncher(getContext()).startSearch("", false, null, true);
    }

    public static View getDefaultView(ViewGroup parent) {
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.qsb_default_view, parent, false);
        viewInflate.findViewById(R.id.btn_qsb_search).setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.qsb.QsbWidgetHostView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Launcher.getLauncher(view.getContext()).startSearch("", false, null, true);
            }
        });
        return viewInflate;
    }
}
