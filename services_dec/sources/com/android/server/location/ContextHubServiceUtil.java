package com.android.server.location;

import android.content.Context;
import android.hardware.contexthub.V1_0.ContextHub;
import android.hardware.contexthub.V1_0.ContextHubMsg;
import android.hardware.contexthub.V1_0.HubAppInfo;
import android.hardware.contexthub.V1_0.NanoAppBinary;
import android.hardware.location.ContextHubInfo;
import android.hardware.location.NanoAppMessage;
import android.hardware.location.NanoAppState;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class ContextHubServiceUtil {
    private static final String CONTEXT_HUB_PERMISSION = "android.permission.ACCESS_CONTEXT_HUB";
    private static final String HARDWARE_PERMISSION = "android.permission.LOCATION_HARDWARE";
    private static final String TAG = "ContextHubServiceUtil";

    ContextHubServiceUtil() {
    }

    static HashMap<Integer, ContextHubInfo> createContextHubInfoMap(List<ContextHub> hubList) {
        HashMap<Integer, ContextHubInfo> contextHubIdToInfoMap = new HashMap<>();
        for (ContextHub contextHub : hubList) {
            contextHubIdToInfoMap.put(Integer.valueOf(contextHub.hubId), new ContextHubInfo(contextHub));
        }
        return contextHubIdToInfoMap;
    }

    static void copyToByteArrayList(byte[] inputArray, ArrayList<Byte> outputArray) {
        outputArray.clear();
        outputArray.ensureCapacity(inputArray.length);
        for (byte element : inputArray) {
            outputArray.add(Byte.valueOf(element));
        }
    }

    static byte[] createPrimitiveByteArray(ArrayList<Byte> array) {
        byte[] primitiveArray = new byte[array.size()];
        for (int i = 0; i < array.size(); i++) {
            primitiveArray[i] = array.get(i).byteValue();
        }
        return primitiveArray;
    }

    static int[] createPrimitiveIntArray(Collection<Integer> collection) {
        int[] primitiveArray = new int[collection.size()];
        int i = 0;
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            int contextHubId = it.next().intValue();
            primitiveArray[i] = contextHubId;
            i++;
        }
        return primitiveArray;
    }

    static NanoAppBinary createHidlNanoAppBinary(android.hardware.location.NanoAppBinary nanoAppBinary) {
        NanoAppBinary hidlNanoAppBinary = new NanoAppBinary();
        hidlNanoAppBinary.appId = nanoAppBinary.getNanoAppId();
        hidlNanoAppBinary.appVersion = nanoAppBinary.getNanoAppVersion();
        hidlNanoAppBinary.flags = nanoAppBinary.getFlags();
        hidlNanoAppBinary.targetChreApiMajorVersion = nanoAppBinary.getTargetChreApiMajorVersion();
        hidlNanoAppBinary.targetChreApiMinorVersion = nanoAppBinary.getTargetChreApiMinorVersion();
        try {
            copyToByteArrayList(nanoAppBinary.getBinaryNoHeader(), hidlNanoAppBinary.customBinary);
        } catch (IndexOutOfBoundsException e) {
            Log.w(TAG, e.getMessage());
        } catch (NullPointerException e2) {
            Log.w(TAG, "NanoApp binary was null");
        }
        return hidlNanoAppBinary;
    }

    static List<NanoAppState> createNanoAppStateList(List<HubAppInfo> nanoAppInfoList) {
        ArrayList<NanoAppState> nanoAppStateList = new ArrayList<>();
        for (HubAppInfo appInfo : nanoAppInfoList) {
            nanoAppStateList.add(new NanoAppState(appInfo.appId, appInfo.version, appInfo.enabled));
        }
        return nanoAppStateList;
    }

    static ContextHubMsg createHidlContextHubMessage(short hostEndPoint, NanoAppMessage message) {
        ContextHubMsg hidlMessage = new ContextHubMsg();
        hidlMessage.appName = message.getNanoAppId();
        hidlMessage.hostEndPoint = hostEndPoint;
        hidlMessage.msgType = message.getMessageType();
        copyToByteArrayList(message.getMessageBody(), hidlMessage.msg);
        return hidlMessage;
    }

    static NanoAppMessage createNanoAppMessage(ContextHubMsg message) {
        byte[] messageArray = createPrimitiveByteArray(message.msg);
        return NanoAppMessage.createMessageFromNanoApp(message.appName, message.msgType, messageArray, message.hostEndPoint == -1);
    }

    static void checkPermissions(Context context) {
        if (context.checkCallingPermission(HARDWARE_PERMISSION) != 0 && context.checkCallingPermission(CONTEXT_HUB_PERMISSION) != 0) {
            throw new SecurityException("LOCATION_HARDWARE or ACCESS_CONTEXT_HUB permission required to use Context Hub");
        }
    }

    static int toTransactionResult(int halResult) {
        if (halResult == 0) {
            return 0;
        }
        if (halResult == 5) {
            return 4;
        }
        if (halResult != 2) {
            return halResult != 3 ? 1 : 3;
        }
        return 2;
    }
}
