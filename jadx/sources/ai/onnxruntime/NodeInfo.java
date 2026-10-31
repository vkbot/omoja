package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class NodeInfo {
    private final ValueInfo info;
    private final String name;

    public NodeInfo(String str, ValueInfo valueInfo) {
        this.name = str;
        this.info = valueInfo;
    }

    public ValueInfo getInfo() {
        return this.info;
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return "NodeInfo(name=" + this.name + ",info=" + this.info.toString() + ")";
    }
}
