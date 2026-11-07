package com.android.server.soundtrigger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.soundtrigger.IRecognitionStatusCallback;
import android.hardware.soundtrigger.SoundTrigger;
import android.hardware.soundtrigger.SoundTriggerModule;
import android.os.Binder;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Slog;
import com.android.internal.logging.MetricsLogger;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class SoundTriggerHelper implements SoundTrigger.StatusListener {
    private static final int CALL_INACTIVE_MSG_DELAY_MS = 1000;
    static final boolean DBG = false;
    private static final int INVALID_VALUE = Integer.MIN_VALUE;
    private static final int MSG_CALL_STATE_CHANGED = 0;
    public static final int STATUS_ERROR = Integer.MIN_VALUE;
    public static final int STATUS_OK = 0;
    static final String TAG = "SoundTriggerHelper";
    private final Context mContext;
    private final Handler mHandler;
    private HashMap<Integer, UUID> mKeyphraseUuidMap;
    private final HashMap<UUID, ModelData> mModelDataMap;
    private SoundTriggerModule mModule;
    final SoundTrigger.ModuleProperties mModuleProperties;
    private final PhoneStateListener mPhoneStateListener;
    private final PowerManager mPowerManager;
    private PowerSaveModeListener mPowerSaveModeListener;
    private final TelephonyManager mTelephonyManager;
    private final Object mLock = new Object();
    private boolean mCallActive = false;
    private boolean mIsPowerSaveMode = false;
    private boolean mServiceDisabled = false;
    private boolean mRecognitionRequested = false;

    SoundTriggerHelper(Context context) {
        ArrayList<SoundTrigger.ModuleProperties> modules = new ArrayList<>();
        int status = SoundTrigger.listModules(modules);
        this.mContext = context;
        this.mTelephonyManager = (TelephonyManager) context.getSystemService("phone");
        this.mPowerManager = (PowerManager) context.getSystemService("power");
        this.mModelDataMap = new HashMap<>();
        this.mKeyphraseUuidMap = new HashMap<>();
        this.mPhoneStateListener = new MyCallStateListener();
        if (status != 0 || modules.size() == 0) {
            Slog.w(TAG, "listModules status=" + status + ", # of modules=" + modules.size());
            this.mModuleProperties = null;
            this.mModule = null;
        } else {
            this.mModuleProperties = modules.get(0);
        }
        Looper looper = Looper.myLooper();
        looper = looper == null ? Looper.getMainLooper() : looper;
        if (looper != null) {
            this.mHandler = new Handler(looper) { // from class: com.android.server.soundtrigger.SoundTriggerHelper.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    if (msg.what == 0) {
                        synchronized (SoundTriggerHelper.this.mLock) {
                            SoundTriggerHelper.this.onCallStateChangedLocked(2 == msg.arg1);
                        }
                    } else {
                        Slog.e(SoundTriggerHelper.TAG, "unknown message in handler:" + msg.what);
                    }
                }
            };
        } else {
            this.mHandler = null;
        }
    }

    int startGenericRecognition(UUID modelId, SoundTrigger.GenericSoundModel soundModel, IRecognitionStatusCallback callback, SoundTrigger.RecognitionConfig recognitionConfig) {
        MetricsLogger.count(this.mContext, "sth_start_recognition", 1);
        if (modelId == null || soundModel == null || callback == null || recognitionConfig == null) {
            Slog.w(TAG, "Passed in bad data to startGenericRecognition().");
            return Integer.MIN_VALUE;
        }
        synchronized (this.mLock) {
            ModelData modelData = getOrCreateGenericModelDataLocked(modelId);
            if (modelData == null) {
                Slog.w(TAG, "Irrecoverable error occurred, check UUID / sound model data.");
                return Integer.MIN_VALUE;
            }
            return startRecognition(soundModel, modelData, callback, recognitionConfig, Integer.MIN_VALUE);
        }
    }

    int startKeyphraseRecognition(int keyphraseId, SoundTrigger.KeyphraseSoundModel soundModel, IRecognitionStatusCallback callback, SoundTrigger.RecognitionConfig recognitionConfig) {
        ModelData model;
        synchronized (this.mLock) {
            MetricsLogger.count(this.mContext, "sth_start_recognition", 1);
            if (soundModel != null && callback != null && recognitionConfig != null) {
                ModelData model2 = getKeyphraseModelDataLocked(keyphraseId);
                if (model2 != null && !model2.isKeyphraseModel()) {
                    Slog.e(TAG, "Generic model with same UUID exists.");
                    return Integer.MIN_VALUE;
                }
                if (model2 != null && !model2.getModelId().equals(soundModel.getUuid())) {
                    int status = cleanUpExistingKeyphraseModelLocked(model2);
                    if (status != 0) {
                        return status;
                    }
                    removeKeyphraseModelLocked(keyphraseId);
                    model2 = null;
                }
                if (model2 != null) {
                    model = model2;
                } else {
                    model = createKeyphraseModelDataLocked(soundModel.getUuid(), keyphraseId);
                }
                return startRecognition(soundModel, model, callback, recognitionConfig, keyphraseId);
            }
            return Integer.MIN_VALUE;
        }
    }

    private int cleanUpExistingKeyphraseModelLocked(ModelData modelData) {
        int status = tryStopAndUnloadLocked(modelData, true, true);
        if (status != 0) {
            Slog.w(TAG, "Unable to stop or unload previous model: " + modelData.toString());
        }
        return status;
    }

    private int prepareForRecognition(ModelData modelData) {
        if (this.mModule == null) {
            SoundTriggerModule soundTriggerModuleAttachModule = SoundTrigger.attachModule(this.mModuleProperties.getId(), this, (Handler) null);
            this.mModule = soundTriggerModuleAttachModule;
            if (soundTriggerModuleAttachModule == null) {
                Slog.w(TAG, "prepareForRecognition: cannot attach to sound trigger module");
                return Integer.MIN_VALUE;
            }
        }
        if (!modelData.isModelLoaded()) {
            stopAndUnloadDeadModelsLocked();
            int[] handle = {0};
            int status = this.mModule.loadSoundModel(modelData.getSoundModel(), handle);
            if (status != 0) {
                Slog.w(TAG, "prepareForRecognition: loadSoundModel failed with status: " + status);
                return status;
            }
            modelData.setHandle(handle[0]);
            modelData.setLoaded();
        }
        return 0;
    }

    int startRecognition(SoundTrigger.SoundModel soundModel, ModelData modelData, IRecognitionStatusCallback callback, SoundTrigger.RecognitionConfig recognitionConfig, int keyphraseId) {
        int status;
        synchronized (this.mLock) {
            if (this.mModuleProperties == null) {
                Slog.w(TAG, "Attempting startRecognition without the capability");
                return Integer.MIN_VALUE;
            }
            IRecognitionStatusCallback oldCallback = modelData.getCallback();
            if (oldCallback != null && oldCallback.asBinder() != callback.asBinder()) {
                Slog.w(TAG, "Canceling previous recognition for model id: " + modelData.getModelId());
                try {
                    oldCallback.onError(Integer.MIN_VALUE);
                } catch (RemoteException e) {
                    Slog.w(TAG, "RemoteException in onDetectionStopped", e);
                }
                modelData.clearCallback();
            }
            if (modelData.getSoundModel() != null) {
                boolean stopModel = false;
                boolean unloadModel = false;
                if (modelData.getSoundModel().equals(soundModel) && modelData.isModelStarted()) {
                    stopModel = true;
                    unloadModel = false;
                } else if (!modelData.getSoundModel().equals(soundModel)) {
                    stopModel = modelData.isModelStarted();
                    unloadModel = modelData.isModelLoaded();
                }
                if ((stopModel || unloadModel) && (status = tryStopAndUnloadLocked(modelData, stopModel, unloadModel)) != 0) {
                    Slog.w(TAG, "Unable to stop or unload previous model: " + modelData.toString());
                    return status;
                }
            }
            modelData.setCallback(callback);
            modelData.setRequested(true);
            modelData.setRecognitionConfig(recognitionConfig);
            modelData.setSoundModel(soundModel);
            if (!isRecognitionAllowed()) {
                initializeTelephonyAndPowerStateListeners();
                return 0;
            }
            int status2 = prepareForRecognition(modelData);
            if (status2 != 0) {
                Slog.w(TAG, "startRecognition failed to prepare model for recognition");
                return status2;
            }
            int status3 = startRecognitionLocked(modelData, false);
            if (status3 == 0) {
                initializeTelephonyAndPowerStateListeners();
            }
            return status3;
        }
    }

    int stopGenericRecognition(UUID modelId, IRecognitionStatusCallback callback) {
        synchronized (this.mLock) {
            MetricsLogger.count(this.mContext, "sth_stop_recognition", 1);
            if (callback != null && modelId != null) {
                ModelData modelData = this.mModelDataMap.get(modelId);
                if (modelData != null && modelData.isGenericModel()) {
                    int status = stopRecognition(modelData, callback);
                    if (status != 0) {
                        Slog.w(TAG, "stopGenericRecognition failed: " + status);
                    }
                    return status;
                }
                Slog.w(TAG, "Attempting stopRecognition on invalid model with id:" + modelId);
                return Integer.MIN_VALUE;
            }
            Slog.e(TAG, "Null callbackreceived for stopGenericRecognition() for modelid:" + modelId);
            return Integer.MIN_VALUE;
        }
    }

    int stopKeyphraseRecognition(int keyphraseId, IRecognitionStatusCallback callback) {
        synchronized (this.mLock) {
            MetricsLogger.count(this.mContext, "sth_stop_recognition", 1);
            if (callback == null) {
                Slog.e(TAG, "Null callback received for stopKeyphraseRecognition() for keyphraseId:" + keyphraseId);
                return Integer.MIN_VALUE;
            }
            ModelData modelData = getKeyphraseModelDataLocked(keyphraseId);
            if (modelData != null && modelData.isKeyphraseModel()) {
                int status = stopRecognition(modelData, callback);
                return status != 0 ? status : status;
            }
            Slog.e(TAG, "No model exists for given keyphrase Id " + keyphraseId);
            return Integer.MIN_VALUE;
        }
    }

    private int stopRecognition(ModelData modelData, IRecognitionStatusCallback callback) {
        synchronized (this.mLock) {
            try {
                if (callback == null) {
                    return Integer.MIN_VALUE;
                }
                if (this.mModuleProperties != null && this.mModule != null) {
                    IRecognitionStatusCallback currentCallback = modelData.getCallback();
                    if (modelData != null && currentCallback != null && (modelData.isRequested() || modelData.isModelStarted())) {
                        if (currentCallback.asBinder() != callback.asBinder()) {
                            Slog.w(TAG, "Attempting stopRecognition for another recognition");
                            return Integer.MIN_VALUE;
                        }
                        modelData.setRequested(false);
                        int status = updateRecognitionLocked(modelData, isRecognitionAllowed(), false);
                        if (status != 0) {
                            return status;
                        }
                        modelData.setLoaded();
                        modelData.clearCallback();
                        modelData.setRecognitionConfig(null);
                        if (!computeRecognitionRequestedLocked()) {
                            internalClearGlobalStateLocked();
                        }
                        return status;
                    }
                    Slog.w(TAG, "Attempting stopRecognition without a successful startRecognition");
                    return Integer.MIN_VALUE;
                }
                Slog.w(TAG, "Attempting stopRecognition without the capability");
                return Integer.MIN_VALUE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int tryStopAndUnloadLocked(ModelData modelData, boolean stopModel, boolean unloadModel) {
        int status = 0;
        if (modelData.isModelNotLoaded()) {
            return 0;
        }
        if (stopModel && modelData.isModelStarted() && (status = stopRecognitionLocked(modelData, false)) != 0) {
            Slog.w(TAG, "stopRecognition failed: " + status);
            return status;
        }
        if (unloadModel && modelData.isModelLoaded()) {
            Slog.d(TAG, "Unloading previously loaded stale model.");
            SoundTriggerModule soundTriggerModule = this.mModule;
            if (soundTriggerModule == null) {
                return Integer.MIN_VALUE;
            }
            status = soundTriggerModule.unloadSoundModel(modelData.getHandle());
            MetricsLogger.count(this.mContext, "sth_unloading_stale_model", 1);
            if (status != 0) {
                Slog.w(TAG, "unloadSoundModel call failed with " + status);
            } else {
                modelData.clearState();
            }
        }
        return status;
    }

    public SoundTrigger.ModuleProperties getModuleProperties() {
        return this.mModuleProperties;
    }

    int unloadKeyphraseSoundModel(int keyphraseId) {
        synchronized (this.mLock) {
            MetricsLogger.count(this.mContext, "sth_unload_keyphrase_sound_model", 1);
            ModelData modelData = getKeyphraseModelDataLocked(keyphraseId);
            if (this.mModule != null && modelData != null && modelData.isModelLoaded() && modelData.isKeyphraseModel()) {
                modelData.setRequested(false);
                int status = updateRecognitionLocked(modelData, isRecognitionAllowed(), false);
                if (status != 0) {
                    Slog.w(TAG, "Stop recognition failed for keyphrase ID:" + status);
                }
                int status2 = this.mModule.unloadSoundModel(modelData.getHandle());
                if (status2 != 0) {
                    Slog.w(TAG, "unloadKeyphraseSoundModel call failed with " + status2);
                }
                removeKeyphraseModelLocked(keyphraseId);
                return status2;
            }
            return Integer.MIN_VALUE;
        }
    }

    int unloadGenericSoundModel(UUID modelId) {
        int status;
        synchronized (this.mLock) {
            MetricsLogger.count(this.mContext, "sth_unload_generic_sound_model", 1);
            if (modelId != null && this.mModule != null) {
                ModelData modelData = this.mModelDataMap.get(modelId);
                if (modelData != null && modelData.isGenericModel()) {
                    if (!modelData.isModelLoaded()) {
                        Slog.i(TAG, "Unload: Given generic model is not loaded:" + modelId);
                        return 0;
                    }
                    if (modelData.isModelStarted() && (status = stopRecognitionLocked(modelData, false)) != 0) {
                        Slog.w(TAG, "stopGenericRecognition failed: " + status);
                    }
                    if (this.mModule == null) {
                        return Integer.MIN_VALUE;
                    }
                    int status2 = this.mModule.unloadSoundModel(modelData.getHandle());
                    if (status2 != 0) {
                        Slog.w(TAG, "unloadGenericSoundModel() call failed with " + status2);
                        Slog.w(TAG, "unloadGenericSoundModel() force-marking model as unloaded.");
                    }
                    this.mModelDataMap.remove(modelId);
                    return status2;
                }
                Slog.w(TAG, "Unload error: Attempting unload invalid generic model with id:" + modelId);
                return Integer.MIN_VALUE;
            }
            return Integer.MIN_VALUE;
        }
    }

    boolean isRecognitionRequested(UUID modelId) {
        boolean z;
        synchronized (this.mLock) {
            ModelData modelData = this.mModelDataMap.get(modelId);
            z = modelData != null && modelData.isRequested();
        }
        return z;
    }

    int getGenericModelState(UUID modelId) {
        synchronized (this.mLock) {
            MetricsLogger.count(this.mContext, "sth_get_generic_model_state", 1);
            if (modelId != null && this.mModule != null) {
                ModelData modelData = this.mModelDataMap.get(modelId);
                if (modelData != null && modelData.isGenericModel()) {
                    if (!modelData.isModelLoaded()) {
                        Slog.i(TAG, "GetGenericModelState: Given generic model is not loaded:" + modelId);
                        return Integer.MIN_VALUE;
                    }
                    if (!modelData.isModelStarted()) {
                        Slog.i(TAG, "GetGenericModelState: Given generic model is not started:" + modelId);
                        return Integer.MIN_VALUE;
                    }
                    return this.mModule.getModelState(modelData.getHandle());
                }
                Slog.w(TAG, "GetGenericModelState error: Invalid generic model id:" + modelId);
                return Integer.MIN_VALUE;
            }
            return Integer.MIN_VALUE;
        }
    }

    int getKeyphraseModelState(UUID modelId) {
        Slog.w(TAG, "GetKeyphraseModelState error: Not implemented");
        return Integer.MIN_VALUE;
    }

    int setParameter(UUID modelId, int modelParam, int value) {
        int parameterLocked;
        synchronized (this.mLock) {
            parameterLocked = setParameterLocked(this.mModelDataMap.get(modelId), modelParam, value);
        }
        return parameterLocked;
    }

    int setKeyphraseParameter(int keyphraseId, int modelParam, int value) {
        int parameterLocked;
        synchronized (this.mLock) {
            parameterLocked = setParameterLocked(getKeyphraseModelDataLocked(keyphraseId), modelParam, value);
        }
        return parameterLocked;
    }

    private int setParameterLocked(ModelData modelData, int modelParam, int value) {
        MetricsLogger.count(this.mContext, "sth_set_parameter", 1);
        if (this.mModule == null) {
            return SoundTrigger.STATUS_NO_INIT;
        }
        if (modelData == null || !modelData.isModelLoaded()) {
            Slog.i(TAG, "SetParameter: Given model is not loaded:" + modelData);
            return SoundTrigger.STATUS_BAD_VALUE;
        }
        return this.mModule.setParameter(modelData.getHandle(), modelParam, value);
    }

    int getParameter(UUID modelId, int modelParam) {
        int parameterLocked;
        synchronized (this.mLock) {
            parameterLocked = getParameterLocked(this.mModelDataMap.get(modelId), modelParam);
        }
        return parameterLocked;
    }

    int getKeyphraseParameter(int keyphraseId, int modelParam) {
        int parameterLocked;
        synchronized (this.mLock) {
            parameterLocked = getParameterLocked(getKeyphraseModelDataLocked(keyphraseId), modelParam);
        }
        return parameterLocked;
    }

    private int getParameterLocked(ModelData modelData, int modelParam) {
        MetricsLogger.count(this.mContext, "sth_get_parameter", 1);
        if (this.mModule == null) {
            throw new UnsupportedOperationException("SoundTriggerModule not initialized");
        }
        if (modelData == null) {
            throw new IllegalArgumentException("Invalid model id");
        }
        if (!modelData.isModelLoaded()) {
            throw new UnsupportedOperationException("Given model is not loaded:" + modelData);
        }
        return this.mModule.getParameter(modelData.getHandle(), modelParam);
    }

    SoundTrigger.ModelParamRange queryParameter(UUID modelId, int modelParam) {
        SoundTrigger.ModelParamRange modelParamRangeQueryParameterLocked;
        synchronized (this.mLock) {
            modelParamRangeQueryParameterLocked = queryParameterLocked(this.mModelDataMap.get(modelId), modelParam);
        }
        return modelParamRangeQueryParameterLocked;
    }

    SoundTrigger.ModelParamRange queryKeyphraseParameter(int keyphraseId, int modelParam) {
        SoundTrigger.ModelParamRange modelParamRangeQueryParameterLocked;
        synchronized (this.mLock) {
            modelParamRangeQueryParameterLocked = queryParameterLocked(getKeyphraseModelDataLocked(keyphraseId), modelParam);
        }
        return modelParamRangeQueryParameterLocked;
    }

    private SoundTrigger.ModelParamRange queryParameterLocked(ModelData modelData, int modelParam) {
        MetricsLogger.count(this.mContext, "sth_query_parameter", 1);
        if (this.mModule == null) {
            return null;
        }
        if (modelData == null) {
            Slog.w(TAG, "queryParameter: Invalid model id");
            return null;
        }
        if (!modelData.isModelLoaded()) {
            Slog.i(TAG, "queryParameter: Given model is not loaded:" + modelData);
            return null;
        }
        return this.mModule.queryParameter(modelData.getHandle(), modelParam);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0033 A[Catch: all -> 0x0048, TryCatch #0 {, blocks: (B:13:0x001d, B:28:0x0046, B:22:0x002b, B:23:0x002f, B:24:0x0033, B:26:0x0039, B:27:0x0040), top: B:33:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0039 A[Catch: all -> 0x0048, TryCatch #0 {, blocks: (B:13:0x001d, B:28:0x0046, B:22:0x002b, B:23:0x002f, B:24:0x0033, B:26:0x0039, B:27:0x0040), top: B:33:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0040 A[Catch: all -> 0x0048, TryCatch #0 {, blocks: (B:13:0x001d, B:28:0x0046, B:22:0x002b, B:23:0x002f, B:24:0x0033, B:26:0x0039, B:27:0x0040), top: B:33:0x001d }] */
    public void onRecognition(SoundTrigger.RecognitionEvent event) {
        if (event == null) {
            Slog.w(TAG, "Null recognition event!");
            return;
        }
        if (!(event instanceof SoundTrigger.KeyphraseRecognitionEvent) && !(event instanceof SoundTrigger.GenericRecognitionEvent)) {
            Slog.w(TAG, "Invalid recognition event type (not one of generic or keyphrase)!");
            return;
        }
        synchronized (this.mLock) {
            int i = event.status;
            if (i == 0) {
                if (isKeyphraseRecognitionEvent(event)) {
                    onKeyphraseRecognitionSuccessLocked((SoundTrigger.KeyphraseRecognitionEvent) event);
                } else {
                    onGenericRecognitionSuccessLocked((SoundTrigger.GenericRecognitionEvent) event);
                }
            } else if (i == 1) {
                onRecognitionAbortLocked(event);
            } else if (i == 2) {
                onRecognitionFailureLocked();
            } else if (i == 3) {
                if (isKeyphraseRecognitionEvent(event)) {
                    onKeyphraseRecognitionSuccessLocked((SoundTrigger.KeyphraseRecognitionEvent) event);
                } else {
                    onGenericRecognitionSuccessLocked((SoundTrigger.GenericRecognitionEvent) event);
                }
            }
        }
    }

    private boolean isKeyphraseRecognitionEvent(SoundTrigger.RecognitionEvent event) {
        return event instanceof SoundTrigger.KeyphraseRecognitionEvent;
    }

    private void onGenericRecognitionSuccessLocked(SoundTrigger.GenericRecognitionEvent event) {
        MetricsLogger.count(this.mContext, "sth_generic_recognition_event", 1);
        if (event.status != 0 && event.status != 3) {
            return;
        }
        ModelData model = getModelDataForLocked(event.soundModelHandle);
        if (model == null || !model.isGenericModel()) {
            Slog.w(TAG, "Generic recognition event: Model does not exist for handle: " + event.soundModelHandle);
            return;
        }
        IRecognitionStatusCallback callback = model.getCallback();
        if (callback == null) {
            Slog.w(TAG, "Generic recognition event: Null callback for model handle: " + event.soundModelHandle);
            return;
        }
        if (event.status != 3) {
            model.setStopped();
        }
        try {
            callback.onGenericSoundTriggerDetected(event);
        } catch (DeadObjectException e) {
            forceStopAndUnloadModelLocked(model, e);
            return;
        } catch (RemoteException e2) {
            Slog.w(TAG, "RemoteException in onGenericSoundTriggerDetected", e2);
        }
        SoundTrigger.RecognitionConfig config = model.getRecognitionConfig();
        if (config == null) {
            Slog.w(TAG, "Generic recognition event: Null RecognitionConfig for model handle: " + event.soundModelHandle);
            return;
        }
        model.setRequested(config.allowMultipleTriggers);
        if (model.isRequested()) {
            updateRecognitionLocked(model, isRecognitionAllowed(), true);
        }
    }

    public void onSoundModelUpdate(SoundTrigger.SoundModelEvent event) {
        if (event == null) {
            Slog.w(TAG, "Invalid sound model event!");
            return;
        }
        synchronized (this.mLock) {
            MetricsLogger.count(this.mContext, "sth_sound_model_updated", 1);
            onSoundModelUpdatedLocked(event);
        }
    }

    public void onServiceStateChange(int state) {
        synchronized (this.mLock) {
            onServiceStateChangedLocked(1 == state);
        }
    }

    public void onServiceDied() {
        Slog.e(TAG, "onServiceDied!!");
        MetricsLogger.count(this.mContext, "sth_service_died", 1);
        synchronized (this.mLock) {
            onServiceDiedLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCallStateChangedLocked(boolean callActive) {
        if (this.mCallActive == callActive) {
            return;
        }
        this.mCallActive = callActive;
        updateAllRecognitionsLocked(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPowerSaveModeChangedLocked(boolean isPowerSaveMode) {
        if (this.mIsPowerSaveMode == isPowerSaveMode) {
            return;
        }
        this.mIsPowerSaveMode = isPowerSaveMode;
        updateAllRecognitionsLocked(true);
    }

    private void onSoundModelUpdatedLocked(SoundTrigger.SoundModelEvent event) {
    }

    private void onServiceStateChangedLocked(boolean disabled) {
        if (disabled == this.mServiceDisabled) {
            return;
        }
        this.mServiceDisabled = disabled;
        updateAllRecognitionsLocked(true);
    }

    private void onRecognitionAbortLocked(SoundTrigger.RecognitionEvent event) {
        Slog.w(TAG, "Recognition aborted");
        MetricsLogger.count(this.mContext, "sth_recognition_aborted", 1);
        ModelData modelData = getModelDataForLocked(event.soundModelHandle);
        if (modelData != null && modelData.isModelStarted()) {
            modelData.setStopped();
            try {
                modelData.getCallback().onRecognitionPaused();
            } catch (DeadObjectException e) {
                forceStopAndUnloadModelLocked(modelData, e);
            } catch (RemoteException e2) {
                Slog.w(TAG, "RemoteException in onRecognitionPaused", e2);
            }
        }
    }

    private void onRecognitionFailureLocked() {
        Slog.w(TAG, "Recognition failure");
        MetricsLogger.count(this.mContext, "sth_recognition_failure_event", 1);
        try {
            sendErrorCallbacksToAllLocked(Integer.MIN_VALUE);
        } finally {
            internalClearModelStateLocked();
            internalClearGlobalStateLocked();
        }
    }

    private int getKeyphraseIdFromEvent(SoundTrigger.KeyphraseRecognitionEvent event) {
        if (event == null) {
            Slog.w(TAG, "Null RecognitionEvent received.");
            return Integer.MIN_VALUE;
        }
        SoundTrigger.KeyphraseRecognitionExtra[] keyphraseExtras = event.keyphraseExtras;
        if (keyphraseExtras == null || keyphraseExtras.length == 0) {
            Slog.w(TAG, "Invalid keyphrase recognition event!");
            return Integer.MIN_VALUE;
        }
        return keyphraseExtras[0].id;
    }

    private void onKeyphraseRecognitionSuccessLocked(SoundTrigger.KeyphraseRecognitionEvent event) {
        Slog.i(TAG, "Recognition success");
        MetricsLogger.count(this.mContext, "sth_keyphrase_recognition_event", 1);
        int keyphraseId = getKeyphraseIdFromEvent(event);
        ModelData modelData = getKeyphraseModelDataLocked(keyphraseId);
        if (modelData == null || !modelData.isKeyphraseModel()) {
            Slog.e(TAG, "Keyphase model data does not exist for ID:" + keyphraseId);
            return;
        }
        if (modelData.getCallback() == null) {
            Slog.w(TAG, "Received onRecognition event without callback for keyphrase model.");
            return;
        }
        if (event.status != 3) {
            modelData.setStopped();
        }
        try {
            modelData.getCallback().onKeyphraseDetected(event);
        } catch (DeadObjectException e) {
            forceStopAndUnloadModelLocked(modelData, e);
            return;
        } catch (RemoteException e2) {
            Slog.w(TAG, "RemoteException in onKeyphraseDetected", e2);
        }
        SoundTrigger.RecognitionConfig config = modelData.getRecognitionConfig();
        if (config != null) {
            modelData.setRequested(config.allowMultipleTriggers);
        }
        if (modelData.isRequested()) {
            updateRecognitionLocked(modelData, isRecognitionAllowed(), true);
        }
    }

    private void updateAllRecognitionsLocked(boolean notify) {
        boolean isAllowed = isRecognitionAllowed();
        ArrayList<ModelData> modelDatas = new ArrayList<>(this.mModelDataMap.values());
        for (ModelData modelData : modelDatas) {
            updateRecognitionLocked(modelData, isAllowed, notify);
        }
    }

    private int updateRecognitionLocked(ModelData model, boolean isAllowed, boolean notify) {
        boolean start = model.isRequested() && isAllowed;
        if (start == model.isModelStarted()) {
            return 0;
        }
        if (start) {
            int status = prepareForRecognition(model);
            if (status != 0) {
                return status;
            }
            return startRecognitionLocked(model, notify);
        }
        return stopRecognitionLocked(model, notify);
    }

    private void onServiceDiedLocked() {
        try {
            MetricsLogger.count(this.mContext, "sth_service_died", 1);
            sendErrorCallbacksToAllLocked(SoundTrigger.STATUS_DEAD_OBJECT);
        } finally {
            internalClearModelStateLocked();
            internalClearGlobalStateLocked();
            SoundTriggerModule soundTriggerModule = this.mModule;
            if (soundTriggerModule != null) {
                soundTriggerModule.detach();
                this.mModule = null;
            }
        }
    }

    private void internalClearGlobalStateLocked() {
        long token = Binder.clearCallingIdentity();
        try {
            this.mTelephonyManager.listen(this.mPhoneStateListener, 0);
            Binder.restoreCallingIdentity(token);
            PowerSaveModeListener powerSaveModeListener = this.mPowerSaveModeListener;
            if (powerSaveModeListener != null) {
                this.mContext.unregisterReceiver(powerSaveModeListener);
                this.mPowerSaveModeListener = null;
            }
            this.mRecognitionRequested = false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    private void internalClearModelStateLocked() {
        for (ModelData modelData : this.mModelDataMap.values()) {
            modelData.clearState();
        }
    }

    class MyCallStateListener extends PhoneStateListener {
        MyCallStateListener() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int state, String arg1) {
            if (SoundTriggerHelper.this.mHandler != null) {
                synchronized (SoundTriggerHelper.this.mLock) {
                    SoundTriggerHelper.this.mHandler.removeMessages(0);
                    Message msg = SoundTriggerHelper.this.mHandler.obtainMessage(0, state, 0);
                    SoundTriggerHelper.this.mHandler.sendMessageDelayed(msg, 2 == state ? 0L : 1000L);
                }
            }
        }
    }

    class PowerSaveModeListener extends BroadcastReceiver {
        PowerSaveModeListener() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.os.action.POWER_SAVE_MODE_CHANGED".equals(intent.getAction())) {
                boolean active = SoundTriggerHelper.this.mPowerManager.getPowerSaveState(8).batterySaverEnabled;
                synchronized (SoundTriggerHelper.this.mLock) {
                    SoundTriggerHelper.this.onPowerSaveModeChangedLocked(active);
                }
            }
        }
    }

    void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        synchronized (this.mLock) {
            pw.print("  module properties=");
            pw.println((Object) (this.mModuleProperties == null ? "null" : this.mModuleProperties));
            pw.print("  call active=");
            pw.println(this.mCallActive);
            pw.print("  power save mode active=");
            pw.println(this.mIsPowerSaveMode);
            pw.print("  service disabled=");
            pw.println(this.mServiceDisabled);
        }
    }

    private void initializeTelephonyAndPowerStateListeners() {
        if (this.mRecognitionRequested) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mCallActive = this.mTelephonyManager.getCallState() == 2;
            this.mTelephonyManager.listen(this.mPhoneStateListener, 32);
            if (this.mPowerSaveModeListener == null) {
                PowerSaveModeListener powerSaveModeListener = new PowerSaveModeListener();
                this.mPowerSaveModeListener = powerSaveModeListener;
                this.mContext.registerReceiver(powerSaveModeListener, new IntentFilter("android.os.action.POWER_SAVE_MODE_CHANGED"));
            }
            this.mIsPowerSaveMode = this.mPowerManager.getPowerSaveState(8).batterySaverEnabled;
            this.mRecognitionRequested = true;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private void sendErrorCallbacksToAllLocked(int errorCode) {
        for (ModelData modelData : this.mModelDataMap.values()) {
            IRecognitionStatusCallback callback = modelData.getCallback();
            if (callback != null) {
                try {
                    callback.onError(errorCode);
                } catch (RemoteException e) {
                    Slog.w(TAG, "RemoteException sendErrorCallbacksToAllLocked for model handle " + modelData.getHandle(), e);
                }
            }
        }
    }

    private void forceStopAndUnloadModelLocked(ModelData modelData, Exception exception) {
        forceStopAndUnloadModelLocked(modelData, exception, null);
    }

    private void forceStopAndUnloadModelLocked(ModelData modelData, Exception exception, Iterator modelDataIterator) {
        if (exception != null) {
            Slog.e(TAG, "forceStopAndUnloadModel", exception);
        }
        if (this.mModule == null) {
            return;
        }
        if (modelData.isModelStarted()) {
            Slog.d(TAG, "Stopping previously started dangling model " + modelData.getHandle());
            if (this.mModule.stopRecognition(modelData.getHandle()) != 0) {
                modelData.setStopped();
                modelData.setRequested(false);
            } else {
                Slog.e(TAG, "Failed to stop model " + modelData.getHandle());
            }
        }
        if (modelData.isModelLoaded()) {
            Slog.d(TAG, "Unloading previously loaded dangling model " + modelData.getHandle());
            if (this.mModule.unloadSoundModel(modelData.getHandle()) == 0) {
                if (modelDataIterator != null) {
                    modelDataIterator.remove();
                } else {
                    this.mModelDataMap.remove(modelData.getModelId());
                }
                Iterator<Map.Entry<Integer, UUID>> it = this.mKeyphraseUuidMap.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue().equals(modelData.getModelId())) {
                        it.remove();
                    }
                }
                modelData.clearState();
                return;
            }
            Slog.e(TAG, "Failed to unload model " + modelData.getHandle());
        }
    }

    private void stopAndUnloadDeadModelsLocked() {
        Iterator<Map.Entry<UUID, ModelData>> it = this.mModelDataMap.entrySet().iterator();
        while (it.hasNext()) {
            ModelData modelData = it.next().getValue();
            if (modelData.isModelLoaded() && (modelData.getCallback() == null || (modelData.getCallback().asBinder() != null && !modelData.getCallback().asBinder().pingBinder()))) {
                Slog.w(TAG, "Removing model " + modelData.getHandle() + " that has no clients");
                forceStopAndUnloadModelLocked(modelData, null, it);
            }
        }
    }

    private ModelData getOrCreateGenericModelDataLocked(UUID modelId) {
        ModelData modelData = this.mModelDataMap.get(modelId);
        if (modelData == null) {
            ModelData modelData2 = ModelData.createGenericModelData(modelId);
            this.mModelDataMap.put(modelId, modelData2);
            return modelData2;
        }
        if (!modelData.isGenericModel()) {
            Slog.e(TAG, "UUID already used for non-generic model.");
            return null;
        }
        return modelData;
    }

    private void removeKeyphraseModelLocked(int keyphraseId) {
        UUID uuid = this.mKeyphraseUuidMap.get(Integer.valueOf(keyphraseId));
        if (uuid == null) {
            return;
        }
        this.mModelDataMap.remove(uuid);
        this.mKeyphraseUuidMap.remove(Integer.valueOf(keyphraseId));
    }

    private ModelData getKeyphraseModelDataLocked(int keyphraseId) {
        UUID uuid = this.mKeyphraseUuidMap.get(Integer.valueOf(keyphraseId));
        if (uuid == null) {
            return null;
        }
        return this.mModelDataMap.get(uuid);
    }

    private ModelData createKeyphraseModelDataLocked(UUID modelId, int keyphraseId) {
        this.mKeyphraseUuidMap.remove(Integer.valueOf(keyphraseId));
        this.mModelDataMap.remove(modelId);
        this.mKeyphraseUuidMap.put(Integer.valueOf(keyphraseId), modelId);
        ModelData modelData = ModelData.createKeyphraseModelData(modelId);
        this.mModelDataMap.put(modelId, modelData);
        return modelData;
    }

    private ModelData getModelDataForLocked(int modelHandle) {
        for (ModelData model : this.mModelDataMap.values()) {
            if (model.getHandle() == modelHandle) {
                return model;
            }
        }
        return null;
    }

    private boolean isRecognitionAllowed() {
        if (!this.mRecognitionRequested) {
            this.mCallActive = this.mTelephonyManager.getCallState() == 2;
            this.mIsPowerSaveMode = this.mPowerManager.getPowerSaveState(8).batterySaverEnabled;
        }
        return (this.mCallActive || this.mServiceDisabled || this.mIsPowerSaveMode) ? false : true;
    }

    private int startRecognitionLocked(ModelData modelData, boolean notify) {
        IRecognitionStatusCallback callback = modelData.getCallback();
        SoundTrigger.RecognitionConfig config = modelData.getRecognitionConfig();
        if (callback == null || !modelData.isModelLoaded() || config == null) {
            Slog.w(TAG, "startRecognition: Bad data passed in.");
            MetricsLogger.count(this.mContext, "sth_start_recognition_error", 1);
            return Integer.MIN_VALUE;
        }
        if (!isRecognitionAllowed()) {
            Slog.w(TAG, "startRecognition requested but not allowed.");
            MetricsLogger.count(this.mContext, "sth_start_recognition_not_allowed", 1);
            return 0;
        }
        SoundTriggerModule soundTriggerModule = this.mModule;
        if (soundTriggerModule == null) {
            return Integer.MIN_VALUE;
        }
        int status = soundTriggerModule.startRecognition(modelData.getHandle(), config);
        if (status != 0) {
            Slog.w(TAG, "startRecognition failed with " + status);
            MetricsLogger.count(this.mContext, "sth_start_recognition_error", 1);
            if (notify) {
                try {
                    callback.onError(status);
                } catch (DeadObjectException e) {
                    forceStopAndUnloadModelLocked(modelData, e);
                } catch (RemoteException e2) {
                    Slog.w(TAG, "RemoteException in onError", e2);
                }
            }
        } else {
            Slog.i(TAG, "startRecognition successful.");
            MetricsLogger.count(this.mContext, "sth_start_recognition_success", 1);
            modelData.setStarted();
            if (notify) {
                try {
                    callback.onRecognitionResumed();
                } catch (DeadObjectException e3) {
                    forceStopAndUnloadModelLocked(modelData, e3);
                } catch (RemoteException e4) {
                    Slog.w(TAG, "RemoteException in onRecognitionResumed", e4);
                }
            }
        }
        return status;
    }

    private int stopRecognitionLocked(ModelData modelData, boolean notify) {
        if (this.mModule == null) {
            return Integer.MIN_VALUE;
        }
        IRecognitionStatusCallback callback = modelData.getCallback();
        int status = this.mModule.stopRecognition(modelData.getHandle());
        if (status != 0) {
            Slog.w(TAG, "stopRecognition call failed with " + status);
            MetricsLogger.count(this.mContext, "sth_stop_recognition_error", 1);
            if (notify) {
                try {
                    callback.onError(status);
                } catch (DeadObjectException e) {
                    forceStopAndUnloadModelLocked(modelData, e);
                } catch (RemoteException e2) {
                    Slog.w(TAG, "RemoteException in onError", e2);
                }
            }
        } else {
            modelData.setStopped();
            MetricsLogger.count(this.mContext, "sth_stop_recognition_success", 1);
            if (notify) {
                try {
                    callback.onRecognitionPaused();
                } catch (DeadObjectException e3) {
                    forceStopAndUnloadModelLocked(modelData, e3);
                } catch (RemoteException e4) {
                    Slog.w(TAG, "RemoteException in onRecognitionPaused", e4);
                }
            }
        }
        return status;
    }

    private void dumpModelStateLocked() {
        for (UUID modelId : this.mModelDataMap.keySet()) {
            ModelData modelData = this.mModelDataMap.get(modelId);
            Slog.i(TAG, "Model :" + modelData.toString());
        }
    }

    private boolean computeRecognitionRequestedLocked() {
        if (this.mModuleProperties == null || this.mModule == null) {
            this.mRecognitionRequested = false;
            return false;
        }
        for (ModelData modelData : this.mModelDataMap.values()) {
            if (modelData.isRequested()) {
                this.mRecognitionRequested = true;
                return true;
            }
        }
        this.mRecognitionRequested = false;
        return false;
    }

    private static class ModelData {
        static final int MODEL_LOADED = 1;
        static final int MODEL_NOTLOADED = 0;
        static final int MODEL_STARTED = 2;
        private int mModelHandle;
        private UUID mModelId;
        private int mModelState;
        private int mModelType;
        private boolean mRequested = false;
        private IRecognitionStatusCallback mCallback = null;
        private SoundTrigger.RecognitionConfig mRecognitionConfig = null;
        private SoundTrigger.SoundModel mSoundModel = null;

        private ModelData(UUID modelId, int modelType) {
            this.mModelType = -1;
            this.mModelId = modelId;
            this.mModelType = modelType;
        }

        static ModelData createKeyphraseModelData(UUID modelId) {
            return new ModelData(modelId, 0);
        }

        static ModelData createGenericModelData(UUID modelId) {
            return new ModelData(modelId, 1);
        }

        static ModelData createModelDataOfUnknownType(UUID modelId) {
            return new ModelData(modelId, -1);
        }

        synchronized void setCallback(IRecognitionStatusCallback callback) {
            this.mCallback = callback;
        }

        synchronized IRecognitionStatusCallback getCallback() {
            return this.mCallback;
        }

        synchronized boolean isModelLoaded() {
            boolean z;
            z = true;
            if (this.mModelState != 1 && this.mModelState != 2) {
                z = false;
            }
            return z;
        }

        synchronized boolean isModelNotLoaded() {
            return this.mModelState == 0;
        }

        synchronized void setStarted() {
            this.mModelState = 2;
        }

        synchronized void setStopped() {
            this.mModelState = 1;
        }

        synchronized void setLoaded() {
            this.mModelState = 1;
        }

        synchronized boolean isModelStarted() {
            return this.mModelState == 2;
        }

        synchronized void clearState() {
            this.mModelState = 0;
            this.mRecognitionConfig = null;
            this.mRequested = false;
            this.mCallback = null;
        }

        synchronized void clearCallback() {
            this.mCallback = null;
        }

        synchronized void setHandle(int handle) {
            this.mModelHandle = handle;
        }

        synchronized void setRecognitionConfig(SoundTrigger.RecognitionConfig config) {
            this.mRecognitionConfig = config;
        }

        synchronized int getHandle() {
            return this.mModelHandle;
        }

        synchronized UUID getModelId() {
            return this.mModelId;
        }

        synchronized SoundTrigger.RecognitionConfig getRecognitionConfig() {
            return this.mRecognitionConfig;
        }

        synchronized boolean isRequested() {
            return this.mRequested;
        }

        synchronized void setRequested(boolean requested) {
            this.mRequested = requested;
        }

        synchronized void setSoundModel(SoundTrigger.SoundModel soundModel) {
            this.mSoundModel = soundModel;
        }

        synchronized SoundTrigger.SoundModel getSoundModel() {
            return this.mSoundModel;
        }

        synchronized int getModelType() {
            return this.mModelType;
        }

        synchronized boolean isKeyphraseModel() {
            return this.mModelType == 0;
        }

        synchronized boolean isGenericModel() {
            return this.mModelType == 1;
        }

        synchronized String stateToString() {
            int i = this.mModelState;
            if (i == 0) {
                return "NOT_LOADED";
            }
            if (i == 1) {
                return "LOADED";
            }
            if (i == 2) {
                return "STARTED";
            }
            return "Unknown state";
        }

        synchronized String requestedToString() {
            StringBuilder sb;
            sb = new StringBuilder();
            sb.append("Requested: ");
            sb.append(this.mRequested ? "Yes" : "No");
            return sb.toString();
        }

        synchronized String callbackToString() {
            StringBuilder sb;
            sb = new StringBuilder();
            sb.append("Callback: ");
            sb.append(this.mCallback != null ? this.mCallback.asBinder() : "null");
            return sb.toString();
        }

        synchronized String uuidToString() {
            return "UUID: " + this.mModelId;
        }

        public synchronized String toString() {
            return "Handle: " + this.mModelHandle + "\nModelState: " + stateToString() + "\n" + requestedToString() + "\n" + callbackToString() + "\n" + uuidToString() + "\n" + modelTypeToString();
        }

        synchronized String modelTypeToString() {
            String type;
            type = null;
            int i = this.mModelType;
            if (i == -1) {
                type = "Unknown";
            } else if (i == 0) {
                type = "Keyphrase";
            } else if (i == 1) {
                type = "Generic";
            }
            return "Model type: " + type + "\n";
        }
    }
}
