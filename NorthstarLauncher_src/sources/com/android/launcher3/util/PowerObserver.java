package com.android.launcher3.util;

import android.content.Context;
import android.database.ContentObserver;
import android.provider.Settings;
import androidx.lifecycle.LiveData;
import com.android.launcher3.LauncherSettings;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: PowerObserver.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0014J\b\u0010\u0011\u001a\u00020\u0010H\u0014J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0002H\u0014J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\rH\u0002J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0015H\u0002R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/android/launcher3/util/PowerObserver;", "Landroidx/lifecycle/LiveData;", "", "ctx", "Landroid/content/Context;", "(Landroid/content/Context;)V", "context", "isActive", "()Z", "observer", "Landroid/database/ContentObserver;", "isActiveInner", "powerStatus", "", "isInactiveInner", "onActive", "", "onInactive", "setValue", LauncherSettings.Settings.EXTRA_VALUE, "toPowerStatusString", "", "updatePowerStatus", "reason", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PowerObserver extends LiveData<Boolean> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "PowerObserver";
    private final Context context;
    private final ContentObserver observer;

    public /* synthetic */ PowerObserver(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private final boolean isActiveInner(int powerStatus) {
        return powerStatus == 1 || powerStatus == 8;
    }

    private final boolean isInactiveInner(int powerStatus) {
        return powerStatus == 6 || powerStatus == 7;
    }

    private PowerObserver(Context context) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "ctx.applicationContext");
        this.context = applicationContext;
        this.observer = new ContentObserver() { // from class: com.android.launcher3.util.PowerObserver$observer$1
            {
                super(null);
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                super.onChange(selfChange);
                this.this$0.updatePowerStatus(Settings.System.getInt(this.this$0.context.getContentResolver(), "mega_android_power_status", 1), "onChange");
            }
        };
    }

    @Override // androidx.lifecycle.LiveData
    public /* bridge */ /* synthetic */ void setValue(Boolean bool) {
        setValue(bool.booleanValue());
    }

    public final boolean isActive() {
        Boolean value = getValue();
        return value != null && value.booleanValue();
    }

    protected void setValue(boolean value) {
        if (Intrinsics.areEqual(Boolean.valueOf(value), getValue())) {
            return;
        }
        super.setValue(Boolean.valueOf(value));
    }

    @Override // androidx.lifecycle.LiveData
    protected void onActive() {
        super.onActive();
        this.context.getContentResolver().registerContentObserver(Settings.System.getUriFor("mega_android_power_status"), true, this.observer);
        updatePowerStatus(Settings.System.getInt(this.context.getContentResolver(), "mega_android_power_status", 1), "onActive");
    }

    @Override // androidx.lifecycle.LiveData
    protected void onInactive() {
        super.onInactive();
        this.context.getContentResolver().unregisterContentObserver(this.observer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePowerStatus(int powerStatus, String reason) {
        MLog.d(TAG, "updatePowerStatus: " + toPowerStatusString(powerStatus) + " reason " + reason);
        if (isActiveInner(powerStatus)) {
            postValue(true);
        } else if (isInactiveInner(powerStatus)) {
            postValue(false);
        }
    }

    private final String toPowerStatusString(int powerStatus) {
        if (powerStatus == 1) {
            return "STATUS_ON";
        }
        if (powerStatus == 6) {
            return "STATUS_STAND_BY";
        }
        if (powerStatus != 7) {
            return powerStatus != 8 ? "other_" + powerStatus : "STATUS_TEMPORARY_WORKING";
        }
        return "STATUS_SCREEN_SAVER";
    }

    /* JADX INFO: compiled from: PowerObserver.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/android/launcher3/util/PowerObserver$Companion;", "Lcom/android/launcher3/util/SingletonHolder;", "Lcom/android/launcher3/util/PowerObserver;", "Landroid/content/Context;", "()V", "TAG", "", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion extends SingletonHolder<PowerObserver, Context> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: renamed from: com.android.launcher3.util.PowerObserver$Companion$1, reason: invalid class name */
        /* JADX INFO: compiled from: PowerObserver.kt */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<Context, PowerObserver> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1, PowerObserver.class, "<init>", "<init>(Landroid/content/Context;)V", 0);
            }

            @Override // kotlin.jvm.functions.Function1
            public final PowerObserver invoke(Context p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return new PowerObserver(p0, null);
            }
        }

        private Companion() {
            super(AnonymousClass1.INSTANCE);
        }
    }
}
