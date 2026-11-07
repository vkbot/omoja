package com.android.server.soundtrigger_middleware;

import android.hardware.soundtrigger.V2_0.ISoundTriggerHw;
import android.hardware.soundtrigger.V2_1.ISoundTriggerHwCallback;
import android.hardware.soundtrigger.V2_3.ModelParameterRange;
import android.hardware.soundtrigger.V2_3.OptionalModelParameterRange;
import android.hardware.soundtrigger.V2_3.Properties;
import android.hardware.soundtrigger.V2_3.RecognitionConfig;
import android.os.IHwBinder;
import android.os.RemoteException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class SoundTriggerHw2Compat implements ISoundTriggerHw2 {
    private final IHwBinder mBinder;
    private final ISoundTriggerHw mUnderlying_2_0;
    private final android.hardware.soundtrigger.V2_1.ISoundTriggerHw mUnderlying_2_1;
    private final android.hardware.soundtrigger.V2_2.ISoundTriggerHw mUnderlying_2_2;
    private final android.hardware.soundtrigger.V2_3.ISoundTriggerHw mUnderlying_2_3;

    public SoundTriggerHw2Compat(ISoundTriggerHw underlying) {
        this(underlying.asBinder());
    }

    public SoundTriggerHw2Compat(IHwBinder binder) {
        Objects.requireNonNull(binder);
        this.mBinder = binder;
        android.hardware.soundtrigger.V2_3.ISoundTriggerHw as2_3 = android.hardware.soundtrigger.V2_3.ISoundTriggerHw.asInterface(binder);
        if (as2_3 != null) {
            this.mUnderlying_2_3 = as2_3;
            this.mUnderlying_2_2 = as2_3;
            this.mUnderlying_2_1 = as2_3;
            this.mUnderlying_2_0 = as2_3;
            return;
        }
        android.hardware.soundtrigger.V2_2.ISoundTriggerHw as2_2 = android.hardware.soundtrigger.V2_2.ISoundTriggerHw.asInterface(binder);
        if (as2_2 != null) {
            this.mUnderlying_2_2 = as2_2;
            this.mUnderlying_2_1 = as2_2;
            this.mUnderlying_2_0 = as2_2;
            this.mUnderlying_2_3 = null;
            return;
        }
        android.hardware.soundtrigger.V2_1.ISoundTriggerHw as2_1 = android.hardware.soundtrigger.V2_1.ISoundTriggerHw.asInterface(binder);
        if (as2_1 != null) {
            this.mUnderlying_2_1 = as2_1;
            this.mUnderlying_2_0 = as2_1;
            this.mUnderlying_2_3 = null;
            this.mUnderlying_2_2 = null;
            return;
        }
        ISoundTriggerHw as2_0 = ISoundTriggerHw.asInterface(binder);
        if (as2_0 != null) {
            this.mUnderlying_2_0 = as2_0;
            this.mUnderlying_2_3 = null;
            this.mUnderlying_2_2 = null;
            this.mUnderlying_2_1 = null;
            return;
        }
        throw new RuntimeException("Binder doesn't support ISoundTriggerHw@2.0");
    }

    private static void handleHalStatus(int status, String methodName) {
        if (status != 0) {
            throw new HalException(status, methodName);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public Properties getProperties() {
        try {
            final AtomicInteger retval = new AtomicInteger(-1);
            final AtomicReference<Properties> properties = new AtomicReference<>();
            try {
                as2_3().getProperties_2_3(new android.hardware.soundtrigger.V2_3.ISoundTriggerHw.getProperties_2_3Callback() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerHw2Compat$U-QnBwfU2Eg5ANmLxegcyHjJw1M
                    @Override // android.hardware.soundtrigger.V2_3.ISoundTriggerHw.getProperties_2_3Callback
                    public final void onValues(int i, Properties properties2) {
                        SoundTriggerHw2Compat.lambda$getProperties$0(retval, properties, i, properties2);
                    }
                });
                handleHalStatus(retval.get(), "getProperties_2_3");
                return properties.get();
            } catch (NotSupported e) {
                return getProperties_2_0();
            }
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    static /* synthetic */ void lambda$getProperties$0(AtomicInteger retval, AtomicReference properties, int r, Properties p) {
        retval.set(r);
        properties.set(p);
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public int loadSoundModel(android.hardware.soundtrigger.V2_1.ISoundTriggerHw.SoundModel soundModel, ISoundTriggerHw2.Callback callback, int cookie) {
        try {
            final AtomicInteger retval = new AtomicInteger(-1);
            final AtomicInteger handle = new AtomicInteger(0);
            try {
                as2_1().loadSoundModel_2_1(soundModel, new SoundTriggerCallback(callback), cookie, new android.hardware.soundtrigger.V2_1.ISoundTriggerHw.loadSoundModel_2_1Callback() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerHw2Compat$-_QZ-VR2645z-GkbokL_T8I__48
                    @Override // android.hardware.soundtrigger.V2_1.ISoundTriggerHw.loadSoundModel_2_1Callback
                    public final void onValues(int i, int i2) {
                        SoundTriggerHw2Compat.lambda$loadSoundModel$1(retval, handle, i, i2);
                    }
                });
                handleHalStatus(retval.get(), "loadSoundModel_2_1");
                return handle.get();
            } catch (NotSupported e) {
                return loadSoundModel_2_0(soundModel, callback, cookie);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    static /* synthetic */ void lambda$loadSoundModel$1(AtomicInteger retval, AtomicInteger handle, int r, int h) {
        retval.set(r);
        handle.set(h);
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public int loadPhraseSoundModel(android.hardware.soundtrigger.V2_1.ISoundTriggerHw.PhraseSoundModel soundModel, ISoundTriggerHw2.Callback callback, int cookie) {
        try {
            final AtomicInteger retval = new AtomicInteger(-1);
            final AtomicInteger handle = new AtomicInteger(0);
            try {
                as2_1().loadPhraseSoundModel_2_1(soundModel, new SoundTriggerCallback(callback), cookie, new android.hardware.soundtrigger.V2_1.ISoundTriggerHw.loadPhraseSoundModel_2_1Callback() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerHw2Compat$ewHo6fX75Dw1073KIePOuh3oLIE
                    @Override // android.hardware.soundtrigger.V2_1.ISoundTriggerHw.loadPhraseSoundModel_2_1Callback
                    public final void onValues(int i, int i2) {
                        SoundTriggerHw2Compat.lambda$loadPhraseSoundModel$2(retval, handle, i, i2);
                    }
                });
                handleHalStatus(retval.get(), "loadSoundModel_2_1");
                return handle.get();
            } catch (NotSupported e) {
                return loadPhraseSoundModel_2_0(soundModel, callback, cookie);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    static /* synthetic */ void lambda$loadPhraseSoundModel$2(AtomicInteger retval, AtomicInteger handle, int r, int h) {
        retval.set(r);
        handle.set(h);
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void unloadSoundModel(int modelHandle) {
        try {
            int retval = as2_0().unloadSoundModel(modelHandle);
            handleHalStatus(retval, "unloadSoundModel");
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void stopRecognition(int modelHandle) {
        try {
            int retval = as2_0().stopRecognition(modelHandle);
            handleHalStatus(retval, "stopRecognition");
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void stopAllRecognitions() {
        try {
            int retval = as2_0().stopAllRecognitions();
            handleHalStatus(retval, "stopAllRecognitions");
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void startRecognition(int modelHandle, RecognitionConfig config, ISoundTriggerHw2.Callback callback, int cookie) {
        try {
            try {
                int retval = as2_3().startRecognition_2_3(modelHandle, config);
                handleHalStatus(retval, "startRecognition_2_3");
            } catch (NotSupported e) {
                startRecognition_2_1(modelHandle, config, callback, cookie);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void getModelState(int modelHandle) {
        try {
            int retval = as2_2().getModelState(modelHandle);
            handleHalStatus(retval, "getModelState");
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        } catch (NotSupported e2) {
            throw e2.throwAsRecoverableException();
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public int getModelParameter(int modelHandle, int param) {
        final AtomicInteger status = new AtomicInteger(-1);
        final AtomicInteger value = new AtomicInteger(0);
        try {
            as2_3().getParameter(modelHandle, param, new android.hardware.soundtrigger.V2_3.ISoundTriggerHw.getParameterCallback() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerHw2Compat$mz3ZN09XJCrlYM4uLTiT43iNlCQ
                @Override // android.hardware.soundtrigger.V2_3.ISoundTriggerHw.getParameterCallback
                public final void onValues(int i, int i2) {
                    SoundTriggerHw2Compat.lambda$getModelParameter$3(status, value, i, i2);
                }
            });
            handleHalStatus(status.get(), "getParameter");
            return value.get();
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        } catch (NotSupported e2) {
            throw e2.throwAsRecoverableException();
        }
    }

    static /* synthetic */ void lambda$getModelParameter$3(AtomicInteger status, AtomicInteger value, int s, int v) {
        status.set(s);
        value.set(v);
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void setModelParameter(int modelHandle, int param, int value) {
        try {
            int retval = as2_3().setParameter(modelHandle, param, value);
            handleHalStatus(retval, "setParameter");
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        } catch (NotSupported e2) {
            throw e2.throwAsRecoverableException();
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public ModelParameterRange queryParameter(int modelHandle, int param) {
        final AtomicInteger status = new AtomicInteger(-1);
        final AtomicReference<OptionalModelParameterRange> optionalRange = new AtomicReference<>();
        try {
            as2_3().queryParameter(modelHandle, param, new android.hardware.soundtrigger.V2_3.ISoundTriggerHw.queryParameterCallback() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerHw2Compat$zVVAAwHUfPftj_Egw5y5yBJZXPw
                @Override // android.hardware.soundtrigger.V2_3.ISoundTriggerHw.queryParameterCallback
                public final void onValues(int i, OptionalModelParameterRange optionalModelParameterRange) {
                    SoundTriggerHw2Compat.lambda$queryParameter$4(status, optionalRange, i, optionalModelParameterRange);
                }
            });
            handleHalStatus(status.get(), "queryParameter");
            if (optionalRange.get().getDiscriminator() != 1) {
                return null;
            }
            return optionalRange.get().range();
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        } catch (NotSupported e2) {
            return null;
        }
    }

    static /* synthetic */ void lambda$queryParameter$4(AtomicInteger status, AtomicReference optionalRange, int s, OptionalModelParameterRange r) {
        status.set(s);
        optionalRange.set(r);
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
        return this.mBinder.linkToDeath(recipient, cookie);
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
        return this.mBinder.unlinkToDeath(recipient);
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public String interfaceDescriptor() throws RemoteException {
        return as2_0().interfaceDescriptor();
    }

    private Properties getProperties_2_0() throws RemoteException {
        final AtomicInteger retval = new AtomicInteger(-1);
        final AtomicReference<ISoundTriggerHw.Properties> properties = new AtomicReference<>();
        as2_0().getProperties(new ISoundTriggerHw.getPropertiesCallback() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerHw2Compat$TgbC0Y00RFANX4qn5-S2zqA0RJU
            @Override // android.hardware.soundtrigger.V2_0.ISoundTriggerHw.getPropertiesCallback
            public final void onValues(int i, ISoundTriggerHw.Properties properties2) {
                SoundTriggerHw2Compat.lambda$getProperties_2_0$5(retval, properties, i, properties2);
            }
        });
        handleHalStatus(retval.get(), "getProperties");
        return Hw2CompatUtil.convertProperties_2_0_to_2_3(properties.get());
    }

    static /* synthetic */ void lambda$getProperties_2_0$5(AtomicInteger retval, AtomicReference properties, int r, ISoundTriggerHw.Properties p) {
        retval.set(r);
        properties.set(p);
    }

    private int loadSoundModel_2_0(android.hardware.soundtrigger.V2_1.ISoundTriggerHw.SoundModel soundModel, ISoundTriggerHw2.Callback callback, int cookie) throws RemoteException {
        ISoundTriggerHw.SoundModel model_2_0 = Hw2CompatUtil.convertSoundModel_2_1_to_2_0(soundModel);
        final AtomicInteger retval = new AtomicInteger(-1);
        final AtomicInteger handle = new AtomicInteger(0);
        as2_0().loadSoundModel(model_2_0, new SoundTriggerCallback(callback), cookie, new ISoundTriggerHw.loadSoundModelCallback() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerHw2Compat$d4MfUfrLxE-WfTBopivzvQedlJQ
            @Override // android.hardware.soundtrigger.V2_0.ISoundTriggerHw.loadSoundModelCallback
            public final void onValues(int i, int i2) {
                SoundTriggerHw2Compat.lambda$loadSoundModel_2_0$6(retval, handle, i, i2);
            }
        });
        handleHalStatus(retval.get(), "loadSoundModel");
        return handle.get();
    }

    static /* synthetic */ void lambda$loadSoundModel_2_0$6(AtomicInteger retval, AtomicInteger handle, int r, int h) {
        retval.set(r);
        handle.set(h);
    }

    private int loadPhraseSoundModel_2_0(android.hardware.soundtrigger.V2_1.ISoundTriggerHw.PhraseSoundModel soundModel, ISoundTriggerHw2.Callback callback, int cookie) throws RemoteException {
        ISoundTriggerHw.PhraseSoundModel model_2_0 = Hw2CompatUtil.convertPhraseSoundModel_2_1_to_2_0(soundModel);
        final AtomicInteger retval = new AtomicInteger(-1);
        final AtomicInteger handle = new AtomicInteger(0);
        as2_0().loadPhraseSoundModel(model_2_0, new SoundTriggerCallback(callback), cookie, new ISoundTriggerHw.loadPhraseSoundModelCallback() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerHw2Compat$X838A3db9kVMHQpQXa1dyFuUof0
            @Override // android.hardware.soundtrigger.V2_0.ISoundTriggerHw.loadPhraseSoundModelCallback
            public final void onValues(int i, int i2) {
                SoundTriggerHw2Compat.lambda$loadPhraseSoundModel_2_0$7(retval, handle, i, i2);
            }
        });
        handleHalStatus(retval.get(), "loadSoundModel");
        return handle.get();
    }

    static /* synthetic */ void lambda$loadPhraseSoundModel_2_0$7(AtomicInteger retval, AtomicInteger handle, int r, int h) {
        retval.set(r);
        handle.set(h);
    }

    private void startRecognition_2_1(int modelHandle, RecognitionConfig config, ISoundTriggerHw2.Callback callback, int cookie) {
        try {
            try {
                android.hardware.soundtrigger.V2_1.ISoundTriggerHw.RecognitionConfig config_2_1 = Hw2CompatUtil.convertRecognitionConfig_2_3_to_2_1(config);
                int retval = as2_1().startRecognition_2_1(modelHandle, config_2_1, new SoundTriggerCallback(callback), cookie);
                handleHalStatus(retval, "startRecognition_2_1");
            } catch (NotSupported e) {
                startRecognition_2_0(modelHandle, config, callback, cookie);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    private void startRecognition_2_0(int modelHandle, RecognitionConfig config, ISoundTriggerHw2.Callback callback, int cookie) throws RemoteException {
        ISoundTriggerHw.RecognitionConfig config_2_0 = Hw2CompatUtil.convertRecognitionConfig_2_3_to_2_0(config);
        int retval = as2_0().startRecognition(modelHandle, config_2_0, new SoundTriggerCallback(callback), cookie);
        handleHalStatus(retval, "startRecognition");
    }

    private ISoundTriggerHw as2_0() {
        return this.mUnderlying_2_0;
    }

    private android.hardware.soundtrigger.V2_1.ISoundTriggerHw as2_1() throws NotSupported {
        android.hardware.soundtrigger.V2_1.ISoundTriggerHw iSoundTriggerHw = this.mUnderlying_2_1;
        if (iSoundTriggerHw == null) {
            throw new NotSupported("Underlying driver version < 2.1");
        }
        return iSoundTriggerHw;
    }

    private android.hardware.soundtrigger.V2_2.ISoundTriggerHw as2_2() throws NotSupported {
        android.hardware.soundtrigger.V2_2.ISoundTriggerHw iSoundTriggerHw = this.mUnderlying_2_2;
        if (iSoundTriggerHw == null) {
            throw new NotSupported("Underlying driver version < 2.2");
        }
        return iSoundTriggerHw;
    }

    private android.hardware.soundtrigger.V2_3.ISoundTriggerHw as2_3() throws NotSupported {
        android.hardware.soundtrigger.V2_3.ISoundTriggerHw iSoundTriggerHw = this.mUnderlying_2_3;
        if (iSoundTriggerHw == null) {
            throw new NotSupported("Underlying driver version < 2.3");
        }
        return iSoundTriggerHw;
    }

    private static class NotSupported extends Exception {
        NotSupported(String message) {
            super(message);
        }

        RecoverableException throwAsRecoverableException() {
            throw new RecoverableException(2, getMessage());
        }
    }

    private static class SoundTriggerCallback extends ISoundTriggerHwCallback.Stub {
        private final ISoundTriggerHw2.Callback mDelegate;

        private SoundTriggerCallback(ISoundTriggerHw2.Callback delegate) {
            Objects.requireNonNull(delegate);
            this.mDelegate = delegate;
        }

        @Override // android.hardware.soundtrigger.V2_1.ISoundTriggerHwCallback
        public void recognitionCallback_2_1(ISoundTriggerHwCallback.RecognitionEvent event, int cookie) {
            this.mDelegate.recognitionCallback(event, cookie);
        }

        @Override // android.hardware.soundtrigger.V2_1.ISoundTriggerHwCallback
        public void phraseRecognitionCallback_2_1(ISoundTriggerHwCallback.PhraseRecognitionEvent event, int cookie) {
            this.mDelegate.phraseRecognitionCallback(event, cookie);
        }

        @Override // android.hardware.soundtrigger.V2_1.ISoundTriggerHwCallback
        public void soundModelCallback_2_1(ISoundTriggerHwCallback.ModelEvent event, int cookie) {
        }

        @Override // android.hardware.soundtrigger.V2_0.ISoundTriggerHwCallback
        public void recognitionCallback(android.hardware.soundtrigger.V2_0.ISoundTriggerHwCallback.RecognitionEvent event, int cookie) {
            ISoundTriggerHwCallback.RecognitionEvent event_2_1 = Hw2CompatUtil.convertRecognitionEvent_2_0_to_2_1(event);
            this.mDelegate.recognitionCallback(event_2_1, cookie);
        }

        @Override // android.hardware.soundtrigger.V2_0.ISoundTriggerHwCallback
        public void phraseRecognitionCallback(android.hardware.soundtrigger.V2_0.ISoundTriggerHwCallback.PhraseRecognitionEvent event, int cookie) {
            ISoundTriggerHwCallback.PhraseRecognitionEvent event_2_1 = Hw2CompatUtil.convertPhraseRecognitionEvent_2_0_to_2_1(event);
            this.mDelegate.phraseRecognitionCallback(event_2_1, cookie);
        }

        @Override // android.hardware.soundtrigger.V2_0.ISoundTriggerHwCallback
        public void soundModelCallback(android.hardware.soundtrigger.V2_0.ISoundTriggerHwCallback.ModelEvent event, int cookie) {
        }
    }
}
