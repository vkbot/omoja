package com.android.launcher3.util;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.LiveData;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.testing.TestProtocol;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mega.car.config.Power;
import mega.log.MLog;

/* JADX INFO: compiled from: DisplayStateObserver.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0007\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0002H\u0014J\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/android/launcher3/util/DisplayStateObserver;", "Landroidx/lifecycle/LiveData;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "displayListener", "com/android/launcher3/util/DisplayStateObserver$displayListener$1", "Lcom/android/launcher3/util/DisplayStateObserver$displayListener$1;", "dm", "Landroid/hardware/display/DisplayManager;", "isActive", "()Z", "onActive", "", "onInactive", "setValue", LauncherSettings.Settings.EXTRA_VALUE, "updateDisplayState", TestProtocol.STATE_FIELD, "", "reason", "", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DisplayStateObserver extends LiveData<Boolean> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "DisplayStateObserver";
    private final DisplayStateObserver$displayListener$1 displayListener;
    private final DisplayManager dm;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.launcher3.util.DisplayStateObserver$displayListener$1] */
    public DisplayStateObserver(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService((Class<Object>) DisplayManager.class);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.display.DisplayManager");
        this.dm = (DisplayManager) systemService;
        this.displayListener = new DisplayManager.DisplayListener() { // from class: com.android.launcher3.util.DisplayStateObserver$displayListener$1
            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int displayId) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int displayId) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int displayId) {
                if (displayId == 0) {
                    this.this$0.updateDisplayState(this.this$0.dm.getDisplay(0).getState(), "onDisplayChanged");
                }
            }
        };
    }

    @Override // androidx.lifecycle.LiveData
    public /* bridge */ /* synthetic */ void setValue(Boolean bool) {
        setValue(bool.booleanValue());
    }

    public final boolean isActive() {
        return Intrinsics.areEqual((Object) getValue(), (Object) true);
    }

    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        super.onActive();
        this.dm.registerDisplayListener(this.displayListener, new Handler(Looper.getMainLooper()));
        updateDisplayState(this.dm.getDisplay(0).getState(), "onActive");
    }

    @Override // androidx.lifecycle.LiveData
    public void onInactive() {
        super.onInactive();
        this.dm.unregisterDisplayListener(this.displayListener);
    }

    protected void setValue(boolean value) {
        if (Intrinsics.areEqual(Boolean.valueOf(value), getValue())) {
            return;
        }
        super.setValue(Boolean.valueOf(value));
    }

    public final void updateDisplayState(int state, String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        MLog.d(TAG, "updateDisplayState: " + INSTANCE.stateToString(state) + " reason=" + reason);
        if (state == 1) {
            postValue(false);
        } else {
            if (state != 2) {
                return;
            }
            postValue(true);
        }
    }

    /* JADX INFO: compiled from: DisplayStateObserver.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/android/launcher3/util/DisplayStateObserver$Companion;", "", "()V", "TAG", "", "stateToString", TestProtocol.STATE_FIELD, "", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String stateToString(int state) {
            switch (state) {
                case 0:
                    return "UNKNOWN";
                case 1:
                    return "OFF";
                case 2:
                    return Power.PowerStatusEnum.ON;
                case 3:
                    return "DOZE";
                case 4:
                    return "DOZE_SUSPEND";
                case 5:
                    return "VR";
                case 6:
                    return "ON_SUSPEND";
                default:
                    return String.valueOf(state);
            }
        }
    }
}
