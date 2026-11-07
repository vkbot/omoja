package com.android.server.soundtrigger_middleware;

import android.content.Context;
import android.hardware.soundtrigger.V2_0.ISoundTriggerHw;
import android.media.soundtrigger_middleware.ISoundTriggerCallback;
import android.media.soundtrigger_middleware.ISoundTriggerMiddlewareService;
import android.media.soundtrigger_middleware.ISoundTriggerModule;
import android.media.soundtrigger_middleware.ModelParameterRange;
import android.media.soundtrigger_middleware.PhraseSoundModel;
import android.media.soundtrigger_middleware.RecognitionConfig;
import android.media.soundtrigger_middleware.SoundModel;
import android.media.soundtrigger_middleware.SoundTriggerModuleDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.android.server.SystemService;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class SoundTriggerMiddlewareService extends ISoundTriggerMiddlewareService.Stub {
    private static final String TAG = "SoundTriggerMiddlewareService";
    private final ISoundTriggerMiddlewareInternal mDelegate;

    private SoundTriggerMiddlewareService(ISoundTriggerMiddlewareInternal delegate) {
        Objects.requireNonNull(delegate);
        this.mDelegate = delegate;
        new ExternalCaptureStateTracker(new Consumer() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerMiddlewareService$usinpPnoUy9JbhY8PKAGU1Qj0TE
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$0$SoundTriggerMiddlewareService((Boolean) obj);
            }
        });
    }

    public /* synthetic */ void lambda$new$0$SoundTriggerMiddlewareService(Boolean active) {
        try {
            this.mDelegate.setCaptureState(active.booleanValue());
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }

    public SoundTriggerModuleDescriptor[] listModules() throws RemoteException {
        return this.mDelegate.listModules();
    }

    public ISoundTriggerModule attach(int handle, ISoundTriggerCallback callback) throws RemoteException {
        return new ModuleService(this.mDelegate.attach(handle, callback));
    }

    protected void dump(FileDescriptor fd, PrintWriter fout, String[] args) {
        ISoundTriggerMiddlewareInternal iSoundTriggerMiddlewareInternal = this.mDelegate;
        if (iSoundTriggerMiddlewareInternal instanceof Dumpable) {
            ((Dumpable) iSoundTriggerMiddlewareInternal).dump(fout);
        }
    }

    private static final class ModuleService extends ISoundTriggerModule.Stub {
        private final ISoundTriggerModule mDelegate;

        private ModuleService(ISoundTriggerModule delegate) {
            this.mDelegate = delegate;
        }

        public int loadModel(SoundModel model) throws RemoteException {
            return this.mDelegate.loadModel(model);
        }

        public int loadPhraseModel(PhraseSoundModel model) throws RemoteException {
            return this.mDelegate.loadPhraseModel(model);
        }

        public void unloadModel(int modelHandle) throws RemoteException {
            this.mDelegate.unloadModel(modelHandle);
        }

        public void startRecognition(int modelHandle, RecognitionConfig config) throws RemoteException {
            this.mDelegate.startRecognition(modelHandle, config);
        }

        public void stopRecognition(int modelHandle) throws RemoteException {
            this.mDelegate.stopRecognition(modelHandle);
        }

        public void forceRecognitionEvent(int modelHandle) throws RemoteException {
            this.mDelegate.forceRecognitionEvent(modelHandle);
        }

        public void setModelParameter(int modelHandle, int modelParam, int value) throws RemoteException {
            this.mDelegate.setModelParameter(modelHandle, modelParam, value);
        }

        public int getModelParameter(int modelHandle, int modelParam) throws RemoteException {
            return this.mDelegate.getModelParameter(modelHandle, modelParam);
        }

        public ModelParameterRange queryModelParameterSupport(int modelHandle, int modelParam) throws RemoteException {
            return this.mDelegate.queryModelParameterSupport(modelHandle, modelParam);
        }

        public void detach() throws RemoteException {
            this.mDelegate.detach();
        }
    }

    public static final class Lifecycle extends SystemService {
        public Lifecycle(Context context) {
            super(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            HalFactory[] factories = {new HalFactory() { // from class: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerMiddlewareService$Lifecycle$-t8UndY0AHGyM6n9ce2y6qok3Ho
                @Override // com.android.server.soundtrigger_middleware.HalFactory
                public final ISoundTriggerHw create() {
                    return SoundTriggerMiddlewareService.Lifecycle.lambda$onStart$0();
                }
            }};
            publishBinderService("soundtrigger_middleware", new SoundTriggerMiddlewareService(new SoundTriggerMiddlewareLogging(new SoundTriggerMiddlewareValidation(new SoundTriggerMiddlewareImpl(factories, new AudioSessionProviderImpl()), getContext()))));
        }

        static /* synthetic */ ISoundTriggerHw lambda$onStart$0() {
            try {
                Log.d(SoundTriggerMiddlewareService.TAG, "Connecting to default ISoundTriggerHw");
                return ISoundTriggerHw.getService(true);
            } catch (RemoteException e) {
                throw e.rethrowAsRuntimeException();
            }
        }
    }
}
