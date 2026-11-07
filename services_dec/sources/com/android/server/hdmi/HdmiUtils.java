package com.android.server.hdmi;

import android.hardware.hdmi.HdmiDeviceInfo;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.util.HexDump;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.voiceinteraction.DatabaseHelper;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
final class HdmiUtils {
    private static final int[] ADDRESS_TO_TYPE = {0, 1, 1, 3, 4, 5, 3, 3, 4, 1, 3, 4, 2, 2, 0};
    private static final String[] DEFAULT_NAMES = {"TV", "Recorder_1", "Recorder_2", "Tuner_1", "Playback_1", "AudioSystem", "Tuner_2", "Tuner_3", "Playback_2", "Recorder_3", "Tuner_4", "Playback_3", "Reserved_1", "Reserved_2", "Secondary_TV"};
    private static final String TAG = "HdmiUtils";
    static final int TARGET_NOT_UNDER_LOCAL_DEVICE = -1;
    static final int TARGET_SAME_PHYSICAL_ADDRESS = 0;

    private HdmiUtils() {
    }

    static boolean isValidAddress(int address) {
        return address >= 0 && address <= 14;
    }

    static int getTypeFromAddress(int address) {
        if (isValidAddress(address)) {
            return ADDRESS_TO_TYPE[address];
        }
        return -1;
    }

    static String getDefaultDeviceName(int address) {
        if (isValidAddress(address)) {
            return DEFAULT_NAMES[address];
        }
        return "";
    }

    static void verifyAddressType(int logicalAddress, int deviceType) {
        int actualDeviceType = getTypeFromAddress(logicalAddress);
        if (actualDeviceType != deviceType) {
            throw new IllegalArgumentException("Device type missmatch:[Expected:" + deviceType + ", Actual:" + actualDeviceType);
        }
    }

    static boolean checkCommandSource(HdmiCecMessage cmd, int expectedAddress, String tag) {
        int src = cmd.getSource();
        if (src != expectedAddress) {
            Slog.w(tag, "Invalid source [Expected:" + expectedAddress + ", Actual:" + src + "]");
            return false;
        }
        return true;
    }

    static boolean parseCommandParamSystemAudioStatus(HdmiCecMessage cmd) {
        return cmd.getParams()[0] == 1;
    }

    static boolean isAudioStatusMute(HdmiCecMessage cmd) {
        byte[] params = cmd.getParams();
        return (params[0] & 128) == 128;
    }

    static int getAudioStatusVolume(HdmiCecMessage cmd) {
        byte[] params = cmd.getParams();
        int volume = params[0] & 127;
        if (volume < 0 || 100 < volume) {
            return -1;
        }
        return volume;
    }

    static List<Integer> asImmutableList(int[] is) {
        ArrayList<Integer> list = new ArrayList<>(is.length);
        for (int type : is) {
            list.add(Integer.valueOf(type));
        }
        return Collections.unmodifiableList(list);
    }

    static int twoBytesToInt(byte[] data) {
        return ((data[0] & 255) << 8) | (data[1] & 255);
    }

    static int twoBytesToInt(byte[] data, int offset) {
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }

    static int threeBytesToInt(byte[] data) {
        return ((data[0] & 255) << 16) | ((data[1] & 255) << 8) | (data[2] & 255);
    }

    static <T> List<T> sparseArrayToList(SparseArray<T> array) {
        ArrayList<T> list = new ArrayList<>();
        for (int i = 0; i < array.size(); i++) {
            list.add(array.valueAt(i));
        }
        return list;
    }

    static <T> List<T> mergeToUnmodifiableList(List<T> a, List<T> b) {
        if (a.isEmpty() && b.isEmpty()) {
            return Collections.emptyList();
        }
        if (a.isEmpty()) {
            return Collections.unmodifiableList(b);
        }
        if (b.isEmpty()) {
            return Collections.unmodifiableList(a);
        }
        List<T> newList = new ArrayList<>();
        newList.addAll(a);
        newList.addAll(b);
        return Collections.unmodifiableList(newList);
    }

    static boolean isAffectingActiveRoutingPath(int activePath, int newPath) {
        for (int i = 0; i <= 12; i += 4) {
            int nibble = (newPath >> i) & 15;
            if (nibble != 0) {
                int mask = 65520 << i;
                newPath &= mask;
                break;
            }
        }
        if (newPath == 0) {
            return true;
        }
        return isInActiveRoutingPath(activePath, newPath);
    }

