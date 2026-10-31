package ai.onnxruntime.providers;

import ai.onnxruntime.OrtProviderOptions;

/* JADX INFO: renamed from: ai.onnxruntime.providers.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0078a implements OrtProviderOptions.OrtProviderSupplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f160a;

    public /* synthetic */ C0078a(int i10) {
        this.f160a = i10;
    }

    @Override // ai.onnxruntime.OrtProviderOptions.OrtProviderSupplier
    public final long create() {
        switch (this.f160a) {
            case 0:
                return OrtCUDAProviderOptions.lambda$new$0();
            default:
                return OrtTensorRTProviderOptions.lambda$new$0();
        }
    }
}
