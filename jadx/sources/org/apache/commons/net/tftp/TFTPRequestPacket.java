package org.apache.commons.net.tftp;

import ai.onnxruntime.AbstractC0074a;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class TFTPRequestPacket extends TFTPPacket {
    private final String fileName;
    private final int mode;
    private final Map<String, String> options;
    static final String[] modeStrings = {"netascii", "octet"};
    private static final byte[][] modeBytes = {new byte[]{110, 101, 116, 97, 115, 99, 105, 105, 0}, new byte[]{111, 99, 116, 101, 116, 0}};

    public TFTPRequestPacket(int i10, DatagramPacket datagramPacket) throws TFTPPacketException {
        int i11;
        super(i10, datagramPacket.getAddress(), datagramPacket.getPort());
        this.options = new HashMap();
        byte[] data = datagramPacket.getData();
        if (getType() != data[1]) {
            throw new TFTPPacketException("TFTP operator code does not match type.");
        }
        StringBuilder sb = new StringBuilder();
        int length = datagramPacket.getLength();
        int i12 = 2;
        while (i12 < length) {
            byte b10 = data[i12];
            if (b10 == 0) {
                break;
            }
            sb.append((char) b10);
            i12++;
        }
        this.fileName = sb.toString();
        if (i12 >= length) {
            throw new TFTPPacketException("Bad file name and mode format.");
        }
        int i13 = 0;
        sb.setLength(0);
        int i14 = i12 + 1;
        while (i14 < length) {
            byte b11 = data[i14];
            if (b11 == 0) {
                break;
            }
            sb.append((char) b11);
            i14++;
        }
        String lowerCase = sb.toString().toLowerCase(Locale.ENGLISH);
        int length2 = modeStrings.length;
        int i15 = 0;
        while (i15 < length2) {
            if (lowerCase.equals(modeStrings[i15])) {
                i13 = i15;
                break;
            }
            i15++;
        }
        this.mode = i13;
        if (i15 >= length2) {
            throw new TFTPPacketException(AbstractC0074a.m161l("Unrecognized TFTP transfer mode: ", lowerCase));
        }
        for (int i16 = i14 + 1; i16 < length; i16 = i11 + 1) {
            int i17 = i16;
            while (data[i17] != 0) {
                if (i17 >= length) {
                    throw new TFTPPacketException("Invalid option format");
                }
                i17++;
            }
            String str = new String(data, i16, i17 - i16, StandardCharsets.US_ASCII);
            int i18 = i17 + 1;
            i11 = i18;
            while (data[i11] != 0) {
                if (i11 >= length) {
                    throw new TFTPPacketException("Invalid option format");
                }
                i11++;
            }
            this.options.put(str, new String(data, i18, i11 - i18, StandardCharsets.US_ASCII));
        }
    }

    private void handleOptions(byte[] bArr, int i10, int i11) {
        int length = i10 + i11 + 2;
        for (Map.Entry<String, String> entry : this.options.entrySet()) {
            bArr[length] = 0;
            String key = entry.getKey();
            String value = entry.getValue();
            Charset charset = StandardCharsets.US_ASCII;
            int i12 = length + 1;
            System.arraycopy(key.getBytes(charset), 0, bArr, i12, key.length());
            int length2 = key.length() + i12;
            int i13 = length2 + 1;
            bArr[length2] = 0;
            System.arraycopy(value.getBytes(charset), 0, bArr, i13, value.length());
            length = i13 + value.length();
        }
    }

    public final String getFilename() {
        return this.fileName;
    }

    public final int getMode() {
        return this.mode;
    }

    public final Map<String, String> getOptions() {
        return this.options;
    }

    @Override // org.apache.commons.net.tftp.TFTPPacket
    public final DatagramPacket newDatagram() {
        int length = this.fileName.length();
        int length2 = modeBytes[this.mode].length;
        int length3 = 0;
        for (Map.Entry<String, String> entry : this.options.entrySet()) {
            length3 += entry.getValue().length() + entry.getKey().length() + 1 + 1;
        }
        int i10 = length + length2 + 3 + length3;
        byte[] bArr = new byte[i10];
        bArr[0] = 0;
        bArr[1] = (byte) this.type;
        System.arraycopy(this.fileName.getBytes(Charset.defaultCharset()), 0, bArr, 2, length);
        bArr[length + 2] = 0;
        System.arraycopy(modeBytes[this.mode], 0, bArr, length + 3, length2);
        if (length3 > 0) {
            handleOptions(bArr, length, length2);
        }
        return new DatagramPacket(bArr, i10, this.address, this.port);
    }

    @Override // org.apache.commons.net.tftp.TFTPPacket
    public final DatagramPacket newDatagram(DatagramPacket datagramPacket, byte[] bArr) {
        int length = this.fileName.length();
        byte[][] bArr2 = modeBytes;
        int length2 = bArr2[this.mode].length;
        bArr[0] = 0;
        bArr[1] = (byte) this.type;
        System.arraycopy(this.fileName.getBytes(Charset.defaultCharset()), 0, bArr, 2, length);
        bArr[length + 2] = 0;
        System.arraycopy(bArr2[this.mode], 0, bArr, length + 3, length2);
        handleOptions(bArr, length, length2);
        datagramPacket.setAddress(this.address);
        datagramPacket.setPort(this.port);
        datagramPacket.setData(bArr);
        datagramPacket.setLength(length + length2 + 3);
        return datagramPacket;
    }

    public TFTPRequestPacket(InetAddress inetAddress, int i10, int i11, String str, int i12) {
        super(i11, inetAddress, i10);
        this.options = new HashMap();
        this.fileName = str;
        this.mode = i12;
    }
}
