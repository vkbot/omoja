package com.mega.hicar.view;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import com.mega.hicar.HiCarDeviceManager;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class HiCarMixLauncherViewModel extends AndroidViewModel {
    private static final String TAG = "HiCarMixLauncherViewMod";
    private Application mApp;

    public HiCarMixLauncherViewModel(Application application) {
        super(application);
        MLog.d(TAG, "HiCarMixLauncherViewModel()");
        this.mApp = application;
        HiCarDeviceManager.getInstance().init(application);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        MLog.d(TAG, "onCleared()");
        HiCarDeviceManager.getInstance().release(this.mApp);
    }
}
