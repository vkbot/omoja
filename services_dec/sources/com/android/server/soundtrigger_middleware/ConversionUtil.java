package com.android.server.soundtrigger_middleware;

import android.hardware.audio.common.V2_0.Uuid;
import android.hardware.soundtrigger.V2_0.ISoundTriggerHw;
import android.hardware.soundtrigger.V2_0.ISoundTriggerHwCallback;
import android.hardware.soundtrigger.V2_3.Properties;
import android.hardware.soundtrigger.V2_3.RecognitionConfig;
import android.media.audio.common.AudioConfig;
import android.media.audio.common.AudioOffloadInfo;
import android.media.soundtrigger_middleware.ConfidenceLevel;
import android.media.soundtrigger_middleware.ModelParameterRange;
import android.media.soundtrigger_middleware.Phrase;
import android.media.soundtrigger_middleware.PhraseRecognitionEvent;
import android.media.soundtrigger_middleware.PhraseRecognitionExtra;
import android.media.soundtrigger_middleware.PhraseSoundModel;
import android.media.soundtrigger_middleware.RecognitionEvent;
import android.media.soundtrigger_middleware.SoundModel;
import android.media.soundtrigger_middleware.SoundTriggerModuleProperties;
import android.os.HidlMemoryUtil;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes2.dex */
class ConversionUtil {
    ConversionUtil() {
    }

    static SoundTriggerModuleProperties hidl2aidlProperties(ISoundTriggerHw.Properties hidlProperties) {
        SoundTriggerModuleProperties aidlProperties = new SoundTriggerModuleProperties();
        aidlProperties.implementor = hidlProperties.implementor;
        aidlProperties.description = hidlProperties.description;
        aidlProperties.version = hidlProperties.version;
        aidlProperties.uuid = hidl2aidlUuid(hidlProperties.uuid);
        aidlProperties.maxSoundModels = hidlProperties.maxSoundModels;
        aidlProperties.maxKeyPhrases = hidlProperties.maxKeyPhrases;
        aidlProperties.maxUsers = hidlProperties.maxUsers;
        aidlProperties.recognitionModes = hidl2aidlRecognitionModes(hidlProperties.recognitionModes);
        aidlProperties.captureTransition = hidlProperties.captureTransition;
        aidlProperties.maxBufferMs = hidlProperties.maxBufferMs;
        aidlProperties.concurrentCapture = hidlProperties.concurrentCapture;
        aidlProperties.triggerInEvent = hidlProperties.triggerInEvent;
        aidlProperties.powerConsumptionMw = hidlProperties.powerConsumptionMw;
        return aidlProperties;
    }

    static SoundTriggerModuleProperties hidl2aidlProperties(Properties hidlProperties) {
        SoundTriggerModuleProperties aidlProperties = hidl2aidlProperties(hidlProperties.base);
        aidlProperties.supportedModelArch = hidlProperties.supportedModelArch;
        aidlProperties.audioCapabilities = hidl2aidlAudioCapabilities(hidlProperties.audioCapabilities);
        return aidlProperties;
    }

    static String hidl2aidlUuid(Uuid hidlUuid) {
        if (hidlUuid.node == null || hidlUuid.node.length != 6) {
            throw new IllegalArgumentException("UUID.node must be of length 6.");
        }
        return String.format("%08x-%04x-%04x-%04x-%02x%02x%02x%02x%02x%02x", Integer.valueOf(hidlUuid.timeLow), Short.valueOf(hidlUuid.timeMid), Short.valueOf(hidlUuid.versionAndTimeHigh), Short.valueOf(hidlUuid.variantAndClockSeqHigh), Byte.valueOf(hidlUuid.node[0]), Byte.valueOf(hidlUuid.node[1]), Byte.valueOf(hidlUuid.node[2]), Byte.valueOf(hidlUuid.node[3]), Byte.valueOf(hidlUuid.node[4]), Byte.valueOf(hidlUuid.node[5]));
    }

