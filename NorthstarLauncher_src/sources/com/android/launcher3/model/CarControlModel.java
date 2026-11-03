package com.android.launcher3.model;

import android.content.Context;
import com.android.launcher3.util.Executors;
import com.mega.chery.utils.CheryCountryArea;
import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import java.util.concurrent.atomic.AtomicBoolean;
import mega.car.MegaCarProperty;
import mega.car.config.Northstar;
import mega.car.hardware.CarPropertyValue;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class CarControlModel {
    private static final String TAG = "CarControlModel";
    private static volatile CarControlModel sCarControlModel;
    private final Context mContext;
    private final AtomicBoolean mLauncherShownCalled = new AtomicBoolean(false);
    private final MegaCarProperty mMegaCarPropHelper = MegaCarProperty.getInstance();

    private CarControlModel(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static synchronized CarControlModel getInstance(Context context) {
        if (sCarControlModel == null) {
            sCarControlModel = new CarControlModel(context);
        }
        return sCarControlModel;
    }

    public static synchronized CarControlModel getInstance() {
        return sCarControlModel;
    }

    public void notifyLauncherReady() {
        Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.model.CarControlModel$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m113x58a5ef7d();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$notifyLauncherReady$0$com-android-launcher3-model-CarControlModel, reason: not valid java name */
    /* synthetic */ void m113x58a5ef7d() {
        if (this.mLauncherShownCalled.compareAndSet(false, true)) {
            MegaSystemProperties.set("sys.launcher_show", CheryCountryArea.KEY_CHILE);
        }
        this.mMegaCarPropHelper.setRawProp(new CarPropertyValue<>(Northstar.ID_LAUNCHER_READ, "android,launcher_show"));
        MLog.d(TAG, "notifyLauncherReady ID_LAUNCHER_READ.");
    }

    public boolean isLauncherShowCalled() {
        return this.mLauncherShownCalled.get();
    }

    public int getIntProp(int id) {
        return this.mMegaCarPropHelper.getIntProp(id);
    }

    public boolean isSupportCamera() {
        int i = MegaSystemProperties.getInt(MegaProperties.CONFIG_PASSENGER_MONITOR, -1);
        MLog.i("ID_CONFIG_PASSENGER_MONITOR " + i);
        return i == 1;
    }

    public int getPowerStatus() {
        return this.mMegaCarPropHelper.getIntProp(Northstar.ID_POWER_STATUS);
    }
}
