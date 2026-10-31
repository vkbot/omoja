package ai.onnxruntime.providers;

import ai.onnxruntime.OrtFlags;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum CoreMLFlags implements OrtFlags {
    CPU_ONLY(1),
    ENABLE_ON_SUBGRAPH(2),
    ONLY_ENABLE_DEVICE_WITH_ANE(4),
    ONLY_ALLOW_STATIC_INPUT_SHAPES(8),
    CREATE_MLPROGRAM(16),
    CPU_AND_GPU(32);

    public final int value;

    CoreMLFlags(int i10) {
        this.value = i10;
    }

    @Override // ai.onnxruntime.OrtFlags
    public int getValue() {
        return this.value;
    }
}
