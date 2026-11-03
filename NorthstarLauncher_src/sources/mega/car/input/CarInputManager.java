package mega.car.input;

import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import com.mega.nexus.os.MegaSystemProperties;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
import mega.car.CarManagerBase;
import mega.car.MegaCar;
import mega.car.utils.LogUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class CarInputManager extends CarManagerBase {
    public static final int INPUT_TYPE_ALL_INPUTS = 1;
    public static final int INPUT_TYPE_CUSTOM_INPUT_EVENT = 200;
    public static final int INPUT_TYPE_SYSTEM_KEYS = 100;
    private static final int INVALID_LEVEL = -2;
    public static final int LEVEL_PRIORITY_DEFAULT = 0;
    public static final int LEVEL_PRIORITY_FORCE = -1;
    public static final int LEVEL_PRIORITY_HIGH = 1;
    public static final int LEVEL_PRIORITY_MAX = 2;
    public static final int LEVEL_PRIORITY_TEMPORARY = 3;
    private static final String TAG = "CarInputManager";
    private CallbackHolder mCarInputCaptureCallbacks;
    private int mCurrentLevel;
    private final Object mLock;
    private int mLongPressTimeout;
    private Method mReleaseMethod2;
    private final ICarInput mService;
    private final ICarInputCallback mServiceCallback;

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface InputTypeEnum {
    }

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface LevelEnum {
    }

    public int getLongPressTimeout() {
        return this.mLongPressTimeout;
    }

    public void setLongPressTimeout(int i) {
        this.mLongPressTimeout = i;
    }

    public interface CarInputCaptureCallback {
        void onCustomInputEvent(CustomInputEvent customInputEvent);

        void onCustomerKeyLongPress(CustomInputEvent customInputEvent);

        boolean onInterceptTouchEvent(CustomInputEvent customInputEvent);

        default void onKeyEvent(KeyEvent keyEvent) {
            LogUtil.d(CarInputManager.TAG, "onKeyEvent : " + keyEvent);
        }

        default boolean onInterceptRotaryEvent(CustomRotaryEvent customRotaryEvent) {
            LogUtil.i(CarInputManager.TAG, "onInterceptRotaryEvent, default return false for: " + customRotaryEvent);
            return false;
        }

        default void onCustomRotaryEvent(CustomRotaryEvent customRotaryEvent) {
            LogUtil.i(CarInputManager.TAG, "onCustomRotaryEvent : " + customRotaryEvent);
        }
    }

    public CarInputManager(MegaCar megaCar, IBinder iBinder) {
        super(megaCar);
        this.mServiceCallback = new ICarInputCallbackImpl();
        this.mLock = new Object();
        this.mCarInputCaptureCallbacks = null;
        this.mCurrentLevel = -2;
        this.mReleaseMethod2 = null;
        this.mService = ICarInput.Stub.asInterface(iBinder);
        this.mLongPressTimeout = Settings.System.getInt(getContext().getContentResolver(), "custom_long_press_timeout", ViewConfiguration.getLongPressTimeout());
        checkReleaseMethod2();
    }

    public void requestInputEventCapture(int i, CarInputCaptureCallback carInputCaptureCallback) {
        requestInputEventCapture(i, getMainThreadEventHandler(), carInputCaptureCallback);
    }

    public void requestInputEventCapture(int i, int i2, CarInputCaptureCallback carInputCaptureCallback) {
        requestInputEventCapture(i, i2, getMainThreadEventHandler(), carInputCaptureCallback);
    }

    public void requestInputEventCapture(int i, Handler handler, CarInputCaptureCallback carInputCaptureCallback) {
        Objects.requireNonNull(handler);
        Objects.requireNonNull(carInputCaptureCallback);
        synchronized (this.mLock) {
            this.mCarInputCaptureCallbacks = new CallbackHolder(carInputCaptureCallback, handler);
        }
        this.mCurrentLevel = 0;
        try {
            this.mService.requestInputEventCapture(this.mServiceCallback, i);
        } catch (RemoteException e) {
            handleRemoteExceptionFromCarService(e);
        }
    }

    public void requestInputEventCapture(int i, int i2, Handler handler, CarInputCaptureCallback carInputCaptureCallback) {
        Objects.requireNonNull(handler);
        Objects.requireNonNull(carInputCaptureCallback);
        synchronized (this.mLock) {
            this.mCarInputCaptureCallbacks = new CallbackHolder(carInputCaptureCallback, handler);
        }
        int i3 = this.mCurrentLevel;
        if (i3 == -2) {
            this.mCurrentLevel = i2;
        } else if (i3 != i2) {
            LogUtil.w(TAG, "can not change request level!");
            return;
        }
        try {
            this.mService.requestInputEventCaptureWithLevel(this.mServiceCallback, i, i2);
        } catch (RemoteException e) {
            handleRemoteExceptionFromCarService(e);
        }
    }

    public void releaseInputEventCapture() {
        CallbackHolder callbackHolder;
        synchronized (this.mLock) {
            callbackHolder = this.mCarInputCaptureCallbacks;
        }
        if (callbackHolder == null) {
            return;
        }
        synchronized (this.mLock) {
            this.mCarInputCaptureCallbacks = null;
        }
        try {
            if (this.mReleaseMethod2 != null) {
                try {
                    LogUtil.i(TAG, "use releaseInputEventCapture2 for " + this.mServiceCallback);
                    this.mReleaseMethod2.invoke(this.mService, this.mServiceCallback);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    LogUtil.w(TAG, "call releaseInputEventCapture2 error: " + e.getMessage() + ", use releaseInputEventCapture");
                    this.mService.releaseInputEventCapture(this.mServiceCallback);
                }
            } else {
                LogUtil.i(TAG, "use releaseInputEventCapture for " + this.mServiceCallback);
                this.mService.releaseInputEventCapture(this.mServiceCallback);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // mega.car.CarManagerBase
    protected void onCarDisconnected() {
        synchronized (this.mLock) {
            releaseInputEventCapture();
            this.mCarInputCaptureCallbacks = null;
        }
    }

    private CallbackHolder getCallback() {
        CallbackHolder callbackHolder;
        synchronized (this.mLock) {
            callbackHolder = this.mCarInputCaptureCallbacks;
        }
        return callbackHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchKeyEvent(final KeyEvent keyEvent) {
        final CallbackHolder callback = getCallback();
        if (callback == null) {
            LogUtil.w(TAG, "warning, null callback");
        } else {
            callback.mHandler.post(new Runnable() { // from class: mega.car.input.CarInputManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    callback.mCallback.onKeyEvent(keyEvent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchCustomInputEvent(final CustomInputEvent customInputEvent) {
        boolean zOnInterceptTouchEvent;
        final CallbackHolder callback = getCallback();
        boolean z = false;
        if (callback == null) {
            LogUtil.w(TAG, "warning, null callback");
            if (this.mCurrentLevel == -1) {
                forceCustomEventDownReport(customInputEvent.getSeq(), false);
                return;
            } else {
                customEventDownReport(customInputEvent.getSeq(), false);
                return;
            }
        }
        if (customInputEvent.getAction() != 0 || customInputEvent.getRepeatCount() <= 0) {
            LogUtil.i(TAG, "start to ask onInterceptTouchEvent for events " + customInputEvent);
            zOnInterceptTouchEvent = callback.mCallback.onInterceptTouchEvent(customInputEvent);
        } else {
            z = true;
            zOnInterceptTouchEvent = true;
        }
        if (!z) {
            LogUtil.i(TAG, (this.mCurrentLevel == -1 ? "LEVEL_PRIORITY_FORCE dispatch for event: " : "start report to service intercept: " + zOnInterceptTouchEvent + ", for event: ") + customInputEvent);
        }
        if (this.mCurrentLevel == -1) {
            forceCustomEventDownReport(customInputEvent.getSeq(), zOnInterceptTouchEvent);
        } else {
            customEventDownReport(customInputEvent.getSeq(), zOnInterceptTouchEvent);
            LogUtil.i(TAG, "end report to service intercept: " + zOnInterceptTouchEvent + ", for event: " + customInputEvent);
        }
        if (zOnInterceptTouchEvent) {
            if (!z) {
                LogUtil.i(TAG, "intercept true, ready to callBack onCustomInputEvent for event " + customInputEvent);
            }
            LogUtil.i(TAG, "ready to fire events " + customInputEvent);
            callback.mHandler.post(new Runnable() { // from class: mega.car.input.CarInputManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1797lambda$dispatchCustomInputEvent$1$megacarinputCarInputManager(callback, customInputEvent);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$dispatchCustomInputEvent$1$mega-car-input-CarInputManager, reason: not valid java name */
    /* synthetic */ void m1797lambda$dispatchCustomInputEvent$1$megacarinputCarInputManager(CallbackHolder callbackHolder, CustomInputEvent customInputEvent) {
        boolean zHasPostedLongPress = callbackHolder.hasPostedLongPress(customInputEvent);
        if (customInputEvent.getEventTime() - customInputEvent.getDownTime() >= this.mLongPressTimeout && !zHasPostedLongPress) {
            LogUtil.i(TAG, "Firing long press events " + customInputEvent + " on callback " + callbackHolder.mCallback);
            callbackHolder.setLongPressPostMark(customInputEvent);
            callbackHolder.mCallback.onCustomerKeyLongPress(customInputEvent);
        }
        if (customInputEvent.getAction() == 1) {
            callbackHolder.clearLongPressPostMark(customInputEvent);
        }
        LogUtil.i(TAG, "Firing events " + customInputEvent + " on callback " + callbackHolder.mCallback);
        callbackHolder.mCallback.onCustomInputEvent(customInputEvent);
    }

    private void customEventDownReport(int i, boolean z) {
        try {
            this.mService.customEventDownReport(i, z);
        } catch (RemoteException e) {
            handleRemoteExceptionFromCarService(e);
        }
    }

    private void forceCustomEventDownReport(int i, boolean z) {
        try {
            this.mService.forceCustomEventDownReport(i, z);
        } catch (RemoteException e) {
            handleRemoteExceptionFromCarService(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchCustomRotaryEvent(final CustomRotaryEvent customRotaryEvent) {
        final CallbackHolder callback = getCallback();
        if (callback == null) {
            LogUtil.w(TAG, "warning, null callback to fire event: " + customRotaryEvent);
            customRotaryEventInterceptReport(customRotaryEvent.getSeq(), false);
            return;
        }
        String str = TAG;
        LogUtil.i(str, "start to ask dispatchCustomRotaryEvent for event: " + customRotaryEvent);
        boolean zOnInterceptRotaryEvent = callback.mCallback.onInterceptRotaryEvent(customRotaryEvent);
        LogUtil.i(str, "start report dispatchCustomRotaryEvent intercept: " + zOnInterceptRotaryEvent + ", for event: " + customRotaryEvent);
        customRotaryEventInterceptReport(customRotaryEvent.getSeq(), zOnInterceptRotaryEvent);
        if (zOnInterceptRotaryEvent) {
            LogUtil.i(str, "ready to fire events " + customRotaryEvent);
            callback.mHandler.post(new Runnable() { // from class: mega.car.input.CarInputManager$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    CarInputManager.lambda$dispatchCustomRotaryEvent$2(customRotaryEvent, callback);
                }
            });
        }
    }

    static /* synthetic */ void lambda$dispatchCustomRotaryEvent$2(CustomRotaryEvent customRotaryEvent, CallbackHolder callbackHolder) {
        LogUtil.i(TAG, "Firing events " + customRotaryEvent + " on callback " + callbackHolder.mCallback);
        callbackHolder.mCallback.onCustomRotaryEvent(customRotaryEvent);
    }

    private void customRotaryEventInterceptReport(int i, boolean z) {
        try {
            this.mService.customRotaryEventInterceptReport(i, z);
        } catch (RemoteException e) {
            handleRemoteExceptionFromCarService(e);
        }
    }

    private static final class ICarInputCallbackImpl extends ICarInputCallback.Stub {
        private final WeakReference<CarInputManager> mManager;

        private ICarInputCallbackImpl(CarInputManager carInputManager) {
            this.mManager = new WeakReference<>(carInputManager);
        }

        @Override // mega.car.input.ICarInputCallback
        public void onKeyEvent(KeyEvent keyEvent) {
            CarInputManager carInputManager = this.mManager.get();
            if (carInputManager != null) {
                carInputManager.dispatchKeyEvent(keyEvent);
            } else {
                LogUtil.w(CarInputManager.TAG, "warning, null weak reference for manager");
            }
        }

        @Override // mega.car.input.ICarInputCallback
        public void onCustomInputEvent(CustomInputEvent customInputEvent) {
            CarInputManager carInputManager = this.mManager.get();
            if (carInputManager != null) {
                carInputManager.dispatchCustomInputEvent(customInputEvent);
            } else {
                LogUtil.w(CarInputManager.TAG, "warning, null weak reference for manager");
            }
        }

        @Override // mega.car.input.ICarInputCallback
        public void onCustomRotaryEvent(CustomRotaryEvent customRotaryEvent) {
            CarInputManager carInputManager = this.mManager.get();
            if (carInputManager != null) {
                carInputManager.dispatchCustomRotaryEvent(customRotaryEvent);
            } else {
                LogUtil.w(CarInputManager.TAG, "warning, null weak reference for manager");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class CallbackHolder {
        final CarInputCaptureCallback mCallback;
        final SparseArray<Pair<CustomInputEvent, Boolean>> mEventTarget = new SparseArray<>();
        final Handler mHandler;

        CallbackHolder(CarInputCaptureCallback carInputCaptureCallback, Handler handler) {
            this.mCallback = carInputCaptureCallback;
            this.mHandler = handler;
        }

        public void setLongPressPostMark(CustomInputEvent customInputEvent) {
            this.mEventTarget.put(customInputEvent.getInputCode(), new Pair<>(customInputEvent, true));
        }

        public void clearLongPressPostMark(CustomInputEvent customInputEvent) {
            this.mEventTarget.remove(customInputEvent.getInputCode());
        }

        public boolean hasPostedLongPress(CustomInputEvent customInputEvent) {
            Pair<CustomInputEvent, Boolean> pair = this.mEventTarget.get(customInputEvent.getInputCode());
            return pair != null && pair.first != null && ((CustomInputEvent) pair.first).getDownTime() == customInputEvent.getDownTime() && ((Boolean) pair.second).booleanValue();
        }
    }

    private void checkReleaseMethod2() {
        if (MegaSystemProperties.getInt("mega.car_input_release_capture2", -1) < 1) {
            LogUtil.w(TAG, "CarInputService does not have releaseInputEventCapture2");
            return;
        }
        try {
            this.mReleaseMethod2 = this.mService.getClass().getDeclaredMethod("releaseInputEventCapture2", ICarInputCallback.class);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        Method method = this.mReleaseMethod2;
        if (method != null) {
            method.setAccessible(true);
            LogUtil.i(TAG, "got releaseInputEventCapture2 method: " + this.mReleaseMethod2);
        } else {
            LogUtil.w(TAG, "can not get releaseInputEventCapture2 method by reflect");
        }
    }
}
