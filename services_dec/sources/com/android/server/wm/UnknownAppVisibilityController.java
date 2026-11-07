package com.android.server.wm;

import android.util.ArrayMap;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class UnknownAppVisibilityController {
    private static final String TAG = "WindowManager";
    private static final int UNKNOWN_STATE_WAITING_RELAYOUT = 2;
    private static final int UNKNOWN_STATE_WAITING_RESUME = 1;
    private static final int UNKNOWN_STATE_WAITING_VISIBILITY_UPDATE = 3;
    private final DisplayContent mDisplayContent;
    private final WindowManagerService mService;
    private final ArrayMap<ActivityRecord, Integer> mUnknownApps = new ArrayMap<>();

    UnknownAppVisibilityController(WindowManagerService service, DisplayContent displayContent) {
        this.mService = service;
        this.mDisplayContent = displayContent;
    }

    boolean allResolved() {
        return this.mUnknownApps.isEmpty();
    }

    void clear() {
        this.mUnknownApps.clear();
    }

    String getDebugMessage() {
        StringBuilder builder = new StringBuilder();
        for (int i = this.mUnknownApps.size() - 1; i >= 0; i--) {
            builder.append("app=");
            builder.append(this.mUnknownApps.keyAt(i));
            builder.append(" state=");
            builder.append(this.mUnknownApps.valueAt(i));
            if (i != 0) {
                builder.append(' ');
            }
        }
        return builder.toString();
    }

    void appRemovedOrHidden(ActivityRecord activity) {
        this.mUnknownApps.remove(activity);
    }

    void notifyLaunched(ActivityRecord activity) {
        this.mUnknownApps.put(activity, 1);
    }

    void notifyAppResumedFinished(ActivityRecord activity) {
        if (this.mUnknownApps.containsKey(activity) && this.mUnknownApps.get(activity).intValue() == 1) {
            this.mUnknownApps.put(activity, 2);
        }
    }

    void notifyRelayouted(ActivityRecord activity) {
        if (!this.mUnknownApps.containsKey(activity)) {
            return;
        }
        int state = this.mUnknownApps.get(activity).intValue();
        if (state == 2) {
            this.mUnknownApps.put(activity, 3);
            this.mService.notifyKeyguardFlagsChanged(new Runnable() { // from class: com.android.server.wm.-$$Lambda$UnknownAppVisibilityController$FYhcjOhYWVp6HX5hr3GGaPg67Gc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.notifyVisibilitiesUpdated();
                }
            }, activity.getDisplayContent().getDisplayId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyVisibilitiesUpdated() {
        boolean changed = false;
        for (int i = this.mUnknownApps.size() - 1; i >= 0; i--) {
            if (this.mUnknownApps.valueAt(i).intValue() == 3) {
                this.mUnknownApps.removeAt(i);
                changed = true;
            }
        }
        if (changed) {
            this.mService.mWindowPlacerLocked.performSurfacePlacement();
        }
    }

    void dump(PrintWriter pw, String prefix) {
        if (this.mUnknownApps.isEmpty()) {
            return;
        }
        pw.println(prefix + "Unknown visibilities:");
        for (int i = this.mUnknownApps.size() + (-1); i >= 0; i += -1) {
            pw.println(prefix + "  app=" + this.mUnknownApps.keyAt(i) + " state=" + this.mUnknownApps.valueAt(i));
        }
    }
}
