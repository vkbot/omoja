package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import java.io.Closeable;
import java.util.EnumSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface UsbSerialPort extends Closeable {
    public static final char CHAR_XOFF = 19;
    public static final char CHAR_XON = 17;
    public static final int DATABITS_5 = 5;
    public static final int DATABITS_6 = 6;
    public static final int DATABITS_7 = 7;
    public static final int DATABITS_8 = 8;
    public static final int PARITY_EVEN = 2;
    public static final int PARITY_MARK = 3;
    public static final int PARITY_NONE = 0;
    public static final int PARITY_ODD = 1;
    public static final int PARITY_SPACE = 4;
    public static final int STOPBITS_1 = 1;
    public static final int STOPBITS_1_5 = 3;
    public static final int STOPBITS_2 = 2;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    boolean getCD();

    boolean getCTS();

    EnumSet<UsbSerialPort$ControlLine> getControlLines();

    boolean getDSR();

    boolean getDTR();

    UsbDevice getDevice();

    UsbSerialDriver getDriver();

    UsbSerialPort$FlowControl getFlowControl();

    int getPortNumber();

    boolean getRI();

    boolean getRTS();

    UsbEndpoint getReadEndpoint();

    int getReadQueueBufferCount();

    int getReadQueueBufferSize();

    String getSerial();

    EnumSet<UsbSerialPort$ControlLine> getSupportedControlLines();

    EnumSet<UsbSerialPort$FlowControl> getSupportedFlowControl();

    UsbEndpoint getWriteEndpoint();

    boolean getXON();

    boolean isOpen();

    void open(UsbDeviceConnection usbDeviceConnection);

    void purgeHwBuffers(boolean z8, boolean z9);

    int read(byte[] bArr, int i9);

    int read(byte[] bArr, int i9, int i10);

    void setBreak(boolean z8);

    void setDTR(boolean z8);

    void setFlowControl(UsbSerialPort$FlowControl usbSerialPort$FlowControl);

    void setParameters(int i9, int i10, int i11, int i12);

    void setRTS(boolean z8);

    void setReadQueue(int i9, int i10);

    void write(byte[] bArr, int i9);

    void write(byte[] bArr, int i9, int i10);
}
