package com.hoho.android.usbserial.driver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public /* synthetic */ class FtdiSerialDriver$1 {
    static final /* synthetic */ int[] $SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int[] iArr = new int[UsbSerialPort$FlowControl.values().length];
        $SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl = iArr;
        try {
            iArr[UsbSerialPort$FlowControl.NONE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl[UsbSerialPort$FlowControl.RTS_CTS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl[UsbSerialPort$FlowControl.DTR_DSR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl[UsbSerialPort$FlowControl.XON_XOFF_INLINE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
