package com.android.launcher3.activity.model;

import android.content.ComponentName;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.android.launcher3.util.Const;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AppListLaunchHistory {
    private static final int CLICK_INFO_VIEW_EXPIRE = 300;
    private static final int MSG_CLEAR_CLICK_INFO = 100;
    private static final String TAG = "AppListLaunchHistory";
    private final LinkedList<LaunchInfo> mHistory = new LinkedList<>();
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.launcher3.activity.model.AppListLaunchHistory.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 100) {
                Object obj = msg.obj;
                if (obj instanceof LaunchInfo) {
                    ((LaunchInfo) obj).mView = null;
                }
            }
        }
    };

    private static class InstanceHolder {
        private static final AppListLaunchHistory INSTANCE = new AppListLaunchHistory();

        private InstanceHolder() {
        }
    }

    public static AppListLaunchHistory get() {
        return InstanceHolder.INSTANCE;
    }

    public LaunchInfo getLastestLaunchInfo() {
        return this.mHistory.peekFirst();
    }

    public void noteAppLaunched(View view, AllAppInfo itemInfo) {
        if (view == null || itemInfo == null) {
            return;
        }
        synchronized (this.mHistory) {
            LaunchInfo launchInfo = new LaunchInfo(view, itemInfo);
            this.mHistory.addFirst(launchInfo);
            if (this.mHistory.size() > 25) {
                this.mHistory.removeLast();
            }
            this.mHandler.sendMessageDelayed(Message.obtain(this.mHandler, 100, launchInfo), 300L);
        }
    }

    public AllAppInfo getLastLaunched(ComponentName componentName) {
        ResolveInfo resolveInfo;
        if (componentName == null) {
            return null;
        }
        String packageName = componentName.getPackageName();
        synchronized (this.mHistory) {
            Iterator<LaunchInfo> it = this.mHistory.iterator();
            while (it.hasNext()) {
                AllAppInfo allAppInfo = it.next().mItemInfo;
                if (allAppInfo != null && (resolveInfo = allAppInfo.getResolveInfo()) != null) {
                    String str = resolveInfo.activityInfo.packageName;
                    if (Objects.equals(packageName, Const.PACKAGE_LION_MEDIA) && Objects.equals(str, Const.PACKAGE_WIDGET)) {
                        return allAppInfo;
                    }
                    if (Objects.equals(packageName, str)) {
                        return allAppInfo;
                    }
                }
            }
            return null;
        }
    }

    public void clear() {
        this.mHistory.clear();
    }

    public static class LaunchInfo {
        private final AllAppInfo mItemInfo;
        private View mView;

        public AllAppInfo getItemInfo() {
            return this.mItemInfo;
        }

        public View getView() {
            return this.mView;
        }

        public LaunchInfo(View view, AllAppInfo itemInfo) {
            this.mView = view;
            this.mItemInfo = itemInfo;
        }

        public String toString() {
            return "LaunchInfo{mView=" + this.mView + ", info=" + this.mItemInfo + '}';
        }
    }
}
