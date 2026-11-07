package com.android.server.people.prediction;

import android.app.prediction.AppPredictionContext;
import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.app.prediction.AppTargetId;
import com.android.server.people.data.DataManager;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class AppTargetPredictor {
    private static final String UI_SURFACE_SHARE = "share";
    private final ExecutorService mCallbackExecutor = Executors.newSingleThreadExecutor();
    final int mCallingUserId;
    private final DataManager mDataManager;
    private final AppPredictionContext mPredictionContext;
    private final Consumer<List<AppTarget>> mUpdatePredictionsMethod;

    public static AppTargetPredictor create(AppPredictionContext predictionContext, Consumer<List<AppTarget>> updatePredictionsMethod, DataManager dataManager, int callingUserId) {
        if (UI_SURFACE_SHARE.equals(predictionContext.getUiSurface())) {
            return new ShareTargetPredictor(predictionContext, updatePredictionsMethod, dataManager, callingUserId);
        }
        return new AppTargetPredictor(predictionContext, updatePredictionsMethod, dataManager, callingUserId);
    }

    AppTargetPredictor(AppPredictionContext predictionContext, Consumer<List<AppTarget>> updatePredictionsMethod, DataManager dataManager, int callingUserId) {
        this.mPredictionContext = predictionContext;
        this.mUpdatePredictionsMethod = updatePredictionsMethod;
        this.mDataManager = dataManager;
        this.mCallingUserId = callingUserId;
    }

    public void onAppTargetEvent(final AppTargetEvent event) {
        this.mCallbackExecutor.execute(new Runnable() { // from class: com.android.server.people.prediction.-$$Lambda$AppTargetPredictor$AoCSjvx8UmO2ru-6I2SrqntXIec
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onAppTargetEvent$0$AppTargetPredictor(event);
            }
        });
    }

    public void onLaunchLocationShown(String launchLocation, List<AppTargetId> targetIds) {
    }

    public void onSortAppTargets(final List<AppTarget> targets, final Consumer<List<AppTarget>> callback) {
        this.mCallbackExecutor.execute(new Runnable() { // from class: com.android.server.people.prediction.-$$Lambda$AppTargetPredictor$jEhX8IfS4HyB_hke7vWd1UlHo_A
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onSortAppTargets$1$AppTargetPredictor(targets, callback);
            }
        });
    }

    public void onRequestPredictionUpdate() {
        this.mCallbackExecutor.execute(new Runnable() { // from class: com.android.server.people.prediction.-$$Lambda$YyxHEnch1g0ktFuyNAvHCkKiY6A
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.predictTargets();
            }
        });
    }

    public Consumer<List<AppTarget>> getUpdatePredictionsMethod() {
        return this.mUpdatePredictionsMethod;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: reportAppTargetEvent, reason: merged with bridge method [inline-methods] */
    public void lambda$onAppTargetEvent$0$AppTargetPredictor(AppTargetEvent event) {
    }

    void predictTargets() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: sortTargets, reason: merged with bridge method [inline-methods] */
    public void lambda$onSortAppTargets$1$AppTargetPredictor(List<AppTarget> targets, Consumer<List<AppTarget>> callback) {
        callback.accept(targets);
    }

    AppPredictionContext getPredictionContext() {
        return this.mPredictionContext;
    }

    DataManager getDataManager() {
        return this.mDataManager;
    }

    void updatePredictions(List<AppTarget> targets) {
        this.mUpdatePredictionsMethod.accept(targets);
    }
}
