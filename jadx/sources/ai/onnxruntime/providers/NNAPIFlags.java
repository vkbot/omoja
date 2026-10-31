package ai.onnxruntime.providers;

import ai.onnxruntime.OrtFlags;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum NNAPIFlags implements OrtFlags {
    USE_FP16(1),
    USE_NCHW(2),
    CPU_DISABLED(4),
    CPU_ONLY(8);

    public final int value;

    NNAPIFlags(int i10) {
        this.value = i10;
    }

    @Override // ai.onnxruntime.OrtFlags
    public int getValue() {
        return this.value;
    }
}
