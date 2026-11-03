package com.mega.nexus.os;

import android.os.RemoteException;
import android.util.Log;
import com.mega.nexus.MegaNexusManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaScreenManager extends MegaNexusManager {
    public static final int REQUEST_ACCEPTED = 1;
    public static final int REQUEST_REJECTED = 2;
    public static final int REQUEST_SUCCESSED = 0;
    public static final int SCREENID_CEILING = 6;
    public static final int SCREENID_HUD = 4;
    public static final int SCREENID_INSTRUMENT = 2;
    public static final int SCREENID_LEFT_REAR = 7;
    public static final int SCREENID_MAIN = 0;
    public static final int SCREENID_MID_REAR = 9;
    public static final int SCREENID_PASSENGER = 1;
    public static final int SCREENID_RIGHT_REAR = 8;
    public static final int SCREENID_VEHICLE_CONTROL = 3;
    public static final int SCREENID_VPA = 5;
    public static final int STATE_OFF = 0;
    public static final int STATE_ON = 1;
    private static final String TAG = "MegaScreenManager";
    public static final int USAGE_APA = 5;
    public static final int USAGE_BTPHONE = 4;
    public static final int USAGE_ECALL = 43;
    public static final int USAGE_ERROR_RESET = 34;
    public static final int USAGE_EYE_WAKSLP = 45;
    public static final int USAGE_GESTURE_CAMERA = 22;
    public static final int USAGE_GESTURE_CANCEL = 24;
    public static final int USAGE_GESTURE_CUSTOM = 26;
    public static final int USAGE_GESTURE_DYNAMIC1 = 27;
    public static final int USAGE_GESTURE_DYNAMIC2 = 28;
    public static final int USAGE_GESTURE_DYNAMIC3 = 29;
    public static final int USAGE_GESTURE_MUTE = 25;
    public static final int USAGE_GESTURE_OK = 23;
    public static final int USAGE_HIGH_TEMPERATURE = 37;
    public static final int USAGE_HIGH_VOLTAGE = 36;
    public static final int USAGE_KEY_APA = 18;
    public static final int USAGE_KEY_CAMERA = 11;
    public static final int USAGE_KEY_CRUICING = 7;
    public static final int USAGE_KEY_DIRECTION = 15;
    public static final int USAGE_KEY_DRIVEMODE = 19;
    public static final int USAGE_KEY_MODE = 8;
    public static final int USAGE_KEY_PHONE = 13;
    public static final int USAGE_KEY_PLAY = 16;
    public static final int USAGE_KEY_RESET = 17;
    public static final int USAGE_KEY_SCREENOFF = 46;
    public static final int USAGE_KEY_SOUNDSOURCE = 9;
    public static final int USAGE_KEY_TEAM = 10;
    public static final int USAGE_KEY_VOICE = 14;
    public static final int USAGE_KEY_WARNING = 20;
    public static final int USAGE_KEY_WECHAT = 12;
    public static final int USAGE_LOW_VOLTAGE = 35;
    public static final int USAGE_MESSAGE = 21;
    public static final int USAGE_NOA = 41;
    public static final int USAGE_OTA = 40;
    public static final int USAGE_POWER_MODE = 42;
    public static final int USAGE_RADAR = 6;
    public static final int USAGE_RESET = 44;
    public static final int USAGE_SOUND_TTS = 31;
    public static final int USAGE_SOUND_VEHICLE = 30;
    public static final int USAGE_TOUCH_CEILING = 49;
    public static final int USAGE_TOUCH_HUD = 47;
    public static final int USAGE_TOUCH_LEFT_REAR = 50;
    public static final int USAGE_TOUCH_MAIN = 32;
    public static final int USAGE_TOUCH_MID_REAR = 52;
    public static final int USAGE_TOUCH_PASSENGER = 33;
    public static final int USAGE_TOUCH_RIGHT_REAR = 51;
    public static final int USAGE_TOUCH_VPA = 48;
    public static final int USAGE_USB_INSERT = 38;
    public static final int USAGE_USB_UPGRADE = 39;
    public static final int USAGE_VOICE_AWAKEN = 1;
    public static final int USAGE_VOICE_EXEMPT_AWAKEN = 3;
    public static final int USAGE_VOICE_SCREENON = 2;

    private static final class Holder {
        private static final MegaScreenManager INSTANCE = new MegaScreenManager();

        private Holder() {
        }
    }

    private MegaScreenManager() {
    }

    public static MegaScreenManager getInstance() {
        return Holder.INSTANCE;
    }

    public void requestScreenOn(int i, int i2, IScreenRequestListener iScreenRequestListener) {
        try {
            getNexusService().requestScreenOn(i, iScreenRequestListener, i2);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
        }
    }

    public void releaseScreenOn(int i, int i2) {
        try {
            getNexusService().releaseScreenOn(i, i2);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
        }
    }

    public void requestScreenOff(int i, int i2, IScreenRequestListener iScreenRequestListener) {
        try {
            getNexusService().requestScreenOff(i, iScreenRequestListener, i2);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
        }
    }

    public void releaseScreenOff(int i, int i2) {
        try {
            getNexusService().releaseScreenOff(i, i2);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
        }
    }

    public int getScreenState(int i) {
        try {
            return getNexusService().getScreenState(i);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
            return -1;
        }
    }

    public void registerScreenStateChangeListener(IScreenStateChangeListener iScreenStateChangeListener) {
        try {
            getNexusService().registerScreenStateChangeListener(iScreenStateChangeListener);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
        }
    }

    public void unregisterScreenStateChangeListener(IScreenStateChangeListener iScreenStateChangeListener) {
        try {
            getNexusService().unregisterScreenStateChangeListener(iScreenStateChangeListener);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
        }
    }

    public int getCurrentScreenControlUsage(int i) {
        try {
            return getNexusService().getCurrentScreenControlUsage(i);
        } catch (RemoteException e) {
            Log.e(TAG, e.getMessage());
            return -1;
        }
    }
}
