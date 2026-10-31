package org.apache.commons.net.tftp;

import ai.onnxruntime.a;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class TFTPRequestPacket extends TFTPPacket {
    private final String fileName;
    private final int mode;
    private final Map<String, String> options;
    static final String[] modeStrings = {"netascii", "octet"};
    private static final byte[][] modeBytes = {new byte[]{110, 101, 116, 97, 115, 99, 105, 105, 0}, new byte[]{111, 99, 116, 101, 116, 0}};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TFTPRequestPacket(int i, DatagramPacket datagramPacket) throws TFTPPacketException {
        int i2;
        super(i, datagramPacket.getAddress(), datagramPacket.getPort());
        this.options = new HashMap();
        byte[] data = datagramPacket.getData();
        if (getType() != data[1]) {
            throw new TFTPPacketException("TFTP operator code does not match type.");
        }
        StringBuilder sb = new StringBuilder();
        int length = datagramPacket.getLength();
        int i3 = 2;
        while (i3 < length) {
            byte b = data[i3];
            if (b == 0) {
                break;
            }
            sb.append((char) b);
            i3++;
        }
        this.fileName = sb.toString();
        if (i3 >= length) {
            throw new TFTPPacketException("Bad file name and mode format.");
        }
        int i4 = 0;
        sb.setLength(0);
        int i5 = i3 + 1;
        while (i5 < length) {
            byte b2 = data[i5];
            if (b2 == 0) {
                break;
            }
            sb.append((char) b2);
            i5++;
        }
        String lowerCase = sb.toString().toLowerCase(Locale.ENGLISH);
        int length2 = modeStrings.length;
        int i6 = 0;
        while (i6 < length2) {
            if (lowerCase.equals(modeStrings[i6])) {
                i4 = i6;
                break;
            }
            i6++;
        }
        this.mode = i4;
        if (i6 >= length2) {
            throw new TFTPPacketException(a.l("Unrecognized TFTP transfer mode: ", lowerCase));
        }
        for (int i7 = i5 + 1; i7 < length; i7 = i2 + 1) {
            int i8 = i7;
            while (data[i8] != 0) {
                if (i8 >= length) {
                    throw new TFTPPacketException("Invalid option format");
                }
                i8++;
            }
            String str = new String(data, i7, i8 - i7, StandardCharsets.US_ASCII);
            int i10 = i8 + 1;
            i2 = i10;
            while (data[i2] != 0) {
                if (i2 >= length) {
                    throw new TFTPPacketException("Invalid option format");
                }
                i2++;
            }
            this.options.put(str, new String(data, i10, i2 - i10, StandardCharsets.US_ASCII));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void handleOptions(byte[] bArr, int i, int i2) {
        int length = i + i2 + 2;
        for (Map$Entry<String, String> map$Entry : this.options.entrySet()) {
            bArr[length] = 0;
            String key = map$Entry.getKey();
            String value = map$Entry.getValue();
            Charset charset = StandardCharsets.US_ASCII;
            int i3 = length + 1;
            System.arraycopy(key.getBytes(charset), 0, bArr, i3, key.length());
            int length2 = key.length() + i3;
            int i4 = length2 + 1;
            bArr[length2] = 0;
            System.arraycopy(value.getBytes(charset), 0, bArr, i4, value.length());
            length = i4 + value.length();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getFilename() {
        return this.fileName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getMode() {
        return this.mode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Map<String, String> getOptions() {
        return this.options;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.tftp.TFTPPacket
    public final DatagramPacket newDatagram() {
        int length = this.fileName.length();
        int length2 = modeBytes[this.mode].length;
        int length3 = 0;
        for (Map$Entry<String, String> map$Entry : this.options.entrySet()) {
            length3 += map$Entry.getValue().length() + map$Entry.getKey().length() + 1 + 1;
        }
        int i = length + length2 + 3 + length3;
        byte[] bArr = new byte[i];
        bArr[0] = 0;
        bArr[1] = (byte) this.type;
        System.arraycopy(this.fileName.getBytes(Charset.defaultCharset()), 0, bArr, 2, length);
        bArr[length + 2] = 0;
        System.arraycopy(modeBytes[this.mode], 0, bArr, length + 3, length2);
        if (length3 > 0) {
            handleOptions(bArr, length, length2);
        }
        return new DatagramPacket(bArr, i, this.address, this.port);
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

    public TFTPRequestPacket(InetAddress inetAddress, int i, int i2, String str, int i3) {
        super(i2, inetAddress, i);
        this.options = new HashMap();
        this.fileName = str;
        this.mode = i3;
    }
}