    static boolean isInActiveRoutingPath(int activePath, int newPath) {
        int nibbleNew;
        for (int i = 12; i >= 0; i -= 4) {
            int nibbleActive = (activePath >> i) & 15;
            if (nibbleActive != 0 && (nibbleNew = (newPath >> i) & 15) != 0) {
                if (nibbleActive != nibbleNew) {
                    return false;
                }
            } else {
                return true;
            }
        }
        return true;
    }

    static HdmiDeviceInfo cloneHdmiDeviceInfo(HdmiDeviceInfo info, int newPowerStatus) {
        return new HdmiDeviceInfo(info.getLogicalAddress(), info.getPhysicalAddress(), info.getPortId(), info.getDeviceType(), info.getVendorId(), info.getDisplayName(), newPowerStatus);
    }

    static <T> void dumpSparseArray(IndentingPrintWriter pw, String name, SparseArray<T> sparseArray) {
        printWithTrailingColon(pw, name);
        pw.increaseIndent();
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            int key = sparseArray.keyAt(i);
            T value = sparseArray.get(key);
            pw.printPair(Integer.toString(key), value);
            pw.println();
        }
        pw.decreaseIndent();
    }

    private static void printWithTrailingColon(IndentingPrintWriter pw, String name) {
        pw.println(name.endsWith(":") ? name : name.concat(":"));
    }

    static <K, V> void dumpMap(IndentingPrintWriter pw, String name, Map<K, V> map) {
        printWithTrailingColon(pw, name);
        pw.increaseIndent();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            pw.printPair(entry.getKey().toString(), entry.getValue());
            pw.println();
        }
        pw.decreaseIndent();
    }

    static <T> void dumpIterable(IndentingPrintWriter pw, String name, Iterable<T> values) {
        printWithTrailingColon(pw, name);
        pw.increaseIndent();
        for (T value : values) {
            pw.println(value);
        }
        pw.decreaseIndent();
    }

    public static int getLocalPortFromPhysicalAddress(int targetPhysicalAddress, int myPhysicalAddress) {
        if (myPhysicalAddress == targetPhysicalAddress) {
            return 0;
        }
        int mask = 61440;
        int finalMask = 61440;
        int maskedAddress = myPhysicalAddress;
        while (maskedAddress != 0) {
            maskedAddress = myPhysicalAddress & mask;
            finalMask |= mask;
            mask >>= 4;
        }
        int portAddress = targetPhysicalAddress & finalMask;
        if (((finalMask << 4) & portAddress) != myPhysicalAddress) {
            return -1;
        }
        int port = portAddress & (mask << 4);
        while ((port >> 4) != 0) {
            port >>= 4;
        }
        return port;
    }

    static int getAbortFeatureOpcode(HdmiCecMessage cmd) {
        return cmd.getParams()[0] & 255;
    }

    static int getAbortReason(HdmiCecMessage cmd) {
        return cmd.getParams()[1];
    }

    public static class ShortAudioDescriptorXmlParser {
        private static final String NS = null;

        public static List<DeviceConfig> parse(InputStream in) throws XmlPullParserException, IOException {
            XmlPullParser parser = Xml.newPullParser();
            parser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            parser.setInput(in, null);
            parser.nextTag();
            return readDevices(parser);
        }

        private static void skip(XmlPullParser parser) throws XmlPullParserException, IOException {
            if (parser.getEventType() != 2) {
                throw new IllegalStateException();
            }
            int depth = 1;
            while (depth != 0) {
                int next = parser.next();
                if (next == 2) {
                    depth++;
                } else if (next == 3) {
                    depth--;
                }
            }
        }

        private static List<DeviceConfig> readDevices(XmlPullParser parser) throws XmlPullParserException, IOException {
            List<DeviceConfig> devices = new ArrayList<>();
            parser.require(2, NS, "config");
            while (parser.next() != 3) {
                if (parser.getEventType() == 2) {
                    String name = parser.getName();
                    if (name.equals("device")) {
                        String deviceType = parser.getAttributeValue(null, DatabaseHelper.SoundModelContract.KEY_TYPE);
                        DeviceConfig config = null;
                        if (deviceType != null) {
                            config = readDeviceConfig(parser, deviceType);
                        }
                        if (config != null) {
                            devices.add(config);
                        }
                    } else {
                        skip(parser);
                    }
                }
            }
            return devices;
        }

        private static DeviceConfig readDeviceConfig(XmlPullParser parser, String deviceType) throws XmlPullParserException, IOException {
            List<CodecSad> codecSads = new ArrayList<>();
            parser.require(2, NS, "device");
            while (parser.next() != 3) {
                if (parser.getEventType() == 2) {
                    String tagName = parser.getName();
                    if (tagName.equals("supportedFormat")) {
                        String codecAttriValue = parser.getAttributeValue(null, "format");
                        String sadAttriValue = parser.getAttributeValue(null, "descriptor");
                        int format = codecAttriValue == null ? 0 : formatNameToNum(codecAttriValue);
                        byte[] descriptor = readSad(sadAttriValue);
                        if (format != 0 && descriptor != null) {
                            codecSads.add(new CodecSad(format, descriptor));
                        }
                        parser.nextTag();
                        parser.require(3, NS, "supportedFormat");
                    } else {
                        skip(parser);
                    }
                }
            }
            if (codecSads.size() == 0) {
                return null;
            }
            return new DeviceConfig(deviceType, codecSads);
        }

        private static byte[] readSad(String sad) {
            if (sad == null || sad.length() == 0) {
                return null;
            }
            byte[] sadBytes = HexDump.hexStringToByteArray(sad);
            if (sadBytes.length != 3) {
                Slog.w(HdmiUtils.TAG, "SAD byte array length is not 3. Length = " + sadBytes.length);
                return null;
            }
            return sadBytes;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:53:0x00ce  */
        private static int formatNameToNum(String codecAttriValue) {
            switch (codecAttriValue) {
                case "AUDIO_FORMAT_LPCM":
                    return 1;
                case "AUDIO_FORMAT_DD":
                    return 2;
                case "AUDIO_FORMAT_MPEG1":
                    return 3;
                case "AUDIO_FORMAT_MP3":
                    return 4;
                case "AUDIO_FORMAT_MPEG2":
                    return 5;
                case "AUDIO_FORMAT_AAC":
                    return 6;
                case "AUDIO_FORMAT_DTS":
                    return 7;
                case "AUDIO_FORMAT_ATRAC":
                    return 8;
                case "AUDIO_FORMAT_ONEBITAUDIO":
                    return 9;
                case "AUDIO_FORMAT_DDP":
                    return 10;
                case "AUDIO_FORMAT_DTSHD":
                    return 11;
                case "AUDIO_FORMAT_TRUEHD":
                    return 12;
                case "AUDIO_FORMAT_DST":
                    return 13;
                case "AUDIO_FORMAT_WMAPRO":
                    return 14;
                case "AUDIO_FORMAT_MAX":
                    return 15;
                case "AUDIO_FORMAT_NONE":
                default:
                    return 0;
            }
        }
    }

    public static class DeviceConfig {
        public final String name;
        public final List<CodecSad> supportedCodecs;

        public DeviceConfig(String name, List<CodecSad> supportedCodecs) {
            this.name = name;
            this.supportedCodecs = supportedCodecs;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof DeviceConfig)) {
                return false;
            }
            DeviceConfig that = (DeviceConfig) obj;
            return that.name.equals(this.name) && that.supportedCodecs.equals(this.supportedCodecs);
        }

        public int hashCode() {
            return Objects.hash(this.name, Integer.valueOf(this.supportedCodecs.hashCode()));
        }
    }

    public static class CodecSad {
        public final int audioCodec;
        public final byte[] sad;

        public CodecSad(int audioCodec, byte[] sad) {
            this.audioCodec = audioCodec;
            this.sad = sad;
        }

        public CodecSad(int audioCodec, String sad) {
            this.audioCodec = audioCodec;
            this.sad = HexDump.hexStringToByteArray(sad);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof CodecSad)) {
                return false;
            }
            CodecSad that = (CodecSad) obj;
            return that.audioCodec == this.audioCodec && Arrays.equals(that.sad, this.sad);
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.audioCodec), Integer.valueOf(Arrays.hashCode(this.sad)));
        }
    }
}
