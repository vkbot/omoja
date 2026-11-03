package com.mega.chery.adapter.buried.model;

import android.util.Log;
import com.mega.chery.adapter.buried.utils.BuriedUtils;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BuriedRecord {
    private static final String TAG = "BuriedRecord";
    private static ConcurrentHashMap<String, Object> sMap = new ConcurrentHashMap<>();

    public static void recordValue(String str, Object obj) {
        sMap.put(str, obj);
    }

    public static JSONObject getLastValue(String str) {
        JSONObject jSONObject = new JSONObject();
        if (str == null || !sMap.containsKey(str)) {
            return null;
        }
        Object objRemove = sMap.remove(str);
        Log.d(TAG, "key = " + str);
        Log.d(TAG, "lastAttributeValue = " + objRemove);
        String[] strArrSplit = str.split("/");
        try {
            jSONObject.put("locationId", strArrSplit[0]);
            jSONObject.put("attributeId", strArrSplit[2]);
            if (BuriedUtils.IS_SAUDI) {
                jSONObject.put("attributeValue", String.valueOf(objRemove));
            } else {
                jSONObject.put("attributeValue", objRemove);
            }
        } catch (JSONException e) {
            Log.e("RecordChangePoint", e.getMessage());
        }
        return jSONObject;
    }
}
