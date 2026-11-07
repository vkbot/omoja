package com.android.server.voiceinteraction;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.role.OnRoleHoldersChangedListener;
import android.app.role.RoleManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.ShortcutServiceInternal;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.hardware.soundtrigger.IRecognitionStatusCallback;
import android.hardware.soundtrigger.KeyphraseMetadata;
import android.hardware.soundtrigger.SoundTrigger;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteCallback;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.provider.Settings;
import android.service.voice.IVoiceInteractionSession;
import android.service.voice.VoiceInteractionManagerInternal;
import android.service.voice.VoiceInteractionServiceInfo;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import com.android.internal.app.IVoiceActionCheckCallback;
import com.android.internal.app.IVoiceInteractionManagerService;
import com.android.internal.app.IVoiceInteractionSessionListener;
import com.android.internal.app.IVoiceInteractionSessionShowCallback;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.content.PackageMonitor;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.DumpUtils;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.UiThread;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import com.android.server.soundtrigger.SoundTriggerInternal;
import com.android.server.utils.TimingsTraceAndSlog;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class VoiceInteractionManagerService extends SystemService {
    static final boolean DEBUG = false;
    static final String TAG = "VoiceInteractionManager";
    final ActivityManagerInternal mAmInternal;
    final ActivityTaskManagerInternal mAtmInternal;
    final Context mContext;
    final DatabaseHelper mDbHelper;
    final ArraySet<Integer> mLoadedKeyphraseIds;
    final ContentResolver mResolver;
    private final VoiceInteractionManagerServiceStub mServiceStub;
    ShortcutServiceInternal mShortcutServiceInternal;
    SoundTriggerInternal mSoundTriggerInternal;
    final UserManagerInternal mUserManagerInternal;
    private final RemoteCallbackList<IVoiceInteractionSessionListener> mVoiceInteractionSessionListeners;

    public VoiceInteractionManagerService(Context context) {
        super(context);
        this.mLoadedKeyphraseIds = new ArraySet<>();
        this.mVoiceInteractionSessionListeners = new RemoteCallbackList<>();
        this.mContext = context;
        this.mResolver = context.getContentResolver();
        this.mDbHelper = new DatabaseHelper(context);
        this.mServiceStub = new VoiceInteractionManagerServiceStub();
        ActivityManagerInternal activityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        Objects.requireNonNull(activityManagerInternal);
        this.mAmInternal = activityManagerInternal;
        ActivityTaskManagerInternal activityTaskManagerInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        Objects.requireNonNull(activityTaskManagerInternal);
        this.mAtmInternal = activityTaskManagerInternal;
        UserManagerInternal userManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        Objects.requireNonNull(userManagerInternal);
        this.mUserManagerInternal = userManagerInternal;
        PermissionManagerServiceInternal permissionManagerInternal = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
        permissionManagerInternal.setVoiceInteractionPackagesProvider(new PermissionManagerServiceInternal.PackagesProvider() { // from class: com.android.server.voiceinteraction.VoiceInteractionManagerService.1
            @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PackagesProvider
            public String[] getPackages(int userId) {
                VoiceInteractionManagerService.this.mServiceStub.initForUser(userId);
                ComponentName interactor = VoiceInteractionManagerService.this.mServiceStub.getCurInteractor(userId);
                if (interactor != null) {
                    return new String[]{interactor.getPackageName()};
                }
                return null;
            }
        });
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("voiceinteraction", this.mServiceStub);
        publishLocalService(VoiceInteractionManagerInternal.class, new LocalService());
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (500 == phase) {
            ShortcutServiceInternal shortcutServiceInternal = (ShortcutServiceInternal) LocalServices.getService(ShortcutServiceInternal.class);
            Objects.requireNonNull(shortcutServiceInternal);
            this.mShortcutServiceInternal = shortcutServiceInternal;
            this.mSoundTriggerInternal = (SoundTriggerInternal) LocalServices.getService(SoundTriggerInternal.class);
            return;
        }
        if (phase == 600) {
            this.mServiceStub.systemRunning(isSafeMode());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSupported(UserInfo user) {
        return user.isFull();
    }

    @Override // com.android.server.SystemService
    public boolean isUserSupported(SystemService.TargetUser user) {
        return isSupported(user.getUserInfo());
    }

    @Override // com.android.server.SystemService
    public void onUserStarting(SystemService.TargetUser user) {
        this.mServiceStub.initForUser(user.getUserIdentifier());
    }

    @Override // com.android.server.SystemService
    public void onUserUnlocking(SystemService.TargetUser user) {
        this.mServiceStub.initForUser(user.getUserIdentifier());
        this.mServiceStub.switchImplementationIfNeeded(false);
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(UserInfo from, UserInfo to) {
        this.mServiceStub.switchUser(to.id);
    }

    class LocalService extends VoiceInteractionManagerInternal {
        LocalService() {
        }

        public void startLocalVoiceInteraction(IBinder callingActivity, Bundle options) {
            VoiceInteractionManagerService.this.mServiceStub.startLocalVoiceInteraction(callingActivity, options);
        }

        public boolean supportsLocalVoiceInteraction() {
            return VoiceInteractionManagerService.this.mServiceStub.supportsLocalVoiceInteraction();
        }

        public void stopLocalVoiceInteraction(IBinder callingActivity) {
            VoiceInteractionManagerService.this.mServiceStub.stopLocalVoiceInteraction(callingActivity);
        }
    }

    class VoiceInteractionManagerServiceStub extends IVoiceInteractionManagerService.Stub {
        private int mCurUser;
        private boolean mCurUserSupported;
        private boolean mCurUserUnlocked;
        private final boolean mEnableService;
        VoiceInteractionManagerServiceImpl mImpl;
        PackageMonitor mPackageMonitor = new AnonymousClass2();
        private boolean mSafeMode;
        private boolean mTemporarilyDisabled;

        VoiceInteractionManagerServiceStub() {
            this.mEnableService = shouldEnableService(VoiceInteractionManagerService.this.mContext);
            new RoleObserver(VoiceInteractionManagerService.this.mContext.getMainExecutor());
        }

        void startLocalVoiceInteraction(final IBinder token, Bundle options) {
            if (this.mImpl == null) {
                return;
            }
            long caller = Binder.clearCallingIdentity();
            try {
                this.mImpl.showSessionLocked(options, 16, new IVoiceInteractionSessionShowCallback.Stub() { // from class: com.android.server.voiceinteraction.VoiceInteractionManagerService.VoiceInteractionManagerServiceStub.1
                    public void onFailed() {
                    }

                    public void onShown() {
                        VoiceInteractionManagerService.this.mAtmInternal.onLocalVoiceInteractionStarted(token, VoiceInteractionManagerServiceStub.this.mImpl.mActiveSession.mSession, VoiceInteractionManagerServiceStub.this.mImpl.mActiveSession.mInteractor);
                    }
                }, token);
            } finally {
                Binder.restoreCallingIdentity(caller);
            }
        }

        public void stopLocalVoiceInteraction(IBinder callingActivity) {
            if (this.mImpl == null) {
                return;
            }
            long caller = Binder.clearCallingIdentity();
            try {
                this.mImpl.finishLocked(callingActivity, true);
            } finally {
                Binder.restoreCallingIdentity(caller);
            }
        }

        public boolean supportsLocalVoiceInteraction() {
            VoiceInteractionManagerServiceImpl voiceInteractionManagerServiceImpl = this.mImpl;
            if (voiceInteractionManagerServiceImpl == null) {
                return false;
            }
            return voiceInteractionManagerServiceImpl.supportsLocalVoiceInteraction();
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            try {
                return super.onTransact(code, data, reply, flags);
            } catch (RuntimeException e) {
                if (!(e instanceof SecurityException)) {
                    Slog.wtf(VoiceInteractionManagerService.TAG, "VoiceInteractionManagerService Crash", e);
                }
                throw e;
            }
        }

        public void initForUser(int userHandle) {
            TimingsTraceAndSlog t = null;
            initForUserNoTracing(userHandle);
            if (0 != 0) {
                t.traceEnd();
            }
        }

        private void initForUserNoTracing(int userHandle) {
            String curInteractorStr = Settings.Secure.getStringForUser(VoiceInteractionManagerService.this.mContext.getContentResolver(), "voice_interaction_service", userHandle);
            ComponentName curRecognizer = getCurRecognizer(userHandle);
            VoiceInteractionServiceInfo curInteractorInfo = null;
            if (curInteractorStr == null && curRecognizer != null && this.mEnableService && (curInteractorInfo = findAvailInteractor(userHandle, curRecognizer.getPackageName())) != null) {
                curRecognizer = null;
            }
            String forceInteractorPackage = getForceVoiceInteractionServicePackage(VoiceInteractionManagerService.this.mContext.getResources());
            if (forceInteractorPackage != null && (curInteractorInfo = findAvailInteractor(userHandle, forceInteractorPackage)) != null) {
                curRecognizer = null;
            }
            if (!this.mEnableService && curInteractorStr != null && !TextUtils.isEmpty(curInteractorStr)) {
                setCurInteractor(null, userHandle);
                curInteractorStr = "";
            }
            if (curRecognizer != null) {
                IPackageManager pm = AppGlobals.getPackageManager();
                ServiceInfo interactorInfo = null;
                ServiceInfo recognizerInfo = null;
                ComponentName curInteractor = !TextUtils.isEmpty(curInteractorStr) ? ComponentName.unflattenFromString(curInteractorStr) : null;
                try {
                    recognizerInfo = pm.getServiceInfo(curRecognizer, 786432, userHandle);
                    if (curInteractor != null) {
                        interactorInfo = pm.getServiceInfo(curInteractor, 786432, userHandle);
                    }
                } catch (RemoteException e) {
                }
                if (recognizerInfo != null && (curInteractor == null || interactorInfo != null)) {
                    return;
                }
            }
            if (curInteractorInfo == null && this.mEnableService && !"".equals(curInteractorStr)) {
                curInteractorInfo = findAvailInteractor(userHandle, null);
            }
            if (curInteractorInfo != null) {
                setCurInteractor(new ComponentName(curInteractorInfo.getServiceInfo().packageName, curInteractorInfo.getServiceInfo().name), userHandle);
                if (curInteractorInfo.getRecognitionService() != null) {
                    setCurRecognizer(new ComponentName(curInteractorInfo.getServiceInfo().packageName, curInteractorInfo.getRecognitionService()), userHandle);
                    return;
                }
            }
            initSimpleRecognizer(curInteractorInfo, userHandle);
        }

        public void initSimpleRecognizer(VoiceInteractionServiceInfo curInteractorInfo, int userHandle) {
            ComponentName curRecognizer = findAvailRecognizer(null, userHandle);
            if (curRecognizer != null) {
                if (curInteractorInfo == null) {
                    setCurInteractor(null, userHandle);
                }
                setCurRecognizer(curRecognizer, userHandle);
            }
        }

        private boolean shouldEnableService(Context context) {
            if (getForceVoiceInteractionServicePackage(context.getResources()) != null) {
                return true;
            }
            return context.getPackageManager().hasSystemFeature("android.software.voice_recognizers");
        }

        private String getForceVoiceInteractionServicePackage(Resources res) {
            String interactorPackage = res.getString(R.string.config_headlineFontFamily);
            if (TextUtils.isEmpty(interactorPackage)) {
                return null;
            }
            return interactorPackage;
        }

        public void systemRunning(boolean safeMode) {
            this.mSafeMode = safeMode;
            this.mPackageMonitor.register(VoiceInteractionManagerService.this.mContext, BackgroundThread.getHandler().getLooper(), UserHandle.ALL, true);
            new SettingsObserver(UiThread.getHandler());
            synchronized (this) {
                setCurrentUserLocked(ActivityManager.getCurrentUser());
                switchImplementationIfNeededLocked(false);
            }
        }

        private void setCurrentUserLocked(int userHandle) {
            this.mCurUser = userHandle;
            UserInfo userInfo = VoiceInteractionManagerService.this.mUserManagerInternal.getUserInfo(this.mCurUser);
            this.mCurUserSupported = VoiceInteractionManagerService.this.isSupported(userInfo);
        }

        public void switchUser(final int userHandle) {
            FgThread.getHandler().post(new Runnable() { // from class: com.android.server.voiceinteraction.-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$u4484DFAd6TvNnx89ISVr_ZLWJY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$switchUser$0$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub(userHandle);
                }
            });
        }

        public /* synthetic */ void lambda$switchUser$0$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub(int userHandle) {
            synchronized (this) {
                setCurrentUserLocked(userHandle);
                this.mCurUserUnlocked = false;
                switchImplementationIfNeededLocked(false);
            }
        }

        void switchImplementationIfNeeded(boolean force) {
            synchronized (this) {
                switchImplementationIfNeededLocked(force);
            }
        }

        void switchImplementationIfNeededLocked(boolean force) {
            if (!this.mCurUserSupported || this.mTemporarilyDisabled) {
                VoiceInteractionManagerServiceImpl voiceInteractionManagerServiceImpl = this.mImpl;
                if (voiceInteractionManagerServiceImpl != null) {
                    voiceInteractionManagerServiceImpl.shutdownLocked();
                    setImplLocked(null);
                    return;
                }
                return;
            }
            TimingsTraceAndSlog t = null;
            switchImplementationIfNeededNoTracingLocked(force);
            if (0 != 0) {
                t.traceEnd();
            }
        }

        void switchImplementationIfNeededNoTracingLocked(boolean force) {
            VoiceInteractionManagerServiceImpl voiceInteractionManagerServiceImpl;
            if (!this.mSafeMode) {
                String curService = Settings.Secure.getStringForUser(VoiceInteractionManagerService.this.mResolver, "voice_interaction_service", this.mCurUser);
                ComponentName serviceComponent = null;
                ServiceInfo serviceInfo = null;
                boolean hasComponent = false;
                if (curService != null && !curService.isEmpty()) {
                    try {
                        serviceComponent = ComponentName.unflattenFromString(curService);
                        serviceInfo = AppGlobals.getPackageManager().getServiceInfo(serviceComponent, 0, this.mCurUser);
                    } catch (RemoteException | RuntimeException e) {
                        Slog.wtf(VoiceInteractionManagerService.TAG, "Bad voice interaction service name " + curService, e);
                        serviceComponent = null;
                        serviceInfo = null;
                    }
                }
                if (serviceComponent != null && serviceInfo != null) {
                    hasComponent = true;
                }
                if (VoiceInteractionManagerService.this.mUserManagerInternal.isUserUnlockingOrUnlocked(this.mCurUser)) {
                    if (hasComponent) {
                        VoiceInteractionManagerService.this.mShortcutServiceInternal.setShortcutHostPackage(VoiceInteractionManagerService.TAG, serviceComponent.getPackageName(), this.mCurUser);
                        VoiceInteractionManagerService.this.mAtmInternal.setAllowAppSwitches(VoiceInteractionManagerService.TAG, serviceInfo.applicationInfo.uid, this.mCurUser);
                    } else {
                        VoiceInteractionManagerService.this.mShortcutServiceInternal.setShortcutHostPackage(VoiceInteractionManagerService.TAG, (String) null, this.mCurUser);
                        VoiceInteractionManagerService.this.mAtmInternal.setAllowAppSwitches(VoiceInteractionManagerService.TAG, -1, this.mCurUser);
                    }
                }
                if (force || (voiceInteractionManagerServiceImpl = this.mImpl) == null || voiceInteractionManagerServiceImpl.mUser != this.mCurUser || !this.mImpl.mComponent.equals(serviceComponent)) {
                    unloadAllKeyphraseModels();
                    VoiceInteractionManagerServiceImpl voiceInteractionManagerServiceImpl2 = this.mImpl;
                    if (voiceInteractionManagerServiceImpl2 != null) {
                        voiceInteractionManagerServiceImpl2.shutdownLocked();
                    }
                    if (hasComponent) {
                        setImplLocked(new VoiceInteractionManagerServiceImpl(VoiceInteractionManagerService.this.mContext, UiThread.getHandler(), this, this.mCurUser, serviceComponent));
                        this.mImpl.startLocked();
                    } else {
                        setImplLocked(null);
                    }
                }
            }
        }

        VoiceInteractionServiceInfo findAvailInteractor(int userHandle, String packageName) {
            List<ResolveInfo> available = VoiceInteractionManagerService.this.mContext.getPackageManager().queryIntentServicesAsUser(new Intent("android.service.voice.VoiceInteractionService"), 269221888, userHandle);
            int numAvailable = available.size();
            if (numAvailable == 0) {
                Slog.w(VoiceInteractionManagerService.TAG, "no available voice interaction services found for user " + userHandle);
                return null;
            }
            VoiceInteractionServiceInfo foundInfo = null;
            for (int i = 0; i < numAvailable; i++) {
                ServiceInfo cur = available.get(i).serviceInfo;
                if ((cur.applicationInfo.flags & 1) != 0) {
                    ComponentName comp = new ComponentName(cur.packageName, cur.name);
                    try {
                        VoiceInteractionServiceInfo info = new VoiceInteractionServiceInfo(VoiceInteractionManagerService.this.mContext.getPackageManager(), comp, userHandle);
                        if (info.getParseError() == null) {
                            if (packageName == null || info.getServiceInfo().packageName.equals(packageName)) {
                                if (foundInfo == null) {
                                    foundInfo = info;
                                } else {
                                    Slog.w(VoiceInteractionManagerService.TAG, "More than one voice interaction service, picking first " + new ComponentName(foundInfo.getServiceInfo().packageName, foundInfo.getServiceInfo().name) + " over " + new ComponentName(cur.packageName, cur.name));
                                }
                            }
                        } else {
                            Slog.w(VoiceInteractionManagerService.TAG, "Bad interaction service " + comp + ": " + info.getParseError());
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        Slog.w(VoiceInteractionManagerService.TAG, "Failure looking up interaction service " + comp);
                    }
                }
            }
            return foundInfo;
        }

        ComponentName getCurInteractor(int userHandle) {
            String curInteractor = Settings.Secure.getStringForUser(VoiceInteractionManagerService.this.mContext.getContentResolver(), "voice_interaction_service", userHandle);
            if (TextUtils.isEmpty(curInteractor)) {
                return null;
            }
            return ComponentName.unflattenFromString(curInteractor);
        }

        void setCurInteractor(ComponentName comp, int userHandle) {
            Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.mContext.getContentResolver(), "voice_interaction_service", comp != null ? comp.flattenToShortString() : "", userHandle);
        }

        ComponentName findAvailRecognizer(String prefPackage, int userHandle) {
            List<ResolveInfo> available = VoiceInteractionManagerService.this.mContext.getPackageManager().queryIntentServicesAsUser(new Intent("android.speech.RecognitionService"), 786432, userHandle);
            int numAvailable = available.size();
            if (numAvailable == 0) {
                Slog.w(VoiceInteractionManagerService.TAG, "no available voice recognition services found for user " + userHandle);
                return null;
            }
            if (prefPackage != null) {
                for (int i = 0; i < numAvailable; i++) {
                    ServiceInfo serviceInfo = available.get(i).serviceInfo;
                    if (prefPackage.equals(serviceInfo.packageName)) {
                        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    }
                }
            }
            if (numAvailable > 1) {
                Slog.w(VoiceInteractionManagerService.TAG, "more than one voice recognition service found, picking first");
            }
            ServiceInfo serviceInfo2 = available.get(0).serviceInfo;
            return new ComponentName(serviceInfo2.packageName, serviceInfo2.name);
        }

        ComponentName getCurRecognizer(int userHandle) {
            String curRecognizer = Settings.Secure.getStringForUser(VoiceInteractionManagerService.this.mContext.getContentResolver(), "voice_recognition_service", userHandle);
            if (TextUtils.isEmpty(curRecognizer)) {
                return null;
            }
            return ComponentName.unflattenFromString(curRecognizer);
        }

        void setCurRecognizer(ComponentName comp, int userHandle) {
            Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.mContext.getContentResolver(), "voice_recognition_service", comp != null ? comp.flattenToShortString() : "", userHandle);
        }

        ComponentName getCurAssistant(int userHandle) {
            String curAssistant = Settings.Secure.getStringForUser(VoiceInteractionManagerService.this.mContext.getContentResolver(), "assistant", userHandle);
            if (TextUtils.isEmpty(curAssistant)) {
                return null;
            }
            return ComponentName.unflattenFromString(curAssistant);
        }

        void resetCurAssistant(int userHandle) {
            Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.mContext.getContentResolver(), "assistant", null, userHandle);
        }

        public void showSession(Bundle args, int flags) {
            synchronized (this) {
                long caller = Binder.clearCallingIdentity();
                try {
                    this.mImpl.showSessionLocked(args, flags, null, null);
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public boolean deliverNewSession(IBinder token, IVoiceInteractionSession session, IVoiceInteractor interactor) {
            boolean zDeliverNewSessionLocked;
            synchronized (this) {
                if (this.mImpl == null) {
                    throw new SecurityException("deliverNewSession without running voice interaction service");
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    zDeliverNewSessionLocked = this.mImpl.deliverNewSessionLocked(token, session, interactor);
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
            return zDeliverNewSessionLocked;
        }

        public boolean showSessionFromSession(IBinder token, Bundle sessionArgs, int flags) {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "showSessionFromSession without running voice interaction service");
                    return false;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    boolean zShowSessionLocked = this.mImpl.showSessionLocked(sessionArgs, flags, null, null);
                    Binder.restoreCallingIdentity(caller);
                    return zShowSessionLocked;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public boolean hideSessionFromSession(IBinder token) {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "hideSessionFromSession without running voice interaction service");
                    return false;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    boolean zHideSessionLocked = this.mImpl.hideSessionLocked();
                    Binder.restoreCallingIdentity(caller);
                    return zHideSessionLocked;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public int startVoiceActivity(IBinder token, Intent intent, String resolvedType, String callingFeatureId) {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "startVoiceActivity without running voice interaction service");
                    return -96;
                }
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                long caller = Binder.clearCallingIdentity();
                try {
                    int iStartVoiceActivityLocked = this.mImpl.startVoiceActivityLocked(callingFeatureId, callingPid, callingUid, token, intent, resolvedType);
                    Binder.restoreCallingIdentity(caller);
                    return iStartVoiceActivityLocked;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public int startAssistantActivity(IBinder token, Intent intent, String resolvedType, String callingFeatureId) {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "startAssistantActivity without running voice interaction service");
                    return -96;
                }
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                long caller = Binder.clearCallingIdentity();
                try {
                    int iStartAssistantActivityLocked = this.mImpl.startAssistantActivityLocked(callingFeatureId, callingPid, callingUid, token, intent, resolvedType);
                    Binder.restoreCallingIdentity(caller);
                    return iStartAssistantActivityLocked;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void requestDirectActions(IBinder token, int taskId, IBinder assistToken, RemoteCallback cancellationCallback, RemoteCallback resultCallback) {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "requestDirectActions without running voice interaction service");
                    resultCallback.sendResult((Bundle) null);
                    return;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    this.mImpl.requestDirectActionsLocked(token, taskId, assistToken, cancellationCallback, resultCallback);
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void performDirectAction(IBinder token, String actionId, Bundle arguments, int taskId, IBinder assistToken, RemoteCallback cancellationCallback, RemoteCallback resultCallback) throws Throwable {
            synchronized (this) {
                try {
                    try {
                        if (this.mImpl == null) {
                            Slog.w(VoiceInteractionManagerService.TAG, "performDirectAction without running voice interaction service");
                            resultCallback.sendResult((Bundle) null);
                            return;
                        }
                        long caller = Binder.clearCallingIdentity();
                        try {
                            this.mImpl.performDirectActionLocked(token, actionId, arguments, taskId, assistToken, cancellationCallback, resultCallback);
                            Binder.restoreCallingIdentity(caller);
                        } catch (Throwable th) {
                            Binder.restoreCallingIdentity(caller);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            }
        }

        public void setKeepAwake(IBinder token, boolean keepAwake) {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "setKeepAwake without running voice interaction service");
                    return;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    this.mImpl.setKeepAwakeLocked(token, keepAwake);
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void closeSystemDialogs(IBinder token) {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "closeSystemDialogs without running voice interaction service");
                    return;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    this.mImpl.closeSystemDialogsLocked(token);
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void finish(IBinder token) {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "finish without running voice interaction service");
                    return;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    this.mImpl.finishLocked(token, false);
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void setDisabledShowContext(int flags) {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "setDisabledShowContext without running voice interaction service");
                    return;
                }
                int callingUid = Binder.getCallingUid();
                long caller = Binder.clearCallingIdentity();
                try {
                    this.mImpl.setDisabledShowContextLocked(callingUid, flags);
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public int getDisabledShowContext() {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "getDisabledShowContext without running voice interaction service");
                    return 0;
                }
                int callingUid = Binder.getCallingUid();
                long caller = Binder.clearCallingIdentity();
                try {
                    int disabledShowContextLocked = this.mImpl.getDisabledShowContextLocked(callingUid);
                    Binder.restoreCallingIdentity(caller);
                    return disabledShowContextLocked;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public int getUserDisabledShowContext() {
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "getUserDisabledShowContext without running voice interaction service");
                    return 0;
                }
                int callingUid = Binder.getCallingUid();
                long caller = Binder.clearCallingIdentity();
                try {
                    int userDisabledShowContextLocked = this.mImpl.getUserDisabledShowContextLocked(callingUid);
                    Binder.restoreCallingIdentity(caller);
                    return userDisabledShowContextLocked;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void setDisabled(boolean disabled) {
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                if (this.mTemporarilyDisabled == disabled) {
                    return;
                }
                Slog.i(VoiceInteractionManagerService.TAG, "setDisabled(): changing to " + disabled);
                long caller = Binder.clearCallingIdentity();
                try {
                    this.mTemporarilyDisabled = disabled;
                    switchImplementationIfNeeded(false);
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public SoundTrigger.KeyphraseSoundModel getKeyphraseSoundModel(int keyphraseId, String bcp47Locale) {
            enforceCallerAllowedToEnrollVoiceModel();
            if (bcp47Locale == null) {
                throw new IllegalArgumentException("Illegal argument(s) in getKeyphraseSoundModel");
            }
            int callingUid = UserHandle.getCallingUserId();
            long caller = Binder.clearCallingIdentity();
            try {
                return VoiceInteractionManagerService.this.mDbHelper.getKeyphraseSoundModel(keyphraseId, callingUid, bcp47Locale);
            } finally {
                Binder.restoreCallingIdentity(caller);
            }
        }

        public int updateKeyphraseSoundModel(SoundTrigger.KeyphraseSoundModel model) {
            enforceCallerAllowedToEnrollVoiceModel();
            if (model == null) {
                throw new IllegalArgumentException("Model must not be null");
            }
            long caller = Binder.clearCallingIdentity();
            try {
                if (VoiceInteractionManagerService.this.mDbHelper.updateKeyphraseSoundModel(model)) {
                    synchronized (this) {
                        if (this.mImpl != null && this.mImpl.mService != null) {
                            this.mImpl.notifySoundModelsChangedLocked();
                        }
                    }
                    Binder.restoreCallingIdentity(caller);
                    return 0;
                }
                Binder.restoreCallingIdentity(caller);
                return Integer.MIN_VALUE;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(caller);
                throw th;
            }
        }

        public int deleteKeyphraseSoundModel(int keyphraseId, String bcp47Locale) {
            enforceCallerAllowedToEnrollVoiceModel();
            if (bcp47Locale == null) {
                throw new IllegalArgumentException("Illegal argument(s) in deleteKeyphraseSoundModel");
            }
            int callingUid = UserHandle.getCallingUserId();
            long caller = Binder.clearCallingIdentity();
            try {
                int unloadStatus = VoiceInteractionManagerService.this.mSoundTriggerInternal.unloadKeyphraseModel(keyphraseId);
                if (unloadStatus != 0) {
                    Slog.w(VoiceInteractionManagerService.TAG, "Unable to unload keyphrase sound model:" + unloadStatus);
                }
                boolean deleted = VoiceInteractionManagerService.this.mDbHelper.deleteKeyphraseSoundModel(keyphraseId, callingUid, bcp47Locale);
                int i = deleted ? 0 : Integer.MIN_VALUE;
                if (deleted) {
                    synchronized (this) {
                        if (this.mImpl != null && this.mImpl.mService != null) {
                            this.mImpl.notifySoundModelsChangedLocked();
                        }
                        VoiceInteractionManagerService.this.mLoadedKeyphraseIds.remove(Integer.valueOf(keyphraseId));
                    }
                }
                return i;
            } finally {
                if (0 != 0) {
                    synchronized (this) {
                        if (this.mImpl != null && this.mImpl.mService != null) {
                            this.mImpl.notifySoundModelsChangedLocked();
                        }
                        VoiceInteractionManagerService.this.mLoadedKeyphraseIds.remove(Integer.valueOf(keyphraseId));
                    }
                }
                Binder.restoreCallingIdentity(caller);
            }
        }

        public boolean isEnrolledForKeyphrase(int keyphraseId, String bcp47Locale) {
            synchronized (this) {
                enforceIsCurrentVoiceInteractionService();
            }
            if (bcp47Locale == null) {
                throw new IllegalArgumentException("Illegal argument(s) in isEnrolledForKeyphrase");
            }
            int callingUid = UserHandle.getCallingUserId();
            long caller = Binder.clearCallingIdentity();
            try {
                SoundTrigger.KeyphraseSoundModel model = VoiceInteractionManagerService.this.mDbHelper.getKeyphraseSoundModel(keyphraseId, callingUid, bcp47Locale);
                return model != null;
            } finally {
                Binder.restoreCallingIdentity(caller);
            }
        }

        public KeyphraseMetadata getEnrolledKeyphraseMetadata(String keyphrase, String bcp47Locale) {
            synchronized (this) {
                enforceIsCurrentVoiceInteractionService();
            }
            if (bcp47Locale == null) {
                throw new IllegalArgumentException("Illegal argument(s) in isEnrolledForKeyphrase");
            }
            int callingUid = UserHandle.getCallingUserId();
            long caller = Binder.clearCallingIdentity();
            try {
                SoundTrigger.KeyphraseSoundModel model = VoiceInteractionManagerService.this.mDbHelper.getKeyphraseSoundModel(keyphrase, callingUid, bcp47Locale);
                if (model == null) {
                    return null;
                }
                for (SoundTrigger.Keyphrase phrase : model.getKeyphrases()) {
                    if (keyphrase.equals(phrase.getText())) {
                        ArraySet<Locale> locales = new ArraySet<>();
                        locales.add(phrase.getLocale());
                        return new KeyphraseMetadata(phrase.getId(), phrase.getText(), locales, phrase.getRecognitionModes());
                    }
                }
                return null;
            } finally {
                Binder.restoreCallingIdentity(caller);
            }
        }

        public SoundTrigger.ModuleProperties getDspModuleProperties() {
            SoundTrigger.ModuleProperties moduleProperties;
            enforceCallingPermission("android.permission.CAPTURE_AUDIO_HOTWORD");
            synchronized (this) {
                enforceIsCurrentVoiceInteractionService();
                long caller = Binder.clearCallingIdentity();
                try {
                    moduleProperties = VoiceInteractionManagerService.this.mSoundTriggerInternal.getModuleProperties();
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
            return moduleProperties;
        }

        public int startRecognition(int keyphraseId, String bcp47Locale, IRecognitionStatusCallback callback, SoundTrigger.RecognitionConfig recognitionConfig) {
            enforceAlwaysOnHotwordPermissions();
            synchronized (this) {
                enforceIsCurrentVoiceInteractionService();
                if (callback == null || recognitionConfig == null || bcp47Locale == null) {
                    throw new IllegalArgumentException("Illegal argument(s) in startRecognition");
                }
            }
            int callingUid = UserHandle.getCallingUserId();
            long caller = Binder.clearCallingIdentity();
            try {
                SoundTrigger.KeyphraseSoundModel soundModel = VoiceInteractionManagerService.this.mDbHelper.getKeyphraseSoundModel(keyphraseId, callingUid, bcp47Locale);
                if (soundModel != null && soundModel.getUuid() != null && soundModel.getKeyphrases() != null) {
                    synchronized (this) {
                        VoiceInteractionManagerService.this.mLoadedKeyphraseIds.add(Integer.valueOf(keyphraseId));
                    }
                    int iStartRecognition = VoiceInteractionManagerService.this.mSoundTriggerInternal.startRecognition(keyphraseId, soundModel, callback, recognitionConfig);
                    Binder.restoreCallingIdentity(caller);
                    return iStartRecognition;
                }
                Slog.w(VoiceInteractionManagerService.TAG, "No matching sound model found in startRecognition");
                Binder.restoreCallingIdentity(caller);
                return Integer.MIN_VALUE;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(caller);
                throw th;
            }
        }

        public int stopRecognition(int keyphraseId, IRecognitionStatusCallback callback) {
            enforceAlwaysOnHotwordPermissions();
            synchronized (this) {
                enforceIsCurrentVoiceInteractionService();
            }
            long caller = Binder.clearCallingIdentity();
            try {
                return VoiceInteractionManagerService.this.mSoundTriggerInternal.stopRecognition(keyphraseId, callback);
            } finally {
                Binder.restoreCallingIdentity(caller);
            }
        }

        public int setParameter(int keyphraseId, int modelParam, int value) {
            enforceAlwaysOnHotwordPermissions();
            synchronized (this) {
                enforceIsCurrentVoiceInteractionService();
            }
            long caller = Binder.clearCallingIdentity();
            try {
                return VoiceInteractionManagerService.this.mSoundTriggerInternal.setParameter(keyphraseId, modelParam, value);
            } finally {
                Binder.restoreCallingIdentity(caller);
            }
        }

        public int getParameter(int keyphraseId, int modelParam) {
            enforceAlwaysOnHotwordPermissions();
            synchronized (this) {
                enforceIsCurrentVoiceInteractionService();
            }
            long caller = Binder.clearCallingIdentity();
            try {
                return VoiceInteractionManagerService.this.mSoundTriggerInternal.getParameter(keyphraseId, modelParam);
            } finally {
                Binder.restoreCallingIdentity(caller);
            }
        }

        public SoundTrigger.ModelParamRange queryParameter(int keyphraseId, int modelParam) {
            enforceAlwaysOnHotwordPermissions();
            synchronized (this) {
                enforceIsCurrentVoiceInteractionService();
            }
            long caller = Binder.clearCallingIdentity();
            try {
                return VoiceInteractionManagerService.this.mSoundTriggerInternal.queryParameter(keyphraseId, modelParam);
            } finally {
                Binder.restoreCallingIdentity(caller);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void unloadAllKeyphraseModels() {
            for (int i = 0; i < VoiceInteractionManagerService.this.mLoadedKeyphraseIds.size(); i++) {
                long caller = Binder.clearCallingIdentity();
                try {
                    int status = VoiceInteractionManagerService.this.mSoundTriggerInternal.unloadKeyphraseModel(VoiceInteractionManagerService.this.mLoadedKeyphraseIds.valueAt(i).intValue());
                    if (status != 0) {
                        try {
                            Slog.w(VoiceInteractionManagerService.TAG, "Failed to unload keyphrase " + VoiceInteractionManagerService.this.mLoadedKeyphraseIds.valueAt(i) + ":" + status);
                        } catch (Throwable th) {
                            th = th;
                            Binder.restoreCallingIdentity(caller);
                            throw th;
                        }
                    }
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            VoiceInteractionManagerService.this.mLoadedKeyphraseIds.clear();
        }

        public ComponentName getActiveServiceComponentName() {
            ComponentName componentName;
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                componentName = this.mImpl != null ? this.mImpl.mComponent : null;
            }
            return componentName;
        }

        public boolean showSessionForActiveService(Bundle args, int sourceFlags, IVoiceInteractionSessionShowCallback showCallback, IBinder activityToken) {
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "showSessionForActiveService without running voice interactionservice");
                    return false;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    boolean zShowSessionLocked = this.mImpl.showSessionLocked(args, sourceFlags | 1 | 2, showCallback, activityToken);
                    Binder.restoreCallingIdentity(caller);
                    return zShowSessionLocked;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void hideCurrentSession() throws RemoteException {
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                if (this.mImpl == null) {
                    return;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    if (this.mImpl.mActiveSession != null && this.mImpl.mActiveSession.mSession != null) {
                        try {
                            this.mImpl.mActiveSession.mSession.closeSystemDialogs();
                        } catch (RemoteException e) {
                            Log.w(VoiceInteractionManagerService.TAG, "Failed to call closeSystemDialogs", e);
                        }
                    }
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void launchVoiceAssistFromKeyguard() {
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                if (this.mImpl == null) {
                    Slog.w(VoiceInteractionManagerService.TAG, "launchVoiceAssistFromKeyguard without running voice interactionservice");
                    return;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    this.mImpl.launchVoiceAssistFromKeyguard();
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public boolean isSessionRunning() {
            boolean z;
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                z = (this.mImpl == null || this.mImpl.mActiveSession == null) ? false : true;
            }
            return z;
        }

        public boolean activeServiceSupportsAssist() {
            boolean z;
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                z = (this.mImpl == null || this.mImpl.mInfo == null || !this.mImpl.mInfo.getSupportsAssist()) ? false : true;
            }
            return z;
        }

        public boolean activeServiceSupportsLaunchFromKeyguard() throws RemoteException {
            boolean z;
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                z = (this.mImpl == null || this.mImpl.mInfo == null || !this.mImpl.mInfo.getSupportsLaunchFromKeyguard()) ? false : true;
            }
            return z;
        }

        public void onLockscreenShown() {
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                if (this.mImpl == null) {
                    return;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    if (this.mImpl.mActiveSession != null && this.mImpl.mActiveSession.mSession != null) {
                        try {
                            this.mImpl.mActiveSession.mSession.onLockscreenShown();
                        } catch (RemoteException e) {
                            Log.w(VoiceInteractionManagerService.TAG, "Failed to call onLockscreenShown", e);
                        }
                    }
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void registerVoiceInteractionSessionListener(IVoiceInteractionSessionListener listener) {
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.register(listener);
            }
        }

        public void getActiveServiceSupportedActions(List<String> voiceActions, IVoiceActionCheckCallback callback) {
            enforceCallingPermission("android.permission.ACCESS_VOICE_INTERACTION_SERVICE");
            synchronized (this) {
                if (this.mImpl == null) {
                    try {
                        callback.onComplete((List) null);
                    } catch (RemoteException e) {
                    }
                    return;
                }
                long caller = Binder.clearCallingIdentity();
                try {
                    this.mImpl.getActiveServiceSupportedActions(voiceActions, callback);
                    Binder.restoreCallingIdentity(caller);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(caller);
                    throw th;
                }
            }
        }

        public void onSessionShown() {
            synchronized (this) {
                int size = VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.beginBroadcast();
                for (int i = 0; i < size; i++) {
                    IVoiceInteractionSessionListener listener = VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.getBroadcastItem(i);
                    try {
                        listener.onVoiceSessionShown();
                    } catch (RemoteException e) {
                        Slog.e(VoiceInteractionManagerService.TAG, "Error delivering voice interaction open event.", e);
                    }
                }
                VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.finishBroadcast();
            }
        }

        public void onSessionHidden() {
            synchronized (this) {
                int size = VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.beginBroadcast();
                for (int i = 0; i < size; i++) {
                    IVoiceInteractionSessionListener listener = VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.getBroadcastItem(i);
                    try {
                        listener.onVoiceSessionHidden();
                    } catch (RemoteException e) {
                        Slog.e(VoiceInteractionManagerService.TAG, "Error delivering voice interaction closed event.", e);
                    }
                }
                VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.finishBroadcast();
            }
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(VoiceInteractionManagerService.this.mContext, VoiceInteractionManagerService.TAG, pw)) {
                synchronized (this) {
                    pw.println("VOICE INTERACTION MANAGER (dumpsys voiceinteraction)");
                    pw.println("  mEnableService: " + this.mEnableService);
                    pw.println("  mTemporarilyDisabled: " + this.mTemporarilyDisabled);
                    pw.println("  mCurUser: " + this.mCurUser);
                    pw.println("  mCurUserUnlocked: " + this.mCurUserUnlocked);
                    pw.println("  mCurUserSupported: " + this.mCurUserSupported);
                    VoiceInteractionManagerService.this.dumpSupportedUsers(pw, "  ");
                    VoiceInteractionManagerService.this.mDbHelper.dump(pw);
                    if (this.mImpl == null) {
                        pw.println("  (No active implementation)");
                    } else {
                        this.mImpl.dumpLocked(fd, pw, args);
                    }
                }
                VoiceInteractionManagerService.this.mSoundTriggerInternal.dump(fd, pw, args);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
            new VoiceInteractionManagerServiceShellCommand(VoiceInteractionManagerService.this.mServiceStub).exec(this, in, out, err, args, callback, resultReceiver);
        }

        public void setUiHints(Bundle hints) {
            synchronized (this) {
                enforceIsCurrentVoiceInteractionService();
                int size = VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.beginBroadcast();
                for (int i = 0; i < size; i++) {
                    IVoiceInteractionSessionListener listener = VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.getBroadcastItem(i);
                    try {
                        listener.onSetUiHints(hints);
                    } catch (RemoteException e) {
                        Slog.e(VoiceInteractionManagerService.TAG, "Error delivering UI hints.", e);
                    }
                }
                VoiceInteractionManagerService.this.mVoiceInteractionSessionListeners.finishBroadcast();
            }
        }

        private boolean isCallerHoldingPermission(String permission) {
            return VoiceInteractionManagerService.this.mContext.checkCallingOrSelfPermission(permission) == 0;
        }

        private void enforceAlwaysOnHotwordPermissions() {
            enforceCallingPermission("android.permission.RECORD_AUDIO");
            enforceCallingPermission("android.permission.CAPTURE_AUDIO_HOTWORD");
        }

        private void enforceCallingPermission(String permission) {
            if (!isCallerHoldingPermission(permission)) {
                throw new SecurityException("Caller does not hold the permission " + permission);
            }
        }

        private void enforceIsCurrentVoiceInteractionService() {
            if (!isCallerCurrentVoiceInteractionService()) {
                throw new SecurityException("Caller is not the current voice interaction service");
            }
        }

        private void enforceCallerAllowedToEnrollVoiceModel() {
            if (isCallerHoldingPermission("android.permission.KEYPHRASE_ENROLLMENT_APPLICATION")) {
                return;
            }
            enforceCallingPermission("android.permission.MANAGE_VOICE_KEYPHRASES");
            enforceIsCurrentVoiceInteractionService();
        }

        private boolean isCallerCurrentVoiceInteractionService() {
            VoiceInteractionManagerServiceImpl voiceInteractionManagerServiceImpl = this.mImpl;
            return voiceInteractionManagerServiceImpl != null && voiceInteractionManagerServiceImpl.mInfo.getServiceInfo().applicationInfo.uid == Binder.getCallingUid();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setImplLocked(VoiceInteractionManagerServiceImpl impl) {
            this.mImpl = impl;
            VoiceInteractionManagerService.this.mAtmInternal.notifyActiveVoiceInteractionServiceChanged(getActiveServiceComponentName());
        }

        class RoleObserver implements OnRoleHoldersChangedListener {
            private PackageManager mPm;
            private RoleManager mRm;

            RoleObserver(Executor executor) {
                this.mPm = VoiceInteractionManagerService.this.mContext.getPackageManager();
                RoleManager roleManager = (RoleManager) VoiceInteractionManagerService.this.mContext.getSystemService(RoleManager.class);
                this.mRm = roleManager;
                roleManager.addOnRoleHoldersChangedListenerAsUser(executor, this, UserHandle.ALL);
                if (this.mRm.isRoleAvailable("android.app.role.ASSISTANT")) {
                    UserHandle currentUser = UserHandle.of(((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).getCurrentUserId());
                    onRoleHoldersChanged("android.app.role.ASSISTANT", currentUser);
                }
            }

            private String getDefaultRecognizer(UserHandle user) {
                ResolveInfo resolveInfo = this.mPm.resolveServiceAsUser(new Intent("android.speech.RecognitionService"), 128, user.getIdentifier());
                if (resolveInfo == null || resolveInfo.serviceInfo == null) {
                    Log.w(VoiceInteractionManagerService.TAG, "Unable to resolve default voice recognition service.");
                    return "";
                }
                return new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name).flattenToShortString();
            }

            public void onRoleHoldersChanged(String roleName, UserHandle user) {
                if (!roleName.equals("android.app.role.ASSISTANT")) {
                    return;
                }
                List<String> roleHolders = this.mRm.getRoleHoldersAsUser(roleName, user);
                int userId = user.getIdentifier();
                if (roleHolders.isEmpty()) {
                    Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.getContext().getContentResolver(), "assistant", "", userId);
                    Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.getContext().getContentResolver(), "voice_interaction_service", "", userId);
                    Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.getContext().getContentResolver(), "voice_recognition_service", getDefaultRecognizer(user), userId);
                    return;
                }
                String pkg = roleHolders.get(0);
                List<ResolveInfo> services = this.mPm.queryIntentServicesAsUser(new Intent("android.service.voice.VoiceInteractionService").setPackage(pkg), 786560, userId);
                for (ResolveInfo resolveInfo : services) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    VoiceInteractionServiceInfo voiceInteractionServiceInfo = new VoiceInteractionServiceInfo(this.mPm, serviceInfo);
                    if (voiceInteractionServiceInfo.getSupportsAssist()) {
                        String serviceComponentName = serviceInfo.getComponentName().flattenToShortString();
                        String serviceRecognizerName = new ComponentName(pkg, voiceInteractionServiceInfo.getRecognitionService()).flattenToShortString();
                        Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.getContext().getContentResolver(), "assistant", serviceComponentName, userId);
                        Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.getContext().getContentResolver(), "voice_interaction_service", serviceComponentName, userId);
                        Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.getContext().getContentResolver(), "voice_recognition_service", serviceRecognizerName, userId);
                        return;
                    }
                }
                List<ResolveInfo> activities = this.mPm.queryIntentActivitiesAsUser(new Intent("android.intent.action.ASSIST").setPackage(pkg), 851968, userId);
                Iterator<ResolveInfo> it = activities.iterator();
                if (it.hasNext()) {
                    ResolveInfo resolveInfo2 = it.next();
                    ActivityInfo activityInfo = resolveInfo2.activityInfo;
                    Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.getContext().getContentResolver(), "assistant", activityInfo.getComponentName().flattenToShortString(), userId);
                    Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.getContext().getContentResolver(), "voice_interaction_service", "", userId);
                    Settings.Secure.putStringForUser(VoiceInteractionManagerService.this.getContext().getContentResolver(), "voice_recognition_service", getDefaultRecognizer(user), userId);
                }
            }
        }

        class SettingsObserver extends ContentObserver {
            SettingsObserver(Handler handler) {
                super(handler);
                ContentResolver resolver = VoiceInteractionManagerService.this.mContext.getContentResolver();
                resolver.registerContentObserver(Settings.Secure.getUriFor("voice_interaction_service"), false, this, -1);
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                synchronized (VoiceInteractionManagerServiceStub.this) {
                    VoiceInteractionManagerServiceStub.this.switchImplementationIfNeededLocked(false);
                }
            }
        }

        /* JADX INFO: renamed from: com.android.server.voiceinteraction.VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2, reason: invalid class name */
        class AnonymousClass2 extends PackageMonitor {
            AnonymousClass2() {
            }

            public boolean onHandleForceStop(Intent intent, String[] packages, int uid, boolean doit) {
                boolean hitRec;
                boolean hitRec2;
                int userHandle = UserHandle.getUserId(uid);
                ComponentName curInteractor = VoiceInteractionManagerServiceStub.this.getCurInteractor(userHandle);
                ComponentName curRecognizer = VoiceInteractionManagerServiceStub.this.getCurRecognizer(userHandle);
                int length = packages.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        hitRec = false;
                        hitRec2 = false;
                        break;
                    }
                    String pkg = packages[i];
                    if (curInteractor != null && pkg.equals(curInteractor.getPackageName())) {
                        hitRec = false;
                        hitRec2 = true;
                        break;
                    }
                    if (curRecognizer == null || !pkg.equals(curRecognizer.getPackageName())) {
                        i++;
                    } else {
                        hitRec = true;
                        hitRec2 = false;
                        break;
                    }
                }
                if (hitRec2 && doit) {
                    synchronized (VoiceInteractionManagerServiceStub.this) {
                        Slog.i(VoiceInteractionManagerService.TAG, "Force stopping current voice interactor: " + VoiceInteractionManagerServiceStub.this.getCurInteractor(userHandle));
                        VoiceInteractionManagerServiceStub.this.unloadAllKeyphraseModels();
                        if (VoiceInteractionManagerServiceStub.this.mImpl != null) {
                            VoiceInteractionManagerServiceStub.this.mImpl.shutdownLocked();
                            VoiceInteractionManagerServiceStub.this.setImplLocked(null);
                        }
                        VoiceInteractionManagerServiceStub.this.setCurInteractor(null, userHandle);
                        VoiceInteractionManagerServiceStub.this.setCurRecognizer(null, userHandle);
                        VoiceInteractionManagerServiceStub.this.resetCurAssistant(userHandle);
                        VoiceInteractionManagerServiceStub.this.initForUser(userHandle);
                        VoiceInteractionManagerServiceStub.this.switchImplementationIfNeededLocked(true);
                        Context context = VoiceInteractionManagerService.this.getContext();
                        ((RoleManager) context.getSystemService(RoleManager.class)).clearRoleHoldersAsUser("android.app.role.ASSISTANT", 0, UserHandle.of(userHandle), context.getMainExecutor(), new Consumer() { // from class: com.android.server.voiceinteraction.-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2$_YjGqp96fW1i83gthgQe_rVHY5s
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                VoiceInteractionManagerService.VoiceInteractionManagerServiceStub.AnonymousClass2.lambda$onHandleForceStop$0((Boolean) obj);
                            }
                        });
                    }
                } else if (hitRec && doit) {
                    synchronized (VoiceInteractionManagerServiceStub.this) {
                        Slog.i(VoiceInteractionManagerService.TAG, "Force stopping current voice recognizer: " + VoiceInteractionManagerServiceStub.this.getCurRecognizer(userHandle));
                        VoiceInteractionManagerServiceStub.this.initSimpleRecognizer(null, userHandle);
                    }
                }
                return hitRec2 || hitRec;
            }

            static /* synthetic */ void lambda$onHandleForceStop$0(Boolean successful) {
                if (!successful.booleanValue()) {
                    Slog.e(VoiceInteractionManagerService.TAG, "Failed to clear default assistant for force stop");
                }
            }

            public void onHandleUserStop(Intent intent, int userHandle) {
            }

            public void onPackageModified(String pkgName) {
                if (VoiceInteractionManagerServiceStub.this.mCurUser != getChangingUserId() || isPackageAppearing(pkgName) != 0) {
                    return;
                }
                String curInteractorStr = Settings.Secure.getStringForUser(VoiceInteractionManagerService.this.mContext.getContentResolver(), "voice_interaction_service", VoiceInteractionManagerServiceStub.this.mCurUser);
                VoiceInteractionManagerServiceStub voiceInteractionManagerServiceStub = VoiceInteractionManagerServiceStub.this;
                ComponentName curInteractor = voiceInteractionManagerServiceStub.getCurInteractor(voiceInteractionManagerServiceStub.mCurUser);
                if (curInteractor == null && !"".equals(curInteractorStr)) {
                    VoiceInteractionManagerServiceStub voiceInteractionManagerServiceStub2 = VoiceInteractionManagerServiceStub.this;
                    VoiceInteractionServiceInfo availInteractorInfo = voiceInteractionManagerServiceStub2.findAvailInteractor(voiceInteractionManagerServiceStub2.mCurUser, pkgName);
                    if (availInteractorInfo != null) {
                        ComponentName availInteractor = new ComponentName(availInteractorInfo.getServiceInfo().packageName, availInteractorInfo.getServiceInfo().name);
                        VoiceInteractionManagerServiceStub voiceInteractionManagerServiceStub3 = VoiceInteractionManagerServiceStub.this;
                        voiceInteractionManagerServiceStub3.setCurInteractor(availInteractor, voiceInteractionManagerServiceStub3.mCurUser);
                        VoiceInteractionManagerServiceStub voiceInteractionManagerServiceStub4 = VoiceInteractionManagerServiceStub.this;
                        if (voiceInteractionManagerServiceStub4.getCurRecognizer(voiceInteractionManagerServiceStub4.mCurUser) == null && availInteractorInfo.getRecognitionService() != null) {
                            VoiceInteractionManagerServiceStub.this.setCurRecognizer(new ComponentName(availInteractorInfo.getServiceInfo().packageName, availInteractorInfo.getRecognitionService()), VoiceInteractionManagerServiceStub.this.mCurUser);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (didSomePackagesChange()) {
                    if (curInteractor != null && pkgName.equals(curInteractor.getPackageName())) {
                        VoiceInteractionManagerServiceStub.this.switchImplementationIfNeeded(true);
                        return;
                    }
                    return;
                }
                if (curInteractor != null && isComponentModified(curInteractor.getClassName())) {
                    VoiceInteractionManagerServiceStub.this.switchImplementationIfNeeded(true);
                }
            }

            public void onSomePackagesChanged() {
                ComponentName curRecognizer;
                int userHandle = getChangingUserId();
                synchronized (VoiceInteractionManagerServiceStub.this) {
                    ComponentName curInteractor = VoiceInteractionManagerServiceStub.this.getCurInteractor(userHandle);
                    ComponentName curRecognizer2 = VoiceInteractionManagerServiceStub.this.getCurRecognizer(userHandle);
                    ComponentName curAssistant = VoiceInteractionManagerServiceStub.this.getCurAssistant(userHandle);
                    if (curRecognizer2 == null) {
                        if (anyPackagesAppearing() && (curRecognizer = VoiceInteractionManagerServiceStub.this.findAvailRecognizer(null, userHandle)) != null) {
                            VoiceInteractionManagerServiceStub.this.setCurRecognizer(curRecognizer, userHandle);
                        }
                        return;
                    }
                    if (curInteractor != null) {
                        if (isPackageDisappearing(curInteractor.getPackageName()) == 3) {
                            VoiceInteractionManagerServiceStub.this.setCurInteractor(null, userHandle);
                            VoiceInteractionManagerServiceStub.this.setCurRecognizer(null, userHandle);
                            VoiceInteractionManagerServiceStub.this.resetCurAssistant(userHandle);
                            VoiceInteractionManagerServiceStub.this.initForUser(userHandle);
                            return;
                        }
                        if (isPackageAppearing(curInteractor.getPackageName()) != 0 && VoiceInteractionManagerServiceStub.this.mImpl != null && curInteractor.getPackageName().equals(VoiceInteractionManagerServiceStub.this.mImpl.mComponent.getPackageName())) {
                            VoiceInteractionManagerServiceStub.this.switchImplementationIfNeededLocked(true);
                        }
                        return;
                    }
                    if (curAssistant != null && isPackageDisappearing(curAssistant.getPackageName()) == 3) {
                        VoiceInteractionManagerServiceStub.this.setCurInteractor(null, userHandle);
                        VoiceInteractionManagerServiceStub.this.setCurRecognizer(null, userHandle);
                        VoiceInteractionManagerServiceStub.this.resetCurAssistant(userHandle);
                        VoiceInteractionManagerServiceStub.this.initForUser(userHandle);
                        return;
                    }
                    int change = isPackageDisappearing(curRecognizer2.getPackageName());
                    if (change == 3 || change == 2) {
                        VoiceInteractionManagerServiceStub.this.setCurRecognizer(VoiceInteractionManagerServiceStub.this.findAvailRecognizer(null, userHandle), userHandle);
                    } else if (isPackageModified(curRecognizer2.getPackageName())) {
                        VoiceInteractionManagerServiceStub.this.setCurRecognizer(VoiceInteractionManagerServiceStub.this.findAvailRecognizer(curRecognizer2.getPackageName(), userHandle), userHandle);
                    }
                }
            }
        }
    }
}
