package com.android.server.soundtrigger_middleware;

import android.hardware.soundtrigger.V2_1.ISoundTriggerHw;
import android.hardware.soundtrigger.V2_1.ISoundTriggerHwCallback;
import android.hardware.soundtrigger.V2_3.ModelParameterRange;
import android.hardware.soundtrigger.V2_3.Properties;
import android.hardware.soundtrigger.V2_3.RecognitionConfig;
import android.os.IHwBinder;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.util.Log;
import com.android.server.notification.SnoozeHelper;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class SoundTriggerHw2Enforcer implements ISoundTriggerHw2 {
    static final String TAG = "SoundTriggerHw2Enforcer";
    Map<Integer, Boolean> mModelStates = new HashMap();
    final ISoundTriggerHw2 mUnderlying;

    public SoundTriggerHw2Enforcer(ISoundTriggerHw2 underlying) {
        this.mUnderlying = underlying;
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public Properties getProperties() {
        try {
            return this.mUnderlying.getProperties();
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public int loadSoundModel(ISoundTriggerHw.SoundModel soundModel, ISoundTriggerHw2.Callback callback, int cookie) {
        try {
            int handle = this.mUnderlying.loadSoundModel(soundModel, new CallbackEnforcer(callback), cookie);
            synchronized (this.mModelStates) {
                this.mModelStates.put(Integer.valueOf(handle), false);
            }
            return handle;
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public int loadPhraseSoundModel(ISoundTriggerHw.PhraseSoundModel soundModel, ISoundTriggerHw2.Callback callback, int cookie) {
        try {
            int handle = this.mUnderlying.loadPhraseSoundModel(soundModel, new CallbackEnforcer(callback), cookie);
            synchronized (this.mModelStates) {
                this.mModelStates.put(Integer.valueOf(handle), false);
            }
            return handle;
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void unloadSoundModel(int modelHandle) {
        try {
            this.mUnderlying.unloadSoundModel(modelHandle);
            synchronized (this.mModelStates) {
                this.mModelStates.remove(Integer.valueOf(modelHandle));
            }
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void stopRecognition(int modelHandle) {
        try {
            this.mUnderlying.stopRecognition(modelHandle);
            synchronized (this.mModelStates) {
                this.mModelStates.replace(Integer.valueOf(modelHandle), false);
            }
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void stopAllRecognitions() {
        try {
            this.mUnderlying.stopAllRecognitions();
            synchronized (this.mModelStates) {
                for (Map.Entry<Integer, Boolean> entry : this.mModelStates.entrySet()) {
                    entry.setValue(false);
                }
            }
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void startRecognition(int modelHandle, RecognitionConfig config, ISoundTriggerHw2.Callback callback, int cookie) {
        try {
            this.mUnderlying.startRecognition(modelHandle, config, new CallbackEnforcer(callback), cookie);
            synchronized (this.mModelStates) {
                this.mModelStates.replace(Integer.valueOf(modelHandle), true);
            }
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void getModelState(int modelHandle) {
        try {
            this.mUnderlying.getModelState(modelHandle);
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public int getModelParameter(int modelHandle, int param) {
        try {
            return this.mUnderlying.getModelParameter(modelHandle, param);
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public void setModelParameter(int modelHandle, int param, int value) {
        try {
            this.mUnderlying.setModelParameter(modelHandle, param, value);
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public ModelParameterRange queryParameter(int modelHandle, int param) {
        try {
            return this.mUnderlying.queryParameter(modelHandle, param);
        } catch (RuntimeException e) {
            throw handleException(e);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
        return this.mUnderlying.linkToDeath(recipient, cookie);
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
        return this.mUnderlying.unlinkToDeath(recipient);
    }

    @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2
    public String interfaceDescriptor() throws RemoteException {
        return this.mUnderlying.interfaceDescriptor();
    }

    private static RuntimeException handleException(RuntimeException e) {
        Log.e(TAG, "Exception caught from HAL, rebooting HAL");
        rebootHal();
        throw e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void rebootHal() {
        SystemProperties.set("sys.audio.restart.hal", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
    }

    private class CallbackEnforcer implements ISoundTriggerHw2.Callback {
        private final ISoundTriggerHw2.Callback mUnderlying;

        private CallbackEnforcer(ISoundTriggerHw2.Callback underlying) {
            this.mUnderlying = underlying;
        }

        @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2.Callback
        public void recognitionCallback(ISoundTriggerHwCallback.RecognitionEvent event, int cookie) {
            int model = event.header.model;
            synchronized (SoundTriggerHw2Enforcer.this.mModelStates) {
                if (!SoundTriggerHw2Enforcer.this.mModelStates.getOrDefault(Integer.valueOf(model), false).booleanValue()) {
                    Log.wtfStack(SoundTriggerHw2Enforcer.TAG, "Unexpected recognition event for model: " + model);
                    SoundTriggerHw2Enforcer.rebootHal();
                    return;
                }
                if (event.header.status != 3) {
                    SoundTriggerHw2Enforcer.this.mModelStates.replace(Integer.valueOf(model), false);
                }
                this.mUnderlying.recognitionCallback(event, cookie);
            }
        }

        @Override // com.android.server.soundtrigger_middleware.ISoundTriggerHw2.Callback
        public void phraseRecognitionCallback(ISoundTriggerHwCallback.PhraseRecognitionEvent event, int cookie) {
            int model = event.common.header.model;
            synchronized (SoundTriggerHw2Enforcer.this.mModelStates) {
                if (!SoundTriggerHw2Enforcer.this.mModelStates.getOrDefault(Integer.valueOf(model), false).booleanValue()) {
                    Log.wtfStack(SoundTriggerHw2Enforcer.TAG, "Unexpected recognition event for model: " + model);
                    SoundTriggerHw2Enforcer.rebootHal();
                    return;
                }
                if (event.common.header.status != 3) {
                    SoundTriggerHw2Enforcer.this.mModelStates.replace(Integer.valueOf(model), false);
                }
                this.mUnderlying.phraseRecognitionCallback(event, cookie);
            }
        }
    }
}
