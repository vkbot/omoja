package com.mega.carlink.view;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import com.mega.carlink.CarLinkDeviceManager;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class CarLinkMixLauncherViewModel extends AndroidViewModel {
    private static final String TAG = "CarLinkMixLauncherViewModel";
    private Application mApp;

    public CarLinkMixLauncherViewModel(Application application) {
        super(application);
        MLog.d(TAG, "CarLinkMixLauncherViewModel()");
        this.mApp = application;
        CarLinkDeviceManager.getInstance().init(this.mApp, new CarLinkDeviceManager.OnCarlinkInitCallback() { // from class: com.mega.carlink.view.CarLinkMixLauncherViewModel.1
            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarlinkInitCallback
            public void onInitSuccess() {
                MLog.d(CarLinkMixLauncherViewModel.TAG, "onInitSuccess");
            }

            @Override // com.mega.carlink.CarLinkDeviceManager.OnCarlinkInitCallback
            public void onInitFailed() {
                MLog.d(CarLinkMixLauncherViewModel.TAG, "onInitFailed");
            }
        });
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        MLog.d(TAG, "onCleared()");
        CarLinkDeviceManager.getInstance().unBind();
    }
}