    static Uuid aidl2hidlUuid(String aidlUuid) {
        Matcher matcher = UuidUtil.PATTERN.matcher(aidlUuid);
        if (!matcher.matches()) {
            throw new IllegalArgumentException("Illegal format for UUID: " + aidlUuid);
        }
        Uuid hidlUuid = new Uuid();
        hidlUuid.timeLow = Integer.parseUnsignedInt(matcher.group(1), 16);
        hidlUuid.timeMid = (short) Integer.parseUnsignedInt(matcher.group(2), 16);
        hidlUuid.versionAndTimeHigh = (short) Integer.parseUnsignedInt(matcher.group(3), 16);
        hidlUuid.variantAndClockSeqHigh = (short) Integer.parseUnsignedInt(matcher.group(4), 16);
        hidlUuid.node = new byte[]{(byte) Integer.parseUnsignedInt(matcher.group(5), 16), (byte) Integer.parseUnsignedInt(matcher.group(6), 16), (byte) Integer.parseUnsignedInt(matcher.group(7), 16), (byte) Integer.parseUnsignedInt(matcher.group(8), 16), (byte) Integer.parseUnsignedInt(matcher.group(9), 16), (byte) Integer.parseUnsignedInt(matcher.group(10), 16)};
        return hidlUuid;
    }

    static int aidl2hidlSoundModelType(int aidlType) {
        if (aidlType == 0) {
            return 0;
        }
        if (aidlType == 1) {
            return 1;
        }
        throw new IllegalArgumentException("Unknown sound model type: " + aidlType);
    }

    static int hidl2aidlSoundModelType(int hidlType) {
        if (hidlType == 0) {
            return 0;
        }
        if (hidlType == 1) {
            return 1;
        }
        throw new IllegalArgumentException("Unknown sound model type: " + hidlType);
    }

    static ISoundTriggerHw.Phrase aidl2hidlPhrase(Phrase aidlPhrase) {
        ISoundTriggerHw.Phrase hidlPhrase = new ISoundTriggerHw.Phrase();
        hidlPhrase.id = aidlPhrase.id;
        hidlPhrase.recognitionModes = aidl2hidlRecognitionModes(aidlPhrase.recognitionModes);
        for (int aidlUser : aidlPhrase.users) {
            hidlPhrase.users.add(Integer.valueOf(aidlUser));
        }
        hidlPhrase.locale = aidlPhrase.locale;
        hidlPhrase.text = aidlPhrase.text;
        return hidlPhrase;
    }

    static int aidl2hidlRecognitionModes(int aidlModes) {
        int hidlModes = 0;
        if ((aidlModes & 1) != 0) {
            hidlModes = 0 | 1;
        }
        if ((aidlModes & 2) != 0) {
            hidlModes |= 2;
        }
        if ((aidlModes & 4) != 0) {
            hidlModes |= 4;
        }
        if ((aidlModes & 8) != 0) {
            return hidlModes | 8;
        }
        return hidlModes;
    }

    static int hidl2aidlRecognitionModes(int hidlModes) {
        int aidlModes = 0;
        if ((hidlModes & 1) != 0) {
            aidlModes = 0 | 1;
        }
        if ((hidlModes & 2) != 0) {
            aidlModes |= 2;
        }
        if ((hidlModes & 4) != 0) {
            aidlModes |= 4;
        }
        if ((hidlModes & 8) != 0) {
            return aidlModes | 8;
        }
        return aidlModes;
    }

    static android.hardware.soundtrigger.V2_1.ISoundTriggerHw.SoundModel aidl2hidlSoundModel(SoundModel aidlModel) {
        android.hardware.soundtrigger.V2_1.ISoundTriggerHw.SoundModel hidlModel = new android.hardware.soundtrigger.V2_1.ISoundTriggerHw.SoundModel();
        hidlModel.header.type = aidl2hidlSoundModelType(aidlModel.type);
        hidlModel.header.uuid = aidl2hidlUuid(aidlModel.uuid);
        hidlModel.header.vendorUuid = aidl2hidlUuid(aidlModel.vendorUuid);
        hidlModel.data = HidlMemoryUtil.fileDescriptorToHidlMemory(aidlModel.data, aidlModel.dataSize);
        return hidlModel;
    }

    static android.hardware.soundtrigger.V2_1.ISoundTriggerHw.PhraseSoundModel aidl2hidlPhraseSoundModel(PhraseSoundModel aidlModel) {
        android.hardware.soundtrigger.V2_1.ISoundTriggerHw.PhraseSoundModel hidlModel = new android.hardware.soundtrigger.V2_1.ISoundTriggerHw.PhraseSoundModel();
        hidlModel.common = aidl2hidlSoundModel(aidlModel.common);
        for (Phrase aidlPhrase : aidlModel.phrases) {
            hidlModel.phrases.add(aidl2hidlPhrase(aidlPhrase));
        }
        return hidlModel;
    }

