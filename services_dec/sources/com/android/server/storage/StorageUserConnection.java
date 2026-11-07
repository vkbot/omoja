package com.android.server.storage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.ParcelableException;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.storage.StorageManagerInternal;
import android.os.storage.StorageVolume;
import android.service.storage.IExternalStorageService;
import android.util.Slog;
import com.android.internal.util.Preconditions;
import com.android.server.LocalServices;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;

/* JADX INFO: loaded from: classes2.dex */
public final class StorageUserConnection {
    private static final int DEFAULT_REMOTE_TIMEOUT_SECONDS = 20;
    private static final String TAG = "StorageUserConnection";
    private final Context mContext;
    private final HandlerThread mHandlerThread;
    private final StorageSessionController mSessionController;
    private final int mUserId;
    private final Object mSessionsLock = new Object();
    private final ActiveConnection mActiveConnection = new ActiveConnection();
    private final Map<String, Session> mSessions = new HashMap();

    @FunctionalInterface
    interface AsyncStorageServiceCall {
        void run(IExternalStorageService iExternalStorageService, RemoteCallback remoteCallback) throws RemoteException;
    }

    public StorageUserConnection(Context context, int userId, StorageSessionController controller) {
        Objects.requireNonNull(context);
        this.mContext = context;
        this.mUserId = Preconditions.checkArgumentNonnegative(userId);
        this.mSessionController = controller;
        HandlerThread handlerThread = new HandlerThread("StorageUserConnectionThread-" + this.mUserId);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
    }

    public void startSession(String sessionId, ParcelFileDescriptor pfd, String upperPath, String lowerPath) throws StorageSessionController.ExternalStorageServiceException {
        Objects.requireNonNull(sessionId);
        Objects.requireNonNull(pfd);
        Objects.requireNonNull(upperPath);
        Objects.requireNonNull(lowerPath);
        Session session = new Session(sessionId, upperPath, lowerPath);
        synchronized (this.mSessionsLock) {
            Preconditions.checkArgument(!this.mSessions.containsKey(sessionId));
            this.mSessions.put(sessionId, session);
        }
        this.mActiveConnection.startSession(session, pfd);
    }

    public void notifyVolumeStateChanged(String sessionId, StorageVolume vol) throws StorageSessionController.ExternalStorageServiceException {
        Objects.requireNonNull(sessionId);
        Objects.requireNonNull(vol);
        synchronized (this.mSessionsLock) {
            if (!this.mSessions.containsKey(sessionId)) {
                Slog.i(TAG, "No session found for sessionId: " + sessionId);
                return;
            }
            this.mActiveConnection.notifyVolumeStateChanged(sessionId, vol);
        }
    }

    public Session removeSession(String sessionId) {
        Session sessionRemove;
        synchronized (this.mSessionsLock) {
            sessionRemove = this.mSessions.remove(sessionId);
        }
        return sessionRemove;
    }

    public void removeSessionAndWait(String sessionId) throws StorageSessionController.ExternalStorageServiceException {
        Session session = removeSession(sessionId);
        if (session == null) {
            Slog.i(TAG, "No session found for id: " + sessionId);
            return;
        }
        Slog.i(TAG, "Waiting for session end " + session + " ...");
        this.mActiveConnection.endSession(session);
    }

    public void resetUserSessions() {
        synchronized (this.mSessionsLock) {
            if (this.mSessions.isEmpty()) {
                return;
            }
            StorageManagerInternal sm = (StorageManagerInternal) LocalServices.getService(StorageManagerInternal.class);
            sm.resetUser(this.mUserId);
        }
    }

    public void removeAllSessions() {
        synchronized (this.mSessionsLock) {
            Slog.i(TAG, "Removing  " + this.mSessions.size() + " sessions for user: " + this.mUserId + "...");
            this.mSessions.clear();
        }
    }

    public void close() {
        this.mActiveConnection.close();
        this.mHandlerThread.quit();
    }

