package com.android.server.soundtrigger_middleware;

import android.media.soundtrigger_middleware.ISoundTriggerCallback;
import android.media.soundtrigger_middleware.ISoundTriggerModule;
import android.media.soundtrigger_middleware.SoundTriggerModuleDescriptor;
import android.os.IBinder;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SoundTriggerMiddlewareImpl implements ISoundTriggerMiddlewareInternal {
    private static final String TAG = "SoundTriggerMiddlewareImpl";
    private final SoundTriggerModule[] mModules;

    public static abstract class AudioSessionProvider {
        public abstract AudioSession acquireSession();

        public abstract void releaseSession(int i);

        public static final class AudioSession {
            final int mDeviceHandle;
            final int mIoHandle;
            final int mSessionHandle;

            AudioSession(int sessionHandle, int ioHandle, int deviceHandle) {
                this.mSessionHandle = sessionHandle;
                this.mIoHandle = ioHandle;
                this.mDeviceHandle = deviceHandle;
            }
        }
    }

    public SoundTriggerMiddlewareImpl(HalFactory[] halFactories, AudioSessionProvider audioSessionProvider) {
        List<SoundTriggerModule> modules = new ArrayList<>(halFactories.length);
        for (HalFactory halFactory : halFactories) {
            try {
                modules.add(new SoundTriggerModule(halFactory, audioSessionProvider));
            } catch (Exception e) {
                Log.e(TAG, "Failed to add a SoundTriggerModule instance", e);
            }
        }
        int i = modules.size();
        this.mModules = (SoundTriggerModule[]) modules.toArray(new SoundTriggerModule[i]);
    }

    public SoundTriggerMiddlewareImpl(HalFactory factory, AudioSessionProvider audioSessionProvider) {
        this(new HalFactory[]{factory}, audioSessionProvider);
    }

    public SoundTriggerModuleDescriptor[] listModules() {
        SoundTriggerModuleDescriptor[] result = new SoundTriggerModuleDescriptor[this.mModules.length];
        for (int i = 0; i < this.mModules.length; i++) {
            SoundTriggerModuleDescriptor desc = new SoundTriggerModuleDescriptor();
            desc.handle = i;
            desc.properties = this.mModules[i].getProperties();
            result[i] = desc;
        }
        return result;
    }

    public ISoundTriggerModule attach(int handle, ISoundTriggerCallback callback) {
        return this.mModules[handle].attach(callback);
    }

    @Override // android.media.ICaptureStateListener
    public void setCaptureState(boolean active) {
        for (SoundTriggerModule module : this.mModules) {
            module.setExternalCaptureState(active);
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        throw new UnsupportedOperationException("This implementation is not inteded to be used directly with Binder.");
    }
}
