package com.android.server.power.backlight;

import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Slog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.ToIntFunction;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BackLightConfig {
    private static final String AUTOMATIC_BRIGHTNESS_MAP = "automatic_brightness_map";
    private static final String AUTOMATIC_DAY_MODE_BRIGHTNESS_MAP = "automatic_day_mode_brightness_map";
    private static final String AUTO_BRIGHTNESS_SMOOTH_COUNT = "auto_brightness_smooth_count";
    private static final String CONFIG_FILE = "/system/etc/backlight_config.conf";
    private static final int DEFAULT_SMOOTH_COUNT = 1;
    private static final String DISPLAY_CONFIG_FILE = "/system/etc/mega_display_device.conf";
    private static final String TAG = "BackLightConfig";
    private static final int TYPE_ALL = 2;
    private static final int TYPE_DEF = 1;
    private static String mPropertyDisplayIds;
    private JSONObject mJSONObject;
    public static final ArrayMap<Integer, String> DISPLAY_ID_TO_FILE_MAPS = new ArrayMap<>();
    public static final ArrayMap<Integer, String> DISPLAY_ID_TO_SETTINGS_MAPS = new ArrayMap<>();
    private static final ArrayMap<String, Integer> SCREEN_DEF_DISPLAY_ID_MAP = new ArrayMap<>();
    private static final ArrayMap<String, ArrayList<Integer>> SCREEN_ALL_DISPLAY_ID_MAP = new ArrayMap<>();
    public static final ArrayMap<String, int[]> SCREEN_ALL_DISPLAY_ID_ARRAY = new ArrayMap<>();

    public void start() {
        File defaultConfigFile = new File(CONFIG_FILE);
        try {
            if (!defaultConfigFile.exists()) {
                return;
            }
            InputStream is = new AtomicFile(defaultConfigFile).openRead();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(is));
            StringBuilder responseStrBuilder = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    responseStrBuilder.append(line);
                } else {
                    this.mJSONObject = new JSONObject(responseStrBuilder.toString());
                    is.close();
                    return;
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }

    public HashMap<Integer, String> parseDisplayConfig() {
        File defaultConfigFile = new File(DISPLAY_CONFIG_FILE);
        JSONObject jsonObject = null;
        try {
            if (!defaultConfigFile.exists()) {
                return new HashMap<>();
            }
            InputStream is = new AtomicFile(defaultConfigFile).openRead();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(is));
            StringBuilder responseStrBuilder = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                responseStrBuilder.append(line);
            }
            jsonObject = new JSONObject(responseStrBuilder.toString());
            is.close();
            return getDisplayIdToBacklightDeviceMap(jsonObject);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }

    private HashMap<Integer, String> getDisplayIdToBacklightDeviceMap(JSONObject jsonObject) {
        JSONObject object;
        if (jsonObject == null) {
            return new HashMap<>();
        }
        HashMap<Integer, String> hashMap = new HashMap<>();
        JSONArray jsonArray = jsonObject.optJSONArray("displayId_to_backlight_device");
        if (jsonArray != null) {
            for (int i = 0; i < jsonArray.length() && (object = jsonArray.optJSONObject(i)) != null; i++) {
                int displayId = object.optInt("displayId");
                String backlightDevice = object.optString("backlightDevice");
                hashMap.put(Integer.valueOf(displayId), backlightDevice);
            }
        }
        Slog.e(TAG, "getDisplayIdToBacklightDeviceMap: " + hashMap);
        return hashMap;
    }

    public List<SensorMapItem> getDefaultSensorMap() {
        return getSensorMap(AUTOMATIC_BRIGHTNESS_MAP);
    }

    public List<SensorMapItem> getDayModeSensorMap() {
        return getSensorMap(AUTOMATIC_DAY_MODE_BRIGHTNESS_MAP);
    }

    public List<SensorMapItem> getSensorMap(String name) {
        JSONArray jsonArray;
        JSONObject jsonObject;
        ArrayList<SensorMapItem> sensorMapItems = new ArrayList<>();
        JSONObject jSONObject = this.mJSONObject;
        if (jSONObject != null && (jsonArray = jSONObject.optJSONArray(name)) != null) {
            for (int i = 0; i < jsonArray.length() && (jsonObject = jsonArray.optJSONObject(i)) != null; i++) {
                SensorMapItem item = new SensorMapItem();
                item.sensor = jsonObject.optDouble("sensor");
                item.brightness = jsonObject.optInt("brightness");
                sensorMapItems.add(item);
            }
        }
        return sensorMapItems;
    }

    public Map<String, Integer> getCustomSmoothConfig() {
        JSONObject jsonObject;
        HashMap<String, Integer> smoothConfig = new HashMap<>();
        JSONObject jSONObject = this.mJSONObject;
        if (jSONObject != null && (jsonObject = jSONObject.optJSONObject(AUTO_BRIGHTNESS_SMOOTH_COUNT)) != null) {
            Iterator<String> iterator = jsonObject.keys();
            while (iterator.hasNext()) {
                String path = iterator.next();
                int value = jsonObject.optInt(path, 1);
                smoothConfig.put(path, Integer.valueOf(value));
            }
        }
        return smoothConfig;
    }

    public <T> T getValue(String str, T t) {
        JSONObject jSONObject = this.mJSONObject;
        if (jSONObject != null && jSONObject.has(str)) {
            if (String.class.isInstance(t)) {
                return (T) this.mJSONObject.optString(str);
            }
            if (Boolean.class.isInstance(t)) {
                return (T) Boolean.valueOf(this.mJSONObject.optBoolean(str));
            }
            if (Integer.class.isInstance(t)) {
                return (T) Integer.valueOf(this.mJSONObject.optInt(str));
            }
            if (Double.class.isInstance(t)) {
                return (T) Double.valueOf(this.mJSONObject.optDouble(str));
            }
            return t;
        }
        return t;
    }

    public final class SensorMapItem {
        public int brightness;
        public double sensor;

        public SensorMapItem() {
        }
    }

    public static void initDisplayIdsAndSettingsConfig() {
        try {
            mPropertyDisplayIds = SystemProperties.get("ro.vendor.display.ids");
        } catch (RuntimeException e) {
            Slog.w(TAG, "read ro.vendor.display.ids error: " + e.getMessage());
            e.printStackTrace();
        }
        Slog.i(TAG, "read ro.vendor.display.ids : " + mPropertyDisplayIds);
        if (TextUtils.isEmpty(mPropertyDisplayIds)) {
            Slog.w(TAG, "init default display id 0 to main screen, due to no value from ro.vendor.display.ids");
            initDefaultAllDisplayMaps();
            return;
        }
        String[] splitIds = mPropertyDisplayIds.split(";");
        for (String splitId : splitIds) {
            String[] idsCon = splitId.split("=");
            if (idsCon.length >= 2) {
                String name = idsCon[0];
                String id = idsCon[1];
                if (id != null) {
                    if (id.contains(",")) {
                        String[] ids = id.split(",");
                        for (String s : ids) {
                            initDisplayIdMaps(s, name);
                        }
                    } else {
                        initDisplayIdMaps(id, name);
                    }
                }
            }
        }
        initDefaultAllDisplayMaps();
    }

    private static void initDefaultAllDisplayMaps() {
        if (DISPLAY_ID_TO_FILE_MAPS.size() == 0) {
            DISPLAY_ID_TO_FILE_MAPS.put(0, BackLightSettings.MAIN_CONTROL_FILE);
        }
        if (DISPLAY_ID_TO_SETTINGS_MAPS.size() == 0) {
            DISPLAY_ID_TO_SETTINGS_MAPS.put(0, "main_control_brightness");
        }
        if (SCREEN_DEF_DISPLAY_ID_MAP.size() == 0) {
            SCREEN_DEF_DISPLAY_ID_MAP.put("main_control_brightness", 0);
        }
        if (SCREEN_ALL_DISPLAY_ID_MAP.size() == 0) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            arrayList.add(0);
            SCREEN_ALL_DISPLAY_ID_MAP.put("main_control_brightness", arrayList);
            SCREEN_ALL_DISPLAY_ID_ARRAY.put("main_control_brightness", new int[]{0});
        } else {
            for (Map.Entry<String, ArrayList<Integer>> entry : SCREEN_ALL_DISPLAY_ID_MAP.entrySet()) {
                String settingsName = entry.getKey();
                ArrayList<Integer> arrayList2 = entry.getValue();
                if (arrayList2 != null && arrayList2.size() > 0) {
                    int[] allDisplayIds = arrayList2.stream().mapToInt(new ToIntFunction() { // from class: com.android.server.power.backlight.-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw
                        @Override // java.util.function.ToIntFunction
                        public final int applyAsInt(Object obj) {
                            return ((Integer) obj).intValue();
                        }
                    }).toArray();
                    SCREEN_ALL_DISPLAY_ID_ARRAY.put(settingsName, allDisplayIds);
                }
            }
        }
        Slog.i(TAG, "config displayId > deviceFile: " + DISPLAY_ID_TO_FILE_MAPS);
        Slog.i(TAG, "config displayId > settings: " + DISPLAY_ID_TO_SETTINGS_MAPS);
        Slog.i(TAG, "SCREEN_DEF_DISPLAY_ID_MAP: " + SCREEN_DEF_DISPLAY_ID_MAP);
        Slog.i(TAG, "SCREEN_ALL_DISPLAY_ID_MAP: " + SCREEN_ALL_DISPLAY_ID_MAP);
    }

    private static void initDisplayIdMaps(String displayIdStr, String displayName) {
        int type;
        String dName;
        int displayId = -1;
        try {
            displayId = Integer.parseInt(displayIdStr);
        } catch (NumberFormatException e) {
            Slog.w(TAG, "parse display id error: " + e.getMessage());
            e.printStackTrace();
        }
        if (displayId == -1 || TextUtils.isEmpty(displayName)) {
            return;
        }
        if (displayName.endsWith("_DEF")) {
            type = 1;
        } else if (displayName.endsWith("_ALL")) {
            type = 2;
        } else {
            Slog.w(TAG, "ignore name: " + displayName + ", display id: " + displayIdStr);
            return;
        }
        if (type == 1) {
            dName = displayName.replace("_DEF", "");
        } else {
            dName = displayName.replace("_ALL", "");
        }
        String[] name = parseDisplayName(dName);
        if (name == null) {
            Slog.w(TAG, "unknown name: " + displayName + ", display id: " + displayIdStr);
            return;
        }
        String settingsName = name[0];
        String backlightFile = name[1];
        if (settingsName == null || backlightFile == null) {
            Slog.w(TAG, "unknown name: " + displayName + ", display id: " + displayIdStr);
            return;
        }
        if (type == 1) {
            initDefDisplayMaps(displayId, settingsName, backlightFile);
        } else {
            initAllDisplayMaps(displayId, settingsName, backlightFile);
        }
    }

    private static void initDefDisplayMaps(int displayId, String settingsName, String backlightFile) {
        SCREEN_DEF_DISPLAY_ID_MAP.put(settingsName, Integer.valueOf(displayId));
        initAllDisplayMaps(displayId, settingsName, backlightFile);
    }

    private static void initAllDisplayMaps(int displayId, String settingsName, String backlightFile) {
        DISPLAY_ID_TO_FILE_MAPS.put(Integer.valueOf(displayId), backlightFile);
        DISPLAY_ID_TO_SETTINGS_MAPS.put(Integer.valueOf(displayId), settingsName);
        ArrayList<Integer> arrayList = SCREEN_ALL_DISPLAY_ID_MAP.getOrDefault(settingsName, null);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (!arrayList.contains(Integer.valueOf(displayId))) {
            arrayList.add(Integer.valueOf(displayId));
        }
        SCREEN_ALL_DISPLAY_ID_MAP.put(settingsName, arrayList);
    }

    private static String[] parseDisplayName(String displayName) {
        if (TextUtils.isEmpty(displayName)) {
            return null;
        }
        byte b = 2;
        String[] value = new String[2];
        switch (displayName.hashCode()) {
            case -873062905:
                b = !displayName.equals("RIGHT_REAR") ? (byte) -1 : (byte) 8;
                break;
            case -842270373:
                b = !displayName.equals("MID_REAR") ? (byte) -1 : (byte) 9;
                break;
            case 71652:
                b = !displayName.equals("HMI") ? (byte) -1 : (byte) 1;
                break;
            case 71895:
                b = !displayName.equals("HUD") ? (byte) -1 : (byte) 4;
                break;
            case 84857:
                b = !displayName.equals("VEH") ? (byte) -1 : (byte) 3;
                break;
            case 85191:
                b = !displayName.equals("VPA") ? (byte) -1 : (byte) 5;
                break;
            case 263085788:
                b = !displayName.equals("LEFT_REAR") ? (byte) -1 : (byte) 7;
                break;
            case 1378369693:
                b = !displayName.equals("CEILING") ? (byte) -1 : (byte) 6;
                break;
            case 1590074842:
                b = !displayName.equals("CLUSTER") ? (byte) -1 : (byte) 0;
                break;
            case 1841783930:
                if (!displayName.equals("PASSENGER")) {
                    b = -1;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                value[0] = "instrument_board_brightness";
                value[1] = BackLightSettings.INSTRUMENT_BOARD_FILE;
                return value;
            case 1:
                value[0] = "main_control_brightness";
                value[1] = BackLightSettings.MAIN_CONTROL_FILE;
                return value;
            case 2:
                value[0] = "passenger_media_brightness";
                value[1] = BackLightSettings.PASSENGER_MEDIA_FILE;
                return value;
            case 3:
                value[0] = "vehicle_control_brightness";
                value[1] = BackLightSettings.VEHICLE_CONTROL_FILE;
                return value;
            case 4:
                value[0] = "hud_brightness";
                value[1] = BackLightSettings.HUD_FILE;
                return value;
            case 5:
                value[0] = "vpa_brightness";
                value[1] = BackLightSettings.VPA_FILE;
                return value;
            case 6:
                value[0] = "ceiling_brightness";
                value[1] = BackLightSettings.BACKLIGHT_FILE_CEILING;
                return value;
            case 7:
                value[0] = "left_rear_brightness";
                value[1] = BackLightSettings.BACKLIGHT_FILE_LEFT_REAR;
                return value;
            case 8:
                value[0] = "right_rear_brightness";
                value[1] = BackLightSettings.BACKLIGHT_FILE_RIGHT_REAR;
                return value;
            case 9:
                value[0] = "mid_rear_brightness";
                value[1] = BackLightSettings.BACKLIGHT_FILE_MID_REAR;
                return value;
            default:
                return null;
        }
    }

    public static int[] getAllDisplayIdForSettings(String settingsName) {
        return SCREEN_ALL_DISPLAY_ID_ARRAY.getOrDefault(settingsName, null);
    }

    public static int getDefaultDisplayIdForSettings(String settingName) {
        return SCREEN_DEF_DISPLAY_ID_MAP.getOrDefault(settingName, -1).intValue();
    }

    public static String getSettingsNameForDisplayId(int displayId) {
        return DISPLAY_ID_TO_SETTINGS_MAPS.getOrDefault(Integer.valueOf(displayId), null);
    }
}
