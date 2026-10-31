package org.vosk;

import com.sun.jna.PointerType;
import java.io.IOException;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class Recognizer extends PointerType implements AutoCloseable {
    public Recognizer(Model model, float f8, SpeakerModel speakerModel) throws IOException {
        super(LibVosk.vosk_recognizer_new_spk(model.getPointer(), f8, speakerModel.getPointer()));
        if (getPointer() != null) {
            return;
        }
        C2467b.m3820A("Failed to create a recognizer");
        throw null;
    }

    public boolean acceptWaveForm(byte[] bArr, int i10) {
        return LibVosk.vosk_recognizer_accept_waveform(getPointer(), bArr, i10);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        LibVosk.vosk_recognizer_free(getPointer());
    }

    public String getFinalResult() {
        return LibVosk.vosk_recognizer_final_result(getPointer());
    }

    public String getPartialResult() {
        return LibVosk.vosk_recognizer_partial_result(getPointer());
    }

    public String getResult() {
        return LibVosk.vosk_recognizer_result(getPointer());
    }

    public void reset() {
        LibVosk.vosk_recognizer_reset(getPointer());
    }

    public void setGrammar(String str) {
        LibVosk.vosk_recognizer_set_grm(getPointer(), str);
    }

    public void setMaxAlternatives(int i10) {
        LibVosk.vosk_recognizer_set_max_alternatives(getPointer(), i10);
    }

    public void setPartialWords(boolean z9) {
        LibVosk.vosk_recognizer_set_partial_words(getPointer(), z9);
    }

    public void setSpeakerModel(SpeakerModel speakerModel) {
        LibVosk.vosk_recognizer_set_spk_model(getPointer(), speakerModel.getPointer());
    }

    public void setWords(boolean z9) {
        LibVosk.vosk_recognizer_set_words(getPointer(), z9);
    }

    public boolean acceptWaveForm(short[] sArr, int i10) {
        return LibVosk.vosk_recognizer_accept_waveform_s(getPointer(), sArr, i10);
    }

    public boolean acceptWaveForm(float[] fArr, int i10) {
        return LibVosk.vosk_recognizer_accept_waveform_f(getPointer(), fArr, i10);
    }

    public Recognizer(Model model, float f8) throws IOException {
        super(LibVosk.vosk_recognizer_new(model, f8));
        if (getPointer() != null) {
            return;
        }
        C2467b.m3820A("Failed to create a recognizer");
        throw null;
    }

    public Recognizer(Model model, float f8, String str) throws IOException {
        super(LibVosk.vosk_recognizer_new_grm(model.getPointer(), f8, str));
        if (getPointer() != null) {
            return;
        }
        C2467b.m3820A("Failed to create a recognizer");
        throw null;
    }
}
