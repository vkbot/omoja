package com.android.server.soundtrigger_middleware;

import android.hardware.soundtrigger.V2_1.ISoundTriggerHw;
import android.hardware.soundtrigger.V2_1.ISoundTriggerHwCallback;
import android.hardware.soundtrigger.V2_3.ModelParameterRange;
import android.hardware.soundtrigger.V2_3.Properties;
import android.hardware.soundtrigger.V2_3.RecognitionConfig;
import android.os.IHwBinder;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ISoundTriggerHw2 {

    public interface Callback {
        void phraseRecognitionCallback(ISoundTriggerHwCallback.PhraseRecognitionEvent phraseRecognitionEvent, int i);

        void recognitionCallback(ISoundTriggerHwCallback.RecognitionEvent recognitionEvent, int i);
    }

    int getModelParameter(int i, int i2);

    void getModelState(int i);

    Properties getProperties();

    String interfaceDescriptor() throws RemoteException;

    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j);

    int loadPhraseSoundModel(ISoundTriggerHw.PhraseSoundModel phraseSoundModel, Callback callback, int i);

    int loadSoundModel(ISoundTriggerHw.SoundModel soundModel, Callback callback, int i);

    ModelParameterRange queryParameter(int i, int i2);

    void setModelParameter(int i, int i2, int i3);

    void startRecognition(int i, RecognitionConfig recognitionConfig, Callback callback, int i2);

    void stopAllRecognitions();

    void stopRecognition(int i);

    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient);

    void unloadSoundModel(int i);
}
