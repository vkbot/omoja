package com.android.server.textclassifier;

import android.app.RemoteAction;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.graphics.drawable.Icon;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.service.textclassifier.ITextClassifierCallback;
import android.service.textclassifier.ITextClassifierService;
import android.service.textclassifier.TextClassifierService;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.LruCache;
import android.util.Slog;
import android.util.SparseArray;
import android.view.textclassifier.ConversationAction;
import android.view.textclassifier.ConversationActions;
import android.view.textclassifier.SelectionEvent;
import android.view.textclassifier.SystemTextClassifierMetadata;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassificationConstants;
import android.view.textclassifier.TextClassificationContext;
import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassificationSessionId;
import android.view.textclassifier.TextClassifierEvent;
import android.view.textclassifier.TextLanguage;
import android.view.textclassifier.TextLinks;
import android.view.textclassifier.TextSelection;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.server.SystemService;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class TextClassificationManagerService extends ITextClassifierService.Stub {
    private static final String LOG_TAG = "TextClassificationManagerService";
    private static final ITextClassifierCallback NO_OP_CALLBACK = new ITextClassifierCallback() { // from class: com.android.server.textclassifier.TextClassificationManagerService.1
        public void onSuccess(Bundle result) {
        }

        public void onFailure() {
        }

        public IBinder asBinder() {
            return null;
        }
    };
    private final Context mContext;
    private final String mDefaultTextClassifierPackage;
    private final Object mLock;
    private final SessionCache mSessionCache;
    private final TextClassificationConstants mSettings;
    private final TextClassifierSettingsListener mSettingsListener;
    private final String mSystemTextClassifierPackage;
    final SparseArray<UserState> mUserStates;

    public static final class Lifecycle extends SystemService {
        private final TextClassificationManagerService mManagerService;

        public Lifecycle(Context context) {
            super(context);
            this.mManagerService = new TextClassificationManagerService(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            try {
                publishBinderService("textclassification", this.mManagerService);
                this.mManagerService.startListenSettings();
            } catch (Throwable t) {
                Slog.e(TextClassificationManagerService.LOG_TAG, "Could not start the TextClassificationManagerService.", t);
            }
        }

        @Override // com.android.server.SystemService
        public void onStartUser(int userId) {
            processAnyPendingWork(userId);
        }

        @Override // com.android.server.SystemService
        public void onUnlockUser(int userId) {
            processAnyPendingWork(userId);
        }

        private void processAnyPendingWork(int userId) {
            synchronized (this.mManagerService.mLock) {
                this.mManagerService.getUserStateLocked(userId).bindIfHasPendingRequestsLocked();
            }
        }

        @Override // com.android.server.SystemService
        public void onStopUser(int userId) {
            synchronized (this.mManagerService.mLock) {
                UserState userState = this.mManagerService.peekUserStateLocked(userId);
                if (userState != null) {
                    userState.cleanupServiceLocked();
                    this.mManagerService.mUserStates.remove(userId);
                }
            }
        }
    }

    private TextClassificationManagerService(Context context) {
        this.mUserStates = new SparseArray<>();
        Objects.requireNonNull(context);
        this.mContext = context;
        this.mLock = new Object();
        this.mSettings = new TextClassificationConstants();
        this.mSettingsListener = new TextClassifierSettingsListener(this.mContext);
        PackageManager packageManager = this.mContext.getPackageManager();
        this.mDefaultTextClassifierPackage = packageManager.getDefaultTextClassifierPackageName();
        this.mSystemTextClassifierPackage = packageManager.getSystemTextClassifierPackageName();
        this.mSessionCache = new SessionCache(this.mLock);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startListenSettings() {
        this.mSettingsListener.registerObserver();
    }

    public void onConnectedStateChanged(int connected) {
    }

    public void onSuggestSelection(final TextClassificationSessionId sessionId, final TextSelection.Request request, final ITextClassifierCallback callback) throws RemoteException {
        Objects.requireNonNull(request);
        Objects.requireNonNull(request.getSystemTextClassifierMetadata());
        handleRequest(request.getSystemTextClassifierMetadata(), true, true, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$C6b5fl8vcOQ42djzSJ_03hDc6yA
            public final void acceptOrThrow(Object obj) {
                ((ITextClassifierService) obj).onSuggestSelection(sessionId, request, callback);
            }
        }, "onSuggestSelection", callback);
    }

    public void onClassifyText(final TextClassificationSessionId sessionId, final TextClassification.Request request, final ITextClassifierCallback callback) throws RemoteException {
        Objects.requireNonNull(request);
        Objects.requireNonNull(request.getSystemTextClassifierMetadata());
        handleRequest(request.getSystemTextClassifierMetadata(), true, true, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs
            public final void acceptOrThrow(Object obj) {
                ((ITextClassifierService) obj).onClassifyText(sessionId, request, TextClassificationManagerService.wrap(callback));
            }
        }, "onClassifyText", callback);
    }

    public void onGenerateLinks(final TextClassificationSessionId sessionId, final TextLinks.Request request, final ITextClassifierCallback callback) throws RemoteException {
        Objects.requireNonNull(request);
        Objects.requireNonNull(request.getSystemTextClassifierMetadata());
        handleRequest(request.getSystemTextClassifierMetadata(), true, true, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$dSVln_o2_pbF3ORGnBQ8z407M10
            public final void acceptOrThrow(Object obj) {
                ((ITextClassifierService) obj).onGenerateLinks(sessionId, request, callback);
            }
        }, "onGenerateLinks", callback);
    }

    public void onSelectionEvent(final TextClassificationSessionId sessionId, final SelectionEvent event) throws RemoteException {
        Objects.requireNonNull(event);
        Objects.requireNonNull(event.getSystemTextClassifierMetadata());
        handleRequest(event.getSystemTextClassifierMetadata(), true, true, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$Zo3yKbNMpKbAhJ7coUzTv5c-zZI
            public final void acceptOrThrow(Object obj) {
                ((ITextClassifierService) obj).onSelectionEvent(sessionId, event);
            }
        }, "onSelectionEvent", NO_OP_CALLBACK);
    }

    public void onTextClassifierEvent(final TextClassificationSessionId sessionId, final TextClassifierEvent event) throws RemoteException {
        Objects.requireNonNull(event);
        TextClassificationContext eventContext = event.getEventContext();
        SystemTextClassifierMetadata systemTcMetadata = eventContext != null ? eventContext.getSystemTextClassifierMetadata() : null;
        handleRequest(systemTcMetadata, true, true, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$XSRTA8JOHnkYT6Nx-j6ZQZBVb1k
            public final void acceptOrThrow(Object obj) {
                ((ITextClassifierService) obj).onTextClassifierEvent(sessionId, event);
            }
        }, "onTextClassifierEvent", NO_OP_CALLBACK);
    }

    public void onDetectLanguage(final TextClassificationSessionId sessionId, final TextLanguage.Request request, final ITextClassifierCallback callback) throws RemoteException {
        Objects.requireNonNull(request);
        Objects.requireNonNull(request.getSystemTextClassifierMetadata());
        handleRequest(request.getSystemTextClassifierMetadata(), true, true, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$evPEo-mmJh6oAuwYuZkLKKZd_Dw
            public final void acceptOrThrow(Object obj) {
                ((ITextClassifierService) obj).onDetectLanguage(sessionId, request, callback);
            }
        }, "onDetectLanguage", callback);
    }

    public void onSuggestConversationActions(final TextClassificationSessionId sessionId, final ConversationActions.Request request, final ITextClassifierCallback callback) throws RemoteException {
        Objects.requireNonNull(request);
        Objects.requireNonNull(request.getSystemTextClassifierMetadata());
        handleRequest(request.getSystemTextClassifierMetadata(), true, true, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$Mu95ZECYMawAFTgaMzQ9kasDiKU
            public final void acceptOrThrow(Object obj) {
                ((ITextClassifierService) obj).onSuggestConversationActions(sessionId, request, TextClassificationManagerService.wrap(callback));
            }
        }, "onSuggestConversationActions", callback);
    }

    public void onCreateTextClassificationSession(final TextClassificationContext classificationContext, final TextClassificationSessionId sessionId) throws RemoteException {
        Objects.requireNonNull(sessionId);
        Objects.requireNonNull(classificationContext);
        Objects.requireNonNull(classificationContext.getSystemTextClassifierMetadata());
        synchronized (this.mLock) {
            this.mSessionCache.put(sessionId, classificationContext);
        }
        handleRequest(classificationContext.getSystemTextClassifierMetadata(), true, false, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$ZPSzw7rhpLr5Q8xyfx1i_csyNwE
            public final void acceptOrThrow(Object obj) {
                ((ITextClassifierService) obj).onCreateTextClassificationSession(classificationContext, sessionId);
            }
        }, "onCreateTextClassificationSession", NO_OP_CALLBACK);
    }

    public void onDestroyTextClassificationSession(final TextClassificationSessionId sessionId) throws RemoteException {
        int userId;
        boolean useDefaultTextClassifier;
        Objects.requireNonNull(sessionId);
        synchronized (this.mLock) {
            StrippedTextClassificationContext textClassificationContext = this.mSessionCache.get(sessionId);
            if (textClassificationContext != null) {
                userId = textClassificationContext.userId;
            } else {
                userId = UserHandle.getCallingUserId();
            }
            if (textClassificationContext != null) {
                useDefaultTextClassifier = textClassificationContext.useDefaultTextClassifier;
            } else {
                useDefaultTextClassifier = true;
            }
            SystemTextClassifierMetadata sysTcMetadata = new SystemTextClassifierMetadata("", userId, useDefaultTextClassifier);
            handleRequest(sysTcMetadata, false, false, new FunctionalUtils.ThrowingConsumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$64mAXU9GjFt2f69p_xdhRl7xXFQ
                public final void acceptOrThrow(Object obj) throws Exception {
                    this.f$0.lambda$onDestroyTextClassificationSession$8$TextClassificationManagerService(sessionId, (ITextClassifierService) obj);
                }
            }, "onDestroyTextClassificationSession", NO_OP_CALLBACK);
        }
    }

    public /* synthetic */ void lambda$onDestroyTextClassificationSession$8$TextClassificationManagerService(TextClassificationSessionId sessionId, ITextClassifierService service) throws Exception {
        service.onDestroyTextClassificationSession(sessionId);
        this.mSessionCache.lambda$put$0$TextClassificationManagerService$SessionCache(sessionId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserState getUserStateLocked(int userId) {
        UserState result = this.mUserStates.get(userId);
        if (result == null) {
            UserState result2 = new UserState(userId);
            this.mUserStates.put(userId, result2);
            return result2;
        }
        return result;
    }

    UserState peekUserStateLocked(int userId) {
        return this.mUserStates.get(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int resolvePackageToUid(String packageName, int userId) {
        if (packageName == null) {
            return -1;
        }
        PackageManager pm = this.mContext.getPackageManager();
        try {
            return pm.getPackageUidAsUser(packageName, userId);
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(LOG_TAG, "Could not get the UID for " + packageName);
            return -1;
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter fout, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, LOG_TAG, fout)) {
            final IndentingPrintWriter pw = new IndentingPrintWriter(fout, "  ");
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$bskC2PS7oOlLzDJkBbOVEdfy1Gg
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$dump$9$TextClassificationManagerService(pw);
                }
            });
            pw.printPair("context", this.mContext);
            pw.println();
            pw.printPair("defaultTextClassifierPackage", this.mDefaultTextClassifierPackage);
            pw.println();
            pw.printPair("systemTextClassifierPackage", this.mSystemTextClassifierPackage);
            pw.println();
            synchronized (this.mLock) {
                int size = this.mUserStates.size();
                pw.print("Number user states: ");
                pw.println(size);
                if (size > 0) {
                    for (int i = 0; i < size; i++) {
                        pw.increaseIndent();
                        UserState userState = this.mUserStates.valueAt(i);
                        pw.printPair("User", Integer.valueOf(this.mUserStates.keyAt(i)));
                        pw.println();
                        userState.dump(pw);
                        pw.decreaseIndent();
                    }
                }
                pw.println("Number of active sessions: " + this.mSessionCache.size());
            }
        }
    }

    public /* synthetic */ void lambda$dump$9$TextClassificationManagerService(IndentingPrintWriter pw) throws Exception {
        ((TextClassificationManager) this.mContext.getSystemService(TextClassificationManager.class)).dump(pw);
    }

    private void handleRequest(SystemTextClassifierMetadata sysTcMetadata, boolean verifyCallingPackage, boolean attemptToBind, final FunctionalUtils.ThrowingConsumer<ITextClassifierService> textClassifierServiceConsumer, String methodName, final ITextClassifierCallback callback) throws RemoteException {
        Objects.requireNonNull(textClassifierServiceConsumer);
        Objects.requireNonNull(methodName);
        Objects.requireNonNull(callback);
        int userId = sysTcMetadata == null ? UserHandle.getCallingUserId() : sysTcMetadata.getUserId();
        String callingPackageName = sysTcMetadata == null ? null : sysTcMetadata.getCallingPackageName();
        boolean useDefaultTextClassifier = sysTcMetadata == null ? true : sysTcMetadata.useDefaultTextClassifier();
        if (verifyCallingPackage) {
            try {
                validateCallingPackage(callingPackageName);
            } catch (Exception e) {
                throw new RemoteException("Invalid request: " + e.getMessage(), e, true, true);
            }
        }
        validateUser(userId);
        synchronized (this.mLock) {
            UserState userState = getUserStateLocked(userId);
            final ServiceState serviceState = userState.getServiceStateLocked(useDefaultTextClassifier);
            if (serviceState == null) {
                Slog.d(LOG_TAG, "No configured system TextClassifierService");
                callback.onFailure();
            } else if (attemptToBind && !serviceState.bindLocked()) {
                Slog.d(LOG_TAG, "Unable to bind TextClassifierService at " + methodName);
                callback.onFailure();
            } else if (!serviceState.isBoundLocked()) {
                FixedSizeQueue<PendingRequest> fixedSizeQueue = serviceState.mPendingRequests;
                FunctionalUtils.ThrowingRunnable throwingRunnable = new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$2sJrwO1jPjEX_2E7aDk6t5666lk
                    public final void runOrThrow() {
                        textClassifierServiceConsumer.accept(serviceState.mService);
                    }
                };
                Objects.requireNonNull(callback);
                fixedSizeQueue.add(new PendingRequest(methodName, throwingRunnable, new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.textclassifier.-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q
                    public final void runOrThrow() {
                        callback.onFailure();
                    }
                }, callback.asBinder(), this, serviceState, Binder.getCallingUid()));
            } else if (!serviceState.checkRequestAcceptedLocked(Binder.getCallingUid(), methodName)) {
            } else {
                textClassifierServiceConsumer.accept(serviceState.mService);
            }
        }
    }

    private static ITextClassifierCallback wrap(ITextClassifierCallback orig) {
        return new CallbackWrapper(orig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTextClassifierServicePackageOverrideChanged(String overriddenPackage) {
        synchronized (this.mLock) {
            int size = this.mUserStates.size();
            for (int i = 0; i < size; i++) {
                UserState userState = this.mUserStates.valueAt(i);
                userState.onTextClassifierServicePackageOverrideChangedLocked(overriddenPackage);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class PendingRequest implements IBinder.DeathRecipient {
        private final IBinder mBinder;
        private final String mName;
        private final Runnable mOnServiceFailure;
        private final Runnable mRequest;
        private final TextClassificationManagerService mService;
        private final ServiceState mServiceState;
        private final int mUid;

        PendingRequest(String name, FunctionalUtils.ThrowingRunnable request, FunctionalUtils.ThrowingRunnable onServiceFailure, IBinder binder, TextClassificationManagerService service, ServiceState serviceState, int uid) {
            this.mName = name;
            Objects.requireNonNull(request);
            this.mRequest = TextClassificationManagerService.logOnFailure(request, "handling pending request");
            this.mOnServiceFailure = TextClassificationManagerService.logOnFailure(onServiceFailure, "notifying callback of service failure");
            this.mBinder = binder;
            this.mService = service;
            Objects.requireNonNull(serviceState);
            this.mServiceState = serviceState;
            IBinder iBinder = this.mBinder;
            if (iBinder != null) {
                try {
                    iBinder.linkToDeath(this, 0);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mUid = uid;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (this.mService.mLock) {
                removeLocked();
            }
        }

        private void removeLocked() {
            this.mServiceState.mPendingRequests.remove(this);
            IBinder iBinder = this.mBinder;
            if (iBinder != null) {
                iBinder.unlinkToDeath(this, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Runnable logOnFailure(FunctionalUtils.ThrowingRunnable r, final String opDesc) {
        if (r == null) {
            return null;
        }
        return FunctionalUtils.handleExceptions(r, new Consumer() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$LbKHscWPDUIjKzR4a1gANqdMY6c
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Slog.d(TextClassificationManagerService.LOG_TAG, "Error " + opDesc + ": " + ((Throwable) obj).getMessage());
            }
        });
    }

    private void validateCallingPackage(String callingPackage) throws PackageManager.NameNotFoundException {
        if (callingPackage != null) {
            int packageUid = this.mContext.getPackageManager().getPackageUidAsUser(callingPackage, UserHandle.getCallingUserId());
            int callingUid = Binder.getCallingUid();
            Preconditions.checkArgument(callingUid == packageUid || callingUid == 1000, "Invalid package name. callingPackage=" + callingPackage + ", callingUid=" + callingUid);
        }
    }

    private void validateUser(int userId) {
        Preconditions.checkArgument(userId != -10000, "Null userId");
        int callingUserId = UserHandle.getCallingUserId();
        if (callingUserId != userId) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "Invalid userId. UserId=" + userId + ", CallingUserId=" + callingUserId);
        }
    }

    static final class SessionCache {
        private static final int MAX_CACHE_SIZE = 100;
        private final LruCache<TextClassificationSessionId, StrippedTextClassificationContext> mCache = new LruCache<>(100);
        private final Map<TextClassificationSessionId, IBinder.DeathRecipient> mDeathRecipients = new ArrayMap();
        private final Object mLock;

        SessionCache(Object lock) {
            Objects.requireNonNull(lock);
            this.mLock = lock;
        }

        void put(final TextClassificationSessionId sessionId, TextClassificationContext textClassificationContext) {
            synchronized (this.mLock) {
                this.mCache.put(sessionId, new StrippedTextClassificationContext(textClassificationContext));
                try {
                    IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$SessionCache$q4fGxygETn80gLCa2MrH-2YXaZA
                        @Override // android.os.IBinder.DeathRecipient
                        public final void binderDied() {
                            this.f$0.lambda$put$0$TextClassificationManagerService$SessionCache(sessionId);
                        }
                    };
                    sessionId.getToken().linkToDeath(deathRecipient, 0);
                    this.mDeathRecipients.put(sessionId, deathRecipient);
                } catch (RemoteException e) {
                    Slog.w(TextClassificationManagerService.LOG_TAG, "SessionCache: Failed to link to death", e);
                }
            }
        }

        StrippedTextClassificationContext get(TextClassificationSessionId sessionId) {
            StrippedTextClassificationContext strippedTextClassificationContext;
            Objects.requireNonNull(sessionId);
            synchronized (this.mLock) {
                strippedTextClassificationContext = this.mCache.get(sessionId);
            }
            return strippedTextClassificationContext;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: remove, reason: merged with bridge method [inline-methods] */
        public void lambda$put$0$TextClassificationManagerService$SessionCache(TextClassificationSessionId sessionId) {
            Objects.requireNonNull(sessionId);
            synchronized (this.mLock) {
                IBinder.DeathRecipient deathRecipient = this.mDeathRecipients.get(sessionId);
                if (deathRecipient != null) {
                    sessionId.getToken().unlinkToDeath(deathRecipient, 0);
                }
                this.mDeathRecipients.remove(sessionId);
                this.mCache.remove(sessionId);
            }
        }

        int size() {
            int size;
            synchronized (this.mLock) {
                size = this.mCache.size();
            }
            return size;
        }
    }

    static class StrippedTextClassificationContext {
        public final boolean useDefaultTextClassifier;
        public final int userId;

        StrippedTextClassificationContext(TextClassificationContext textClassificationContext) {
            SystemTextClassifierMetadata sysTcMetadata = textClassificationContext.getSystemTextClassifierMetadata();
            this.userId = sysTcMetadata.getUserId();
            this.useDefaultTextClassifier = sysTcMetadata.useDefaultTextClassifier();
        }
    }

    private final class UserState {
        private final ServiceState mDefaultServiceState;
        private final ServiceState mSystemServiceState;
        private ServiceState mUntrustedServiceState;
        final int mUserId;

        private UserState(int userId) {
            ServiceState serviceState;
            this.mUserId = userId;
            if (TextUtils.isEmpty(TextClassificationManagerService.this.mDefaultTextClassifierPackage)) {
                serviceState = null;
            } else {
                serviceState = new ServiceState(userId, TextClassificationManagerService.this.mDefaultTextClassifierPackage, true);
            }
            this.mDefaultServiceState = serviceState;
            this.mSystemServiceState = TextUtils.isEmpty(TextClassificationManagerService.this.mSystemTextClassifierPackage) ? null : new ServiceState(userId, TextClassificationManagerService.this.mSystemTextClassifierPackage, true);
        }

        ServiceState getServiceStateLocked(boolean useDefaultTextClassifier) {
            ServiceState serviceState;
            if (!useDefaultTextClassifier) {
                final TextClassificationConstants textClassificationConstants = TextClassificationManagerService.this.mSettings;
                Objects.requireNonNull(textClassificationConstants);
                String textClassifierServicePackageOverride = (String) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.textclassifier.-$$Lambda$ClPEOpaEGm2gFpu1r4dox0RBPf4
                    public final Object getOrThrow() {
                        return textClassificationConstants.getTextClassifierServicePackageOverride();
                    }
                });
                if (!TextUtils.isEmpty(textClassifierServicePackageOverride)) {
                    if (!textClassifierServicePackageOverride.equals(TextClassificationManagerService.this.mDefaultTextClassifierPackage)) {
                        if (textClassifierServicePackageOverride.equals(TextClassificationManagerService.this.mSystemTextClassifierPackage) && (serviceState = this.mSystemServiceState) != null) {
                            return serviceState;
                        }
                        if (this.mUntrustedServiceState == null) {
                            this.mUntrustedServiceState = new ServiceState(this.mUserId, textClassifierServicePackageOverride, false);
                        }
                        return this.mUntrustedServiceState;
                    }
                    return this.mDefaultServiceState;
                }
                ServiceState serviceState2 = this.mSystemServiceState;
                return serviceState2 != null ? serviceState2 : this.mDefaultServiceState;
            }
            return this.mDefaultServiceState;
        }

        void onTextClassifierServicePackageOverrideChangedLocked(String overriddenPackageName) {
            for (ServiceState serviceState : getAllServiceStatesLocked()) {
                serviceState.unbindIfBoundLocked();
            }
            this.mUntrustedServiceState = null;
        }

        void bindIfHasPendingRequestsLocked() {
            for (ServiceState serviceState : getAllServiceStatesLocked()) {
                serviceState.bindIfHasPendingRequestsLocked();
            }
        }

        void cleanupServiceLocked() {
            for (ServiceState serviceState : getAllServiceStatesLocked()) {
                if (serviceState.mConnection != null) {
                    serviceState.mConnection.cleanupService();
                }
            }
        }

        private List<ServiceState> getAllServiceStatesLocked() {
            List<ServiceState> serviceStates = new ArrayList<>();
            ServiceState serviceState = this.mDefaultServiceState;
            if (serviceState != null) {
                serviceStates.add(serviceState);
            }
            ServiceState serviceState2 = this.mSystemServiceState;
            if (serviceState2 != null) {
                serviceStates.add(serviceState2);
            }
            ServiceState serviceState3 = this.mUntrustedServiceState;
            if (serviceState3 != null) {
                serviceStates.add(serviceState3);
            }
            return serviceStates;
        }

        void dump(IndentingPrintWriter pw) {
            synchronized (TextClassificationManagerService.this.mLock) {
                pw.increaseIndent();
                dump(pw, this.mDefaultServiceState, "Default");
                dump(pw, this.mSystemServiceState, "System");
                dump(pw, this.mUntrustedServiceState, "Untrusted");
                pw.decreaseIndent();
            }
        }

        private void dump(IndentingPrintWriter pw, ServiceState serviceState, String name) {
            synchronized (TextClassificationManagerService.this.mLock) {
                if (serviceState != null) {
                    pw.print(name + ": ");
                    serviceState.dump(pw);
                    pw.println();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class ServiceState {
        private static final int MAX_PENDING_REQUESTS = 20;
        final int mBindServiceFlags;
        boolean mBinding;
        ComponentName mBoundComponentName;
        int mBoundServiceUid;
        final TextClassifierServiceConnection mConnection;
        final boolean mIsTrusted;
        final String mPackageName;
        final FixedSizeQueue<PendingRequest> mPendingRequests;
        ITextClassifierService mService;
        final int mUserId;

        static /* synthetic */ void lambda$new$0(PendingRequest request) {
            Slog.w(TextClassificationManagerService.LOG_TAG, String.format("Pending request[%s] is dropped", request.mName));
            if (request.mOnServiceFailure != null) {
                request.mOnServiceFailure.run();
            }
        }

        private ServiceState(int userId, String packageName, boolean isTrusted) {
            this.mPendingRequests = new FixedSizeQueue<>(20, new FixedSizeQueue.OnEntryEvictedListener() { // from class: com.android.server.textclassifier.-$$Lambda$TextClassificationManagerService$ServiceState$Ru4OqAzKjHDptCmD7leHW9n8GIw
                @Override // com.android.server.textclassifier.FixedSizeQueue.OnEntryEvictedListener
                public final void onEntryEvicted(Object obj) {
                    TextClassificationManagerService.ServiceState.lambda$new$0((TextClassificationManagerService.PendingRequest) obj);
                }
            });
            this.mBoundComponentName = null;
            this.mBoundServiceUid = -1;
            this.mUserId = userId;
            this.mPackageName = packageName;
            this.mConnection = new TextClassifierServiceConnection(userId);
            this.mIsTrusted = isTrusted;
            this.mBindServiceFlags = createBindServiceFlags(packageName);
        }

        private int createBindServiceFlags(String packageName) {
            if (!packageName.equals(TextClassificationManagerService.this.mDefaultTextClassifierPackage)) {
                int flags = 67108865 | 2097152;
                return flags;
            }
            return AudioFormat.AAC_MAIN;
        }

        boolean isBoundLocked() {
            return this.mService != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handlePendingRequestsLocked() {
            while (true) {
                PendingRequest request = this.mPendingRequests.poll();
                if (request != null) {
                    if (isBoundLocked()) {
                        if (checkRequestAcceptedLocked(request.mUid, request.mName)) {
                            request.mRequest.run();
                        } else {
                            return;
                        }
                    } else if (request.mOnServiceFailure != null) {
                        Slog.d(TextClassificationManagerService.LOG_TAG, "Unable to bind TextClassifierService for PendingRequest " + request.mName);
                        request.mOnServiceFailure.run();
                    }
                    if (request.mBinder != null) {
                        request.mBinder.unlinkToDeath(request, 0);
                    }
                } else {
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean bindIfHasPendingRequestsLocked() {
            return !this.mPendingRequests.isEmpty() && bindLocked();
        }

        void unbindIfBoundLocked() {
            if (isBoundLocked()) {
                Slog.v(TextClassificationManagerService.LOG_TAG, "Unbinding " + this.mBoundComponentName + " for " + this.mUserId);
                TextClassificationManagerService.this.mContext.unbindService(this.mConnection);
                this.mConnection.cleanupService();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean bindLocked() {
            if (isBoundLocked() || this.mBinding) {
                return true;
            }
            long identity = Binder.clearCallingIdentity();
            try {
                ComponentName componentName = getTextClassifierServiceComponent();
                if (componentName != null) {
                    Intent serviceIntent = new Intent("android.service.textclassifier.TextClassifierService").setComponent(componentName);
                    Slog.d(TextClassificationManagerService.LOG_TAG, "Binding to " + serviceIntent.getComponent());
                    boolean willBind = TextClassificationManagerService.this.mContext.bindServiceAsUser(serviceIntent, this.mConnection, this.mBindServiceFlags, UserHandle.of(this.mUserId));
                    if (!willBind) {
                        Slog.e(TextClassificationManagerService.LOG_TAG, "Could not bind to " + componentName);
                    }
                    this.mBinding = willBind;
                    return willBind;
                }
                return false;
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        private ComponentName getTextClassifierServiceComponent() {
            return TextClassifierService.getServiceComponentName(TextClassificationManagerService.this.mContext, this.mPackageName, this.mIsTrusted ? 1048576 : 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dump(IndentingPrintWriter pw) {
            pw.printPair("context", TextClassificationManagerService.this.mContext);
            pw.printPair("userId", Integer.valueOf(this.mUserId));
            synchronized (TextClassificationManagerService.this.mLock) {
                pw.printPair("packageName", this.mPackageName);
                pw.printPair("boundComponentName", this.mBoundComponentName);
                pw.printPair("isTrusted", Boolean.valueOf(this.mIsTrusted));
                pw.printPair("bindServiceFlags", Integer.valueOf(this.mBindServiceFlags));
                pw.printPair("boundServiceUid", Integer.valueOf(this.mBoundServiceUid));
                pw.printPair("binding", Boolean.valueOf(this.mBinding));
                pw.printPair("numOfPendingRequests", Integer.valueOf(this.mPendingRequests.size()));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean checkRequestAcceptedLocked(int requestUid, String methodName) {
            if (this.mIsTrusted || requestUid == this.mBoundServiceUid) {
                return true;
            }
            Slog.w(TextClassificationManagerService.LOG_TAG, String.format("[%s] Non-default TextClassifierServices may only see text from the same uid.", methodName));
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateServiceInfoLocked(int userId, ComponentName componentName) {
            int iResolvePackageToUid;
            this.mBoundComponentName = componentName;
            if (componentName != null) {
                iResolvePackageToUid = TextClassificationManagerService.this.resolvePackageToUid(componentName.getPackageName(), userId);
            } else {
                iResolvePackageToUid = -1;
            }
            this.mBoundServiceUid = iResolvePackageToUid;
        }

        private final class TextClassifierServiceConnection implements ServiceConnection {
            private final int mUserId;

            TextClassifierServiceConnection(int userId) {
                this.mUserId = userId;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                ITextClassifierService tcService = ITextClassifierService.Stub.asInterface(service);
                try {
                    tcService.onConnectedStateChanged(0);
                } catch (RemoteException e) {
                    Slog.e(TextClassificationManagerService.LOG_TAG, "error in onConnectedStateChanged");
                }
                init(tcService, name);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                Slog.i(TextClassificationManagerService.LOG_TAG, "onServiceDisconnected called with " + name);
                cleanupService();
            }

            @Override // android.content.ServiceConnection
            public void onBindingDied(ComponentName name) {
                Slog.i(TextClassificationManagerService.LOG_TAG, "onBindingDied called with " + name);
                cleanupService();
            }

            @Override // android.content.ServiceConnection
            public void onNullBinding(ComponentName name) {
                Slog.i(TextClassificationManagerService.LOG_TAG, "onNullBinding called with " + name);
                cleanupService();
            }

            void cleanupService() {
                init(null, null);
            }

            private void init(ITextClassifierService service, ComponentName name) {
                synchronized (TextClassificationManagerService.this.mLock) {
                    ServiceState.this.mService = service;
                    ServiceState.this.mBinding = false;
                    ServiceState.this.updateServiceInfoLocked(this.mUserId, name);
                    ServiceState.this.handlePendingRequestsLocked();
                }
            }
        }
    }

    private final class TextClassifierSettingsListener implements DeviceConfig.OnPropertiesChangedListener {
        private final Context mContext;
        private String mServicePackageOverride;

        TextClassifierSettingsListener(Context context) {
            this.mContext = context;
            this.mServicePackageOverride = TextClassificationManagerService.this.mSettings.getTextClassifierServicePackageOverride();
        }

        void registerObserver() {
            DeviceConfig.addOnPropertiesChangedListener("textclassifier", this.mContext.getMainExecutor(), this);
        }

        public void onPropertiesChanged(DeviceConfig.Properties properties) {
            String currentServicePackageOverride = TextClassificationManagerService.this.mSettings.getTextClassifierServicePackageOverride();
            if (TextUtils.equals(currentServicePackageOverride, this.mServicePackageOverride)) {
                return;
            }
            this.mServicePackageOverride = currentServicePackageOverride;
            TextClassificationManagerService.this.onTextClassifierServicePackageOverrideChanged(currentServicePackageOverride);
        }
    }

    private static final class CallbackWrapper extends ITextClassifierCallback.Stub {
        private final ITextClassifierCallback mWrapped;

        CallbackWrapper(ITextClassifierCallback wrapped) {
            Objects.requireNonNull(wrapped);
            this.mWrapped = wrapped;
        }

        public void onSuccess(Bundle result) {
            Parcelable parcelled = TextClassifierService.getResponse(result);
            if (parcelled instanceof TextClassification) {
                rewriteTextClassificationIcons(result);
            } else if (parcelled instanceof ConversationActions) {
                rewriteConversationActionsIcons(result);
            }
            try {
                this.mWrapped.onSuccess(result);
            } catch (RemoteException e) {
                Slog.e(TextClassificationManagerService.LOG_TAG, "Callback error", e);
            }
        }

        private static void rewriteTextClassificationIcons(Bundle result) {
            RemoteAction validAction;
            TextClassification classification = (TextClassification) TextClassifierService.getResponse(result);
            boolean rewrite = false;
            List<RemoteAction> actions = classification.getActions();
            int size = actions.size();
            List<RemoteAction> validActions = new ArrayList<>(size);
            for (int i = 0; i < size; i++) {
                RemoteAction action = actions.get(i);
                if (shouldRewriteIcon(action)) {
                    rewrite = true;
                    validAction = validAction(action);
                } else {
                    validAction = action;
                }
                validActions.add(validAction);
            }
            if (rewrite) {
                TextClassifierService.putResponse(result, classification.toBuilder().clearActions().addActions(validActions).build());
            }
        }

        private static void rewriteConversationActionsIcons(Bundle result) {
            ConversationAction validConvAction;
            ConversationActions convActions = (ConversationActions) TextClassifierService.getResponse(result);
            boolean rewrite = false;
            List<ConversationAction> origConvActions = convActions.getConversationActions();
            int size = origConvActions.size();
            List<ConversationAction> validConvActions = new ArrayList<>(size);
            for (int i = 0; i < size; i++) {
                ConversationAction convAction = origConvActions.get(i);
                if (shouldRewriteIcon(convAction.getAction())) {
                    rewrite = true;
                    validConvAction = convAction.toBuilder().setAction(validAction(convAction.getAction())).build();
                } else {
                    validConvAction = convAction;
                }
                validConvActions.add(validConvAction);
            }
            if (rewrite) {
                TextClassifierService.putResponse(result, new ConversationActions(validConvActions, convActions.getId()));
            }
        }

        private static RemoteAction validAction(RemoteAction action) {
            RemoteAction newAction = new RemoteAction(changeIcon(action.getIcon()), action.getTitle(), action.getContentDescription(), action.getActionIntent());
            newAction.setEnabled(action.isEnabled());
            newAction.setShouldShowIcon(action.shouldShowIcon());
            return newAction;
        }

        private static boolean shouldRewriteIcon(RemoteAction action) {
            return action != null && action.getIcon().getType() == 2;
        }

        private static Icon changeIcon(Icon icon) {
            Uri uri = IconsUriHelper.getInstance().getContentUri(icon.getResPackage(), icon.getResId());
            return Icon.createWithContentUri(uri);
        }

        public void onFailure() {
            try {
                this.mWrapped.onFailure();
            } catch (RemoteException e) {
                Slog.e(TextClassificationManagerService.LOG_TAG, "Callback error", e);
            }
        }
    }
}
