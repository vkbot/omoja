package com.mega.nexus.bluetooth;

import android.bluetooth.BluetoothUuid;
import android.os.ParcelUuid;

/* JADX INFO: loaded from: classes2.dex */
public final class MegaBluetoothUuid {
    public static final ParcelUuid AUDIO_SINK = MegaBluetoothUuidAdapter.A2DP_SINK;
    public static final ParcelUuid AUDIO_SOURCE = MegaBluetoothUuidAdapter.A2DP_SOURCE;
    public static final ParcelUuid ADV_AUDIO_DIST = MegaBluetoothUuidAdapter.ADV_AUDIO_DIST;
    public static final ParcelUuid HSP = BluetoothUuid.HSP;
    public static final ParcelUuid HSP_AG = BluetoothUuid.HSP_AG;
    public static final ParcelUuid HANDSFREE = MegaBluetoothUuidAdapter.HFP;
    public static final ParcelUuid HANDSFREE_AG = MegaBluetoothUuidAdapter.HFP_AG;
    public static final ParcelUuid HID = MegaBluetoothUuidAdapter.HID;
    public static final ParcelUuid HOGP = MegaBluetoothUuidAdapter.HOGP;
    public static final ParcelUuid PANU = BluetoothUuid.PANU;
    public static final ParcelUuid NAP = BluetoothUuid.NAP;
    public static final ParcelUuid PBAP_PCE = BluetoothUuid.PBAP_PCE;
    public static final ParcelUuid PBAP_PSE = BluetoothUuid.PBAP_PSE;
    public static final ParcelUuid MNS = BluetoothUuid.MNS;
    public static final ParcelUuid MAP = BluetoothUuid.MAP;
    public static final ParcelUuid MAS = BluetoothUuid.MAS;
    public static final ParcelUuid OBEX_OBJECT_PUSH = MegaBluetoothUuidAdapter.OBEX_OBJECT_PUSH;

    public static boolean isUuidPresent(ParcelUuid[] parcelUuidArr, ParcelUuid parcelUuid) {
        return MegaBluetoothUuidAdapter.isUuidPresent(parcelUuidArr, parcelUuid);
    }

    public static boolean containsAnyUuid(ParcelUuid[] parcelUuidArr, ParcelUuid[] parcelUuidArr2) {
        return BluetoothUuid.containsAnyUuid(parcelUuidArr, parcelUuidArr2);
    }
}
