package com.android.server.soundtrigger_middleware;

import android.hardware.soundtrigger.V2_1.ISoundTriggerHw;
import android.hardware.soundtrigger.V2_1.ISoundTriggerHwCallback;
import android.media.soundtrigger_middleware.ISoundTriggerCallback;
import android.media.soundtrigger_middleware.ISoundTriggerModule;
import android.media.soundtrigger_middleware.ModelParameterRange;
import android.media.soundtrigger_middleware.PhraseRecognitionEvent;
import android.media.soundtrigger_middleware.PhraseRecognitionExtra;
import android.media.soundtrigger_middleware.PhraseSoundModel;
import android.media.soundtrigger_middleware.RecognitionConfig;
import android.media.soundtrigger_middleware.RecognitionEvent;
import android.media.soundtrigger_middleware.SoundModel;
import android.media.soundtrigger_middleware.SoundTriggerModuleProperties;
import android.os.IBinder;
import android.os.IHwBinder;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class SoundTriggerModule implements IHwBinder.DeathRecipient {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String TAG = "SoundTriggerModule";
    private final SoundTriggerMiddlewareImpl.AudioSessionProvider mAudioSessionProvider;
    private HalFactory mHalFactory;
    private ISoundTriggerHw2 mHalService;
    private SoundTriggerModuleProperties mProperties;
    private boolean mRecognitionAvailable;
    private final Set<Session> mActiveSessions = new HashSet();
    private int mNumLoadedModels = 0;

    private enum ModelState {
        INIT,
        LOADED,
        ACTIVE
    }

    static /* synthetic */ int access$604(SoundTriggerModule x0) {
        int i = x0.mNumLoadedModels + 1;
        x0.mNumLoadedModels = i;
        return i;
    }

    static /* synthetic */ int access$606(SoundTriggerModule x0) {
        int i = x0.mNumLoadedModels - 1;
        x0.mNumLoadedModels = i;
        return i;
    }

    SoundTriggerModule(HalFactory halFactory, SoundTriggerMiddlewareImpl.AudioSessionProvider audioSessionProvider) {
        this.mHalFactory = halFactory;
        this.mAudioSessionProvider = audioSessionProvider;
        attachToHal();
        SoundTriggerModuleProperties soundTriggerModulePropertiesHidl2aidlProperties = ConversionUtil.hidl2aidlProperties(this.mHalService.getProperties());
        this.mProperties = soundTriggerModulePropertiesHidl2aidlProperties;
        this.mRecognitionAvailable = soundTriggerModulePropertiesHidl2aidlProperties.concurrentCapture;
    }

    synchronized ISoundTriggerModule attach(ISoundTriggerCallback callback) {
        Session session;
        session = new Session(callback);
        this.mActiveSessions.add(session);
        return session;
    }

    synchronized SoundTriggerModuleProperties getProperties() {
        return this.mProperties;
    }

    void setExternalCaptureState(boolean active) {
        List<Runnable> callbacks = new LinkedList<>();
        synchronized (this) {
            if (this.mProperties.concurrentCapture) {
                return;
            }
            boolean z = !active;
            this.mRecognitionAvailable = z;
            if (!z) {
                for (Session session : this.mActiveSessions) {
                    session.abortActiveRecognitions(callbacks);
                }
            }
            for (Runnable callback : callbacks) {
                callback.run();
            }
            for (Session session2 : this.mActiveSessions) {
                session2.notifyRecognitionAvailability();
            }
        }
    }

    public void serviceDied(long cookie) {
        Log.w(TAG, String.format("Underlying HAL driver died.", new Object[0]));
        List<ISoundTriggerCallback> callbacks = new ArrayList<>(this.mActiveSessions.size());
        synchronized (this) {
            for (Session session : this.mActiveSessions) {
                callbacks.add(session.moduleDied());
            }
            reset();
        }
        for (ISoundTriggerCallback callback : callbacks) {
            try {
                callback.onModuleDied();
            } catch (RemoteException e) {
                throw e.rethrowAsRuntimeException();
            }
        }
    }

    private void reset() {
        attachToHal();
        this.mRecognitionAvailable = this.mProperties.concurrentCapture;
        this.mNumLoadedModels = 0;
    }

    private void attachToHal() {
        SoundTriggerHw2Enforcer soundTriggerHw2Enforcer = new SoundTriggerHw2Enforcer(new SoundTriggerHw2Compat(this.mHalFactory.create()));
        this.mHalService = soundTriggerHw2Enforcer;
        soundTriggerHw2Enforcer.linkToDeath(this, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSession(Session session) {
        this.mActiveSessions.remove(session);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class Session implements ISoundTriggerModule {
        private ISoundTriggerCallback mCallback;
        private Map<Integer, Model> mLoadedModels;

        private Session(ISoundTriggerCallback callback) {
            this.mLoadedModels = new HashMap();
            this.mCallback = callback;
            notifyRecognitionAvailability();
        }

        public void detach() {
            synchronized (SoundTriggerModule.this) {
                if (this.mCallback == null) {
                    return;
                }
                SoundTriggerModule.this.removeSession(this);
                this.mCallback = null;
            }
        }

        public int loadModel(SoundModel model) throws Exception {
            int result;
            SoundTriggerMiddlewareImpl.AudioSessionProvider.AudioSession audioSession = SoundTriggerModule.this.mAudioSessionProvider.acquireSession();
            try {
                synchronized (SoundTriggerModule.this) {
                    checkValid();
                    if (SoundTriggerModule.this.mNumLoadedModels == SoundTriggerModule.this.mProperties.maxSoundModels) {
                        throw new RecoverableException(1, "Maximum number of models loaded.");
                    }
                    Model loadedModel = new Model();
                    result = loadedModel.load(model, audioSession);
                    SoundTriggerModule.access$604(SoundTriggerModule.this);
                }
                return result;
            } catch (Exception e) {
                SoundTriggerModule.this.mAudioSessionProvider.releaseSession(audioSession.mSessionHandle);
                throw e;
            }
        }

        public int loadPhraseModel(PhraseSoundModel model) throws Exception {
            int result;
            SoundTriggerMiddlewareImpl.AudioSessionProvider.AudioSession audioSession = SoundTriggerModule.this.mAudioSessionProvider.acquireSession();
            try {
                synchronized (SoundTriggerModule.this) {
                    checkValid();
                    if (SoundTriggerModule.this.mNumLoadedModels == SoundTriggerModule.this.mProperties.maxSoundModels) {
                        throw new RecoverableException(1, "Maximum number of models loaded.");
                    }
                    Model loadedModel = new Model();
                    result = loadedModel.load(model, audioSession);
                    SoundTriggerModule.access$604(SoundTriggerModule.this);
                    Log.d(SoundTriggerModule.TAG, String.format("loadPhraseModel()->%d", Integer.valueOf(result)));
                }
                return result;
            } catch (Exception e) {
                SoundTriggerModule.this.mAudioSessionProvider.releaseSession(audioSession.mSessionHandle);
                throw e;
            }
        }

        public void unloadModel(int modelHandle) {
            int sessionId;
            synchronized (SoundTriggerModule.this) {
                checkValid();
                sessionId = this.mLoadedModels.get(Integer.valueOf(modelHandle)).unload();
                SoundTriggerModule.access$606(SoundTriggerModule.this);
            }
            SoundTriggerModule.this.mAudioSessionProvider.releaseSession(sessionId);
        }

        public void startRecognition(int modelHandle, RecognitionConfig config) {
            List<Runnable> callbacks = new LinkedList<>();
            synchronized (SoundTriggerModule.this) {
                checkValid();
                this.mLoadedModels.get(Integer.valueOf(modelHandle)).startRecognition(config, callbacks);
            }
            for (Runnable callback : callbacks) {
                callback.run();
            }
        }

        public void stopRecognition(int modelHandle) {
            synchronized (SoundTriggerModule.this) {
                this.mLoadedModels.get(Integer.valueOf(modelHandle)).stopRecognition();
            }
        }

        public void forceRecognitionEvent(int modelHandle) {
            synchronized (SoundTriggerModule.this) {
                checkValid();
                this.mLoadedModels.get(Integer.valueOf(modelHandle)).forceRecognitionEvent();
            }
        }

        public void setModelParameter(int modelHandle, int modelParam, int value) {
            synchronized (SoundTriggerModule.this) {
                checkValid();
                this.mLoadedModels.get(Integer.valueOf(modelHandle)).setParameter(modelParam, value);
            }
        }

        public int getModelParameter(int modelHandle, int modelParam) {
            int parameter;
            synchronized (SoundTriggerModule.this) {
                checkValid();
                parameter = this.mLoadedModels.get(Integer.valueOf(modelHandle)).getParameter(modelParam);
            }
            return parameter;
        }

        public ModelParameterRange queryModelParameterSupport(int modelHandle, int modelParam) {
            ModelParameterRange modelParameterRangeQueryModelParameterSupport;
            synchronized (SoundTriggerModule.this) {
                checkValid();
                modelParameterRangeQueryModelParameterSupport = this.mLoadedModels.get(Integer.valueOf(modelHandle)).queryModelParameterSupport(modelParam);
            }
            return modelParameterRangeQueryModelParameterSupport;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void abortActiveRecognitions(List<Runnable> callbacks) {
            for (Model model : this.mLoadedModels.values()) {
                model.abortActiveRecognition(callbacks);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyRecognitionAvailability() {
            try {
                this.mCallback.onRecognitionAvailabilityChange(SoundTriggerModule.this.mRecognitionAvailable);
            } catch (RemoteException e) {
                Log.e(SoundTriggerModule.TAG, "Client callback execption.", e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ISoundTriggerCallback moduleDied() {
            ISoundTriggerCallback callback = this.mCallback;
            SoundTriggerModule.this.removeSession(this);
            this.mCallback = null;
            return callback;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
        private void checkValid() throws ServiceSpecificException {
            if (this.mCallback == null) {
                throw new ServiceSpecificException(4);
            }
        }

        public IBinder asBinder() {
            throw new UnsupportedOperationException("This implementation is not intended to be used directly with Binder.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        class Model implements ISoundTriggerHw2.Callback {
            public int mHandle;
            private int mModelType;
            private SoundTriggerMiddlewareImpl.AudioSessionProvider.AudioSession mSession;
            private ModelState mState;

            private Model() {
                this.mState = ModelState.INIT;
                this.mModelType = -1;
            }

            private ModelState getState() {
                return this.mState;
            }

            private void setState(ModelState state) {
                this.mState = state;
                SoundTriggerModule.this.notifyAll();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int load(SoundModel model, SoundTriggerMiddlewareImpl.AudioSessionProvider.AudioSession audioSession) {
                this.mModelType = model.type;
                this.mSession = audioSession;
                ISoundTriggerHw.SoundModel hidlModel = ConversionUtil.aidl2hidlSoundModel(model);
                this.mHandle = SoundTriggerModule.this.mHalService.loadSoundModel(hidlModel, this, 0);
                setState(ModelState.LOADED);
                Session.this.mLoadedModels.put(Integer.valueOf(this.mHandle), this);
                return this.mHandle;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int load(PhraseSoundModel model, SoundTriggerMiddlewareImpl.AudioSessionProvider.AudioSession audioSession) {
                this.mModelType = model.common.type;
                this.mSession = audioSession;
                ISoundTriggerHw.PhraseSoundModel hidlModel = ConversionUtil.aidl2hidlPhraseSoundModel(model);
                this.mHandle = SoundTriggerModule.this.mHalService.loadPhraseSoundModel(hidlModel, this, 0);
                setState(ModelState.LOADED);
                Session.this.mLoadedModels.put(Integer.valueOf(this.mHandle), this);
                return this.mHandle;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int unload() {
                SoundTriggerModule.this.mHalService.unloadSoundModel(this.mHandle);
                Session.this.mLoadedModels.remove(Integer.valueOf(this.mHandle));
                return this.mSession.mSessionHandle;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void startRecognition(RecognitionConfig config, List<Runnable> callbacks) {
                if (!SoundTriggerModule.this.mRecognitionAvailable) {
                    callbacks.add(new $$Lambda$SoundTriggerModule$Session$Model$SKjuNdt0iPC81BScKlVMeotxUlg(this));
                    return;
                }
                android.hardware.soundtrigger.V2_3.RecognitionConfig hidlConfig = ConversionUtil.aidl2hidlRecognitionConfig(config);
                hidlConfig.base.header.captureDevice = this.mSession.mDeviceHandle;
                hidlConfig.base.header.captureHandle = this.mSession.mIoHandle;
                SoundTriggerModule.this.mHalService.startRecognition(this.mHandle, hidlConfig, this, 0);
                setState(ModelState.ACTIVE);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void stopRecognition() {
                if (getState() != ModelState.LOADED) {
                    SoundTriggerModule.this.mHalService.stopRecognition(this.mHandle);
                    setState(ModelState.LOADED);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void forceRecognitionEvent() {
                if (getState() == ModelState.ACTIVE) {
                    SoundTriggerModule.this.mHalService.getModelState(this.mHandle);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setParameter(int modelParam, int value) {
                SoundTriggerModule.this.mHalService.setModelParameter(this.mHandle, ConversionUtil.aidl2hidlModelParameter(modelParam), value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int getParameter(int modelParam) {
                return SoundTriggerModule.this.mHalService.getModelParameter(this.mHandle, ConversionUtil.aidl2hidlModelParameter(modelParam));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public ModelParameterRange queryModelParameterSupport(int modelParam) {
                return ConversionUtil.hidl2aidlModelParameterRange(SoundTriggerModule.this.mHalService.queryParameter(this.mHandle, ConversionUtil.aidl2hidlModelParameter(modelParam)));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void abortActiveRecognition(List<Runnable> callbacks) {
                if (getState() != ModelState.ACTIVE) {
                    return;
                }
                stopRecognition();
                callbacks.add(new $$Lambda$SoundTriggerModule$Session$Model$SKjuNdt0iPC81BScKlVMeotxUlg(this));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void notifyAbort() {
                try {
                    int i = this.mModelType;
                    if (i == 0) {
                        PhraseRecognitionEvent event = SoundTriggerModule.newEmptyPhraseRecognitionEvent();
                        event.common.status = 1;
                        event.common.type = 0;
                        Session.this.mCallback.onPhraseRecognition(this.mHandle, event);
                    } else if (i == 1) {
                        RecognitionEvent event2 = SoundTriggerModule.newEmptyRecognitionEvent();
                        event2.status = 1;
                        event2.type = 1;
                        Session.this.mCallback.onRecognition(this.mHandle, event2);
                    } else {
                        Log.e(SoundTriggerModule.TAG, "Unknown model type: " + this.mModelType);
                    }
                } catch (RemoteException e) {
                    Log.e(SoundTriggerModule.TAG, "Client callback execption.", e);
                }
            }

            @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2.Callback
            public void recognitionCallback(ISoundTriggerHwCallback.RecognitionEvent recognitionEvent, int cookie) {
                RecognitionEvent aidlEvent = ConversionUtil.hidl2aidlRecognitionEvent(recognitionEvent);
                aidlEvent.captureSession = this.mSession.mSessionHandle;
                synchronized (SoundTriggerModule.this) {
                    if (aidlEvent.status != 3) {
                        setState(ModelState.LOADED);
                    }
                }
                try {
                    Session.this.mCallback.onRecognition(this.mHandle, aidlEvent);
                } catch (RemoteException e) {
                    throw e.rethrowAsRuntimeException();
                }
            }

            @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2.Callback
            public void phraseRecognitionCallback(ISoundTriggerHwCallback.PhraseRecognitionEvent phraseRecognitionEvent, int cookie) {
                PhraseRecognitionEvent aidlEvent = ConversionUtil.hidl2aidlPhraseRecognitionEvent(phraseRecognitionEvent);
                aidlEvent.common.captureSession = this.mSession.mSessionHandle;
                synchronized (SoundTriggerModule.this) {
                    if (aidlEvent.common.status != 3) {
                        setState(ModelState.LOADED);
                    }
                }
                try {
                    Session.this.mCallback.onPhraseRecognition(this.mHandle, aidlEvent);
                } catch (RemoteException e) {
                    throw e.rethrowAsRuntimeException();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RecognitionEvent newEmptyRecognitionEvent() {
        RecognitionEvent result = new RecognitionEvent();
        result.data = new byte[0];
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static PhraseRecognitionEvent newEmptyPhraseRecognitionEvent() {
        PhraseRecognitionEvent result = new PhraseRecognitionEvent();
        result.common = newEmptyRecognitionEvent();
        result.phraseExtras = new PhraseRecognitionExtra[0];
        return result;
    }
}
