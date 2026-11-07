package com.android.server.soundtrigger_middleware;

import android.media.soundtrigger_middleware.ISoundTriggerCallback;
import android.media.soundtrigger_middleware.ISoundTriggerModule;
import android.media.soundtrigger_middleware.ModelParameterRange;
import android.media.soundtrigger_middleware.PhraseRecognitionEvent;
import android.media.soundtrigger_middleware.PhraseSoundModel;
import android.media.soundtrigger_middleware.RecognitionConfig;
import android.media.soundtrigger_middleware.RecognitionEvent;
import android.media.soundtrigger_middleware.SoundModel;
import android.media.soundtrigger_middleware.SoundTriggerModuleDescriptor;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class SoundTriggerMiddlewareLogging implements ISoundTriggerMiddlewareInternal, Dumpable {
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("MM-dd HH:mm:ss:SSS");
    private static final int NUM_EVENTS_TO_DUMP = 64;
    private static final String TAG = "SoundTriggerMiddlewareLogging";
    private final ISoundTriggerMiddlewareInternal mDelegate;
    private final LinkedList<Event> mLastEvents = new LinkedList<>();

    public SoundTriggerMiddlewareLogging(ISoundTriggerMiddlewareInternal delegate) {
        this.mDelegate = delegate;
    }

    public SoundTriggerModuleDescriptor[] listModules() throws Exception {
        try {
            SoundTriggerModuleDescriptor[] result = this.mDelegate.listModules();
            logReturn("listModules", result, new Object[0]);
            return result;
        } catch (Exception e) {
            logException("listModules", e, new Object[0]);
            throw e;
        }
    }

    public ISoundTriggerModule attach(int handle, ISoundTriggerCallback callback) throws Exception {
        try {
            ISoundTriggerModule result = this.mDelegate.attach(handle, new CallbackLogging(callback));
            logReturn("attach", result, Integer.valueOf(handle), callback);
            return new ModuleLogging(result);
        } catch (Exception e) {
            logException("attach", e, Integer.valueOf(handle), callback);
            throw e;
        }
    }

    @Override // android.media.ICaptureStateListener
    public void setCaptureState(boolean active) throws Exception {
        try {
            this.mDelegate.setCaptureState(active);
            logVoidReturn("setCaptureState", Boolean.valueOf(active));
        } catch (Exception e) {
            logException("setCaptureState", e, Boolean.valueOf(active));
            throw e;
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        throw new UnsupportedOperationException("This implementation is not inteded to be used directly with Binder.");
    }

    public String toString() {
        return this.mDelegate.toString();
    }

    private void logException(String methodName, Exception ex, Object... args) {
        logExceptionWithObject(this, methodName, ex, args);
    }

    private void logReturn(String methodName, Object retVal, Object... args) {
        logReturnWithObject(this, methodName, retVal, args);
    }

    private void logVoidReturn(String methodName, Object... args) {
        logVoidReturnWithObject(this, methodName, args);
    }

    private class CallbackLogging implements ISoundTriggerCallback {
        private final ISoundTriggerCallback mDelegate;

        private CallbackLogging(ISoundTriggerCallback delegate) {
            this.mDelegate = delegate;
        }

        public void onRecognition(int modelHandle, RecognitionEvent event) throws Exception {
            try {
                this.mDelegate.onRecognition(modelHandle, event);
                logVoidReturn("onRecognition", Integer.valueOf(modelHandle), event);
            } catch (Exception e) {
                logException("onRecognition", e, Integer.valueOf(modelHandle), event);
                throw e;
            }
        }

        public void onPhraseRecognition(int modelHandle, PhraseRecognitionEvent event) throws Exception {
            try {
                this.mDelegate.onPhraseRecognition(modelHandle, event);
                logVoidReturn("onPhraseRecognition", Integer.valueOf(modelHandle), event);
            } catch (Exception e) {
                logException("onPhraseRecognition", e, Integer.valueOf(modelHandle), event);
                throw e;
            }
        }

        public void onRecognitionAvailabilityChange(boolean available) throws Exception {
            try {
                this.mDelegate.onRecognitionAvailabilityChange(available);
                logVoidReturn("onRecognitionAvailabilityChange", Boolean.valueOf(available));
            } catch (Exception e) {
                logException("onRecognitionAvailabilityChange", e, Boolean.valueOf(available));
                throw e;
            }
        }

        public void onModuleDied() throws Exception {
            try {
                this.mDelegate.onModuleDied();
                logVoidReturn("onModuleDied", new Object[0]);
            } catch (Exception e) {
                logException("onModuleDied", e, new Object[0]);
                throw e;
            }
        }

        private void logException(String methodName, Exception ex, Object... args) {
            SoundTriggerMiddlewareLogging.this.logExceptionWithObject(this, methodName, ex, args);
        }

        private void logVoidReturn(String methodName, Object... args) {
            SoundTriggerMiddlewareLogging.this.logVoidReturnWithObject(this, methodName, args);
        }

        public IBinder asBinder() {
            return this.mDelegate.asBinder();
        }

        public String toString() {
            return this.mDelegate.toString();
        }
    }

    private class ModuleLogging implements ISoundTriggerModule {
        private final ISoundTriggerModule mDelegate;

        private ModuleLogging(ISoundTriggerModule delegate) {
            this.mDelegate = delegate;
        }

        public int loadModel(SoundModel model) throws Exception {
            try {
                int result = this.mDelegate.loadModel(model);
                logReturn("loadModel", Integer.valueOf(result), model);
                return result;
            } catch (Exception e) {
                logException("loadModel", e, model);
                throw e;
            }
        }

        public int loadPhraseModel(PhraseSoundModel model) throws Exception {
            try {
                int result = this.mDelegate.loadPhraseModel(model);
                logReturn("loadPhraseModel", Integer.valueOf(result), model);
                return result;
            } catch (Exception e) {
                logException("loadPhraseModel", e, model);
                throw e;
            }
        }

        public void unloadModel(int modelHandle) throws Exception {
            try {
                this.mDelegate.unloadModel(modelHandle);
                logVoidReturn("unloadModel", Integer.valueOf(modelHandle));
            } catch (Exception e) {
                logException("unloadModel", e, Integer.valueOf(modelHandle));
                throw e;
            }
        }

        public void startRecognition(int modelHandle, RecognitionConfig config) throws Exception {
            try {
                this.mDelegate.startRecognition(modelHandle, config);
                logVoidReturn("startRecognition", Integer.valueOf(modelHandle), config);
            } catch (Exception e) {
                logException("startRecognition", e, Integer.valueOf(modelHandle), config);
                throw e;
            }
        }

        public void stopRecognition(int modelHandle) throws Exception {
            try {
                this.mDelegate.stopRecognition(modelHandle);
                logVoidReturn("stopRecognition", Integer.valueOf(modelHandle));
            } catch (Exception e) {
                logException("stopRecognition", e, Integer.valueOf(modelHandle));
                throw e;
            }
        }

        public void forceRecognitionEvent(int modelHandle) throws Exception {
            try {
                this.mDelegate.forceRecognitionEvent(modelHandle);
                logVoidReturn("forceRecognitionEvent", Integer.valueOf(modelHandle));
            } catch (Exception e) {
                logException("forceRecognitionEvent", e, Integer.valueOf(modelHandle));
                throw e;
            }
        }

        public void setModelParameter(int modelHandle, int modelParam, int value) throws Exception {
            try {
                this.mDelegate.setModelParameter(modelHandle, modelParam, value);
                logVoidReturn("setModelParameter", Integer.valueOf(modelHandle), Integer.valueOf(modelParam), Integer.valueOf(value));
            } catch (Exception e) {
                logException("setModelParameter", e, Integer.valueOf(modelHandle), Integer.valueOf(modelParam), Integer.valueOf(value));
                throw e;
            }
        }

        public int getModelParameter(int modelHandle, int modelParam) throws Exception {
            try {
                int result = this.mDelegate.getModelParameter(modelHandle, modelParam);
                logReturn("getModelParameter", Integer.valueOf(result), Integer.valueOf(modelHandle), Integer.valueOf(modelParam));
                return result;
            } catch (Exception e) {
                logException("getModelParameter", e, Integer.valueOf(modelHandle), Integer.valueOf(modelParam));
                throw e;
            }
        }

        public ModelParameterRange queryModelParameterSupport(int modelHandle, int modelParam) throws Exception {
            try {
                ModelParameterRange result = this.mDelegate.queryModelParameterSupport(modelHandle, modelParam);
                logReturn("queryModelParameterSupport", result, Integer.valueOf(modelHandle), Integer.valueOf(modelParam));
                return result;
            } catch (Exception e) {
                logException("queryModelParameterSupport", e, Integer.valueOf(modelHandle), Integer.valueOf(modelParam));
                throw e;
            }
        }

        public void detach() throws Exception {
            try {
                this.mDelegate.detach();
                logVoidReturn("detach", new Object[0]);
            } catch (Exception e) {
                logException("detach", e, new Object[0]);
                throw e;
            }
        }

        public IBinder asBinder() {
            return this.mDelegate.asBinder();
        }

        public String toString() {
            return this.mDelegate.toString();
        }

        private void logException(String methodName, Exception ex, Object... args) {
            SoundTriggerMiddlewareLogging.this.logExceptionWithObject(this, methodName, ex, args);
        }

        private void logReturn(String methodName, Object retVal, Object... args) {
            SoundTriggerMiddlewareLogging.this.logReturnWithObject(this, methodName, retVal, args);
        }

        private void logVoidReturn(String methodName, Object... args) {
            SoundTriggerMiddlewareLogging.this.logVoidReturnWithObject(this, methodName, args);
        }
    }

    private static class Event {
        public final String message;
        public final long timestamp;

        private Event(String message) {
            this.timestamp = System.currentTimeMillis();
            this.message = message;
        }
    }

    private static String printArgs(Object[] args) {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < args.length; i++) {
            if (i > 0) {
                result.append(", ");
            }
            printObject(result, args[i]);
        }
        return result.toString();
    }

    private static void printObject(StringBuilder builder, Object obj) {
        ObjectPrinter.print(builder, obj, true, 16);
    }

    private static String printObject(Object obj) {
        StringBuilder builder = new StringBuilder();
        printObject(builder, obj);
        return builder.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logReturnWithObject(Object object, String methodName, Object retVal, Object[] args) {
        String message = String.format("%s[this=%s, caller=%d/%d](%s) -> %s", methodName, object, Integer.valueOf(Binder.getCallingUid()), Integer.valueOf(Binder.getCallingPid()), printArgs(args), printObject(retVal));
        Log.i(TAG, message);
        appendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logVoidReturnWithObject(Object object, String methodName, Object[] args) {
        String message = String.format("%s[this=%s, caller=%d/%d](%s)", methodName, object, Integer.valueOf(Binder.getCallingUid()), Integer.valueOf(Binder.getCallingPid()), printArgs(args));
        Log.i(TAG, message);
        appendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logExceptionWithObject(Object object, String methodName, Exception ex, Object[] args) {
        String message = String.format("%s[this=%s, caller=%d/%d](%s) threw", methodName, object, Integer.valueOf(Binder.getCallingUid()), Integer.valueOf(Binder.getCallingPid()), printArgs(args));
        Log.e(TAG, message, ex);
        appendMessage(message + " " + ex.toString());
    }

    private void appendMessage(String message) {
        Event event = new Event(message);
        synchronized (this.mLastEvents) {
            if (this.mLastEvents.size() > 64) {
                this.mLastEvents.remove();
            }
            this.mLastEvents.add(event);
        }
    }

    @Override // com.android.server.soundtrigger_middleware.Dumpable
    public void dump(PrintWriter pw) {
        pw.println();
        pw.println("=========================================");
        pw.println("Last events");
        pw.println("=========================================");
        synchronized (this.mLastEvents) {
            for (Event event : this.mLastEvents) {
                pw.print(DATE_FORMAT.format(new Date(event.timestamp)));
                pw.print('\t');
                pw.println(event.message);
            }
        }
        pw.println();
        ISoundTriggerMiddlewareInternal iSoundTriggerMiddlewareInternal = this.mDelegate;
        if (iSoundTriggerMiddlewareInternal instanceof Dumpable) {
            ((Dumpable) iSoundTriggerMiddlewareInternal).dump(pw);
        }
    }
}
