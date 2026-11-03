package com.mega.chery.account;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mega.nexus.provider.MegaSettings;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class CheryAccountMapManager {
    private static final String KEY_ACTIVE_ID = "chery_account_active_id";
    private static final String KEY_MAP_ID_FACE = "chery_account_map_id_face";
    private static final String KEY_MAP_ID_KEY = "chery_account_map_id_key";
    private static final String KEY_PREFIX = "chery_account_";
    private static final String KEY_SAVE_POSITION = "chery_account_save_position";
    private static final int MAX_ACCOUNT = 5;
    private static final String TAG = "CheryAccountMapManager";
    private static Map<String, Integer> sFaceMap;
    private static Map<Integer, Integer> sKeyMap;

    public @interface AccountID {
        public static final int ID_1 = 1;
        public static final int ID_2 = 2;
        public static final int ID_3 = 3;
        public static final int ID_4 = 4;
        public static final int ID_5 = 5;
        public static final int ID_NO_ACTIVE = 0;
        public static final int NO_ACCOUNT = -1;
    }

    public static void uninit() {
        sKeyMap = null;
        sFaceMap = null;
    }

    public static void init(boolean z, Context context) {
        Log.d(TAG, "init = " + z);
        if (z) {
            restoreFaceMap(context);
        } else {
            restoreKeyMap(context);
        }
    }

    public static void mapKeyID(Context context, int i) {
        Map<Integer, Integer> map = sKeyMap;
        if (map == null) {
            Log.w(TAG, "mapKeyID warning for sKeyMap null");
            return;
        }
        Integer numValueOf = map.get(Integer.valueOf(i));
        Log.i(TAG, "mapKeyID = " + i + " " + numValueOf);
        if (numValueOf == null) {
            final BitSet bitSet = new BitSet(5);
            sKeyMap.forEach(new BiConsumer() { // from class: com.mega.chery.account.CheryAccountMapManager$$ExternalSyntheticLambda4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    bitSet.set(((Integer) obj2).intValue() - 1);
                }
            });
            for (int i2 = 0; i2 < 5; i2++) {
                if (!bitSet.get(i2)) {
                    numValueOf = Integer.valueOf(i2 + 1);
                    break;
                }
            }
            if (numValueOf == null) {
                Log.w(TAG, "key map id error");
                return;
            } else {
                sKeyMap.put(Integer.valueOf(i), numValueOf);
                saveKeyMap(context, mapToString(sKeyMap));
            }
        }
        Log.i(TAG, "mapKeyID active = " + numValueOf);
        setActiveID(context, numValueOf.intValue());
    }

    public static void onLogin(Context context, String str) {
        Map<String, Integer> map = sFaceMap;
        if (map == null) {
            Log.w(TAG, "onLogin warning for sFaceMap null");
            return;
        }
        Integer numValueOf = map.get(str);
        if (numValueOf == null) {
            final BitSet bitSet = new BitSet(5);
            sFaceMap.forEach(new BiConsumer() { // from class: com.mega.chery.account.CheryAccountMapManager$$ExternalSyntheticLambda1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    bitSet.set(((Integer) obj2).intValue() - 1);
                }
            });
            for (int i = 0; i < 5; i++) {
                if (!bitSet.get(i)) {
                    numValueOf = Integer.valueOf(i + 1);
                    break;
                }
            }
            if (numValueOf == null) {
                Log.w(TAG, "face map id error");
                return;
            } else {
                sFaceMap.put(str, numValueOf);
                saveFaceMap(context, mapToString(sFaceMap));
            }
        }
        setActiveID(context, numValueOf.intValue());
    }

    public static void onLogout(Context context) {
        setActiveID(context, -1);
    }

    public static void onDelete(Context context, final String str) {
        if (sFaceMap == null) {
            Log.w(TAG, "onDelete warning for sFaceMap null");
            return;
        }
        deleteAccountPosition(context, getFaceMapID(str));
        sFaceMap.remove(sFaceMap.keySet().stream().filter(new Predicate() { // from class: com.mega.chery.account.CheryAccountMapManager$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((String) obj).contains(str);
            }
        }).findFirst().orElse(""));
        saveFaceMap(context, mapToString(sFaceMap));
    }

    public static int getFaceMapID(final String str) {
        if (sFaceMap == null || TextUtils.isEmpty(str)) {
            Log.w(TAG, "getFaceMapID warning for sFaceMap null = " + str);
            return -1;
        }
        Integer num = sFaceMap.get(sFaceMap.keySet().stream().filter(new Predicate() { // from class: com.mega.chery.account.CheryAccountMapManager$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((String) obj).contains(str);
            }
        }).findFirst().orElse(""));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public static int getKeyMapID(int i) {
        Map<Integer, Integer> map = sKeyMap;
        if (map == null) {
            Log.w(TAG, "getKeyMapID warning for sKeyMap null");
            return -1;
        }
        Integer num = map.get(Integer.valueOf(i));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public static void setActiveID(Context context, int i) {
        Log.d(TAG, "setActiveId = " + i);
        MegaSettings.putIntForUserSystem(context.getContentResolver(), KEY_ACTIVE_ID, i, 0);
    }

    public static int getActiveID(Context context) {
        return MegaSettings.getIntForUserSystem(context.getContentResolver(), KEY_ACTIVE_ID, -1, 0);
    }

    public static int getRequestId(Context context) {
        return getRequestId(context, 1);
    }

    public static int getRequestId(Context context, int i) {
        int activeID = getActiveID(context);
        MLog.d(TAG, "faceId = " + activeID);
        if (activeID == -1) {
            activeID = 5;
        }
        return ((activeID - 1) * 3) + i;
    }

    public static int getDriverSitting(int i) {
        MLog.d(TAG, "post = " + i);
        if (i <= 0) {
            return 1;
        }
        int i2 = i % 3;
        if (i2 == 0) {
            return 3;
        }
        return i2;
    }

    private static void saveKeyMap(Context context, String str) {
        Log.d(TAG, "save key map = " + str);
        MegaSettings.putStringForUserSystem(context.getContentResolver(), KEY_MAP_ID_KEY, str, 0);
    }

    private static void saveFaceMap(Context context, String str) {
        Log.d(TAG, "save face map = " + str);
        MegaSettings.putStringForUserSystem(context.getContentResolver(), KEY_MAP_ID_FACE, str, 0);
    }

    private static void restoreKeyMap(Context context) {
        String stringForUserSystem = MegaSettings.getStringForUserSystem(context.getContentResolver(), KEY_MAP_ID_KEY, 0);
        Log.d(TAG, "restore key map = " + stringForUserSystem);
        stringToKeyMap(stringForUserSystem);
    }

    private static void restoreFaceMap(Context context) {
        String stringForUserSystem = MegaSettings.getStringForUserSystem(context.getContentResolver(), KEY_MAP_ID_FACE, 0);
        Log.d(TAG, "restore face map = " + stringForUserSystem);
        stringToFaceMap(stringForUserSystem);
    }

    private static <T> String mapToString(Map<T, Integer> map) {
        final StringBuilder sb = new StringBuilder();
        map.forEach(new BiConsumer() { // from class: com.mega.chery.account.CheryAccountMapManager$$ExternalSyntheticLambda5
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                CheryAccountMapManager.lambda$mapToString$4(sb, obj, (Integer) obj2);
            }
        });
        Log.d(TAG, "map to string = " + ((Object) sb));
        return sb.toString();
    }

    static /* synthetic */ void lambda$mapToString$4(StringBuilder sb, Object obj, Integer num) {
        sb.append(obj);
        sb.append(":");
        sb.append(num);
        sb.append("-");
    }

    private static void stringToFaceMap(String str) {
        sFaceMap = new HashMap(5);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Arrays.stream(str.split("-")).forEach(new Consumer() { // from class: com.mega.chery.account.CheryAccountMapManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CheryAccountMapManager.lambda$stringToFaceMap$5((String) obj);
            }
        });
    }

    static /* synthetic */ void lambda$stringToFaceMap$5(String str) {
        String[] strArrSplit = str.split(":");
        sFaceMap.put(strArrSplit[0], Integer.valueOf(Integer.parseInt(strArrSplit[1])));
    }

    private static void stringToKeyMap(String str) {
        HashMap map = new HashMap(5);
        sKeyMap = map;
        stringToIntMap(str, map);
    }

    private static void stringToIntMap(String str, final Map<Integer, Integer> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Arrays.stream(str.split("-")).forEach(new Consumer() { // from class: com.mega.chery.account.CheryAccountMapManager$$ExternalSyntheticLambda6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CheryAccountMapManager.lambda$stringToIntMap$6(map, (String) obj);
            }
        });
    }

    static /* synthetic */ void lambda$stringToIntMap$6(Map map, String str) {
        String[] strArrSplit = str.split(":");
        map.put(Integer.valueOf(Integer.parseInt(strArrSplit[0])), Integer.valueOf(Integer.parseInt(strArrSplit[1])));
    }

    public static void saveAccountPosition(Context context, int i, int i2) {
        Map<Integer, Integer> savePositionMap = getSavePositionMap(context);
        savePositionMap.put(Integer.valueOf(i), Integer.valueOf(i2));
        MegaSettings.putStringForUserSystem(context.getContentResolver(), KEY_SAVE_POSITION, mapToString(savePositionMap), 0);
    }

    public static void deleteAccountPosition(Context context, int i) {
        Map<Integer, Integer> savePositionMap = getSavePositionMap(context);
        savePositionMap.remove(Integer.valueOf(i));
        MegaSettings.putStringForUserSystem(context.getContentResolver(), KEY_SAVE_POSITION, mapToString(savePositionMap), 0);
    }

    public static int getAccountPosition(Context context, int i) {
        Integer num = getSavePositionMap(context).get(Integer.valueOf(i));
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private static Map<Integer, Integer> getSavePositionMap(Context context) {
        String stringForUserSystem = MegaSettings.getStringForUserSystem(context.getContentResolver(), KEY_SAVE_POSITION, 0);
        Log.d(TAG, "get position  = " + stringForUserSystem);
        HashMap map = new HashMap(5);
        if (!TextUtils.isEmpty(stringForUserSystem)) {
            stringToIntMap(stringForUserSystem, map);
        }
        return map;
    }
}