    public Set<String> getAllSessionIds() {
        HashSet hashSet;
        synchronized (this.mSessionsLock) {
            hashSet = new HashSet(this.mSessions.keySet());
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class ActiveConnection implements AutoCloseable {
        private final Object mLock;
        private ArrayList<CompletableFuture<Void>> mOutstandingOps;
        private CompletableFuture<IExternalStorageService> mRemoteFuture;
        private ServiceConnection mServiceConnection;

        private ActiveConnection() {
            this.mLock = new Object();
            this.mOutstandingOps = new ArrayList<>();
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            ServiceConnection oldConnection;
            synchronized (this.mLock) {
                Slog.i(StorageUserConnection.TAG, "Closing connection for user " + StorageUserConnection.this.mUserId);
                oldConnection = this.mServiceConnection;
                this.mServiceConnection = null;
                if (this.mRemoteFuture != null) {
                    this.mRemoteFuture.cancel(true);
                    this.mRemoteFuture = null;
                }
                for (CompletableFuture<Void> op : this.mOutstandingOps) {
                    op.cancel(true);
                }
                this.mOutstandingOps.clear();
            }
            if (oldConnection != null) {
                try {
                    StorageUserConnection.this.mContext.unbindService(oldConnection);
                } catch (Exception e) {
                    Slog.w(StorageUserConnection.TAG, "Failed to unbind service", e);
                }
            }
        }

        private void waitForAsync(final AsyncStorageServiceCall asyncCall) throws Exception {
            CompletableFuture<IExternalStorageService> serviceFuture = connectIfNeeded();
            final CompletableFuture<Void> opFuture = new CompletableFuture<>();
            try {
                synchronized (this.mLock) {
                    this.mOutstandingOps.add(opFuture);
                }
                serviceFuture.thenCompose(new Function() { // from class: com.android.server.storage.-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return this.f$0.lambda$waitForAsync$1$StorageUserConnection$ActiveConnection(asyncCall, opFuture, (IExternalStorageService) obj);
                    }
                }).get(20L, TimeUnit.SECONDS);
                synchronized (this.mLock) {
                    this.mOutstandingOps.remove(opFuture);
                }
            } catch (Throwable th) {
                synchronized (this.mLock) {
                    this.mOutstandingOps.remove(opFuture);
                    throw th;
                }
            }
        }

        public /* synthetic */ CompletionStage lambda$waitForAsync$1$StorageUserConnection$ActiveConnection(AsyncStorageServiceCall asyncCall, final CompletableFuture opFuture, IExternalStorageService service) {
            try {
                asyncCall.run(service, new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.storage.-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM
                    public final void onResult(Bundle bundle) {
                        this.f$0.lambda$waitForAsync$0$StorageUserConnection$ActiveConnection(opFuture, bundle);
                    }
                }));
            } catch (RemoteException e) {
                opFuture.completeExceptionally(e);
            }
            return opFuture;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x000f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void startSession(final com.android.server.storage.StorageUserConnection.Session r5, final android.os.ParcelFileDescriptor r6) throws com.android.server.storage.StorageSessionController.ExternalStorageServiceException {
            /*
                r4 = this;
                com.android.server.storage.-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8 r0 = new com.android.server.storage.-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
                r0.<init>()     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
                r4.waitForAsync(r0)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
                r6.close()     // Catch: java.io.IOException -> Lc
                goto Le
            Lc:
                r0 = move-exception
            Le:
                return
            Lf:
                r0 = move-exception
                goto L29
            L11:
                r0 = move-exception
                com.android.server.storage.StorageSessionController$ExternalStorageServiceException r1 = new com.android.server.storage.StorageSessionController$ExternalStorageServiceException     // Catch: java.lang.Throwable -> Lf
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lf
                r2.<init>()     // Catch: java.lang.Throwable -> Lf
                java.lang.String r3 = "Failed to start session: "
                r2.append(r3)     // Catch: java.lang.Throwable -> Lf
                r2.append(r5)     // Catch: java.lang.Throwable -> Lf
                java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lf
                r1.<init>(r2, r0)     // Catch: java.lang.Throwable -> Lf
                throw r1     // Catch: java.lang.Throwable -> Lf
            L29:
                r6.close()     // Catch: java.io.IOException -> L2d
                goto L2e
            L2d:
                r1 = move-exception
            L2e:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.storage.StorageUserConnection.ActiveConnection.startSession(com.android.server.storage.StorageUserConnection$Session, android.os.ParcelFileDescriptor):void");
        }

        public void endSession(final Session session) throws StorageSessionController.ExternalStorageServiceException {
            try {
                waitForAsync(new AsyncStorageServiceCall() { // from class: com.android.server.storage.-$$Lambda$StorageUserConnection$ActiveConnection$w52m3H6gmGVK8BNtAgTo5QgDBPs
                    @Override // com.android.server.storage.StorageUserConnection.AsyncStorageServiceCall
                    public final void run(IExternalStorageService iExternalStorageService, RemoteCallback remoteCallback) {
                        iExternalStorageService.endSession(session.sessionId, remoteCallback);
                    }
                });
            } catch (Exception e) {
                throw new StorageSessionController.ExternalStorageServiceException("Failed to end session: " + session, e);
            }
        }

        public void notifyVolumeStateChanged(final String sessionId, final StorageVolume vol) throws StorageSessionController.ExternalStorageServiceException {
            try {
                waitForAsync(new AsyncStorageServiceCall() { // from class: com.android.server.storage.-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk
                    @Override // com.android.server.storage.StorageUserConnection.AsyncStorageServiceCall
                    public final void run(IExternalStorageService iExternalStorageService, RemoteCallback remoteCallback) {
                        iExternalStorageService.notifyVolumeStateChanged(sessionId, vol, remoteCallback);
                    }
                });
            } catch (Exception e) {
                throw new StorageSessionController.ExternalStorageServiceException("Failed to notify volume state changed for vol : " + vol, e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: setResult, reason: merged with bridge method [inline-methods] */
        public void lambda$waitForAsync$0$StorageUserConnection$ActiveConnection(Bundle result, CompletableFuture<Void> future) {
            ParcelableException ex = result.getParcelable("android.service.storage.extra.error");
            if (ex != null) {
                future.completeExceptionally(ex);
            } else {
                future.complete(null);
            }
        }

        private CompletableFuture<IExternalStorageService> connectIfNeeded() throws StorageSessionController.ExternalStorageServiceException {
            ComponentName name = StorageUserConnection.this.mSessionController.getExternalStorageServiceComponentName();
            if (name == null) {
                throw new StorageSessionController.ExternalStorageServiceException("Not ready to bind to the ExternalStorageService for user " + StorageUserConnection.this.mUserId);
            }
            synchronized (this.mLock) {
                if (this.mRemoteFuture != null) {
                    return this.mRemoteFuture;
                }
                final CompletableFuture<IExternalStorageService> future = new CompletableFuture<>();
                this.mServiceConnection = new ServiceConnection() { // from class: com.android.server.storage.StorageUserConnection.ActiveConnection.1
                    @Override // android.content.ServiceConnection
                    public void onServiceConnected(ComponentName name2, IBinder service) {
                        Slog.i(StorageUserConnection.TAG, "Service: [" + name2 + "] connected. User [" + StorageUserConnection.this.mUserId + "]");
                        handleConnection(service);
                    }

                    @Override // android.content.ServiceConnection
                    public void onServiceDisconnected(ComponentName name2) {
                        Slog.i(StorageUserConnection.TAG, "Service: [" + name2 + "] disconnected. User [" + StorageUserConnection.this.mUserId + "]");
                        handleDisconnection();
                    }

                    @Override // android.content.ServiceConnection
                    public void onBindingDied(ComponentName name2) {
                        Slog.i(StorageUserConnection.TAG, "Service: [" + name2 + "] died. User [" + StorageUserConnection.this.mUserId + "]");
                        handleDisconnection();
                    }

                    @Override // android.content.ServiceConnection
                    public void onNullBinding(ComponentName name2) {
                        Slog.wtf(StorageUserConnection.TAG, "Service: [" + name2 + "] is null. User [" + StorageUserConnection.this.mUserId + "]");
                    }

                    private void handleConnection(IBinder service) {
                        synchronized (ActiveConnection.this.mLock) {
                            future.complete(IExternalStorageService.Stub.asInterface(service));
                        }
                    }

                    private void handleDisconnection() {
                        ActiveConnection.this.close();
                        StorageUserConnection.this.resetUserSessions();
                    }
                };
                Slog.i(StorageUserConnection.TAG, "Binding to the ExternalStorageService for user " + StorageUserConnection.this.mUserId);
                if (StorageUserConnection.this.mContext.bindServiceAsUser(new Intent().setComponent(name), this.mServiceConnection, 65, StorageUserConnection.this.mHandlerThread.getThreadHandler(), UserHandle.of(StorageUserConnection.this.mUserId))) {
                    Slog.i(StorageUserConnection.TAG, "Bound to the ExternalStorageService for user " + StorageUserConnection.this.mUserId);
                    this.mRemoteFuture = future;
                    return future;
                }
                throw new StorageSessionController.ExternalStorageServiceException("Failed to bind to the ExternalStorageService for user " + StorageUserConnection.this.mUserId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Session {
        public final String lowerPath;
        public final String sessionId;
        public final String upperPath;

        Session(String sessionId, String upperPath, String lowerPath) {
            this.sessionId = sessionId;
            this.upperPath = upperPath;
            this.lowerPath = lowerPath;
        }

        public String toString() {
            return "[SessionId: " + this.sessionId + ". UpperPath: " + this.upperPath + ". LowerPath: " + this.lowerPath + "]";
        }
    }
}