    static RecognitionConfig aidl2hidlRecognitionConfig(android.media.soundtrigger_middleware.RecognitionConfig aidlConfig) {
        RecognitionConfig hidlConfig = new RecognitionConfig();
        hidlConfig.base.header.captureRequested = aidlConfig.captureRequested;
        for (PhraseRecognitionExtra aidlPhraseExtra : aidlConfig.phraseRecognitionExtras) {
            hidlConfig.base.header.phrases.add(aidl2hidlPhraseRecognitionExtra(aidlPhraseExtra));
        }
        hidlConfig.base.data = HidlMemoryUtil.byteArrayToHidlMemory(aidlConfig.data, "SoundTrigger RecognitionConfig");
        hidlConfig.audioCapabilities = aidlConfig.audioCapabilities;
        return hidlConfig;
    }

    static android.hardware.soundtrigger.V2_0.PhraseRecognitionExtra aidl2hidlPhraseRecognitionExtra(PhraseRecognitionExtra aidlExtra) {
        android.hardware.soundtrigger.V2_0.PhraseRecognitionExtra hidlExtra = new android.hardware.soundtrigger.V2_0.PhraseRecognitionExtra();
        hidlExtra.id = aidlExtra.id;
        hidlExtra.recognitionModes = aidl2hidlRecognitionModes(aidlExtra.recognitionModes);
        hidlExtra.confidenceLevel = aidlExtra.confidenceLevel;
        hidlExtra.levels.ensureCapacity(aidlExtra.levels.length);
        for (ConfidenceLevel aidlLevel : aidlExtra.levels) {
            hidlExtra.levels.add(aidl2hidlConfidenceLevel(aidlLevel));
        }
        return hidlExtra;
    }

    static PhraseRecognitionExtra hidl2aidlPhraseRecognitionExtra(android.hardware.soundtrigger.V2_0.PhraseRecognitionExtra hidlExtra) {
        PhraseRecognitionExtra aidlExtra = new PhraseRecognitionExtra();
        aidlExtra.id = hidlExtra.id;
        aidlExtra.recognitionModes = hidl2aidlRecognitionModes(hidlExtra.recognitionModes);
        aidlExtra.confidenceLevel = hidlExtra.confidenceLevel;
        aidlExtra.levels = new ConfidenceLevel[hidlExtra.levels.size()];
        for (int i = 0; i < hidlExtra.levels.size(); i++) {
            aidlExtra.levels[i] = hidl2aidlConfidenceLevel(hidlExtra.levels.get(i));
        }
        return aidlExtra;
    }

    static android.hardware.soundtrigger.V2_0.ConfidenceLevel aidl2hidlConfidenceLevel(ConfidenceLevel aidlLevel) {
        android.hardware.soundtrigger.V2_0.ConfidenceLevel hidlLevel = new android.hardware.soundtrigger.V2_0.ConfidenceLevel();
        hidlLevel.userId = aidlLevel.userId;
        hidlLevel.levelPercent = aidlLevel.levelPercent;
        return hidlLevel;
    }

    static ConfidenceLevel hidl2aidlConfidenceLevel(android.hardware.soundtrigger.V2_0.ConfidenceLevel hidlLevel) {
        ConfidenceLevel aidlLevel = new ConfidenceLevel();
        aidlLevel.userId = hidlLevel.userId;
        aidlLevel.levelPercent = hidlLevel.levelPercent;
        return aidlLevel;
    }

    static int hidl2aidlRecognitionStatus(int hidlStatus) {
        if (hidlStatus == 0) {
            return 0;
        }
        if (hidlStatus == 1) {
            return 1;
        }
        if (hidlStatus == 2) {
            return 2;
        }
        if (hidlStatus == 3) {
            return 3;
        }
        throw new IllegalArgumentException("Unknown recognition status: " + hidlStatus);
    }

    static RecognitionEvent hidl2aidlRecognitionEvent(ISoundTriggerHwCallback.RecognitionEvent hidlEvent) {
        RecognitionEvent aidlEvent = new RecognitionEvent();
        aidlEvent.status = hidl2aidlRecognitionStatus(hidlEvent.status);
        aidlEvent.type = hidl2aidlSoundModelType(hidlEvent.type);
        aidlEvent.captureAvailable = hidlEvent.captureAvailable;
        aidlEvent.captureSession = -1;
        aidlEvent.captureDelayMs = hidlEvent.captureDelayMs;
        aidlEvent.capturePreambleMs = hidlEvent.capturePreambleMs;
        aidlEvent.triggerInData = hidlEvent.triggerInData;
        aidlEvent.audioConfig = hidl2aidlAudioConfig(hidlEvent.audioConfig);
        aidlEvent.data = new byte[hidlEvent.data.size()];
        for (int i = 0; i < aidlEvent.data.length; i++) {
            aidlEvent.data[i] = hidlEvent.data.get(i).byteValue();
        }
        return aidlEvent;
    }

