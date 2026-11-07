package com.android.server.soundtrigger_middleware;

import android.content.Context;
import android.content.PermissionChecker;
import android.media.soundtrigger_middleware.ISoundTriggerCallback;
import android.media.soundtrigger_middleware.ISoundTriggerModule;
import android.media.soundtrigger_middleware.ModelParameterRange;
import android.media.soundtrigger_middleware.PhraseRecognitionEvent;
import android.media.soundtrigger_middleware.PhraseSoundModel;
import android.media.soundtrigger_middleware.RecognitionConfig;
import android.media.soundtrigger_middleware.RecognitionEvent;
import android.media.soundtrigger_middleware.SoundModel;
import android.media.soundtrigger_middleware.SoundTriggerModuleDescriptor;
import android.media.soundtrigger_middleware.SoundTriggerModuleProperties;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class SoundTriggerMiddlewareValidation implements ISoundTriggerMiddlewareInternal, Dumpable {
    private static final String TAG = "SoundTriggerMiddlewareValidation";
    private AtomicReference<Boolean> mCaptureState = new AtomicReference<>();
    private final Context mContext;
    private final ISoundTriggerMiddlewareInternal mDelegate;
    private Map<Integer, ModuleState> mModules;

    private enum ModuleStatus {
        ALIVE,
        DETACHED,
        DEAD
    }

    private class ModuleState {
        final SoundTriggerModuleProperties properties;
        Set<ModuleService> sessions;

        private ModuleState(SoundTriggerModuleProperties properties) {
            this.sessions = new HashSet();
            this.properties = properties;
        }
    }

    public SoundTriggerMiddlewareValidation(ISoundTriggerMiddlewareInternal delegate, Context context) {
        this.mDelegate = delegate;
        this.mContext = context;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    static RuntimeException handleException(Exception e) throws ServiceSpecificException {
        if (e instanceof RecoverableException) {
            throw new ServiceSpecificException(((RecoverableException) e).errorCode, e.getMessage());
        }
        Log.wtf(TAG, "Unexpected exception", e);
        throw new ServiceSpecificException(5, e.getMessage());
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    public SoundTriggerModuleDescriptor[] listModules() throws ServiceSpecificException {
        SoundTriggerModuleDescriptor[] result;
        checkPermissions();
        synchronized (this) {
            try {
                try {
                    result = this.mDelegate.listModules();
                    this.mModules = new HashMap(result.length);
                    for (SoundTriggerModuleDescriptor desc : result) {
                        this.mModules.put(Integer.valueOf(desc.handle), new ModuleState(desc.properties));
                    }
                } catch (Exception e) {
                    throw handleException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return result;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    public ISoundTriggerModule attach(int handle, ISoundTriggerCallback callback) throws ServiceSpecificException {
        ModuleService moduleService;
        checkPermissions();
        Objects.requireNonNull(callback);
        Objects.requireNonNull(callback.asBinder());
        synchronized (this) {
            if (this.mModules == null) {
                throw new IllegalStateException("Client must call listModules() prior to attaching.");
            }
            if (!this.mModules.containsKey(Integer.valueOf(handle))) {
                throw new IllegalArgumentException("Invalid handle: " + handle);
            }
            try {
                moduleService = new ModuleService(handle, callback);
                moduleService.attach(this.mDelegate.attach(handle, moduleService));
            } catch (Exception e) {
                throw handleException(e);
            }
        }
        return moduleService;
    }

    @Override // android.media.ICaptureStateListener
    public void setCaptureState(boolean active) {
        try {
            try {
                this.mDelegate.setCaptureState(active);
                this.mCaptureState.set(Boolean.valueOf(active));
            } catch (Exception e) {
                throw handleException(e);
            }
        } catch (Throwable th) {
            this.mCaptureState.set(Boolean.valueOf(active));
            throw th;
        }
    }

    public String toString() {
        return this.mDelegate.toString();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    void checkPermissions() throws ServiceSpecificException {
        enforcePermission("android.permission.RECORD_AUDIO");
        enforcePermission("android.permission.CAPTURE_AUDIO_HOTWORD");
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    void enforcePermission(String permission) throws ServiceSpecificException {
        int status = PermissionChecker.checkCallingOrSelfPermissionForPreflight(this.mContext, permission);
        if (status == -2) {
            throw new ServiceSpecificException(3, String.format("Caller must have the %s permission.", permission));
        }
        if (status == -1) {
            throw new SecurityException(String.format("Caller must have the %s permission.", permission));
        }
        if (status == 0) {
        } else {
            throw new RuntimeException("Unexpected perimission check result.");
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        throw new UnsupportedOperationException("This implementation is not inteded to be used directly with Binder.");
    }

    @Override // com.android.server.soundtrigger_middleware.Dumpable
    public void dump(PrintWriter pw) {
        String str;
        synchronized (this) {
            Boolean captureState = this.mCaptureState.get();
            Object[] objArr = new Object[1];
            if (captureState == null) {
                str = "uninitialized";
            } else {
                str = captureState.booleanValue() ? "active" : "inactive";
            }
            objArr[0] = str;
            pw.printf("Capture state is %s\n\n", objArr);
            if (this.mModules != null) {
                Iterator<Integer> it = this.mModules.keySet().iterator();
                while (it.hasNext()) {
                    int handle = it.next().intValue();
                    ModuleState module = this.mModules.get(Integer.valueOf(handle));
                    pw.println("=========================================");
                    pw.printf("Module %d\n%s\n", Integer.valueOf(handle), ObjectPrinter.print(module.properties, true, 16));
                    pw.println("=========================================");
                    for (ModuleService session : module.sessions) {
                        session.dump(pw);
                    }
                }
            } else {
                pw.println("Modules have not yet been enumerated.");
            }
        }
        pw.println();
        ISoundTriggerMiddlewareInternal iSoundTriggerMiddlewareInternal = this.mDelegate;
        if (iSoundTriggerMiddlewareInternal instanceof Dumpable) {
            ((Dumpable) iSoundTriggerMiddlewareInternal).dump(pw);
        }
    }

    static class ModelState {
        final String description;
        private AtomicInteger mActivityState = new AtomicInteger(Activity.LOADED.ordinal());
        private Map<Integer, ModelParameterRange> parameterSupport = new HashMap();

        enum Activity {
            LOADED,
            ACTIVE
        }

        ModelState(SoundModel model) {
            this.description = ObjectPrinter.print(model, true, 16);
        }

        ModelState(PhraseSoundModel model) {
            this.description = ObjectPrinter.print(model, true, 16);
        }

        void checkSupported(int modelParam) {
            if (!this.parameterSupport.containsKey(Integer.valueOf(modelParam))) {
                throw new IllegalStateException("Parameter has not been checked for support.");
            }
            ModelParameterRange range = this.parameterSupport.get(Integer.valueOf(modelParam));
            if (range == null) {
                throw new IllegalArgumentException("Paramater is not supported.");
            }
        }

        void checkSupported(int modelParam, int value) {
            if (!this.parameterSupport.containsKey(Integer.valueOf(modelParam))) {
                throw new IllegalStateException("Parameter has not been checked for support.");
            }
            ModelParameterRange range = this.parameterSupport.get(Integer.valueOf(modelParam));
            if (range == null) {
                throw new IllegalArgumentException("Paramater is not supported.");
            }
            Preconditions.checkArgumentInRange(value, range.minInclusive, range.maxInclusive, "value");
        }

        void updateParameterSupport(int modelParam, ModelParameterRange range) {
            this.parameterSupport.put(Integer.valueOf(modelParam), range);
        }

        Activity getActivityState() {
            return Activity.values()[this.mActivityState.get()];
        }

        void setActivityState(Activity activity) {
            this.mActivityState.set(activity.ordinal());
        }
    }

    private class ModuleService extends ISoundTriggerModule.Stub implements ISoundTriggerCallback, IBinder.DeathRecipient {
        private final ISoundTriggerCallback mCallback;
        private ISoundTriggerModule mDelegate;
        private final int mHandle;
        private ConcurrentMap<Integer, ModelState> mLoadedModels = new ConcurrentHashMap();
        private ModuleStatus mState = ModuleStatus.ALIVE;

        ModuleService(int handle, ISoundTriggerCallback callback) {
            this.mCallback = callback;
            this.mHandle = handle;
            try {
                callback.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e) {
                throw e.rethrowAsRuntimeException();
            }
        }

        void attach(ISoundTriggerModule delegate) {
            this.mDelegate = delegate;
            ((ModuleState) SoundTriggerMiddlewareValidation.this.mModules.get(Integer.valueOf(this.mHandle))).sessions.add(this);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public int loadModel(SoundModel model) throws ServiceSpecificException {
            int handle;
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            ValidationUtil.validateGenericModel(model);
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has been detached.");
                }
                try {
                    handle = this.mDelegate.loadModel(model);
                    this.mLoadedModels.put(Integer.valueOf(handle), new ModelState(model));
                } catch (Exception e) {
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
            return handle;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public int loadPhraseModel(PhraseSoundModel model) throws ServiceSpecificException {
            int handle;
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            ValidationUtil.validatePhraseModel(model);
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has been detached.");
                }
                try {
                    handle = this.mDelegate.loadPhraseModel(model);
                    this.mLoadedModels.put(Integer.valueOf(handle), new ModelState(model));
                } catch (Exception e) {
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
            return handle;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public void unloadModel(int modelHandle) throws ServiceSpecificException {
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has been detached.");
                }
                ModelState modelState = this.mLoadedModels.get(Integer.valueOf(modelHandle));
                if (modelState == null) {
                    throw new IllegalStateException("Invalid handle: " + modelHandle);
                }
                if (modelState.getActivityState() != ModelState.Activity.LOADED) {
                    throw new IllegalStateException("Model with handle: " + modelHandle + " has invalid state for unloading: " + modelState.getActivityState());
                }
                try {
                    this.mDelegate.unloadModel(modelHandle);
                    this.mLoadedModels.remove(Integer.valueOf(modelHandle));
                } catch (Exception e) {
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public void startRecognition(int modelHandle, RecognitionConfig config) throws ServiceSpecificException {
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            ValidationUtil.validateRecognitionConfig(config);
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has been detached.");
                }
                ModelState modelState = this.mLoadedModels.get(Integer.valueOf(modelHandle));
                if (modelState == null) {
                    throw new IllegalStateException("Invalid handle: " + modelHandle);
                }
                if (modelState.getActivityState() != ModelState.Activity.LOADED) {
                    throw new IllegalStateException("Model with handle: " + modelHandle + " has invalid state for starting recognition: " + modelState.getActivityState());
                }
                try {
                    modelState.setActivityState(ModelState.Activity.ACTIVE);
                    this.mDelegate.startRecognition(modelHandle, config);
                } catch (Exception e) {
                    modelState.setActivityState(ModelState.Activity.LOADED);
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public void stopRecognition(int modelHandle) throws ServiceSpecificException {
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has been detached.");
                }
                ModelState modelState = this.mLoadedModels.get(Integer.valueOf(modelHandle));
                if (modelState == null) {
                    throw new IllegalStateException("Invalid handle: " + modelHandle);
                }
                try {
                    this.mDelegate.stopRecognition(modelHandle);
                    modelState.setActivityState(ModelState.Activity.LOADED);
                } catch (Exception e) {
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public void forceRecognitionEvent(int modelHandle) throws ServiceSpecificException {
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has been detached.");
                }
                ModelState modelState = this.mLoadedModels.get(Integer.valueOf(modelHandle));
                if (modelState == null) {
                    throw new IllegalStateException("Invalid handle: " + modelHandle);
                }
                try {
                    this.mDelegate.forceRecognitionEvent(modelHandle);
                } catch (Exception e) {
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public void setModelParameter(int modelHandle, int modelParam, int value) throws ServiceSpecificException {
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            ValidationUtil.validateModelParameter(modelParam);
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has been detached.");
                }
                ModelState modelState = this.mLoadedModels.get(Integer.valueOf(modelHandle));
                if (modelState == null) {
                    throw new IllegalStateException("Invalid handle: " + modelHandle);
                }
                modelState.checkSupported(modelParam, value);
                try {
                    this.mDelegate.setModelParameter(modelHandle, modelParam, value);
                } catch (Exception e) {
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public int getModelParameter(int modelHandle, int modelParam) throws ServiceSpecificException {
            int modelParameter;
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            ValidationUtil.validateModelParameter(modelParam);
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has been detached.");
                }
                ModelState modelState = this.mLoadedModels.get(Integer.valueOf(modelHandle));
                if (modelState == null) {
                    throw new IllegalStateException("Invalid handle: " + modelHandle);
                }
                modelState.checkSupported(modelParam);
                try {
                    modelParameter = this.mDelegate.getModelParameter(modelHandle, modelParam);
                } catch (Exception e) {
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
            return modelParameter;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public ModelParameterRange queryModelParameterSupport(int modelHandle, int modelParam) throws ServiceSpecificException {
            ModelParameterRange result;
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            ValidationUtil.validateModelParameter(modelParam);
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has been detached.");
                }
                ModelState modelState = this.mLoadedModels.get(Integer.valueOf(modelHandle));
                if (modelState == null) {
                    throw new IllegalStateException("Invalid handle: " + modelHandle);
                }
                try {
                    result = this.mDelegate.queryModelParameterSupport(modelHandle, modelParam);
                    modelState.updateParameterSupport(modelParam, result);
                } catch (Exception e) {
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
            return result;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        public void detach() throws ServiceSpecificException {
            SoundTriggerMiddlewareValidation.this.checkPermissions();
            synchronized (SoundTriggerMiddlewareValidation.this) {
                if (this.mState == ModuleStatus.DETACHED) {
                    throw new IllegalStateException("Module has already been detached.");
                }
                if (this.mState == ModuleStatus.ALIVE && !this.mLoadedModels.isEmpty()) {
                    throw new IllegalStateException("Cannot detach while models are loaded.");
                }
                try {
                    detachInternal();
                } catch (Exception e) {
                    throw SoundTriggerMiddlewareValidation.handleException(e);
                }
            }
        }

        public String toString() {
            return Objects.toString(this.mDelegate.toString());
        }

        private void detachInternal() {
            try {
                this.mDelegate.detach();
                this.mState = ModuleStatus.DETACHED;
                this.mCallback.asBinder().unlinkToDeath(this, 0);
                ((ModuleState) SoundTriggerMiddlewareValidation.this.mModules.get(Integer.valueOf(this.mHandle))).sessions.remove(this);
            } catch (RemoteException e) {
                throw e.rethrowAsRuntimeException();
            }
        }

        void dump(PrintWriter pw) {
            if (this.mState == ModuleStatus.ALIVE) {
                pw.printf("Loaded models for session %s (handle, active)", toString());
                pw.println();
                pw.println("-------------------------------");
                for (Map.Entry<Integer, ModelState> entry : this.mLoadedModels.entrySet()) {
                    pw.print(entry.getKey());
                    pw.print('\t');
                    pw.print(entry.getValue().getActivityState().name());
                    pw.print('\t');
                    pw.print(entry.getValue().description);
                    pw.println();
                }
                return;
            }
            pw.printf("Session %s is dead", toString());
            pw.println();
        }

        public void onRecognition(int modelHandle, RecognitionEvent event) {
            ModelState modelState;
            if (event.status != 3 && (modelState = this.mLoadedModels.get(Integer.valueOf(modelHandle))) != null) {
                modelState.setActivityState(ModelState.Activity.LOADED);
            }
            try {
                this.mCallback.onRecognition(modelHandle, event);
            } catch (RemoteException e) {
                Log.e(SoundTriggerMiddlewareValidation.TAG, "Client callback exception.", e);
            }
        }

        public void onPhraseRecognition(int modelHandle, PhraseRecognitionEvent event) {
            ModelState modelState;
            if (event.common.status != 3 && (modelState = this.mLoadedModels.get(Integer.valueOf(modelHandle))) != null) {
                modelState.setActivityState(ModelState.Activity.LOADED);
            }
            try {
                this.mCallback.onPhraseRecognition(modelHandle, event);
            } catch (RemoteException e) {
                Log.e(SoundTriggerMiddlewareValidation.TAG, "Client callback exception.", e);
            }
        }

        public void onRecognitionAvailabilityChange(boolean available) {
            try {
                this.mCallback.onRecognitionAvailabilityChange(available);
            } catch (RemoteException e) {
                Log.e(SoundTriggerMiddlewareValidation.TAG, "Client callback exception.", e);
            }
        }

        public void onModuleDied() {
            synchronized (SoundTriggerMiddlewareValidation.this) {
                this.mState = ModuleStatus.DEAD;
            }
            try {
                this.mCallback.onModuleDied();
            } catch (RemoteException e) {
                Log.e(SoundTriggerMiddlewareValidation.TAG, "Client callback exception.", e);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (SoundTriggerMiddlewareValidation.this) {
                try {
                    try {
                        for (Map.Entry<Integer, ModelState> entry : this.mLoadedModels.entrySet()) {
                            this.mDelegate.stopRecognition(entry.getKey().intValue());
                            this.mDelegate.unloadModel(entry.getKey().intValue());
                        }
                        detachInternal();
                    } catch (Exception e) {
                        throw SoundTriggerMiddlewareValidation.handleException(e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
