package ai.onnxruntime;

import java.util.HashMap;
import java.util.Map;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum OrtProvider {
    CPU("CPUExecutionProvider"),
    CUDA("CUDAExecutionProvider"),
    DNNL("DnnlExecutionProvider"),
    OPEN_VINO("OpenVINOExecutionProvider"),
    VITIS_AI("VitisAIExecutionProvider"),
    TENSOR_RT("TensorrtExecutionProvider"),
    NNAPI("NnapiExecutionProvider"),
    RK_NPU("RknpuExecutionProvider"),
    DIRECT_ML("DmlExecutionProvider"),
    MI_GRAPH_X("MIGraphXExecutionProvider"),
    ACL("ACLExecutionProvider"),
    ROCM("ROCMExecutionProvider"),
    CORE_ML("CoreMLExecutionProvider"),
    XNNPACK("XnnpackExecutionProvider"),
    AZURE("AzureExecutionProvider"),
    QNN("QNNExecutionProvider"),
    WEBGPU("WebGpuExecutionProvider");

    private static final Map<String, OrtProvider> valueMap = new HashMap(values().length);
    private final String name;

    static {
        for (OrtProvider ortProvider : values()) {
            valueMap.put(ortProvider.name, ortProvider);
        }
    }

    OrtProvider(String str) {
        this.name = str;
    }

    public static OrtProvider mapFromName(String str) {
        OrtProvider ortProvider = valueMap.get(str);
        if (ortProvider != null) {
            return ortProvider;
        }
        C1929i.m3029k(AbstractC0074a.m161l("Unknown execution provider - ", str));
        return null;
    }

    public String getName() {
        return this.name;
    }
}
