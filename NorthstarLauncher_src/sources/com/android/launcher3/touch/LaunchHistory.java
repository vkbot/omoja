package com.android.launcher3.touch;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.Const;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class LaunchHistory {
    private static final int CLICK_INFO_VIEW_EXPIRE = 300;
    private static final int MSG_CLEAR_CLICK_INFO = 100;
    private static final String TAG = "LaunchHistory";
    private final LinkedList<LaunchInfo> mHistory = new LinkedList<>();
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.launcher3.touch.LaunchHistory.1
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
        private static final LaunchHistory INSTANCE = new LaunchHistory();

        private InstanceHolder() {
        }
    }

    public static LaunchHistory get() {
        return InstanceHolder.INSTANCE;
    }

    public LaunchInfo getLastestLaunchInfo() {
        return this.mHistory.peekFirst();
    }

    public void noteAppLaunched(View view, ItemInfo itemInfo) {
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

    public ItemInfo getLastLaunched(ComponentName componentName) {
        ComponentName targetComponent;
        if (componentName == null) {
            return null;
        }
        String packageName = componentName.getPackageName();
        ComponentName componentNameMaybeWidgetIcon = Const.maybeWidgetIcon(componentName);
        synchronized (this.mHistory) {
            Iterator<LaunchInfo> it = this.mHistory.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo = it.next().mItemInfo;
                if (itemInfo != null && (targetComponent = itemInfo.getTargetComponent()) != null) {
                    if (Objects.equals(packageName, targetComponent.getPackageName())) {
                        return itemInfo;
                    }
                    if (componentNameMaybeWidgetIcon != null && (itemInfo instanceof LauncherAppWidgetInfo) && Objects.equals(componentNameMaybeWidgetIcon, targetComponent)) {
                        return itemInfo;
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
        private ItemInfo mItemInfo;
        private View mView;

        public ItemInfo getItemInfo() {
            return this.mItemInfo;
        }

        public View getView() {
            return this.mView;
        }

        public LaunchInfo(View view, ItemInfo itemInfo) {
            this.mView = view;
            this.mItemInfo = itemInfo;
        }

        public String toString() {
            return "LaunchInfo{mView=" + this.mView + ", mItemInfo=" + this.mItemInfo + '}';
        }
    }
}
