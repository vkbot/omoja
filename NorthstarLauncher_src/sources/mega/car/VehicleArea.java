package mega.car;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class VehicleArea {
    public static final int FRONT_LEFT = 16;
    public static final int FRONT_LEFT_CENTER = 48;
    public static final int FRONT_RIGHT = 64;
    public static final int FRONT_RIGHT_CENTER = 96;
    public static final int FRONT_ROW = 80;
    public static final int NONE = 0;
    public static final int OUTSIDE_FRONT = 65536;
    public static final int OUTSIDE_FRONT_REAR = 196608;
    public static final int OUTSIDE_LEFT = 1048576;
    public static final int OUTSIDE_LEFT_RIGHT = 3145728;
    public static final int OUTSIDE_REAR = 131072;
    public static final int OUTSIDE_RIGHT = 2097152;
    public static final int OUTSIDE_TOP = 16777216;
    public static final int OUTSIDE_TOP_BOTTOM = 50331648;
    public static final int REAR_CENTER = 512;
    public static final int REAR_LEFT = 256;
    public static final int REAR_RIGHT = 1024;
    public static final int ROW_1_CENTER = 32;
    public static final int ROW_1_LEFT = 16;
    public static final int ROW_1_RIGHT = 64;
    public static final int ROW_2_CENTER = 512;
    public static final int ROW_2_LEFT = 256;
    public static final int ROW_2_RIGHT = 1024;
    public static final int ROW_3_CENTER = 8192;
    public static final int ROW_3_LEFT = 4096;
    public static final int ROW_3_RIGHT = 16384;
    public static final int LEFT_COL = 272;
    public static final int RIGHT_COL = 1088;
    public static final int OUTSIDE_BOTTOM = 33554432;
    public static final int REAR_ROW = 1792;
    public static final int REAR_LEFT_CENTER = 768;
    public static final int REAR_RIGHT_CENTER = 1536;
    public static final int ALL = 1872;
    public static final Set<Integer> OBSERVABLE_VEHICLE_AREA = new HashSet(Arrays.asList(65536, 131072, 1048576, Integer.valueOf(LEFT_COL), 2097152, Integer.valueOf(RIGHT_COL), 16777216, Integer.valueOf(OUTSIDE_BOTTOM), 16, 64, 48, 96, 256, 1024, 512, 80, Integer.valueOf(REAR_ROW), Integer.valueOf(REAR_LEFT_CENTER), Integer.valueOf(REAR_RIGHT_CENTER), Integer.valueOf(ALL), 0));

    @Retention(RetentionPolicy.SOURCE)
    public @interface Enum {
    }

    public static String toString(int i) {
        switch (i) {
            case 16:
                return "FrontLeft";
            case 48:
                return "FrontLeftMiddle";
            case 64:
                return "FrontRight";
            case 80:
                return "Front";
            case 96:
                return "FrontRightMiddle";
            case 256:
                return "RearLeft";
            case LEFT_COL /* 272 */:
            case 1048576:
                return "Left";
            case 512:
                return "RearMiddle";
            case REAR_LEFT_CENTER /* 768 */:
                return "RearLeftMiddle";
            case 1024:
                return "RearRight";
            case RIGHT_COL /* 1088 */:
            case 2097152:
                return "Right";
            case REAR_RIGHT_CENTER /* 1536 */:
                return "RearRightMiddle";
            case REAR_ROW /* 1792 */:
                return "Rear";
            case ALL /* 1872 */:
                return "All";
            case 65536:
                return "Hood";
            case 131072:
                return "Back";
            case 16777216:
                return "Top";
            case OUTSIDE_BOTTOM /* 33554432 */:
                return "Bottom";
            default:
                return null;
        }
    }
}
