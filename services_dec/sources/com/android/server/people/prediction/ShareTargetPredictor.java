package com.android.server.people.prediction;

import android.app.prediction.AppPredictionContext;
import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.app.prediction.AppTargetId;
import android.content.IntentFilter;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.util.Log;
import android.util.Slog;
import com.android.server.people.data.ConversationInfo;
import com.android.server.people.data.DataManager;
import com.android.server.people.data.EventHistory;
import com.android.server.people.data.PackageData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
class ShareTargetPredictor extends AppTargetPredictor {
    private final IntentFilter mIntentFilter;
    private static final String TAG = "ShareTargetPredictor";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    ShareTargetPredictor(AppPredictionContext predictionContext, Consumer<List<AppTarget>> updatePredictionsMethod, DataManager dataManager, int callingUserId) {
        super(predictionContext, updatePredictionsMethod, dataManager, callingUserId);
        this.mIntentFilter = (IntentFilter) predictionContext.getExtras().getParcelable("intent_filter");
    }

    @Override // com.android.server.people.prediction.AppTargetPredictor
    /* JADX INFO: renamed from: reportAppTargetEvent */
    void lambda$onAppTargetEvent$0$AppTargetPredictor(AppTargetEvent event) {
        if (DEBUG) {
            Slog.d(TAG, "reportAppTargetEvent");
        }
        if (this.mIntentFilter != null) {
            getDataManager().reportShareTargetEvent(event, this.mIntentFilter);
        }
    }

    @Override // com.android.server.people.prediction.AppTargetPredictor
    void predictTargets() {
        if (DEBUG) {
            Slog.d(TAG, "predictTargets");
        }
        if (this.mIntentFilter == null) {
            updatePredictions(List.of());
            return;
        }
        List<ShareTarget> shareTargets = getDirectShareTargets();
        SharesheetModelScorer.computeScoreForDirectShare(shareTargets, getShareEventType(this.mIntentFilter), System.currentTimeMillis());
        Collections.sort(shareTargets, Comparator.comparing(new Function() { // from class: com.android.server.people.prediction.-$$Lambda$FysUMXSDl6-hkJQebinV3cvBgrs
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Float.valueOf(((ShareTargetPredictor.ShareTarget) obj).getScore());
            }
        }, Collections.reverseOrder()).thenComparing(new Function() { // from class: com.android.server.people.prediction.-$$Lambda$ShareTargetPredictor$OnvWjVI-0yaE3oXCvW9zplQ6C0U
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((ShareTargetPredictor.ShareTarget) obj).getAppTarget().getRank());
            }
        }));
        List<AppTarget> res = new ArrayList<>();
        for (int i = 0; i < Math.min(getPredictionContext().getPredictedTargetCount(), shareTargets.size()); i++) {
            res.add(shareTargets.get(i).getAppTarget());
        }
        updatePredictions(res);
    }

    @Override // com.android.server.people.prediction.AppTargetPredictor
    /* JADX INFO: renamed from: sortTargets */
    void lambda$onSortAppTargets$1$AppTargetPredictor(List<AppTarget> targets, Consumer<List<AppTarget>> callback) {
        if (DEBUG) {
            Slog.d(TAG, "sortTargets");
        }
        if (this.mIntentFilter == null) {
            callback.accept(targets);
            return;
        }
        List<ShareTarget> shareTargets = getAppShareTargets(targets);
        SharesheetModelScorer.computeScoreForAppShare(shareTargets, getShareEventType(this.mIntentFilter), getPredictionContext().getPredictedTargetCount(), System.currentTimeMillis(), getDataManager(), this.mCallingUserId);
        Collections.sort(shareTargets, new Comparator() { // from class: com.android.server.people.prediction.-$$Lambda$ShareTargetPredictor$_2n8ObVTS8OfzNSVGhI6lPQLEL0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ShareTargetPredictor.lambda$sortTargets$1((ShareTargetPredictor.ShareTarget) obj, (ShareTargetPredictor.ShareTarget) obj2);
            }
        });
        List<AppTarget> appTargetList = new ArrayList<>();
        for (ShareTarget shareTarget : shareTargets) {
            AppTarget appTarget = shareTarget.getAppTarget();
            appTargetList.add(new AppTarget.Builder(appTarget.getId(), appTarget.getPackageName(), appTarget.getUser()).setClassName(appTarget.getClassName()).setRank(shareTarget.getScore() > 0.0f ? (int) (shareTarget.getScore() * 1000.0f) : 0).build());
        }
        callback.accept(appTargetList);
    }

    static /* synthetic */ int lambda$sortTargets$1(ShareTarget t1, ShareTarget t2) {
        return -Float.compare(t1.getScore(), t2.getScore());
    }

    private List<ShareTarget> getDirectShareTargets() {
        String shortcutId;
        List<ShareTarget> shareTargets = new ArrayList<>();
        List<ShortcutManager.ShareShortcutInfo> shareShortcuts = getDataManager().getShareShortcuts(this.mIntentFilter, this.mCallingUserId);
        for (ShortcutManager.ShareShortcutInfo shareShortcut : shareShortcuts) {
            ShortcutInfo shortcutInfo = shareShortcut.getShortcutInfo();
            AppTarget appTarget = new AppTarget.Builder(new AppTargetId(shortcutInfo.getId()), shortcutInfo).setClassName(shareShortcut.getTargetComponent().getClassName()).setRank(shortcutInfo.getRank()).build();
            String packageName = shortcutInfo.getPackage();
            int userId = shortcutInfo.getUserId();
            PackageData packageData = getDataManager().getPackage(packageName, userId);
            ConversationInfo conversationInfo = null;
            EventHistory eventHistory = null;
            if (packageData != null && (conversationInfo = packageData.getConversationInfo((shortcutId = shortcutInfo.getId()))) != null) {
                eventHistory = packageData.getEventHistory(shortcutId);
            }
            shareTargets.add(new ShareTarget(appTarget, eventHistory, conversationInfo));
        }
        return shareTargets;
    }

    private List<ShareTarget> getAppShareTargets(List<AppTarget> targets) {
        EventHistory classLevelEventHistory;
        List<ShareTarget> shareTargets = new ArrayList<>();
        for (AppTarget target : targets) {
            PackageData packageData = getDataManager().getPackage(target.getPackageName(), target.getUser().getIdentifier());
            if (packageData == null) {
                classLevelEventHistory = null;
            } else {
                classLevelEventHistory = packageData.getClassLevelEventHistory(target.getClassName());
            }
            shareTargets.add(new ShareTarget(target, classLevelEventHistory, null));
        }
        return shareTargets;
    }

    private int getShareEventType(IntentFilter intentFilter) {
        String mimeType = intentFilter != null ? intentFilter.getDataType(0) : null;
        return getDataManager().mimeTypeToShareEventType(mimeType);
    }

    static class ShareTarget {
        private final AppTarget mAppTarget;
        private final ConversationInfo mConversationInfo;
        private final EventHistory mEventHistory;
        private float mScore = 0.0f;

        ShareTarget(AppTarget appTarget, EventHistory eventHistory, ConversationInfo conversationInfo) {
            this.mAppTarget = appTarget;
            this.mEventHistory = eventHistory;
            this.mConversationInfo = conversationInfo;
        }

        AppTarget getAppTarget() {
            return this.mAppTarget;
        }

        EventHistory getEventHistory() {
            return this.mEventHistory;
        }

        ConversationInfo getConversationInfo() {
            return this.mConversationInfo;
        }

        float getScore() {
            return this.mScore;
        }

        void setScore(float score) {
            this.mScore = score;
        }
    }
}
