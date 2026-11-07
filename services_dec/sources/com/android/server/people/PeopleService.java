package com.android.server.people;

import android.app.prediction.AppPredictionContext;
import android.app.prediction.AppPredictionSessionId;
import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.app.prediction.IPredictionCallback;
import android.content.Context;
import android.content.pm.ParceledListSlice;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Slog;
import com.android.server.SystemService;
import com.android.server.people.data.DataManager;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class PeopleService extends SystemService {
    private static final String TAG = "PeopleService";
    private final DataManager mDataManager;

    public PeopleService(Context context) {
        super(context);
        this.mDataManager = new DataManager(context);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 500) {
            this.mDataManager.initialize();
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishLocalService(PeopleServiceInternal.class, new LocalService());
    }

    @Override // com.android.server.SystemService
    public void onUserUnlocked(SystemService.TargetUser user) {
        this.mDataManager.onUserUnlocked(user.getUserIdentifier());
    }

    @Override // com.android.server.SystemService
    public void onUserStopping(SystemService.TargetUser user) {
        this.mDataManager.onUserStopping(user.getUserIdentifier());
    }

    final class LocalService extends PeopleServiceInternal {
        private Map<AppPredictionSessionId, SessionInfo> mSessions = new ArrayMap();

        LocalService() {
        }

        public void onCreatePredictionSession(AppPredictionContext context, AppPredictionSessionId sessionId) {
            this.mSessions.put(sessionId, new SessionInfo(context, PeopleService.this.mDataManager, sessionId.getUserId()));
        }

        public void notifyAppTargetEvent(AppPredictionSessionId sessionId, final AppTargetEvent event) {
            runForSession(sessionId, new Consumer() { // from class: com.android.server.people.-$$Lambda$PeopleService$LocalService$3Qo6-WDOLNVaPTLQAF-EJxAGmxI
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((SessionInfo) obj).getPredictor().onAppTargetEvent(event);
                }
            });
        }

        public void notifyLaunchLocationShown(AppPredictionSessionId sessionId, final String launchLocation, final ParceledListSlice targetIds) {
            runForSession(sessionId, new Consumer() { // from class: com.android.server.people.-$$Lambda$PeopleService$LocalService$uZx_s9KkC6FGFW4bkELnUYtB08A
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((SessionInfo) obj).getPredictor().onLaunchLocationShown(launchLocation, targetIds.getList());
                }
            });
        }

        public void sortAppTargets(AppPredictionSessionId sessionId, final ParceledListSlice targets, final IPredictionCallback callback) {
            runForSession(sessionId, new Consumer() { // from class: com.android.server.people.-$$Lambda$PeopleService$LocalService$fqMQSnT1vOGK2_fKsvWHTY9b7SQ
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$sortAppTargets$3$PeopleService$LocalService(targets, callback, (SessionInfo) obj);
                }
            });
        }

        public /* synthetic */ void lambda$sortAppTargets$3$PeopleService$LocalService(ParceledListSlice targets, final IPredictionCallback callback, SessionInfo sessionInfo) {
            sessionInfo.getPredictor().onSortAppTargets(targets.getList(), new Consumer() { // from class: com.android.server.people.-$$Lambda$PeopleService$LocalService$R86SOhwiEgxiryvdaimpXnymNC4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$sortAppTargets$2$PeopleService$LocalService(callback, (List) obj);
                }
            });
        }

        public void registerPredictionUpdates(AppPredictionSessionId sessionId, final IPredictionCallback callback) {
            runForSession(sessionId, new Consumer() { // from class: com.android.server.people.-$$Lambda$PeopleService$LocalService$OkrAFIXTSUJ7ZEBAVexg7Fz8XuM
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((SessionInfo) obj).addCallback(callback);
                }
            });
        }

        public void unregisterPredictionUpdates(AppPredictionSessionId sessionId, final IPredictionCallback callback) {
            runForSession(sessionId, new Consumer() { // from class: com.android.server.people.-$$Lambda$PeopleService$LocalService$DA0r0rysK9_les70rzTEjoXDMIs
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((SessionInfo) obj).removeCallback(callback);
                }
            });
        }

        public void requestPredictionUpdate(AppPredictionSessionId sessionId) {
            runForSession(sessionId, new Consumer() { // from class: com.android.server.people.-$$Lambda$PeopleService$LocalService$UGTAS6UjpowRtjdCWHwQ_4g5zsw
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((SessionInfo) obj).getPredictor().onRequestPredictionUpdate();
                }
            });
        }

        public void onDestroyPredictionSession(final AppPredictionSessionId sessionId) {
            runForSession(sessionId, new Consumer() { // from class: com.android.server.people.-$$Lambda$PeopleService$LocalService$cmUgPk-YO6by7_XySWglEKwZh3E
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onDestroyPredictionSession$7$PeopleService$LocalService(sessionId, (SessionInfo) obj);
                }
            });
        }

        public /* synthetic */ void lambda$onDestroyPredictionSession$7$PeopleService$LocalService(AppPredictionSessionId sessionId, SessionInfo sessionInfo) {
            sessionInfo.onDestroy();
            this.mSessions.remove(sessionId);
        }

        @Override // com.android.server.people.PeopleServiceInternal
        public void pruneDataForUser(int userId, CancellationSignal signal) {
            PeopleService.this.mDataManager.pruneDataForUser(userId, signal);
        }

        @Override // com.android.server.people.PeopleServiceInternal
        public byte[] getBackupPayload(int userId) {
            return PeopleService.this.mDataManager.getBackupPayload(userId);
        }

        @Override // com.android.server.people.PeopleServiceInternal
        public void restore(int userId, byte[] payload) throws IOException {
            PeopleService.this.mDataManager.restore(userId, payload);
        }

        SessionInfo getSessionInfo(AppPredictionSessionId sessionId) {
            return this.mSessions.get(sessionId);
        }

        private void runForSession(AppPredictionSessionId sessionId, Consumer<SessionInfo> method) {
            SessionInfo sessionInfo = this.mSessions.get(sessionId);
            if (sessionInfo == null) {
                Slog.e(PeopleService.TAG, "Failed to find the session: " + sessionId);
                return;
            }
            method.accept(sessionInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invokePredictionCallback, reason: merged with bridge method [inline-methods] */
        public void lambda$sortAppTargets$2$PeopleService$LocalService(IPredictionCallback callback, List<AppTarget> targets) {
            try {
                callback.onResult(new ParceledListSlice(targets));
            } catch (RemoteException e) {
                Slog.e(PeopleService.TAG, "Failed to calling callback" + e);
            }
        }
    }
}
