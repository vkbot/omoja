package com.mega.nexus.provider;

import android.util.Log;
import mega.car.config.Power;

/* JADX INFO: loaded from: classes2.dex */
public class PowerSettings13 {
    private static final String TAG = "PowerSettings13";

    public static final class System {
        public static final int ABANDONED = 21;
        public static final String MEGA_ANDROID_POWER_STATUS = "mega_android_power_status";
        public static final int OTA = 23;
        public static final int STATUS_BOOT_ANIMATION = 22;
        public static final int STATUS_CRASH = 28;
        public static final int STATUS_DYNO = 29;
        public static final int STATUS_FACTORY = 24;
        public static final int STATUS_FACTORY_PAUSED = 25;
        public static final int STATUS_HIBERNATION_ENTER = 9;
        public static final int STATUS_HIBERNATION_EXIT = 10;
        public static final int STATUS_HIGH_TEMPERATURE = 30;
        public static final int STATUS_INVALID = 0;
        public static final int STATUS_LOW_VOLTAGE = 20;
        public static final int STATUS_ON = 6;
        public static final int STATUS_OVER_VOLTAGE = 19;
        public static final int STATUS_POST_HIBERNATION_ENTER = 14;
        public static final int STATUS_POST_SHUTDOWN_ENTER = 13;
        public static final int STATUS_POST_SUSPEND_ENTER = 12;
        public static final int STATUS_PRE_SHUTDOWN_PREPARE = 11;
        public static final int STATUS_REMOTE_BOOT = 18;
        public static final int STATUS_SCREEN_SAVER = 16;
        public static final int STATUS_SHUTDOWN_CANCELLED = 8;
        public static final int STATUS_SHUTDOWN_ENTER = 5;
        public static final int STATUS_SHUTDOWN_PREPARE = 7;
        public static final int STATUS_STAND_BY = 15;
        public static final int STATUS_SUSPEND_ENTER = 2;
        public static final int STATUS_SUSPEND_EXIT = 3;
        public static final int STATUS_TEMPORARY_WORKING = 17;
        public static final int STATUS_TRANSPORT = 26;
        public static final int STATUS_TRANSPORT_PAUSED = 27;
        public static final int STATUS_WAIT_FOR_VHAL = 1;

        /* JADX WARN: Code duplicated, block: B:12:0x0012  */
        public static boolean isCarPowerStrStage(int i) {
            boolean z;
            if (i != 2 && i != 5 && i != 7 && i != 9) {
                switch (i) {
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                        z = true;
                        break;
                    default:
                        z = false;
                        break;
                }
            } else {
                z = true;
            }
            Log.w(PowerSettings13.TAG, "StrStage " + z + " for status" + carPowerStateToString(i));
            return z;
        }

        public static String carPowerStateToString(int i) {
            StringBuilder sb = new StringBuilder();
            switch (i) {
                case 0:
                    sb.append("INVALID");
                    break;
                case 1:
                    sb.append("WAIT_FOR_VHAL");
                    break;
                case 2:
                    sb.append("SUSPEND_ENTER");
                    break;
                case 3:
                    sb.append("SUSPEND_EXIT");
                    break;
                case 4:
                default:
                    sb.append("<unknown>");
                    break;
                case 5:
                    sb.append("SHUTDOWN_ENTER");
                    break;
                case 6:
                    sb.append(Power.PowerStatusEnum.ON);
                    break;
                case 7:
                    sb.append(Power.PowerStatusEnum.SHUTDOWN_PREPARE);
                    break;
                case 8:
                    sb.append("SHUTDOWN_CANCELLED");
                    break;
                case 9:
                    sb.append("HIBERNATION_ENTER");
                    break;
                case 10:
                    sb.append("HIBERNATION_EXIT");
                    break;
                case 11:
                    sb.append("PRE_SHUTDOWN_PREPARE");
                    break;
                case 12:
                    sb.append("POST_SUSPEND_ENTER");
                    break;
                case 13:
                    sb.append("POST_SHUTDOWN_ENTER");
                    break;
                case 14:
                    sb.append("POST_HIBERNATION_ENTER");
                    break;
                case 15:
                    sb.append("STANDBY");
                    break;
                case 16:
                    sb.append("SCREEN_SAVER");
                    break;
                case 17:
                    sb.append(Power.PowerStatusEnum.TEMPORARY_WORKING);
                    break;
                case 18:
                    sb.append(Power.PowerStatusEnum.REMOTE_BOOT);
                    break;
                case 19:
                    sb.append(Power.PowerStatusEnum.OVER_VOLTAGE);
                    break;
                case 20:
                    sb.append(Power.PowerStatusEnum.LOW_VOLTAGE);
                    break;
                case 21:
                    sb.append(Power.PowerStatusEnum.ABANDONED);
                    break;
                case 22:
                    sb.append(Power.PowerStatusEnum.BOOT_ANIMATION);
                    break;
                case 23:
                    sb.append(Power.PowerStatusEnum.OTA);
                    break;
                case 24:
                    sb.append("FACTORY");
                    break;
                case 25:
                    sb.append("FACTORY_PAUSED");
                    break;
                case 26:
                    sb.append("TRANSPORT");
                    break;
                case 27:
                    sb.append("TRANSPORT_PAUSED");
                    break;
                case 28:
                    sb.append("CRASH");
                    break;
                case 29:
                    sb.append("DYNO");
                    break;
                case 30:
                    sb.append(Power.PowerStatusEnum.HIGH_TEMPERATURE);
                    break;
            }
            return sb.append('(').append(i).append(')').toString();
        }
    }
}
