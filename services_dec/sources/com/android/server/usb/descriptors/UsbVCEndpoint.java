package com.android.server.usb.descriptors;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
abstract class UsbVCEndpoint extends UsbDescriptor {
    private static final String TAG = "UsbVCEndpoint";
    public static final byte VCEP_ENDPOINT = 2;
    public static final byte VCEP_GENERAL = 1;
    public static final byte VCEP_INTERRUPT = 3;
    public static final byte VCEP_UNDEFINED = 0;

    UsbVCEndpoint(int length, byte type) {
        super(length, type);
    }

    public static UsbDescriptor allocDescriptor(UsbDescriptorParser parser, int length, byte type, byte subtype) {
        parser.getCurInterface();
        if (subtype == 0 || subtype == 1 || subtype == 2 || subtype == 3) {
            return null;
        }
        Log.w(TAG, "Unknown Video Class Endpoint id:0x" + Integer.toHexString(subtype));
        return null;
    }
}
