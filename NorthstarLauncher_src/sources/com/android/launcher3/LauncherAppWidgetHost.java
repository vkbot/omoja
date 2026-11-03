package com.android.launcher3;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.SparseArray;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.widget.DeferredAppWidgetHostView;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.mega.chery.utils.ToastViewUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAppWidgetHost extends AppWidgetHost {
    public static final int APPWIDGET_HOST_ID = 1024;
    private static final int FLAG_LISTENING = 1;
    private static final int FLAG_LISTEN_IF_RESUMED = 4;
    private static final int FLAG_RESUMED = 2;
    private IntConsumer mAppWidgetRemovedCallback;
    private final Context mContext;
    private int mFlags;
    private final SparseArray<PendingAppWidgetHostView> mPendingViews;
    private final ArrayList<ProviderChangedListener> mProviderChangeListeners;
    private final SparseArray<LauncherAppWidgetHostView> mViews;

    public interface ProviderChangedListener {
        void notifyWidgetProvidersChanged();
    }

    public boolean isListening() {
        return (this.mFlags & 1) != 0;
    }

    public LauncherAppWidgetHost(Context context) {
        this(context, null);
    }

    public LauncherAppWidgetHost(Context context, IntConsumer appWidgetRemovedCallback) {
        super(context, 1024);
        this.mProviderChangeListeners = new ArrayList<>();
        this.mViews = new SparseArray<>();
        this.mPendingViews = new SparseArray<>();
        this.mFlags = 2;
        this.mContext = context;
        this.mAppWidgetRemovedCallback = appWidgetRemovedCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.appwidget.AppWidgetHost
    public LauncherAppWidgetHostView onCreateView(Context context, int appWidgetId, AppWidgetProviderInfo appWidget) {
        PendingAppWidgetHostView launcherAppWidgetHostView;
        if (this.mPendingViews.get(appWidgetId) != null) {
            launcherAppWidgetHostView = this.mPendingViews.get(appWidgetId);
            this.mPendingViews.remove(appWidgetId);
        } else {
            launcherAppWidgetHostView = new LauncherAppWidgetHostView(context);
        }
        this.mViews.put(appWidgetId, launcherAppWidgetHostView);
        return launcherAppWidgetHostView;
    }

    @Override // android.appwidget.AppWidgetHost
    public void startListening() {
        this.mFlags |= 1;
        try {
            super.startListening();
        } catch (Exception e) {
            if (!Utilities.isBinderSizeError(e)) {
                throw new RuntimeException(e);
            }
        }
        for (int size = this.mViews.size() - 1; size >= 0; size--) {
            LauncherAppWidgetHostView launcherAppWidgetHostViewValueAt = this.mViews.valueAt(size);
            if (launcherAppWidgetHostViewValueAt instanceof DeferredAppWidgetHostView) {
                launcherAppWidgetHostViewValueAt.reInflate();
            }
        }
    }

    @Override // android.appwidget.AppWidgetHost
    public void stopListening() {
        this.mFlags &= -2;
        super.stopListening();
    }

    public void setResumed(boolean isResumed) {
        int i = this.mFlags;
        if (isResumed == ((i & 2) != 0)) {
            return;
        }
        if (!isResumed) {
            this.mFlags = i & (-3);
            return;
        }
        int i2 = i | 2;
        this.mFlags = i2;
        if ((i2 & 4) == 0 || (i2 & 1) != 0) {
            return;
        }
        startListening();
    }

    public void setListenIfResumed(boolean listenIfResumed) {
        int i = this.mFlags;
        if (listenIfResumed == ((i & 4) != 0)) {
            return;
        }
        if (!listenIfResumed) {
            this.mFlags = i & (-5);
            stopListening();
            return;
        }
        int i2 = i | 4;
        this.mFlags = i2;
        if ((i2 & 2) != 0) {
            startListening();
        }
    }

    @Override // android.appwidget.AppWidgetHost
    public int allocateAppWidgetId() {
        return super.allocateAppWidgetId();
    }

    public void addProviderChangeListener(ProviderChangedListener callback) {
        this.mProviderChangeListeners.add(callback);
    }

    public void removeProviderChangeListener(ProviderChangedListener callback) {
        this.mProviderChangeListeners.remove(callback);
    }

    @Override // android.appwidget.AppWidgetHost
    protected void onProvidersChanged() {
        if (this.mProviderChangeListeners.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(this.mProviderChangeListeners).iterator();
        while (it.hasNext()) {
            ((ProviderChangedListener) it.next()).notifyWidgetProvidersChanged();
        }
    }

    void addPendingView(int appWidgetId, PendingAppWidgetHostView view) {
        this.mPendingViews.put(appWidgetId, view);
    }

    public AppWidgetHostView createView(Context context, int appWidgetId, LauncherAppWidgetProviderInfo appWidget) {
        if (appWidget.isCustomWidget()) {
            LauncherAppWidgetHostView launcherAppWidgetHostView = new LauncherAppWidgetHostView(context);
            launcherAppWidgetHostView.setAppWidget(0, appWidget);
            CustomWidgetManager.INSTANCE.m166x39265fe7(context).onViewCreated(launcherAppWidgetHostView);
            return launcherAppWidgetHostView;
        }
        if ((this.mFlags & 1) == 0) {
            DeferredAppWidgetHostView deferredAppWidgetHostView = new DeferredAppWidgetHostView(context);
            deferredAppWidgetHostView.setAppWidget(appWidgetId, appWidget);
            this.mViews.put(appWidgetId, deferredAppWidgetHostView);
            return deferredAppWidgetHostView;
        }
        try {
            return super.createView(context, appWidgetId, (AppWidgetProviderInfo) appWidget);
        } catch (Exception e) {
            if (!Utilities.isBinderSizeError(e)) {
                throw new RuntimeException(e);
            }
            LauncherAppWidgetHostView launcherAppWidgetHostViewOnCreateView = this.mViews.get(appWidgetId);
            if (launcherAppWidgetHostViewOnCreateView == null) {
                launcherAppWidgetHostViewOnCreateView = onCreateView(this.mContext, appWidgetId, (AppWidgetProviderInfo) appWidget);
            }
            launcherAppWidgetHostViewOnCreateView.setAppWidget(appWidgetId, appWidget);
            launcherAppWidgetHostViewOnCreateView.switchToErrorView();
            return launcherAppWidgetHostViewOnCreateView;
        }
    }

    @Override // android.appwidget.AppWidgetHost
    protected void onProviderChanged(int appWidgetId, AppWidgetProviderInfo appWidget) {
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfoFromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidget);
        super.onProviderChanged(appWidgetId, launcherAppWidgetProviderInfoFromProviderInfo);
        launcherAppWidgetProviderInfoFromProviderInfo.initSpans(this.mContext);
    }

    @Override // android.appwidget.AppWidgetHost
    public void onAppWidgetRemoved(int appWidgetId) {
        IntConsumer intConsumer = this.mAppWidgetRemovedCallback;
        if (intConsumer == null) {
            return;
        }
        intConsumer.accept(appWidgetId);
    }

    @Override // android.appwidget.AppWidgetHost
    public void deleteAppWidgetId(int appWidgetId) {
        super.deleteAppWidgetId(appWidgetId);
        this.mViews.remove(appWidgetId);
    }

    @Override // android.appwidget.AppWidgetHost
    public void clearViews() {
        super.clearViews();
        this.mViews.clear();
    }

    public void startBindFlow(BaseActivity activity, int appWidgetId, AppWidgetProviderInfo info, int requestCode) {
        activity.startActivityForResult(new Intent("android.appwidget.action.APPWIDGET_BIND").putExtra(LauncherSettings.Favorites.APPWIDGET_ID, appWidgetId).putExtra(LauncherSettings.Favorites.APPWIDGET_PROVIDER, info.provider).putExtra("appWidgetProviderProfile", info.getProfile()), requestCode);
    }

    public void startConfigActivity(BaseActivity activity, int widgetId, int requestCode) {
        try {
            TestLogging.recordEvent(TestProtocol.SEQUENCE_MAIN, "start: startConfigActivity");
            startAppWidgetConfigureActivityForResult(activity, widgetId, 0, requestCode, null);
        } catch (ActivityNotFoundException | SecurityException unused) {
            ToastViewUtils.makeText(activity, R.string.activity_not_found, 3000L).show();
            sendActionCancelled(activity, requestCode);
        }
    }

    private void sendActionCancelled(final BaseActivity activity, final int requestCode) {
        new Handler().post(new Runnable() { // from class: com.android.launcher3.LauncherAppWidgetHost$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                activity.onActivityResult(requestCode, 0, null);
            }
        });
    }
}
