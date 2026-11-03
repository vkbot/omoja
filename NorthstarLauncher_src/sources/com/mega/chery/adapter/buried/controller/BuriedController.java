package com.mega.chery.adapter.buried.controller;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.lion.datapoint.log.LogDataInterfaceManager;
import com.mega.chery.adapter.buried.constant.Type;
import com.mega.chery.adapter.buried.model.BuriedRecord;
import com.mega.chery.adapter.buried.utils.BuriedUtils;
import com.mega.chery.utils.CarConfigUtils;
import com.mega.launcherapi.WallpaperConstant;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BuriedController {
    private static final String TAG = "BuriedController";
    public static volatile BuriedController sBuriedController;
    private HashMap<String, String> mExcludeMap;
    private final Gson mGson = new Gson();
    private String mVehicleModel;

    public static class AttributeInfo {

        @SerializedName("attributeId")
        public String attributeId;

        @SerializedName("attributeValue")
        public String attributeValue;

        @SerializedName("locationId")
        public String locationId;
    }

    public static BuriedController getInstance() {
        if (sBuriedController == null) {
            synchronized (BuriedController.class) {
                if (sBuriedController == null) {
                    sBuriedController = new BuriedController();
                }
            }
        }
        return sBuriedController;
    }

    private BuriedController() {
    }

    public void init(Context context) {
        init(context, null);
    }

    public void init(Context context, HashMap<String, String> map) {
        this.mExcludeMap = map;
        this.mVehicleModel = CarConfigUtils.getVehicleModel();
    }

    public void release(Context context) {
        LogDataInterfaceManager.getInstances().deInitialize(context.getPackageName().hashCode());
    }

    private static class BuriedDataInfo {

        @SerializedName("eventId")
        public String eventId;

        @SerializedName(WallpaperConstant.WALLPAPER_COLUMN_ID)
        public String id;

        @SerializedName("content")
        List<AttributeInfo> infoList;

        @SerializedName("platformCode")
        public String platformCode;

        @SerializedName("supplierCode")
        public String supplierCode;

        @SerializedName("timestamp")
        public long timestamp;

        private BuriedDataInfo() {
        }
    }

    public void startDataPoint(String str, String str2, List<AttributeInfo> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        BuriedDataInfo buriedDataInfo = new BuriedDataInfo();
        buriedDataInfo.id = str;
        buriedDataInfo.eventId = str2;
        buriedDataInfo.timestamp = System.currentTimeMillis();
        buriedDataInfo.supplierCode = "Megatronix";
        buriedDataInfo.platformCode = "8155";
        buriedDataInfo.infoList = (List) list.stream().filter(new Predicate() { // from class: com.mega.chery.adapter.buried.controller.BuriedController$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.m251x2518abee((BuriedController.AttributeInfo) obj);
            }
        }).collect(Collectors.toList());
        if (BuriedUtils.IS_SAUDI) {
            buriedDataInfo.infoList.forEach(new Consumer() { // from class: com.mega.chery.adapter.buried.controller.BuriedController$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BuriedController.AttributeInfo attributeInfo = (BuriedController.AttributeInfo) obj;
                    attributeInfo.attributeValue = String.valueOf(attributeInfo.attributeValue);
                }
            });
        }
        try {
            trackJsonNewValue(str2, this.mGson.toJson(buriedDataInfo));
        } catch (RuntimeException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: lambda$startDataPoint$0$com-mega-chery-adapter-buried-controller-BuriedController, reason: not valid java name */
    /* synthetic */ boolean m251x2518abee(AttributeInfo attributeInfo) {
        return include(attributeInfo.locationId);
    }

    private boolean include(final String str) {
        if (this.mExcludeMap == null || TextUtils.isEmpty(this.mVehicleModel) || !this.mExcludeMap.keySet().stream().filter(new Predicate() { // from class: com.mega.chery.adapter.buried.controller.BuriedController$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TextUtils.equals((String) obj, str);
            }
        }).anyMatch(new Predicate() { // from class: com.mega.chery.adapter.buried.controller.BuriedController$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.m250x285747bb((String) obj);
            }
        })) {
            return true;
        }
        Log.d(TAG, "filter: " + str);
        return false;
    }

    /* JADX INFO: renamed from: lambda$include$3$com-mega-chery-adapter-buried-controller-BuriedController, reason: not valid java name */
    /* synthetic */ boolean m250x285747bb(String str) {
        return contains(this.mExcludeMap.get(str), this.mVehicleModel);
    }

    private void trackJsonNewValue(String str, String str2) {
        LogDataInterfaceManager.getInstances().m234xf2d0cc35(str2, Type.EventType.getNodeType(str));
    }

    public static boolean contains(String str, final String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return Arrays.stream(str.split("\\|")).anyMatch(new Predicate() { // from class: com.mega.chery.adapter.buried.controller.BuriedController$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TextUtils.equals((String) obj, str2);
            }
        });
    }

    public void startDataPoint(String str, String... strArr) {
        int length;
        Log.d(TAG, " startDataPoint: appId = " + str);
        if (strArr == null || (length = strArr.length) == 0) {
            Log.d(TAG, " startDataPoint: keys.length = 0, return ");
            return;
        }
        String eventId = getEventId(strArr[0]);
        JSONObject[] jSONObjectArr = new JSONObject[length];
        for (int i = 0; i < length; i++) {
            JSONObject lastValue = BuriedRecord.getLastValue(strArr[i]);
            if (lastValue != null) {
                try {
                    if (include(lastValue.getString("locationId"))) {
                        jSONObjectArr[i] = lastValue;
                    }
                } catch (JSONException e) {
                    Log.e(TAG, "json exception: " + e.getMessage());
                }
            }
            Log.d(TAG, " startDataPoint: content = " + jSONObjectArr[i]);
        }
        Log.d(TAG, " startDataPoint: content = " + Arrays.toString(jSONObjectArr));
        JSONArray contentArray = getContentArray(jSONObjectArr);
        if (contentArray.length() == 0) {
            Log.d(TAG, " startDataPoint: jsonArray.length() = 0, return ");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(WallpaperConstant.WALLPAPER_COLUMN_ID, str);
            jSONObject.put("eventId", eventId);
            jSONObject.put("timestamp", System.currentTimeMillis());
            jSONObject.put("supplierCode", "Megatronix");
            jSONObject.put("platformCode", "8155");
            jSONObject.put("content", contentArray);
        } catch (JSONException e2) {
            Log.d(TAG, " startDataPoint: jsonObject error = " + e2.getMessage());
        }
        String strReplace = jSONObject.toString().replace("\\/", "/");
        Log.d(TAG, " startDataPoint: JSONObject = " + strReplace);
        trackJsonNewValue(eventId, strReplace);
    }

    public void startDataPoint(String str, String[] strArr, Object[] objArr) {
        JSONArray contentArray = getContentArray(strArr, objArr);
        if (contentArray.length() == 0) {
            Log.d(TAG, " startDataPoint: jsonArray.length() = 0, return ");
            return;
        }
        String eventId = getEventId(strArr[0]);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(WallpaperConstant.WALLPAPER_COLUMN_ID, str);
            jSONObject.put("eventId", eventId);
            jSONObject.put("timestamp", System.currentTimeMillis());
            jSONObject.put("supplierCode", "Megatronix");
            jSONObject.put("platformCode", "8155");
            jSONObject.put("content", contentArray);
        } catch (JSONException e) {
            Log.d(TAG, " startDataPoint: jsonObject error = " + e.getMessage());
        }
        String strReplace = jSONObject.toString().replace("\\/", "/");
        Log.d(TAG, " startDataPoint: JSONObject = " + strReplace);
        trackJsonNewValue(eventId, strReplace);
    }

    private JSONArray getContentArray(JSONObject... jSONObjectArr) {
        JSONArray jSONArray = new JSONArray();
        if (jSONObjectArr == null) {
            return jSONArray;
        }
        for (JSONObject jSONObject : jSONObjectArr) {
            if (jSONObject != null) {
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }

    private JSONArray getContentArray(String[] strArr, Object[] objArr) {
        JSONArray jSONArray = new JSONArray();
        if (strArr != null && objArr != null && strArr.length != 0 && strArr.length == objArr.length) {
            for (int i = 0; i < strArr.length; i++) {
                String str = strArr[i];
                Object obj = objArr[i];
                Log.d(TAG, " startDataPoint: key = " + str);
                Log.d(TAG, " startDataPoint: value = " + obj);
                String[] strArrSplit = str.split("/");
                JSONObject jSONObject = new JSONObject();
                if (include(strArrSplit[0])) {
                    try {
                        jSONObject.put("locationId", strArrSplit[0]);
                        jSONObject.put("attributeId", strArrSplit[2]);
                        if (BuriedUtils.IS_SAUDI) {
                            jSONObject.put("attributeValue", String.valueOf(obj));
                        } else {
                            jSONObject.put("attributeValue", obj);
                        }
                    } catch (JSONException e) {
                        Log.e("RecordChangePoint", e.getMessage());
                    }
                    jSONArray.put(jSONObject);
                }
            }
        }
        return jSONArray;
    }

    private String getEventId(String str) {
        return str.split("/")[1];
    }
}
