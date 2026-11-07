package com.android.server.usb.descriptors;

import com.android.server.usb.descriptors.report.ReportCanvas;

/* JADX INFO: loaded from: classes2.dex */
public final class Usb10ASFormatII extends UsbASFormat {
    private static final String TAG = "Usb10ASFormatII";
    private int mMaxBitRate;
    private byte mSamFreqType;
    private int[] mSampleRates;
    private int mSamplesPerFrame;

    public Usb10ASFormatII(int length, byte type, byte subtype, byte formatType, int subclass) {
        super(length, type, subtype, formatType, subclass);
    }

    public int getMaxBitRate() {
        return this.mMaxBitRate;
    }

    public int getSamplesPerFrame() {
        return this.mSamplesPerFrame;
    }

    public byte getSamFreqType() {
        return this.mSamFreqType;
    }

    @Override // com.android.server.usb.descriptors.UsbASFormat
    public int[] getSampleRates() {
        return this.mSampleRates;
    }

    @Override // com.android.server.usb.descriptors.UsbDescriptor
    public int parseRawDescriptors(ByteStream byteStream) {
        this.mMaxBitRate = byteStream.unpackUsbShort();
        this.mSamplesPerFrame = byteStream.unpackUsbShort();
        byte b = byteStream.getByte();
        this.mSamFreqType = b;
        int i = b;
        if (b == 0) {
            i = 2;
        }
        this.mSampleRates = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.mSampleRates[i2] = byteStream.unpackUsbTriple();
        }
        return this.mLength;
    }

    @Override // com.android.server.usb.descriptors.UsbASFormat, com.android.server.usb.descriptors.UsbACInterface, com.android.server.usb.descriptors.UsbDescriptor, com.android.server.usb.descriptors.report.Reporting
    public void report(ReportCanvas canvas) {
        super.report(canvas);
        canvas.openList();
        canvas.writeListItem("Max Bit Rate: " + getMaxBitRate());
        canvas.writeListItem("Samples Per Frame: " + getMaxBitRate());
        byte sampleFreqType = getSamFreqType();
        int[] sampleRates = getSampleRates();
        canvas.writeListItem("Sample Freq Type: " + ((int) sampleFreqType));
        canvas.openList();
        if (sampleFreqType == 0) {
            canvas.writeListItem("min: " + sampleRates[0]);
            canvas.writeListItem("max: " + sampleRates[1]);
        } else {
            for (int index = 0; index < sampleFreqType; index++) {
                canvas.writeListItem("" + sampleRates[index]);
            }
        }
        canvas.closeList();
        canvas.closeList();
    }
}
