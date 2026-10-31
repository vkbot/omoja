package ai.onnxruntime.providers;

import ai.onnxruntime.OrtProviderOptions;
import j1.i;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Objects;
import java.util.stream.Collectors;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class StringConfigProviderOptions extends OrtProviderOptions {
    protected final Map<String, String> options;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StringConfigProviderOptions(long j9) {
        super(j9);
        this.options = new LinkedHashMap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String b(Map$Entry map$Entry) {
        return lambda$getOptionsString$0(map$Entry);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ String lambda$getOptionsString$0(Map$Entry map$Entry) {
        return ((String) map$Entry.getKey()) + "=" + ((String) map$Entry.getValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(String str, String str2) {
        checkClosed();
        Objects.requireNonNull(str, "Key must not be null");
        Objects.requireNonNull(str2, "Value must not be null");
        this.options.put(str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OrtProviderOptions
    public void applyToNative() {
        if (this.options.isEmpty()) {
            return;
        }
        String[] strArr = new String[this.options.size()];
        String[] strArr2 = new String[this.options.size()];
        int i9 = 0;
        for (Map$Entry<String, String> map$Entry : this.options.entrySet()) {
            strArr[i9] = map$Entry.getKey();
            strArr2[i9] = map$Entry.getValue();
            i9++;
        }
        applyToNative(OrtProviderOptions.getApiHandle(), this.nativeHandle, strArr, strArr2);
    }

    public abstract void applyToNative(long j9, long j10, String[] strArr, String[] strArr2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getOptionsString() {
        return (String) this.options.entrySet().stream().map(new b()).collect(Collectors.joining(";", "", ";"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void parseOptionsString(String str) {
        for (String str2 : str.split(";")) {
            if (str2.contains("=")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length != 2 || strArrSplit[0].isEmpty() || strArrSplit[1].isEmpty()) {
                    i.k(ai.onnxruntime.a.m("Failed to parse option from string '", str2, "'"));
                    return;
                }
                add(strArrSplit[0], strArrSplit[1]);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        return ai.onnxruntime.a.p(sb, getOptionsString(), ")");
    }
}
