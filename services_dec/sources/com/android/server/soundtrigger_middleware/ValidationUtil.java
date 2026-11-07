package com.android.server.soundtrigger_middleware;

import android.media.soundtrigger_middleware.ConfidenceLevel;
import android.media.soundtrigger_middleware.Phrase;
import android.media.soundtrigger_middleware.PhraseRecognitionExtra;
import android.media.soundtrigger_middleware.PhraseSoundModel;
import android.media.soundtrigger_middleware.RecognitionConfig;
import android.media.soundtrigger_middleware.SoundModel;
import java.util.Objects;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes2.dex */
public class ValidationUtil {
    static void validateUuid(String uuid) {
        Objects.requireNonNull(uuid);
        Matcher matcher = UuidUtil.PATTERN.matcher(uuid);
        if (!matcher.matches()) {
            throw new IllegalArgumentException("Illegal format for UUID: " + uuid);
        }
    }

    static void validateGenericModel(SoundModel model) {
        validateModel(model, 1);
    }

    static void validateModel(SoundModel model, int expectedType) {
        Objects.requireNonNull(model);
        if (model.type != expectedType) {
            throw new IllegalArgumentException("Invalid type");
        }
        validateUuid(model.uuid);
        validateUuid(model.vendorUuid);
        Objects.requireNonNull(model.data);
    }

    static void validatePhraseModel(PhraseSoundModel model) {
        Objects.requireNonNull(model);
        validateModel(model.common, 0);
        Objects.requireNonNull(model.phrases);
        for (Phrase phrase : model.phrases) {
            Objects.requireNonNull(phrase);
            if ((phrase.recognitionModes & (-16)) != 0) {
                throw new IllegalArgumentException("Invalid recognitionModes");
            }
            Objects.requireNonNull(phrase.users);
            Objects.requireNonNull(phrase.locale);
            Objects.requireNonNull(phrase.text);
        }
    }

    static void validateRecognitionConfig(RecognitionConfig config) {
        Objects.requireNonNull(config);
        Objects.requireNonNull(config.phraseRecognitionExtras);
        for (PhraseRecognitionExtra extra : config.phraseRecognitionExtras) {
            Objects.requireNonNull(extra);
            if ((extra.recognitionModes & (-16)) != 0) {
                throw new IllegalArgumentException("Invalid recognitionModes");
            }
            if (extra.confidenceLevel < 0 || extra.confidenceLevel > 100) {
                throw new IllegalArgumentException("Invalid confidenceLevel");
            }
            Objects.requireNonNull(extra.levels);
            for (ConfidenceLevel level : extra.levels) {
                Objects.requireNonNull(level);
                if (level.levelPercent < 0 || level.levelPercent > 100) {
                    throw new IllegalArgumentException("Invalid confidenceLevel");
                }
            }
        }
        Objects.requireNonNull(config.data);
    }

    static void validateModelParameter(int modelParam) {
        if (modelParam == 0) {
        } else {
            throw new IllegalArgumentException("Invalid model parameter");
        }
    }
}
