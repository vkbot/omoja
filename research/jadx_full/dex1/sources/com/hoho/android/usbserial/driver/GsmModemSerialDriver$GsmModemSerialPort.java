package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import java.io.IOException;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class GsmModemSerialDriver$GsmModemSerialPort extends CommonUsbSerialPort {
    private UsbInterface mDataInterface;
    final /* synthetic */ GsmModemSerialDriver this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GsmModemSerialDriver$GsmModemSerialPort(GsmModemSerialDriver gsmModemSerialDriver, UsbDevice usbDevice, int i9) {
        super(usbDevice, i9);
        this.this$0 = gsmModemSerialDriver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int initGsmModem() throws IOException {
        int iControlTransfer = this.mConnection.controlTransfer(33, 34, 1, 0, null, 0, 5000);
        if (iControlTransfer >= 0) {
            return iControlTransfer;
        }
        b.A("init failed");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void closeInt() {
        try {
            this.mConnection.releaseInterface(this.mDataInterface);
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbSerialDriver getDriver() {
        return this.this$0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void openInt() throws IOException {
        Log.d(GsmModemSerialDriver.access$000(this.this$0), "claiming interfaces, count=" + this.mDevice.getInterfaceCount());
        UsbInterface usbInterface = this.mDevice.getInterface(0);
        this.mDataInterface = usbInterface;
        if (!this.mConnection.claimInterface(usbInterface, true)) {
            b.A("Could not claim shared control/data interface");
            return;
        }
        Log.d(GsmModemSerialDriver.access$000(this.this$0), "endpoint count=" + this.mDataInterface.getEndpointCount());
        for (int i9 = 0; i9 < this.mDataInterface.getEndpointCount(); i9++) {
            UsbEndpoint endpoint = this.mDataInterface.getEndpoint(i9);
            if (endpoint.getDirection() == 128 && endpoint.getType() == 2) {
                this.mReadEndpoint = endpoint;
            } else if (endpoint.getDirection() == 0 && endpoint.getType() == 2) {
                this.mWriteEndpoint = endpoint;
            }
        }
        initGsmModem();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setParameters(int i9, int i10, int i11, int i12) {
        throw new UnsupportedOperationException();
    }
}
