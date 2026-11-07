package com.android.server.soundtrigger;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.soundtrigger.IRecognitionStatusCallback;
import android.hardware.soundtrigger.SoundTrigger;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.soundtrigger.ISoundTriggerDetectionService;
import android.media.soundtrigger.ISoundTriggerDetectionServiceClient;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import com.android.internal.app.ISoundTriggerService;
import com.android.server.SystemService;
import com.android.server.display.color.DisplayTransformManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class SoundTriggerService extends SystemService {
    private static final boolean DEBUG = true;
    private static final String TAG = "SoundTriggerService";
    private static final SoundTriggerLogger sEventLogger = new SoundTriggerLogger(DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE, "SoundTrigger activity");
    private final TreeMap<UUID, IRecognitionStatusCallback> mCallbacks;
    private Object mCallbacksLock;
    final Context mContext;
    private SoundTriggerDbHelper mDbHelper;
    private final TreeMap<UUID, SoundTrigger.SoundModel> mLoadedModels;
    private final LocalSoundTriggerService mLocalSoundTriggerService;
    private Object mLock;
    private final ArrayMap<String, NumOps> mNumOpsPerPackage;
    private final SoundTriggerServiceStub mServiceStub;
    private final SoundModelStatTracker mSoundModelStatTracker;
    private SoundTriggerHelper mSoundTriggerHelper;

    class SoundModelStatTracker {
        private final TreeMap<UUID, SoundModelStat> mModelStats = new TreeMap<>();

        private class SoundModelStat {
            long mStartCount = 0;
            long mTotalTimeMsec = 0;
            long mLastStartTimestampMsec = 0;
            long mLastStopTimestampMsec = 0;
            boolean mIsStarted = false;

            SoundModelStat() {
            }
        }

        SoundModelStatTracker() {
        }

        public synchronized void onStart(UUID id) {
            SoundModelStat stat = this.mModelStats.get(id);
            if (stat == null) {
                stat = new SoundModelStat();
                this.mModelStats.put(id, stat);
            }
            if (stat.mIsStarted) {
                Slog.e(SoundTriggerService.TAG, "error onStart(): Model " + id + " already started");
                return;
            }
            stat.mStartCount++;
            stat.mLastStartTimestampMsec = SystemClock.elapsedRealtime();
            stat.mIsStarted = true;
        }

        public synchronized void onStop(UUID id) {
            SoundModelStat stat = this.mModelStats.get(id);
            if (stat == null) {
                Slog.e(SoundTriggerService.TAG, "error onStop(): Model " + id + " has no stats available");
                return;
            }
            if (!stat.mIsStarted) {
                Slog.e(SoundTriggerService.TAG, "error onStop(): Model " + id + " already stopped");
                return;
            }
            stat.mLastStopTimestampMsec = SystemClock.elapsedRealtime();
            stat.mTotalTimeMsec += stat.mLastStopTimestampMsec - stat.mLastStartTimestampMsec;
            stat.mIsStarted = false;
        }

        public synchronized void dump(PrintWriter pw) {
            long curTime = SystemClock.elapsedRealtime();
            pw.println("Model Stats:");
            for (Map.Entry<UUID, SoundModelStat> entry : this.mModelStats.entrySet()) {
                UUID uuid = entry.getKey();
                SoundModelStat stat = entry.getValue();
                long totalTimeMsec = stat.mTotalTimeMsec;
                if (stat.mIsStarted) {
                    totalTimeMsec += curTime - stat.mLastStartTimestampMsec;
                }
                pw.println(uuid + ", total_time(msec)=" + totalTimeMsec + ", total_count=" + stat.mStartCount + ", last_start=" + stat.mLastStartTimestampMsec + ", last_stop=" + stat.mLastStopTimestampMsec);
            }
        }
    }

    public SoundTriggerService(Context context) {
        super(context);
        this.mNumOpsPerPackage = new ArrayMap<>();
        this.mContext = context;
        this.mServiceStub = new SoundTriggerServiceStub();
        this.mLocalSoundTriggerService = new LocalSoundTriggerService(context);
        this.mLoadedModels = new TreeMap<>();
        this.mCallbacksLock = new Object();
        this.mCallbacks = new TreeMap<>();
        this.mLock = new Object();
        this.mSoundModelStatTracker = new SoundModelStatTracker();
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("soundtrigger", this.mServiceStub);
        publishLocalService(SoundTriggerInternal.class, this.mLocalSoundTriggerService);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        Slog.d(TAG, "onBootPhase: " + phase + " : " + isSafeMode());
        if (520 == phase) {
            if (isSafeMode()) {
                Slog.w(TAG, "not enabling SoundTriggerService in safe mode");
                return;
            } else {
                initSoundTriggerHelper();
                this.mLocalSoundTriggerService.setSoundTriggerHelper(this.mSoundTriggerHelper);
                return;
            }
        }
        if (600 == phase) {
            this.mDbHelper = new SoundTriggerDbHelper(this.mContext);
        }
    }

    @Override // com.android.server.SystemService
    public void onStartUser(int userHandle) {
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(int userHandle) {
    }

    private synchronized void initSoundTriggerHelper() {
        if (this.mSoundTriggerHelper == null) {
            this.mSoundTriggerHelper = new SoundTriggerHelper(this.mContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean isInitialized() {
        if (this.mSoundTriggerHelper == null) {
            Slog.e(TAG, "SoundTriggerHelper not initialized.");
            return false;
        }
        return true;
    }

    class SoundTriggerServiceStub extends ISoundTriggerService.Stub {
        SoundTriggerServiceStub() {
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            try {
                return super.onTransact(code, data, reply, flags);
            } catch (RuntimeException e) {
                if (!(e instanceof SecurityException)) {
                    Slog.wtf(SoundTriggerService.TAG, "SoundTriggerService Crash", e);
                }
                throw e;
            }
        }

        public int startRecognition(ParcelUuid parcelUuid, IRecognitionStatusCallback callback, SoundTrigger.RecognitionConfig config) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                return Integer.MIN_VALUE;
            }
            Slog.i(SoundTriggerService.TAG, "startRecognition(): Uuid : " + parcelUuid);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("startRecognition(): Uuid : " + parcelUuid));
            SoundTrigger.GenericSoundModel model = getSoundModel(parcelUuid);
            if (model != null) {
                int ret = SoundTriggerService.this.mSoundTriggerHelper.startGenericRecognition(parcelUuid.getUuid(), model, callback, config);
                if (ret == 0) {
                    SoundTriggerService.this.mSoundModelStatTracker.onStart(parcelUuid.getUuid());
                }
                return ret;
            }
            Slog.e(SoundTriggerService.TAG, "Null model in database for id: " + parcelUuid);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("startRecognition(): Null model in database for id: " + parcelUuid));
            return Integer.MIN_VALUE;
        }

        public int stopRecognition(ParcelUuid parcelUuid, IRecognitionStatusCallback callback) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            Slog.i(SoundTriggerService.TAG, "stopRecognition(): Uuid : " + parcelUuid);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("stopRecognition(): Uuid : " + parcelUuid));
            if (!SoundTriggerService.this.isInitialized()) {
                return Integer.MIN_VALUE;
            }
            int ret = SoundTriggerService.this.mSoundTriggerHelper.stopGenericRecognition(parcelUuid.getUuid(), callback);
            if (ret == 0) {
                SoundTriggerService.this.mSoundModelStatTracker.onStop(parcelUuid.getUuid());
            }
            return ret;
        }

        public SoundTrigger.GenericSoundModel getSoundModel(ParcelUuid soundModelId) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            Slog.i(SoundTriggerService.TAG, "getSoundModel(): id = " + soundModelId);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("getSoundModel(): id = " + soundModelId));
            SoundTrigger.GenericSoundModel model = SoundTriggerService.this.mDbHelper.getGenericSoundModel(soundModelId.getUuid());
            return model;
        }

        public void updateSoundModel(SoundTrigger.GenericSoundModel soundModel) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            Slog.i(SoundTriggerService.TAG, "updateSoundModel(): model = " + soundModel);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("updateSoundModel(): model = " + soundModel));
            SoundTriggerService.this.mDbHelper.updateGenericSoundModel(soundModel);
        }

        public void deleteSoundModel(ParcelUuid soundModelId) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            Slog.i(SoundTriggerService.TAG, "deleteSoundModel(): id = " + soundModelId);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("deleteSoundModel(): id = " + soundModelId));
            if (SoundTriggerService.this.isInitialized()) {
                SoundTriggerService.this.mSoundTriggerHelper.unloadGenericSoundModel(soundModelId.getUuid());
                SoundTriggerService.this.mSoundModelStatTracker.onStop(soundModelId.getUuid());
            }
            SoundTriggerService.this.mDbHelper.deleteGenericSoundModel(soundModelId.getUuid());
        }

        public int loadGenericSoundModel(SoundTrigger.GenericSoundModel soundModel) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                return Integer.MIN_VALUE;
            }
            if (soundModel == null || soundModel.getUuid() == null) {
                Slog.e(SoundTriggerService.TAG, "Invalid sound model");
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("loadGenericSoundModel(): Invalid sound model"));
                return Integer.MIN_VALUE;
            }
            Slog.i(SoundTriggerService.TAG, "loadGenericSoundModel(): id = " + soundModel.getUuid());
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("loadGenericSoundModel(): id = " + soundModel.getUuid()));
            synchronized (SoundTriggerService.this.mLock) {
                SoundTrigger.SoundModel oldModel = (SoundTrigger.SoundModel) SoundTriggerService.this.mLoadedModels.get(soundModel.getUuid());
                if (oldModel != null && !oldModel.equals(soundModel)) {
                    SoundTriggerService.this.mSoundTriggerHelper.unloadGenericSoundModel(soundModel.getUuid());
                    synchronized (SoundTriggerService.this.mCallbacksLock) {
                        SoundTriggerService.this.mCallbacks.remove(soundModel.getUuid());
                    }
                }
                SoundTriggerService.this.mLoadedModels.put(soundModel.getUuid(), soundModel);
            }
            return 0;
        }

        public int loadKeyphraseSoundModel(SoundTrigger.KeyphraseSoundModel soundModel) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                return Integer.MIN_VALUE;
            }
            if (soundModel == null || soundModel.getUuid() == null) {
                Slog.e(SoundTriggerService.TAG, "Invalid sound model");
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("loadKeyphraseSoundModel(): Invalid sound model"));
                return Integer.MIN_VALUE;
            }
            if (soundModel.getKeyphrases() == null || soundModel.getKeyphrases().length != 1) {
                Slog.e(SoundTriggerService.TAG, "Only one keyphrase per model is currently supported.");
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("loadKeyphraseSoundModel(): Only one keyphrase per model is currently supported."));
                return Integer.MIN_VALUE;
            }
            Slog.i(SoundTriggerService.TAG, "loadKeyphraseSoundModel(): id = " + soundModel.getUuid());
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("loadKeyphraseSoundModel(): id = " + soundModel.getUuid()));
            synchronized (SoundTriggerService.this.mLock) {
                SoundTrigger.SoundModel oldModel = (SoundTrigger.SoundModel) SoundTriggerService.this.mLoadedModels.get(soundModel.getUuid());
                if (oldModel != null && !oldModel.equals(soundModel)) {
                    SoundTriggerService.this.mSoundTriggerHelper.unloadKeyphraseSoundModel(soundModel.getKeyphrases()[0].getId());
                    synchronized (SoundTriggerService.this.mCallbacksLock) {
                        SoundTriggerService.this.mCallbacks.remove(soundModel.getUuid());
                    }
                }
                SoundTriggerService.this.mLoadedModels.put(soundModel.getUuid(), soundModel);
            }
            return 0;
        }

        public int startRecognitionForService(ParcelUuid soundModelId, Bundle params, ComponentName detectionService, SoundTrigger.RecognitionConfig config) {
            IRecognitionStatusCallback existingCallback;
            Objects.requireNonNull(soundModelId);
            Objects.requireNonNull(detectionService);
            Objects.requireNonNull(config);
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            SoundTriggerService.this.enforceDetectionPermissions(detectionService);
            if (!SoundTriggerService.this.isInitialized()) {
                return Integer.MIN_VALUE;
            }
            Slog.i(SoundTriggerService.TAG, "startRecognition(): id = " + soundModelId);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("startRecognitionForService(): id = " + soundModelId));
            IRecognitionStatusCallback callback = SoundTriggerService.this.new RemoteSoundTriggerDetectionService(soundModelId.getUuid(), params, detectionService, Binder.getCallingUserHandle(), config);
            synchronized (SoundTriggerService.this.mLock) {
                SoundTrigger.GenericSoundModel genericSoundModel = (SoundTrigger.SoundModel) SoundTriggerService.this.mLoadedModels.get(soundModelId.getUuid());
                if (genericSoundModel != null) {
                    synchronized (SoundTriggerService.this.mCallbacksLock) {
                        existingCallback = (IRecognitionStatusCallback) SoundTriggerService.this.mCallbacks.get(soundModelId.getUuid());
                    }
                    if (existingCallback != null) {
                        Slog.e(SoundTriggerService.TAG, soundModelId + " is already running");
                        SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("startRecognitionForService():" + soundModelId + " is already running"));
                        return Integer.MIN_VALUE;
                    }
                    if (genericSoundModel.getType() == 1) {
                        int ret = SoundTriggerService.this.mSoundTriggerHelper.startGenericRecognition(genericSoundModel.getUuid(), genericSoundModel, callback, config);
                        if (ret == 0) {
                            synchronized (SoundTriggerService.this.mCallbacksLock) {
                                SoundTriggerService.this.mCallbacks.put(soundModelId.getUuid(), callback);
                            }
                            SoundTriggerService.this.mSoundModelStatTracker.onStart(soundModelId.getUuid());
                            return 0;
                        }
                        Slog.e(SoundTriggerService.TAG, "Failed to start model: " + ret);
                        SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("startRecognitionForService(): Failed to start model:"));
                        return ret;
                    }
                    Slog.e(SoundTriggerService.TAG, "Unknown model type");
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("startRecognitionForService(): Unknown model type"));
                    return Integer.MIN_VALUE;
                }
                Slog.e(SoundTriggerService.TAG, soundModelId + " is not loaded");
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("startRecognitionForService():" + soundModelId + " is not loaded"));
                return Integer.MIN_VALUE;
            }
        }

        public int stopRecognitionForService(ParcelUuid soundModelId) {
            IRecognitionStatusCallback callback;
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                return Integer.MIN_VALUE;
            }
            Slog.i(SoundTriggerService.TAG, "stopRecognition(): id = " + soundModelId);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("stopRecognitionForService(): id = " + soundModelId));
            synchronized (SoundTriggerService.this.mLock) {
                SoundTrigger.SoundModel soundModel = (SoundTrigger.SoundModel) SoundTriggerService.this.mLoadedModels.get(soundModelId.getUuid());
                if (soundModel != null) {
                    synchronized (SoundTriggerService.this.mCallbacksLock) {
                        callback = (IRecognitionStatusCallback) SoundTriggerService.this.mCallbacks.get(soundModelId.getUuid());
                    }
                    if (callback == null) {
                        Slog.e(SoundTriggerService.TAG, soundModelId + " is not running");
                        SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("stopRecognitionForService(): " + soundModelId + " is not running"));
                        return Integer.MIN_VALUE;
                    }
                    if (soundModel.getType() == 1) {
                        int ret = SoundTriggerService.this.mSoundTriggerHelper.stopGenericRecognition(soundModel.getUuid(), callback);
                        if (ret == 0) {
                            synchronized (SoundTriggerService.this.mCallbacksLock) {
                                SoundTriggerService.this.mCallbacks.remove(soundModelId.getUuid());
                            }
                            SoundTriggerService.this.mSoundModelStatTracker.onStop(soundModelId.getUuid());
                            return 0;
                        }
                        Slog.e(SoundTriggerService.TAG, "Failed to stop model: " + ret);
                        SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("stopRecognitionForService(): Failed to stop model: " + ret));
                        return ret;
                    }
                    Slog.e(SoundTriggerService.TAG, "Unknown model type");
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("stopRecognitionForService(): Unknown model type"));
                    return Integer.MIN_VALUE;
                }
                Slog.e(SoundTriggerService.TAG, soundModelId + " is not loaded");
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("stopRecognitionForService(): " + soundModelId + " is not loaded"));
                return Integer.MIN_VALUE;
            }
        }

        public int unloadSoundModel(ParcelUuid soundModelId) {
            int ret;
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                return Integer.MIN_VALUE;
            }
            Slog.i(SoundTriggerService.TAG, "unloadSoundModel(): id = " + soundModelId);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("unloadSoundModel(): id = " + soundModelId));
            synchronized (SoundTriggerService.this.mLock) {
                SoundTrigger.KeyphraseSoundModel keyphraseSoundModel = (SoundTrigger.SoundModel) SoundTriggerService.this.mLoadedModels.get(soundModelId.getUuid());
                if (keyphraseSoundModel == null) {
                    Slog.e(SoundTriggerService.TAG, soundModelId + " is not loaded");
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("unloadSoundModel(): " + soundModelId + " is not loaded"));
                    return Integer.MIN_VALUE;
                }
                int type = keyphraseSoundModel.getType();
                if (type == 0) {
                    ret = SoundTriggerService.this.mSoundTriggerHelper.unloadKeyphraseSoundModel(keyphraseSoundModel.getKeyphrases()[0].getId());
                } else if (type == 1) {
                    ret = SoundTriggerService.this.mSoundTriggerHelper.unloadGenericSoundModel(keyphraseSoundModel.getUuid());
                } else {
                    Slog.e(SoundTriggerService.TAG, "Unknown model type");
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("unloadSoundModel(): Unknown model type"));
                    return Integer.MIN_VALUE;
                }
                if (ret == 0) {
                    SoundTriggerService.this.mLoadedModels.remove(soundModelId.getUuid());
                    return 0;
                }
                Slog.e(SoundTriggerService.TAG, "Failed to unload model");
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("unloadSoundModel(): Failed to unload model"));
                return ret;
            }
        }

        public boolean isRecognitionActive(ParcelUuid parcelUuid) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                return false;
            }
            synchronized (SoundTriggerService.this.mCallbacksLock) {
                IRecognitionStatusCallback callback = (IRecognitionStatusCallback) SoundTriggerService.this.mCallbacks.get(parcelUuid.getUuid());
                if (callback == null) {
                    return false;
                }
                return SoundTriggerService.this.mSoundTriggerHelper.isRecognitionRequested(parcelUuid.getUuid());
            }
        }

        public int getModelState(ParcelUuid soundModelId) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            int ret = Integer.MIN_VALUE;
            if (!SoundTriggerService.this.isInitialized()) {
                return Integer.MIN_VALUE;
            }
            Slog.i(SoundTriggerService.TAG, "getModelState(): id = " + soundModelId);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("getModelState(): id = " + soundModelId));
            synchronized (SoundTriggerService.this.mLock) {
                SoundTrigger.SoundModel soundModel = (SoundTrigger.SoundModel) SoundTriggerService.this.mLoadedModels.get(soundModelId.getUuid());
                if (soundModel == null) {
                    Slog.e(SoundTriggerService.TAG, soundModelId + " is not loaded");
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("getModelState(): " + soundModelId + " is not loaded"));
                    return Integer.MIN_VALUE;
                }
                if (soundModel.getType() == 1) {
                    ret = SoundTriggerService.this.mSoundTriggerHelper.getGenericModelState(soundModel.getUuid());
                } else {
                    Slog.e(SoundTriggerService.TAG, "Unsupported model type, " + soundModel.getType());
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("getModelState(): Unsupported model type, " + soundModel.getType()));
                }
                return ret;
            }
        }

        public SoundTrigger.ModuleProperties getModuleProperties() {
            SoundTrigger.ModuleProperties properties;
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                return null;
            }
            Slog.i(SoundTriggerService.TAG, "getModuleProperties()");
            synchronized (SoundTriggerService.this.mLock) {
                properties = SoundTriggerService.this.mSoundTriggerHelper.getModuleProperties();
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("getModuleProperties(): " + properties));
            }
            return properties;
        }

        public int setParameter(ParcelUuid soundModelId, int modelParam, int value) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                return SoundTrigger.STATUS_NO_INIT;
            }
            Slog.d(SoundTriggerService.TAG, "setParameter(): id=" + soundModelId + ", param=" + modelParam + ", value=" + value);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("setParameter(): id=" + soundModelId + ", param=" + modelParam + ", value=" + value));
            synchronized (SoundTriggerService.this.mLock) {
                SoundTrigger.SoundModel soundModel = (SoundTrigger.SoundModel) SoundTriggerService.this.mLoadedModels.get(soundModelId.getUuid());
                if (soundModel == null) {
                    Slog.e(SoundTriggerService.TAG, soundModelId + " is not loaded. Loaded models: " + SoundTriggerService.this.mLoadedModels.toString());
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("setParameter(): " + soundModelId + " is not loaded"));
                    return SoundTrigger.STATUS_BAD_VALUE;
                }
                return SoundTriggerService.this.mSoundTriggerHelper.setParameter(soundModel.getUuid(), modelParam, value);
            }
        }

        public int getParameter(ParcelUuid soundModelId, int modelParam) throws UnsupportedOperationException, IllegalArgumentException {
            int parameter;
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                throw new UnsupportedOperationException("SoundTriggerHelper not initialized");
            }
            Slog.d(SoundTriggerService.TAG, "getParameter(): id=" + soundModelId + ", param=" + modelParam);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("getParameter(): id=" + soundModelId + ", param=" + modelParam));
            synchronized (SoundTriggerService.this.mLock) {
                SoundTrigger.SoundModel soundModel = (SoundTrigger.SoundModel) SoundTriggerService.this.mLoadedModels.get(soundModelId.getUuid());
                if (soundModel != null) {
                    parameter = SoundTriggerService.this.mSoundTriggerHelper.getParameter(soundModel.getUuid(), modelParam);
                } else {
                    Slog.e(SoundTriggerService.TAG, soundModelId + " is not loaded");
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("getParameter(): " + soundModelId + " is not loaded"));
                    throw new IllegalArgumentException("sound model is not loaded");
                }
            }
            return parameter;
        }

        public SoundTrigger.ModelParamRange queryParameter(ParcelUuid soundModelId, int modelParam) {
            SoundTriggerService.this.enforceCallingPermission("android.permission.MANAGE_SOUND_TRIGGER");
            if (!SoundTriggerService.this.isInitialized()) {
                return null;
            }
            Slog.d(SoundTriggerService.TAG, "queryParameter(): id=" + soundModelId + ", param=" + modelParam);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("queryParameter(): id=" + soundModelId + ", param=" + modelParam));
            synchronized (SoundTriggerService.this.mLock) {
                SoundTrigger.SoundModel soundModel = (SoundTrigger.SoundModel) SoundTriggerService.this.mLoadedModels.get(soundModelId.getUuid());
                if (soundModel != null) {
                    return SoundTriggerService.this.mSoundTriggerHelper.queryParameter(soundModel.getUuid(), modelParam);
                }
                Slog.e(SoundTriggerService.TAG, soundModelId + " is not loaded");
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("queryParameter(): " + soundModelId + " is not loaded"));
                return null;
            }
        }
    }

    private static class NumOps {
        private long mLastOpsHourSinceBoot;
        private final Object mLock;
        private int[] mNumOps;

        private NumOps() {
            this.mLock = new Object();
            this.mNumOps = new int[24];
        }

        void clearOldOps(long currentTime) {
            synchronized (this.mLock) {
                long numHoursSinceBoot = TimeUnit.HOURS.convert(currentTime, TimeUnit.NANOSECONDS);
                if (this.mLastOpsHourSinceBoot != 0) {
                    for (long hour = this.mLastOpsHourSinceBoot + 1; hour <= numHoursSinceBoot; hour++) {
                        this.mNumOps[(int) (hour % 24)] = 0;
                    }
                }
            }
        }

        void addOp(long currentTime) {
            synchronized (this.mLock) {
                long numHoursSinceBoot = TimeUnit.HOURS.convert(currentTime, TimeUnit.NANOSECONDS);
                int[] iArr = this.mNumOps;
                int i = (int) (numHoursSinceBoot % 24);
                iArr[i] = iArr[i] + 1;
                this.mLastOpsHourSinceBoot = numHoursSinceBoot;
            }
        }

        int getOpsAdded() {
            int totalOperationsInLastDay;
            synchronized (this.mLock) {
                totalOperationsInLastDay = 0;
                for (int i = 0; i < 24; i++) {
                    totalOperationsInLastDay += this.mNumOps[i];
                }
            }
            return totalOperationsInLastDay;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Operation {
        private final Runnable mDropOp;
        private final ExecuteOp mExecuteOp;
        private final Runnable mSetupOp;

        /* JADX INFO: Access modifiers changed from: private */
        interface ExecuteOp {
            void run(int i, ISoundTriggerDetectionService iSoundTriggerDetectionService) throws RemoteException;
        }

        private Operation(Runnable setupOp, ExecuteOp executeOp, Runnable cancelOp) {
            this.mSetupOp = setupOp;
            this.mExecuteOp = executeOp;
            this.mDropOp = cancelOp;
        }

        private void setup() {
            Runnable runnable = this.mSetupOp;
            if (runnable != null) {
                runnable.run();
            }
        }

        void run(int opId, ISoundTriggerDetectionService service) throws RemoteException {
            setup();
            this.mExecuteOp.run(opId, service);
        }

        void drop() {
            setup();
            Runnable runnable = this.mDropOp;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class RemoteSoundTriggerDetectionService extends IRecognitionStatusCallback.Stub implements ServiceConnection {
        private static final int MSG_STOP_ALL_PENDING_OPERATIONS = 1;
        private final ISoundTriggerDetectionServiceClient mClient;
        private boolean mDestroyOnceRunningOpsDone;
        private boolean mIsBound;
        private boolean mIsDestroyed;
        private final NumOps mNumOps;
        private int mNumTotalOpsPerformed;
        private final Bundle mParams;
        private final ParcelUuid mPuuid;
        private final SoundTrigger.RecognitionConfig mRecognitionConfig;
        private final PowerManager.WakeLock mRemoteServiceWakeLock;
        private ISoundTriggerDetectionService mService;
        private final ComponentName mServiceName;
        private final UserHandle mUser;
        private final Object mRemoteServiceLock = new Object();
        private final ArrayList<Operation> mPendingOps = new ArrayList<>();
        private final ArraySet<Integer> mRunningOpIds = new ArraySet<>();
        private final Handler mHandler = new Handler(Looper.getMainLooper());

        public RemoteSoundTriggerDetectionService(UUID modelUuid, Bundle params, ComponentName serviceName, UserHandle user, SoundTrigger.RecognitionConfig config) {
            this.mPuuid = new ParcelUuid(modelUuid);
            this.mParams = params;
            this.mServiceName = serviceName;
            this.mUser = user;
            this.mRecognitionConfig = config;
            PowerManager pm = (PowerManager) SoundTriggerService.this.mContext.getSystemService("power");
            this.mRemoteServiceWakeLock = pm.newWakeLock(1, "RemoteSoundTriggerDetectionService " + this.mServiceName.getPackageName() + ":" + this.mServiceName.getClassName());
            synchronized (SoundTriggerService.this.mLock) {
                NumOps numOps = (NumOps) SoundTriggerService.this.mNumOpsPerPackage.get(this.mServiceName.getPackageName());
                if (numOps == null) {
                    numOps = new NumOps();
                    SoundTriggerService.this.mNumOpsPerPackage.put(this.mServiceName.getPackageName(), numOps);
                }
                this.mNumOps = numOps;
            }
            this.mClient = new ISoundTriggerDetectionServiceClient.Stub() { // from class: com.android.server.soundtrigger.SoundTriggerService.RemoteSoundTriggerDetectionService.1
                public void onOpFinished(int opId) {
                    long token = Binder.clearCallingIdentity();
                    try {
                        synchronized (RemoteSoundTriggerDetectionService.this.mRemoteServiceLock) {
                            RemoteSoundTriggerDetectionService.this.mRunningOpIds.remove(Integer.valueOf(opId));
                            if (RemoteSoundTriggerDetectionService.this.mRunningOpIds.isEmpty() && RemoteSoundTriggerDetectionService.this.mPendingOps.isEmpty()) {
                                if (RemoteSoundTriggerDetectionService.this.mDestroyOnceRunningOpsDone) {
                                    RemoteSoundTriggerDetectionService.this.destroy();
                                } else {
                                    RemoteSoundTriggerDetectionService.this.disconnectLocked();
                                }
                            }
                        }
                        Binder.restoreCallingIdentity(token);
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(token);
                        throw th;
                    }
                }
            };
        }

        public boolean pingBinder() {
            return (this.mIsDestroyed || this.mDestroyOnceRunningOpsDone) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void disconnectLocked() {
            ISoundTriggerDetectionService iSoundTriggerDetectionService = this.mService;
            if (iSoundTriggerDetectionService != null) {
                try {
                    iSoundTriggerDetectionService.removeClient(this.mPuuid);
                } catch (Exception e) {
                    Slog.e(SoundTriggerService.TAG, this.mPuuid + ": Cannot remove client", e);
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": Cannot remove client"));
                }
                this.mService = null;
            }
            if (this.mIsBound) {
                SoundTriggerService.this.mContext.unbindService(this);
                this.mIsBound = false;
                synchronized (SoundTriggerService.this.mCallbacksLock) {
                    this.mRemoteServiceWakeLock.release();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void destroy() {
            Slog.v(SoundTriggerService.TAG, this.mPuuid + ": destroy");
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": destroy"));
            synchronized (this.mRemoteServiceLock) {
                disconnectLocked();
                this.mIsDestroyed = true;
            }
            if (!this.mDestroyOnceRunningOpsDone) {
                synchronized (SoundTriggerService.this.mCallbacksLock) {
                    SoundTriggerService.this.mCallbacks.remove(this.mPuuid.getUuid());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void stopAllPendingOperations() {
            synchronized (this.mRemoteServiceLock) {
                if (this.mIsDestroyed) {
                    return;
                }
                if (this.mService != null) {
                    int numOps = this.mRunningOpIds.size();
                    for (int i = 0; i < numOps; i++) {
                        try {
                            this.mService.onStopOperation(this.mPuuid, this.mRunningOpIds.valueAt(i).intValue());
                        } catch (Exception e) {
                            Slog.e(SoundTriggerService.TAG, this.mPuuid + ": Could not stop operation " + this.mRunningOpIds.valueAt(i), e);
                            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": Could not stop operation " + this.mRunningOpIds.valueAt(i)));
                        }
                    }
                    this.mRunningOpIds.clear();
                }
                disconnectLocked();
            }
        }

        private void bind() {
            long token = Binder.clearCallingIdentity();
            try {
                Intent i = new Intent();
                i.setComponent(this.mServiceName);
                ResolveInfo ri = SoundTriggerService.this.mContext.getPackageManager().resolveServiceAsUser(i, 268435588, this.mUser.getIdentifier());
                if (ri == null) {
                    Slog.w(SoundTriggerService.TAG, this.mPuuid + ": " + this.mServiceName + " not found");
                    SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": " + this.mServiceName + " not found"));
                    return;
                }
                if ("android.permission.BIND_SOUND_TRIGGER_DETECTION_SERVICE".equals(ri.serviceInfo.permission)) {
                    boolean zBindServiceAsUser = SoundTriggerService.this.mContext.bindServiceAsUser(i, this, 67112961, this.mUser);
                    this.mIsBound = zBindServiceAsUser;
                    if (zBindServiceAsUser) {
                        this.mRemoteServiceWakeLock.acquire();
                    } else {
                        Slog.w(SoundTriggerService.TAG, this.mPuuid + ": Could not bind to " + this.mServiceName);
                        SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": Could not bind to " + this.mServiceName));
                    }
                    return;
                }
                Slog.w(SoundTriggerService.TAG, this.mPuuid + ": " + this.mServiceName + " does not require android.permission.BIND_SOUND_TRIGGER_DETECTION_SERVICE");
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": " + this.mServiceName + " does not require android.permission.BIND_SOUND_TRIGGER_DETECTION_SERVICE"));
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x00a4, code lost:
        
            r6 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x00a5, code lost:
        
            android.util.Slog.e(com.android.server.soundtrigger.SoundTriggerService.TAG, r12.mPuuid + ": Could not run operation " + r5, r6);
            com.android.server.soundtrigger.SoundTriggerService.sEventLogger.log(new com.android.server.soundtrigger.SoundTriggerLogger.StringEvent(r12.mPuuid + ": Could not run operation " + r5));
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void runOrAddOperation(com.android.server.soundtrigger.SoundTriggerService.Operation r13) {
            /*
                Method dump skipped, instruction units count: 358
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.soundtrigger.SoundTriggerService.RemoteSoundTriggerDetectionService.runOrAddOperation(com.android.server.soundtrigger.SoundTriggerService$Operation):void");
        }

        public void onKeyphraseDetected(SoundTrigger.KeyphraseRecognitionEvent event) {
            Slog.w(SoundTriggerService.TAG, this.mPuuid + "->" + this.mServiceName + ": IGNORED onKeyphraseDetected(" + event + ")");
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + "->" + this.mServiceName + ": IGNORED onKeyphraseDetected(" + event + ")"));
        }

        private AudioRecord createAudioRecordForEvent(SoundTrigger.GenericRecognitionEvent event) throws UnsupportedOperationException, IllegalArgumentException {
            AudioAttributes.Builder attributesBuilder = new AudioAttributes.Builder();
            attributesBuilder.setInternalCapturePreset(1999);
            AudioAttributes attributes = attributesBuilder.build();
            AudioFormat originalFormat = event.getCaptureFormat();
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("createAudioRecordForEvent"));
            return new AudioRecord.Builder().setAudioAttributes(attributes).setAudioFormat(new AudioFormat.Builder().setChannelMask(originalFormat.getChannelMask()).setEncoding(originalFormat.getEncoding()).setSampleRate(originalFormat.getSampleRate()).build()).setSessionId(event.getCaptureSession()).build();
        }

        public void onGenericSoundTriggerDetected(final SoundTrigger.GenericRecognitionEvent event) {
            Slog.v(SoundTriggerService.TAG, this.mPuuid + ": Generic sound trigger event: " + event);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": Generic sound trigger event: " + event));
            runOrAddOperation(new Operation(new Runnable() { // from class: com.android.server.soundtrigger.-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$yqLMvkOmrO13yWrggtSaVrLgsWo
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onGenericSoundTriggerDetected$0$SoundTriggerService$RemoteSoundTriggerDetectionService();
                }
            }, new Operation.ExecuteOp() { // from class: com.android.server.soundtrigger.-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI
                @Override // com.android.server.soundtrigger.SoundTriggerService.Operation.ExecuteOp
                public final void run(int i, ISoundTriggerDetectionService iSoundTriggerDetectionService) throws RemoteException {
                    this.f$0.lambda$onGenericSoundTriggerDetected$1$SoundTriggerService$RemoteSoundTriggerDetectionService(event, i, iSoundTriggerDetectionService);
                }
            }, new Runnable() { // from class: com.android.server.soundtrigger.-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$pFqiq_C9KJsoa_HQOdj7lmMixsI
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onGenericSoundTriggerDetected$2$SoundTriggerService$RemoteSoundTriggerDetectionService(event);
                }
            }));
        }

        public /* synthetic */ void lambda$onGenericSoundTriggerDetected$0$SoundTriggerService$RemoteSoundTriggerDetectionService() {
            if (!this.mRecognitionConfig.allowMultipleTriggers) {
                synchronized (SoundTriggerService.this.mCallbacksLock) {
                    SoundTriggerService.this.mCallbacks.remove(this.mPuuid.getUuid());
                }
                this.mDestroyOnceRunningOpsDone = true;
            }
        }

        public /* synthetic */ void lambda$onGenericSoundTriggerDetected$1$SoundTriggerService$RemoteSoundTriggerDetectionService(SoundTrigger.GenericRecognitionEvent event, int opId, ISoundTriggerDetectionService service) throws RemoteException {
            service.onGenericRecognitionEvent(this.mPuuid, opId, event);
        }

        public /* synthetic */ void lambda$onGenericSoundTriggerDetected$2$SoundTriggerService$RemoteSoundTriggerDetectionService(SoundTrigger.GenericRecognitionEvent event) {
            if (event.isCaptureAvailable()) {
                try {
                    AudioRecord capturedData = createAudioRecordForEvent(event);
                    capturedData.startRecording();
                    capturedData.release();
                } catch (IllegalArgumentException | UnsupportedOperationException e) {
                    Slog.w(SoundTriggerService.TAG, this.mPuuid + ": createAudioRecordForEvent(" + event + "), failed to create AudioRecord");
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onError(final int i) {
            Slog.v(SoundTriggerService.TAG, this.mPuuid + ": onError: " + i);
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": onError: " + i));
            runOrAddOperation(new Operation(new Runnable() { // from class: com.android.server.soundtrigger.-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$t5mBYXswwLAAdm47WS10stLjYng
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onError$3$SoundTriggerService$RemoteSoundTriggerDetectionService();
                }
            }, new Operation.ExecuteOp() { // from class: com.android.server.soundtrigger.-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0
                @Override // com.android.server.soundtrigger.SoundTriggerService.Operation.ExecuteOp
                public final void run(int i2, ISoundTriggerDetectionService iSoundTriggerDetectionService) throws RemoteException {
                    this.f$0.lambda$onError$4$SoundTriggerService$RemoteSoundTriggerDetectionService(i, i2, iSoundTriggerDetectionService);
                }
            }, null));
        }

        public /* synthetic */ void lambda$onError$3$SoundTriggerService$RemoteSoundTriggerDetectionService() {
            synchronized (SoundTriggerService.this.mCallbacksLock) {
                SoundTriggerService.this.mCallbacks.remove(this.mPuuid.getUuid());
            }
            this.mDestroyOnceRunningOpsDone = true;
        }

        public /* synthetic */ void lambda$onError$4$SoundTriggerService$RemoteSoundTriggerDetectionService(int status, int opId, ISoundTriggerDetectionService service) throws RemoteException {
            service.onError(this.mPuuid, opId, status);
        }

        public void onRecognitionPaused() {
            Slog.i(SoundTriggerService.TAG, this.mPuuid + "->" + this.mServiceName + ": IGNORED onRecognitionPaused");
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + "->" + this.mServiceName + ": IGNORED onRecognitionPaused"));
        }

        public void onRecognitionResumed() {
            Slog.i(SoundTriggerService.TAG, this.mPuuid + "->" + this.mServiceName + ": IGNORED onRecognitionResumed");
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + "->" + this.mServiceName + ": IGNORED onRecognitionResumed"));
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            Slog.v(SoundTriggerService.TAG, this.mPuuid + ": onServiceConnected(" + service + ")");
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": onServiceConnected(" + service + ")"));
            synchronized (this.mRemoteServiceLock) {
                ISoundTriggerDetectionService iSoundTriggerDetectionServiceAsInterface = ISoundTriggerDetectionService.Stub.asInterface(service);
                this.mService = iSoundTriggerDetectionServiceAsInterface;
                try {
                    iSoundTriggerDetectionServiceAsInterface.setClient(this.mPuuid, this.mParams, this.mClient);
                    while (!this.mPendingOps.isEmpty()) {
                        runOrAddOperation(this.mPendingOps.remove(0));
                    }
                } catch (Exception e) {
                    Slog.e(SoundTriggerService.TAG, this.mPuuid + ": Could not init " + this.mServiceName, e);
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            Slog.v(SoundTriggerService.TAG, this.mPuuid + ": onServiceDisconnected");
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": onServiceDisconnected"));
            synchronized (this.mRemoteServiceLock) {
                this.mService = null;
            }
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName name) {
            Slog.v(SoundTriggerService.TAG, this.mPuuid + ": onBindingDied");
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(this.mPuuid + ": onBindingDied"));
            synchronized (this.mRemoteServiceLock) {
                destroy();
            }
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName name) {
            Slog.w(SoundTriggerService.TAG, name + " for model " + this.mPuuid + " returned a null binding");
            SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent(name + " for model " + this.mPuuid + " returned a null binding"));
            synchronized (this.mRemoteServiceLock) {
                disconnectLocked();
            }
        }
    }

    public final class LocalSoundTriggerService extends SoundTriggerInternal {
        private final Context mContext;
        private SoundTriggerHelper mSoundTriggerHelper;

        LocalSoundTriggerService(Context context) {
            this.mContext = context;
        }

        synchronized void setSoundTriggerHelper(SoundTriggerHelper helper) {
            this.mSoundTriggerHelper = helper;
        }

        @Override // com.android.server.soundtrigger.SoundTriggerInternal
        public int startRecognition(int keyphraseId, SoundTrigger.KeyphraseSoundModel soundModel, IRecognitionStatusCallback listener, SoundTrigger.RecognitionConfig recognitionConfig) {
            if (!isInitialized()) {
                throw new UnsupportedOperationException();
            }
            return this.mSoundTriggerHelper.startKeyphraseRecognition(keyphraseId, soundModel, listener, recognitionConfig);
        }

        @Override // com.android.server.soundtrigger.SoundTriggerInternal
        public synchronized int stopRecognition(int keyphraseId, IRecognitionStatusCallback listener) {
            if (!isInitialized()) {
                throw new UnsupportedOperationException();
            }
            return this.mSoundTriggerHelper.stopKeyphraseRecognition(keyphraseId, listener);
        }

        @Override // com.android.server.soundtrigger.SoundTriggerInternal
        public SoundTrigger.ModuleProperties getModuleProperties() {
            if (!isInitialized()) {
                throw new UnsupportedOperationException();
            }
            return this.mSoundTriggerHelper.getModuleProperties();
        }

        @Override // com.android.server.soundtrigger.SoundTriggerInternal
        public int setParameter(int keyphraseId, int modelParam, int value) {
            if (!isInitialized()) {
                throw new UnsupportedOperationException();
            }
            return this.mSoundTriggerHelper.setKeyphraseParameter(keyphraseId, modelParam, value);
        }

        @Override // com.android.server.soundtrigger.SoundTriggerInternal
        public int getParameter(int keyphraseId, int modelParam) {
            if (!isInitialized()) {
                throw new UnsupportedOperationException();
            }
            return this.mSoundTriggerHelper.getKeyphraseParameter(keyphraseId, modelParam);
        }

        @Override // com.android.server.soundtrigger.SoundTriggerInternal
        public SoundTrigger.ModelParamRange queryParameter(int keyphraseId, int modelParam) {
            if (!isInitialized()) {
                throw new UnsupportedOperationException();
            }
            return this.mSoundTriggerHelper.queryKeyphraseParameter(keyphraseId, modelParam);
        }

        @Override // com.android.server.soundtrigger.SoundTriggerInternal
        public int unloadKeyphraseModel(int keyphraseId) {
            if (!isInitialized()) {
                throw new UnsupportedOperationException();
            }
            return this.mSoundTriggerHelper.unloadKeyphraseSoundModel(keyphraseId);
        }

        @Override // com.android.server.soundtrigger.SoundTriggerInternal
        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (isInitialized()) {
                this.mSoundTriggerHelper.dump(fd, pw, args);
                SoundTriggerService.sEventLogger.dump(pw);
                SoundTriggerService.this.mDbHelper.dump(pw);
                SoundTriggerService.this.mSoundModelStatTracker.dump(pw);
            }
        }

        private synchronized boolean isInitialized() {
            if (this.mSoundTriggerHelper == null) {
                Slog.e(SoundTriggerService.TAG, "SoundTriggerHelper not initialized.");
                SoundTriggerService.sEventLogger.log(new SoundTriggerLogger.StringEvent("SoundTriggerHelper not initialized."));
                return false;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceCallingPermission(String permission) {
        if (this.mContext.checkCallingOrSelfPermission(permission) != 0) {
            throw new SecurityException("Caller does not hold the permission " + permission);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceDetectionPermissions(ComponentName detectionService) {
        PackageManager packageManager = this.mContext.getPackageManager();
        String packageName = detectionService.getPackageName();
        if (packageManager.checkPermission("android.permission.CAPTURE_AUDIO_HOTWORD", packageName) != 0) {
            throw new SecurityException(detectionService.getPackageName() + " does not have permission android.permission.CAPTURE_AUDIO_HOTWORD");
        }
    }
}
