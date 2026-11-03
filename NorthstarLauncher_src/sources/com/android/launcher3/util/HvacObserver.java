package com.android.launcher3.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.lifecycle.LiveData;
import com.android.launcher3.testing.TestProtocol;
import java.util.Optional;
import java.util.function.Consumer;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class HvacObserver extends LiveData<Boolean> {
    private static final int HIDDEN = 0;
    private static final int SHOWN = 1;
    private static final String TAG = "HvacReceiver";
    private final Context mContext;
    private final BroadcastReceiver mReceiver = new AnonymousClass1();

    /* JADX INFO: renamed from: com.android.launcher3.util.HvacObserver$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras();
            Optional.ofNullable(extras).ifPresent(new Consumer() { // from class: com.android.launcher3.util.HvacObserver$1$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((Bundle) obj).size();
                }
            });
            MLog.d(HvacObserver.TAG, "onReceive: " + extras);
            if (extras != null) {
                HvacObserver.this.postValue(Boolean.valueOf(extras.getInt(TestProtocol.STATE_FIELD, 0) == 1));
            }
        }
    }

    public HvacObserver(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public boolean isShown() {
        Boolean value = getValue();
        return value != null && value.booleanValue();
    }

    @Override // androidx.lifecycle.LiveData
    protected void onActive() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mega.hvac.action_hvac_state");
        this.mContext.registerReceiver(this.mReceiver, intentFilter);
    }

    @Override // androidx.lifecycle.LiveData
    protected void onInactive() {
        this.mContext.unregisterReceiver(this.mReceiver);
    }
}
