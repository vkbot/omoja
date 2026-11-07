package com.android.server.people;

import android.app.prediction.AppPredictionContext;
import android.app.prediction.AppTarget;
import android.app.prediction.IPredictionCallback;
import android.content.pm.ParceledListSlice;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Slog;
import com.android.server.people.data.DataManager;
import com.android.server.people.prediction.AppTargetPredictor;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
class SessionInfo {
    private static final String TAG = "SessionInfo";
    private final AppTargetPredictor mAppTargetPredictor;
    private final RemoteCallbackList<IPredictionCallback> mCallbacks = new RemoteCallbackList<>();

    SessionInfo(AppPredictionContext predictionContext, DataManager dataManager, int callingUserId) {
        this.mAppTargetPredictor = AppTargetPredictor.create(predictionContext, new Consumer() { // from class: com.android.server.people.-$$Lambda$SessionInfo$2OtPK09nVVD0gSsiFnqBuY6yh_M
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.updatePredictions((List) obj);
            }
        }, dataManager, callingUserId);
    }

    void addCallback(IPredictionCallback callback) {
        this.mCallbacks.register(callback);
    }

    void removeCallback(IPredictionCallback callback) {
        this.mCallbacks.unregister(callback);
    }

    AppTargetPredictor getPredictor() {
        return this.mAppTargetPredictor;
    }

    void onDestroy() {
        this.mCallbacks.kill();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePredictions(List<AppTarget> targets) {
        int callbackCount = this.mCallbacks.beginBroadcast();
        for (int i = 0; i < callbackCount; i++) {
            try {
                this.mCallbacks.getBroadcastItem(i).onResult(new ParceledListSlice(targets));
            } catch (RemoteException e) {
                Slog.e(TAG, "Failed to calling callback" + e);
            }
        }
        this.mCallbacks.finishBroadcast();
    }
}
