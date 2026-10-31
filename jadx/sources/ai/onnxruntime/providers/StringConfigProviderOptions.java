package ai.onnxruntime.providers;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.OrtProviderOptions;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;
import p099j1.C1929i;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class StringConfigProviderOptions extends OrtProviderOptions {
    protected final Map<String, String> options;

    public StringConfigProviderOptions(long j10) {
        super(j10);
        this.options = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getOptionsString$0(Map.Entry entry) {
        return ((String) entry.getKey()) + "=" + ((String) entry.getValue());
    }

    public void add(String str, String str2) {
        checkClosed();
        Objects.requireNonNull(str, "Key must not be null");
        Objects.requireNonNull(str2, "Value must not be null");
        this.options.put(str, str2);
    }

    @Override // ai.onnxruntime.OrtProviderOptions
    public void applyToNative() {
        if (this.options.isEmpty()) {
            return;
        }
        String[] strArr = new String[this.options.size()];
        String[] strArr2 = new String[this.options.size()];
        int i10 = 0;
        for (Map.Entry<String, String> entry : this.options.entrySet()) {
            strArr[i10] = entry.getKey();
            strArr2[i10] = entry.getValue();
            i10++;
        }
        applyToNative(OrtProviderOptions.getApiHandle(), this.nativeHandle, strArr, strArr2);
    }

    public abstract void applyToNative(long j10, long j11, String[] strArr, String[] strArr2);

    public String getOptionsString() {
        return (String) this.options.entrySet().stream().map(new C0079b()).collect(Collectors.joining(";", "", ";"));
    }

    public void parseOptionsString(String str) {
        for (String str2 : str.split(";")) {
            if (str2.contains("=")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length != 2 || strArrSplit[0].isEmpty() || strArrSplit[1].isEmpty()) {
                    C1929i.m3029k(AbstractC0074a.m162m("Failed to parse option from string '", str2, "'"));
                    return;
                }
                add(strArrSplit[0], strArrSplit[1]);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        return AbstractC0074a.m165p(sb, getOptionsString(), ")");
    }
}
