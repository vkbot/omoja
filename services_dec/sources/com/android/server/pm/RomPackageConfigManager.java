package com.android.server.pm;

import android.os.SystemProperties;
import android.util.AtomicFile;
import android.util.Slog;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class RomPackageConfigManager {
    private static final String TAG = "RomPackageConfigManager";
    private static List<DisablePackageConfig> sConfigs;
    private static List<EnablePackageConfig> sEnablePackageConfigs;

    public static class conditionConfig {
        public final String sysPropKey;
        public HashSet<String> sysPropValues;

        public HashSet<String> getValues() {
            return this.sysPropValues;
        }

        public String getKey() {
            return this.sysPropKey;
        }

        public conditionConfig(String sysPropKey, HashSet<String> values) {
            this.sysPropValues = null;
            HashSet<String> hashSet = new HashSet<>();
            this.sysPropValues = hashSet;
            this.sysPropKey = sysPropKey;
            hashSet.addAll(values);
        }

        public String toString() {
            return "conditionConfig{propKey='" + this.sysPropKey + ", values=[" + this.sysPropValues + "]}";
        }
    }

    public static class conditionSystem {
        public String sysPropKey;
        public String sysPropValue;

        public String getValues() {
            return this.sysPropValue;
        }

        public String getKey() {
            return this.sysPropKey;
        }

        public conditionSystem(String sysPropKey, String value) {
            this.sysPropKey = sysPropKey;
            this.sysPropValue = value;
        }

        public String toString() {
            return "conditionSystem{propKey='" + this.sysPropKey + ", values=" + this.sysPropValue + '}';
        }
    }

    public static class EnablePackageConfig {
        public final HashSet<String> filePaths = new HashSet<>();
        public final List<conditionSystem> sysCondition = new ArrayList();

        public String toString() {
            return "EnablePackageConfig{sysCondition='" + this.sysCondition + ", filePaths=" + this.filePaths + '}';
        }
    }

    public static class DisablePackageConfig {
        public final HashSet<String> filePaths = new HashSet<>();
        public final List<conditionSystem> sysCondition = new ArrayList();

        public String toString() {
            return "DisablePackageConfig{sysCondition='" + this.sysCondition + ", filePaths=" + this.filePaths + '}';
        }
    }

    public static synchronized List<EnablePackageConfig> getMeetConditionenableConfigs() {
        String line;
        File configFile;
        InputStream is;
        BufferedReader bufferedReader;
        String line2;
        StringBuilder sb;
        JSONArray sysCondition;
        StringBuilder sb2;
        HashSet<String> values;
        if (sEnablePackageConfigs != null) {
            return sEnablePackageConfigs;
        }
        sEnablePackageConfigs = new ArrayList();
        try {
            Slog.w(TAG, "getMeetConditionenableConfigs start");
            File configFile2 = new File("/system/etc/pms_sysprop_feature.conf");
            InputStream is2 = new AtomicFile(configFile2).openRead();
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(is2));
            StringBuilder sb3 = new StringBuilder();
            while (true) {
                String line3 = bufferedReader2.readLine();
                line = line3;
                if (line3 == null) {
                    break;
                }
                sb3.append(line);
            }
            is2.close();
            JSONObject object = new JSONObject(sb3.toString());
            if (!object.has("enable_status")) {
                Slog.w(TAG, "enable_status config error, please check!");
                return null;
            }
            if (!object.getBoolean("enable_status")) {
                Slog.w(TAG, "disable package config func");
                return null;
            }
            if (!object.has("enable_apk")) {
                Slog.w(TAG, "enable_apk config error, please check!");
                return null;
            }
            JSONArray arrayConfigs = object.getJSONArray("enable_apk");
            List<conditionConfig> conditionConfigs = new ArrayList<>();
            List<conditionSystem> conditionsCurSystem = new ArrayList<>();
            int i = 0;
            while (i < arrayConfigs.length()) {
                JSONObject enableObject = arrayConfigs.getJSONObject(i);
                conditionConfigs.clear();
                conditionsCurSystem.clear();
                boolean enableAPK = false;
                if (enableObject.has("enable_apk_sysprop_condition")) {
                    JSONArray sysCondition2 = enableObject.getJSONArray("enable_apk_sysprop_condition");
                    int j = 0;
                    while (true) {
                        configFile = configFile2;
                        if (j >= sysCondition2.length()) {
                            break;
                        }
                        JSONObject sysConditionObject = sysCondition2.getJSONObject(j);
                        InputStream is3 = is2;
                        String key = sysConditionObject.getString("key");
                        if (key != null) {
                            HashSet<String> values2 = new HashSet<>();
                            if (sysConditionObject.has("value")) {
                                int value = sysConditionObject.getInt("value");
                                String line4 = String.valueOf(value);
                                values = values2;
                                values.add(line4);
                            } else {
                                values = values2;
                            }
                            if (sysConditionObject.has("values")) {
                                JSONArray valueArray = sysConditionObject.getJSONArray("values");
                                int k = 0;
                                while (true) {
                                    sb2 = sb3;
                                    if (k >= valueArray.length()) {
                                        break;
                                    }
                                    values.add(valueArray.getString(k));
                                    k++;
                                    sb3 = sb2;
                                }
                            } else {
                                sb2 = sb3;
                            }
                            conditionConfigs.add(new conditionConfig(key, values));
                        } else {
                            line = line;
                            sb2 = sb3;
                        }
                        j++;
                        configFile2 = configFile;
                        is2 = is3;
                        bufferedReader2 = bufferedReader2;
                        sb3 = sb2;
                        line = line;
                    }
                    is = is2;
                    bufferedReader = bufferedReader2;
                    line2 = line;
                    sb = sb3;
                    for (conditionConfig conf : conditionConfigs) {
                        int sysValue = SystemProperties.getInt(conf.sysPropKey, 0);
                        Slog.i(TAG, "enableapk, key:" + conf.getKey() + " sysValue:" + sysValue + " condition prefer values:" + conf.getValues());
                        if (conf.getValues().contains(String.valueOf(sysValue))) {
                            enableAPK = true;
                            conditionsCurSystem.add(new conditionSystem(conf.getKey(), String.valueOf(sysValue)));
                        } else {
                            enableAPK = false;
                            break;
                        }
                    }
                } else {
                    configFile = configFile2;
                    is = is2;
                    bufferedReader = bufferedReader2;
                    line2 = line;
                    sb = sb3;
                    if (enableObject.has("enable_apk_sysprop_condition_not")) {
                        JSONArray sysCondition3 = enableObject.getJSONArray("enable_apk_sysprop_condition_not");
                        int j2 = 0;
                        while (j2 < sysCondition3.length()) {
                            JSONObject sysConditionObject2 = sysCondition3.getJSONObject(j2);
                            String key2 = sysConditionObject2.getString("key");
                            if (key2 == null) {
                                sysCondition = sysCondition3;
                            } else {
                                HashSet<String> values3 = new HashSet<>();
                                if (sysConditionObject2.has("value")) {
                                    int value2 = sysConditionObject2.getInt("value");
                                    values3.add(String.valueOf(value2));
                                }
                                if (!sysConditionObject2.has("values")) {
                                    sysCondition = sysCondition3;
                                } else {
                                    JSONArray valueArray2 = sysConditionObject2.getJSONArray("values");
                                    int k2 = 0;
                                    while (true) {
                                        sysCondition = sysCondition3;
                                        if (k2 >= valueArray2.length()) {
                                            break;
                                        }
                                        values3.add(valueArray2.getString(k2));
                                        k2++;
                                        sysCondition3 = sysCondition;
                                    }
                                }
                                conditionConfigs.add(new conditionConfig(key2, values3));
                            }
                            j2++;
                            sysCondition3 = sysCondition;
                        }
                        for (conditionConfig conf2 : conditionConfigs) {
                            int sysValue2 = SystemProperties.getInt(conf2.sysPropKey, 0);
                            Slog.i(TAG, "enableapk, key:" + conf2.getKey() + " sysValue:" + sysValue2 + " condition_not prefer values:" + conf2.getValues());
                            if (conf2.getValues().contains(String.valueOf(sysValue2))) {
                                enableAPK = false;
                                break;
                            }
                            enableAPK = true;
                            conditionsCurSystem.add(new conditionSystem(conf2.getKey(), String.valueOf(sysValue2)));
                        }
                    } else {
                        Slog.w(TAG, "enable_apk_sysprop_condition/not config error, please check!");
                        return null;
                    }
                }
                if (enableAPK) {
                    EnablePackageConfig sConfigs2 = new EnablePackageConfig();
                    sConfigs2.sysCondition.addAll(conditionsCurSystem);
                    if (enableObject.has("enable_apk_file_path_list")) {
                        JSONArray filePathArray = enableObject.getJSONArray("enable_apk_file_path_list");
                        for (int j3 = 0; j3 < filePathArray.length(); j3++) {
                            String path = filePathArray.getString(j3);
                            if (path != null) {
                                Slog.w(TAG, "meet condition, enabled apk path" + path);
                                sConfigs2.filePaths.add(path);
                            }
                        }
                    }
                    sEnablePackageConfigs.add(sConfigs2);
                }
                i++;
                configFile2 = configFile;
                is2 = is;
                bufferedReader2 = bufferedReader;
                sb3 = sb;
                line = line2;
            }
            return sEnablePackageConfigs;
        } catch (IOException e1) {
            Slog.e(TAG, "IO error when read pms_sysprop_feature: " + e1);
        } catch (JSONException e2) {
            Slog.e(TAG, "JSON parse error in pms_sysprop_feature: " + e2);
        } catch (Exception e3) {
            Slog.e(TAG, "getMeetConditionenableConfigs,JSON parse error: " + e3);
        }
    }

    public static synchronized List<DisablePackageConfig> getMeetConditionDisableConfigs() {
        String line;
        File configFile;
        InputStream is;
        BufferedReader bufferedReader;
        String line2;
        StringBuilder sb;
        JSONObject object_cfg;
        Object objDisableApkValue;
        JSONObject object_cfg2;
        HashSet<String> values;
        if (sConfigs != null) {
            return sConfigs;
        }
        sConfigs = new ArrayList();
        try {
            try {
                Slog.w(TAG, "getMeetConditionDisableConfigs start");
                File configFile2 = new File("/system/etc/pms_sysprop_feature.conf");
                InputStream is2 = new AtomicFile(configFile2).openRead();
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(is2));
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    String line3 = bufferedReader2.readLine();
                    line = line3;
                    if (line3 == null) {
                        break;
                    }
                    sb2.append(line);
                }
                is2.close();
                JSONObject object_cfg3 = new JSONObject(sb2.toString());
                if (object_cfg3.has("disable_apk")) {
                    JSONArray array = object_cfg3.getJSONArray("disable_apk");
                    List<conditionSystem> conditionsCurSystem = new ArrayList<>();
                    List<conditionConfig> conditionConfigs = new ArrayList<>();
                    int i = 0;
                    while (i < array.length()) {
                        JSONObject disbleObject = array.getJSONObject(i);
                        conditionsCurSystem.clear();
                        conditionConfigs.clear();
                        boolean isDisabledApk = false;
                        if (disbleObject.has("disable_apk_sysprop_condition")) {
                            if (disbleObject.get("disable_apk_sysprop_condition") instanceof JSONArray) {
                                JSONArray sysCondition = disbleObject.getJSONArray("disable_apk_sysprop_condition");
                                configFile = configFile2;
                                int j = 0;
                                while (true) {
                                    is = is2;
                                    if (j >= sysCondition.length()) {
                                        break;
                                    }
                                    JSONObject sysConditionObject = sysCondition.getJSONObject(j);
                                    BufferedReader bufferedReader3 = bufferedReader2;
                                    String key = sysConditionObject.getString("key");
                                    if (key != null) {
                                        HashSet<String> values2 = new HashSet<>();
                                        if (sysConditionObject.has("value")) {
                                            int value = sysConditionObject.getInt("value");
                                            String strValueOf = String.valueOf(value);
                                            values = values2;
                                            values.add(strValueOf);
                                        } else {
                                            values = values2;
                                        }
                                        if (sysConditionObject.has("values")) {
                                            JSONArray valueArray = sysConditionObject.getJSONArray("values");
                                            int k = 0;
                                            while (true) {
                                                object_cfg2 = object_cfg3;
                                                if (k >= valueArray.length()) {
                                                    break;
                                                }
                                                values.add(valueArray.getString(k));
                                                k++;
                                                object_cfg3 = object_cfg2;
                                            }
                                        } else {
                                            object_cfg2 = object_cfg3;
                                        }
                                        conditionConfigs.add(new conditionConfig(key, values));
                                    } else {
                                        sb2 = sb2;
                                        object_cfg2 = object_cfg3;
                                    }
                                    j++;
                                    is2 = is;
                                    bufferedReader2 = bufferedReader3;
                                    line = line;
                                    object_cfg3 = object_cfg2;
                                    sb2 = sb2;
                                }
                                bufferedReader = bufferedReader2;
                                line2 = line;
                                sb = sb2;
                                object_cfg = object_cfg3;
                            } else {
                                configFile = configFile2;
                                is = is2;
                                bufferedReader = bufferedReader2;
                                line2 = line;
                                sb = sb2;
                                object_cfg = object_cfg3;
                                JSONObject sysConditionObject2 = disbleObject.getJSONObject("disable_apk_sysprop_condition");
                                String key2 = sysConditionObject2.getString("key");
                                if (key2 != null) {
                                    HashSet<String> values3 = new HashSet<>();
                                    if (sysConditionObject2.has("value")) {
                                        int value2 = sysConditionObject2.getInt("value");
                                        values3.add(String.valueOf(value2));
                                    }
                                    if (sysConditionObject2.has("values")) {
                                        JSONArray valueArray2 = sysConditionObject2.getJSONArray("values");
                                        for (int k2 = 0; k2 < valueArray2.length(); k2++) {
                                            values3.add(valueArray2.getString(k2));
                                        }
                                    }
                                    conditionConfigs.add(new conditionConfig(key2, values3));
                                }
                            }
                            for (conditionConfig conf : conditionConfigs) {
                                String sysValue = SystemProperties.get(conf.getKey());
                                Slog.i(TAG, "disableapk, key:" + conf.getKey() + " sysValue:" + sysValue + " condition prefer values:" + conf.getValues());
                                if (conf.getValues().contains(sysValue)) {
                                    isDisabledApk = true;
                                    conditionsCurSystem.add(new conditionSystem(conf.getKey(), String.valueOf(sysValue)));
                                } else {
                                    isDisabledApk = false;
                                    break;
                                }
                            }
                        } else {
                            configFile = configFile2;
                            is = is2;
                            bufferedReader = bufferedReader2;
                            line2 = line;
                            sb = sb2;
                            object_cfg = object_cfg3;
                            if (disbleObject.has("disable_apk_sysprop_condition_not")) {
                                conditionConfigs.clear();
                                Object objDisableApkValue2 = disbleObject.get("disable_apk_sysprop_condition_not");
                                if (objDisableApkValue2 instanceof JSONArray) {
                                    JSONArray sysCondition2 = disbleObject.getJSONArray("disable_apk_sysprop_condition_not");
                                    int j2 = 0;
                                    while (j2 < sysCondition2.length()) {
                                        JSONObject sysConditionObject3 = sysCondition2.getJSONObject(j2);
                                        String key3 = sysConditionObject3.getString("key");
                                        if (key3 == null) {
                                            objDisableApkValue = objDisableApkValue2;
                                        } else {
                                            HashSet<String> values4 = new HashSet<>();
                                            if (sysConditionObject3.has("value")) {
                                                int value3 = sysConditionObject3.getInt("value");
                                                values4.add(String.valueOf(value3));
                                            }
                                            if (!sysConditionObject3.has("values")) {
                                                objDisableApkValue = objDisableApkValue2;
                                            } else {
                                                JSONArray valueArray3 = sysConditionObject3.getJSONArray("values");
                                                int k3 = 0;
                                                while (true) {
                                                    objDisableApkValue = objDisableApkValue2;
                                                    if (k3 >= valueArray3.length()) {
                                                        break;
                                                    }
                                                    values4.add(valueArray3.getString(k3));
                                                    k3++;
                                                    objDisableApkValue2 = objDisableApkValue;
                                                }
                                            }
                                            conditionConfigs.add(new conditionConfig(key3, values4));
                                        }
                                        j2++;
                                        objDisableApkValue2 = objDisableApkValue;
                                    }
                                } else {
                                    JSONObject sysConditionObject4 = disbleObject.getJSONObject("disable_apk_sysprop_condition_not");
                                    String key4 = sysConditionObject4.getString("key");
                                    if (key4 != null) {
                                        HashSet<String> values5 = new HashSet<>();
                                        if (sysConditionObject4.has("value")) {
                                            int value4 = sysConditionObject4.getInt("value");
                                            values5.add(String.valueOf(value4));
                                        }
                                        if (sysConditionObject4.has("values")) {
                                            JSONArray valueArray4 = sysConditionObject4.getJSONArray("values");
                                            for (int k4 = 0; k4 < valueArray4.length(); k4++) {
                                                values5.add(valueArray4.getString(k4));
                                            }
                                        }
                                        conditionConfigs.add(new conditionConfig(key4, values5));
                                    }
                                }
                                for (conditionConfig conf2 : conditionConfigs) {
                                    String sysValue2 = SystemProperties.get(conf2.getKey());
                                    Slog.i(TAG, "disableapk, key:" + conf2.getKey() + " sysValue:" + sysValue2 + " condition_not prefer values:" + conf2.getValues());
                                    if (conf2.getValues().contains(sysValue2)) {
                                        isDisabledApk = false;
                                        break;
                                    }
                                    isDisabledApk = true;
                                    conditionsCurSystem.add(new conditionSystem(conf2.getKey(), String.valueOf(sysValue2)));
                                }
                            } else {
                                Slog.e(TAG, "disable_apk config error, no disable_apk_sysprop_condition");
                            }
                        }
                        if (isDisabledApk) {
                            DisablePackageConfig disablePackageConfigs = new DisablePackageConfig();
                            if (disbleObject.has("disable_apk_file_path_list")) {
                                JSONArray filePathArray = disbleObject.getJSONArray("disable_apk_file_path_list");
                                for (int j3 = 0; j3 < filePathArray.length(); j3++) {
                                    disablePackageConfigs.filePaths.add(filePathArray.getString(j3));
                                }
                                disablePackageConfigs.sysCondition.addAll(conditionsCurSystem);
                                Slog.i(TAG, "meet condition, ready to disable apk file path:" + disablePackageConfigs.filePaths);
                                sConfigs.add(disablePackageConfigs);
                            }
                        }
                        i++;
                        is2 = is;
                        configFile2 = configFile;
                        bufferedReader2 = bufferedReader;
                        line = line2;
                        object_cfg3 = object_cfg;
                        sb2 = sb;
                    }
                    return sConfigs;
                }
                Slog.w(TAG, "disable_apk config error, please check!");
                return null;
            } catch (IOException e1) {
                Slog.w(TAG, "IO error when read pms_sysprop_feature: " + e1);
            }
        } catch (JSONException e2) {
            Slog.w(TAG, "JSON parse error in pms_sysprop_feature: " + e2);
        } catch (Exception e3) {
            Slog.e(TAG, "getMeetConditionDisableConfigs, JSON parse error: " + e3);
        }
    }
}
