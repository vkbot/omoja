package ai.onnxruntime;

import j1.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Optional;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OrtSession$Result implements AutoCloseable, Iterable<Map$Entry<String, OnnxValue>> {
    private static final Logger logger = Logger.getLogger(OrtSession$Result.class.getName());
    private boolean closed;
    private final List<OnnxValue> list;
    private final Map<String, OnnxValue> map;
    private final boolean[] ownedByResult;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtSession$Result(String[] strArr, OnnxValue[] onnxValueArr, boolean[] zArr) {
        if (strArr.length == onnxValueArr.length && strArr.length == zArr.length) {
            this.map = new LinkedHashMap(OrtUtil.capacityFromSize(strArr.length));
            this.list = new ArrayList(Arrays.asList(onnxValueArr));
            this.ownedByResult = zArr;
            for (int i9 = 0; i9 < strArr.length; i9++) {
                this.map.put(strArr[i9], onnxValueArr[i9]);
            }
            this.closed = false;
            return;
        }
        throw new IllegalArgumentException("Expected same number of names, values and ownedByResult, found names.length = " + strArr.length + ", values.length = " + onnxValueArr.length + ", ownedByResult.length = " + zArr.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            logger.warning("Closing an already closed Result");
            return;
        }
        this.closed = true;
        for (int i9 = 0; i9 < this.list.size(); i9++) {
            if (this.ownedByResult[i9]) {
                this.list.get(i9).close();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Optional<OnnxValue> get(String str) {
        if (this.closed) {
            i.l("Result is closed");
            return null;
        }
        OnnxValue onnxValue = this.map.get(str);
        return onnxValue != null ? Optional.of(onnxValue) : Optional.empty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isResultOwner(int i9) {
        if (!this.closed) {
            return this.ownedByResult[i9];
        }
        i.l("Result is closed");
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Iterable
    public Iterator<Map$Entry<String, OnnxValue>> iterator() {
        if (!this.closed) {
            return this.map.entrySet().iterator();
        }
        i.l("Result is closed");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return this.map.size();
    }

    public OnnxValue get(int i9) {
        if (!this.closed) {
            return this.list.get(i9);
        }
        i.l("Result is closed");
        return null;
    }
}
