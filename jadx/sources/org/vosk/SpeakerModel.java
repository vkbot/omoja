package org.vosk;

import com.sun.jna.PointerType;
import java.io.IOException;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SpeakerModel extends PointerType implements AutoCloseable {
    public SpeakerModel(String str) throws IOException {
        super(LibVosk.vosk_spk_model_new(str));
        if (getPointer() != null) {
            return;
        }
        C2467b.m3820A("Failed to create a speaker model");
        throw null;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        LibVosk.vosk_spk_model_free(getPointer());
    }

    public SpeakerModel() {
    }
}
