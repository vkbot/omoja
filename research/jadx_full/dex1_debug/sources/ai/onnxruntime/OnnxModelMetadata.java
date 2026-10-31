package ai.onnxruntime;

import j1.i;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OnnxModelMetadata {
    private final Map<String, String> customMetadata;
    private final String description;
    private final String domain;
    private final String graphDescription;
    private final String graphName;
    private final String producerName;
    private final long version;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxModelMetadata(String str, String str2, String str3, String str4, String str5, long j9, String[] strArr) {
        this.producerName = str == null ? "" : str;
        this.graphName = str2 == null ? "" : str2;
        this.graphDescription = str3 == null ? "" : str3;
        this.domain = str4 == null ? "" : str4;
        this.description = str5 == null ? "" : str5;
        this.version = j9;
        if (strArr == null || strArr.length <= 0) {
            this.customMetadata = Collections.EMPTY_MAP;
            return;
        }
        this.customMetadata = new HashMap();
        if (strArr.length % 2 == 1) {
            i.l("Asked for keys and values, but received an odd number of elements.");
            throw null;
        }
        for (int i9 = 0; i9 < strArr.length; i9 += 2) {
            this.customMetadata.put(strArr[i9], strArr[i9 + 1]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && OnnxModelMetadata.class == obj.getClass()) {
            OnnxModelMetadata onnxModelMetadata = (OnnxModelMetadata) obj;
            if (this.version == onnxModelMetadata.version && this.producerName.equals(onnxModelMetadata.producerName) && this.graphName.equals(onnxModelMetadata.graphName) && this.graphDescription.equals(onnxModelMetadata.graphDescription) && this.domain.equals(onnxModelMetadata.domain) && this.description.equals(onnxModelMetadata.description) && this.customMetadata.equals(onnxModelMetadata.customMetadata)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, String> getCustomMetadata() {
        return Collections.unmodifiableMap(this.customMetadata);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Optional<String> getCustomMetadataValue(String str) {
        return Optional.ofNullable(this.customMetadata.get(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getDescription() {
        return this.description;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getDomain() {
        return this.domain;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getGraphDescription() {
        return this.graphDescription;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getGraphName() {
        return this.graphName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getProducerName() {
        return this.producerName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getVersion() {
        return this.version;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return Objects.hash(this.producerName, this.graphName, this.graphDescription, this.domain, this.description, Long.valueOf(this.version), this.customMetadata);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "OnnxModelMetadata{producerName='" + this.producerName + "', graphName='" + this.graphName + "', graphDescription='" + this.graphDescription + "', domain='" + this.domain + "', description='" + this.description + "', version=" + this.version + ", customMetadata=" + this.customMetadata + '}';
    }

    public OnnxModelMetadata(String str, String str2, String str3, String str4, String str5, long j9, Map<String, String> map) {
        this.producerName = str == null ? "" : str;
        this.graphName = str2 == null ? "" : str2;
        this.graphDescription = str3 == null ? "" : str3;
        this.domain = str4 == null ? "" : str4;
        this.description = str5 == null ? "" : str5;
        this.version = j9;
        this.customMetadata = map == null ? Collections.EMPTY_MAP : map;
    }

    public OnnxModelMetadata(OnnxModelMetadata onnxModelMetadata) {
        Map<String, String> map;
        this.producerName = onnxModelMetadata.producerName;
        this.graphName = onnxModelMetadata.graphName;
        this.graphDescription = onnxModelMetadata.graphDescription;
        this.domain = onnxModelMetadata.domain;
        this.description = onnxModelMetadata.description;
        this.version = onnxModelMetadata.version;
        if (onnxModelMetadata.customMetadata.isEmpty()) {
            map = Collections.EMPTY_MAP;
        } else {
            map = new HashMap<>(getCustomMetadata());
        }
        this.customMetadata = map;
    }
}
