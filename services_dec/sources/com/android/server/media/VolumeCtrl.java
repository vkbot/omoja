package com.android.server.media;

import android.media.AudioSystem;
import android.media.IAudioService;
import android.os.ServiceManager;
import android.util.AndroidException;

/* JADX INFO: loaded from: classes.dex */
public class VolumeCtrl {
    private static final String ADJUST_LOWER = "lower";
    private static final String ADJUST_RAISE = "raise";
    private static final String ADJUST_SAME = "same";
    static final String LOG_OK = "[ok]";
    static final String LOG_V = "[v]";
    static final String LOG_W = "[w]";
    private static final String TAG = "VolumeCtrl";
    public static final String USAGE = new String("the options are as follows: \n\t\t--stream STREAM selects the stream to control, see AudioManager.STREAM_*\n\t\t                controls AudioManager.STREAM_MUSIC if no stream is specified\n\t\t--set INDEX     sets the volume index value\n\t\t--adj DIRECTION adjusts the volume, use raise|same|lower for the direction\n\t\t--get           outputs the current volume\n\t\t--show          shows the UI during the volume change\n\texamples:\n\t\tadb shell media volume --show --stream 3 --set 11\n\t\tadb shell media volume --stream 0 --adj lower\n\t\tadb shell media volume --stream 3 --get\n");
    private static final int VOLUME_CONTROL_MODE_ADJUST = 2;
    private static final int VOLUME_CONTROL_MODE_SET = 1;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x0050  */
    /* JADX WARN: Code duplicated, block: B:57:0x011f  */
    public static void run(MediaShellCommand cmd) throws Exception {
        byte b;
        byte b2;
        int stream = 3;
        int volIndex = 5;
        int mode = 0;
        int adjDir = 1;
        int i = 0;
        boolean doGet = false;
        String adjustment = null;
        while (true) {
            String option = cmd.getNextOption();
            if (option == null) {
                if (mode == 2) {
                    if (adjustment == null) {
                        cmd.showError("Error: no valid volume adjustment (null)");
                        return;
                    }
                    int iHashCode = adjustment.hashCode();
                    if (iHashCode != 3522662) {
                        if (iHashCode != 103164673) {
                            if (iHashCode == 108275692 && adjustment.equals(ADJUST_RAISE)) {
                                b = 0;
                            } else {
                                b = -1;
                            }
                        } else if (adjustment.equals(ADJUST_LOWER)) {
                            b = 2;
                        } else {
                            b = -1;
                        }
                    } else if (adjustment.equals(ADJUST_SAME)) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    if (b == 0) {
                        adjDir = 1;
                    } else if (b == 1) {
                        adjDir = 0;
                    } else if (b == 2) {
                        adjDir = -1;
                    } else {
                        cmd.showError("Error: no valid volume adjustment, was " + adjustment + ", expected " + ADJUST_LOWER + "|" + ADJUST_SAME + "|" + ADJUST_RAISE);
                        return;
                    }
                }
                log(LOG_V, "Connecting to AudioService");
                IAudioService audioService = IAudioService.Stub.asInterface(ServiceManager.checkService("audio"));
                if (audioService == null) {
                    System.err.println("Error type 2");
                    throw new AndroidException("Can't connect to audio service; is the system running?");
                }
                if (mode == 1 && (volIndex > audioService.getStreamMaxVolume(stream) || volIndex < audioService.getStreamMinVolume(stream))) {
                    cmd.showError(String.format("Error: invalid volume index %d for stream %d (should be in [%d..%d])", Integer.valueOf(volIndex), Integer.valueOf(stream), Integer.valueOf(audioService.getStreamMinVolume(stream)), Integer.valueOf(audioService.getStreamMaxVolume(stream))));
                    return;
                }
                int flag = i;
                String pack = cmd.getClass().getPackage().getName();
                if (mode == 1) {
                    audioService.setStreamVolume(stream, volIndex, flag, pack);
                } else if (mode == 2) {
                    audioService.adjustStreamVolume(stream, adjDir, flag, pack);
                }
                if (doGet) {
                    log(LOG_V, "volume is " + audioService.getStreamVolume(stream) + " in range [" + audioService.getStreamMinVolume(stream) + ".." + audioService.getStreamMaxVolume(stream) + "]");
                    return;
                }
                return;
            }
            switch (option) {
                case "--adj":
                    b2 = 4;
                    break;
                case "--get":
                    b2 = 1;
                    break;
                case "--set":
                    b2 = 3;
                    break;
                case "--show":
                    b2 = 0;
                    break;
                case "--stream":
                    b2 = 2;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            if (b2 == 0) {
                i = 1;
            } else if (b2 == 1) {
                doGet = true;
                log(LOG_V, "will get volume");
            } else if (b2 == 2) {
                stream = Integer.decode(cmd.getNextArgRequired()).intValue();
                log(LOG_V, "will control stream=" + stream + " (" + streamName(stream) + ")");
            } else if (b2 == 3) {
                volIndex = Integer.decode(cmd.getNextArgRequired()).intValue();
                mode = 1;
                log(LOG_V, "will set volume to index=" + volIndex);
            } else if (b2 == 4) {
                mode = 2;
                adjustment = cmd.getNextArgRequired();
                log(LOG_V, "will adjust volume");
            } else {
                throw new IllegalArgumentException("Unknown argument " + option);
            }
        }
    }

    static void log(String code, String msg) {
        System.out.println(code + " " + msg);
    }

    static String streamName(int stream) {
        try {
            return AudioSystem.STREAM_NAMES[stream];
        } catch (ArrayIndexOutOfBoundsException e) {
            return "invalid stream";
        }
    }
}
