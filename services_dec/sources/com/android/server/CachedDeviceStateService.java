package com.android.server;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManagerInternal;
import android.os.PowerManager;
import android.util.Slog;
import com.android.internal.os.CachedDeviceState;

/* JADX INFO: loaded from: classes.dex */
public class CachedDeviceStateService extends SystemService {
    private static final String TAG = "CachedDeviceStateService";
    private final BroadcastReceiver mBroadcastReceiver;
    private final CachedDeviceState mDeviceState;

    public CachedDeviceStateService(Context context) {
        super(context);
        this.mDeviceState = new CachedDeviceState();
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.CachedDeviceStateService.1
            /* JADX WARN: Code duplicated, block: B:18:0x0039  */
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                byte b;
                String action = intent.getAction();
                int iHashCode = action.hashCode();
                if (iHashCode != -2128145023) {
                    if (iHashCode != -1538406691) {
                        if (iHashCode == -1454123155 && action.equals("android.intent.action.SCREEN_ON")) {
                            b = 1;
                        } else {
                            b = -1;
                        }
                    } else if (action.equals("android.intent.action.BATTERY_CHANGED")) {
                        b = 0;
                    } else {
                        b = -1;
                    }
                } else if (action.equals("android.intent.action.SCREEN_OFF")) {
                    b = 2;
                } else {
                    b = -1;
                }
                if (b == 0) {
                    CachedDeviceStateService.this.mDeviceState.setCharging(intent.getIntExtra("plugged", 0) != 0);
                } else if (b == 1) {
                    CachedDeviceStateService.this.mDeviceState.setScreenInteractive(true);
                } else if (b == 2) {
                    CachedDeviceStateService.this.mDeviceState.setScreenInteractive(false);
                }
            }
        };
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishLocalService(CachedDeviceState.Readonly.class, this.mDeviceState.getReadonlyClient());
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (500 == phase) {
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.intent.action.BATTERY_CHANGED");
            filter.addAction("android.intent.action.SCREEN_ON");
            filter.addAction("android.intent.action.SCREEN_OFF");
            filter.setPriority(1000);
            getContext().registerReceiver(this.mBroadcastReceiver, filter);
            this.mDeviceState.setCharging(queryIsCharging());
            this.mDeviceState.setScreenInteractive(queryScreenInteractive(getContext()));
        }
    }

    private boolean queryIsCharging() {
        BatteryManagerInternal batteryManager = (BatteryManagerInternal) LocalServices.getService(BatteryManagerInternal.class);
        if (batteryManager != null) {
            return batteryManager.getPlugType() != 0;
        }
        Slog.wtf(TAG, "BatteryManager null while starting CachedDeviceStateService");
        return true;
    }

    private boolean queryScreenInteractive(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService(PowerManager.class);
        if (powerManager == null) {
            Slog.wtf(TAG, "PowerManager null while starting CachedDeviceStateService");
            return false;
        }
        return powerManager.isInteractive();
    }
}