    static RecognitionEvent hidl2aidlRecognitionEvent(android.hardware.soundtrigger.V2_1.ISoundTriggerHwCallback.RecognitionEvent hidlEvent) {
        RecognitionEvent aidlEvent = hidl2aidlRecognitionEvent(hidlEvent.header);
        aidlEvent.data = HidlMemoryUtil.hidlMemoryToByteArray(hidlEvent.data);
        return aidlEvent;
    }

    static PhraseRecognitionEvent hidl2aidlPhraseRecognitionEvent(ISoundTriggerHwCallback.PhraseRecognitionEvent hidlEvent) {
        PhraseRecognitionEvent aidlEvent = new PhraseRecognitionEvent();
        aidlEvent.common = hidl2aidlRecognitionEvent(hidlEvent.common);
        aidlEvent.phraseExtras = new PhraseRecognitionExtra[hidlEvent.phraseExtras.size()];
        for (int i = 0; i < hidlEvent.phraseExtras.size(); i++) {
            aidlEvent.phraseExtras[i] = hidl2aidlPhraseRecognitionExtra(hidlEvent.phraseExtras.get(i));
        }
        return aidlEvent;
    }

    static PhraseRecognitionEvent hidl2aidlPhraseRecognitionEvent(android.hardware.soundtrigger.V2_1.ISoundTriggerHwCallback.PhraseRecognitionEvent hidlEvent) {
        PhraseRecognitionEvent aidlEvent = new PhraseRecognitionEvent();
        aidlEvent.common = hidl2aidlRecognitionEvent(hidlEvent.common);
        aidlEvent.phraseExtras = new PhraseRecognitionExtra[hidlEvent.phraseExtras.size()];
        for (int i = 0; i < hidlEvent.phraseExtras.size(); i++) {
            aidlEvent.phraseExtras[i] = hidl2aidlPhraseRecognitionExtra(hidlEvent.phraseExtras.get(i));
        }
        return aidlEvent;
    }

    static AudioConfig hidl2aidlAudioConfig(android.hardware.audio.common.V2_0.AudioConfig hidlConfig) {
        AudioConfig aidlConfig = new AudioConfig();
        aidlConfig.sampleRateHz = hidlConfig.sampleRateHz;
        aidlConfig.channelMask = hidlConfig.channelMask;
        aidlConfig.format = hidlConfig.format;
        aidlConfig.offloadInfo = hidl2aidlOffloadInfo(hidlConfig.offloadInfo);
        aidlConfig.frameCount = hidlConfig.frameCount;
        return aidlConfig;
    }

    static AudioOffloadInfo hidl2aidlOffloadInfo(android.hardware.audio.common.V2_0.AudioOffloadInfo hidlInfo) {
        AudioOffloadInfo aidlInfo = new AudioOffloadInfo();
        aidlInfo.sampleRateHz = hidlInfo.sampleRateHz;
        aidlInfo.channelMask = hidlInfo.channelMask;
        aidlInfo.format = hidlInfo.format;
        aidlInfo.streamType = hidlInfo.streamType;
        aidlInfo.bitRatePerSecond = hidlInfo.bitRatePerSecond;
        aidlInfo.durationMicroseconds = hidlInfo.durationMicroseconds;
        aidlInfo.hasVideo = hidlInfo.hasVideo;
        aidlInfo.isStreaming = hidlInfo.isStreaming;
        aidlInfo.bitWidth = hidlInfo.bitWidth;
        aidlInfo.bufferSize = hidlInfo.bufferSize;
        aidlInfo.usage = hidlInfo.usage;
        return aidlInfo;
    }

    static ModelParameterRange hidl2aidlModelParameterRange(android.hardware.soundtrigger.V2_3.ModelParameterRange hidlRange) {
        if (hidlRange == null) {
            return null;
        }
        ModelParameterRange aidlRange = new ModelParameterRange();
        aidlRange.minInclusive = hidlRange.start;
        aidlRange.maxInclusive = hidlRange.end;
        return aidlRange;
    }

    static int aidl2hidlModelParameter(int aidlParam) {
        if (aidlParam == 0) {
            return 0;
        }
        return -1;
    }

    static int hidl2aidlAudioCapabilities(int hidlCapabilities) {
        int aidlCapabilities = 0;
        if ((hidlCapabilities & 1) != 0) {
            aidlCapabilities = 0 | 1;
        }
        if ((hidlCapabilities & 2) != 0) {
            return aidlCapabilities | 2;
        }
        return aidlCapabilities;
    }
}
