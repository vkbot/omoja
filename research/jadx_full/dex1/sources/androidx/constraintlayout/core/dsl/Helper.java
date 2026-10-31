package androidx.constraintlayout.core.dsl;

import ai.onnxruntime.a;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Helper {
    protected static final Map<Constraint$Side, String> sideMap;
    protected static final Map<Helper$Type, String> typeMap;
    protected String config;
    protected Map<String, String> configMap;
    protected final String name;
    protected Helper$HelperType type;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        HashMap map = new HashMap();
        sideMap = map;
        map.put(Constraint$Side.LEFT, "'left'");
        map.put(Constraint$Side.RIGHT, "'right'");
        map.put(Constraint$Side.TOP, "'top'");
        map.put(Constraint$Side.BOTTOM, "'bottom'");
        map.put(Constraint$Side.START, "'start'");
        map.put(Constraint$Side.END, "'end'");
        map.put(Constraint$Side.BASELINE, "'baseline'");
        HashMap map2 = new HashMap();
        typeMap = map2;
        map2.put(Helper$Type.VERTICAL_GUIDELINE, "vGuideline");
        map2.put(Helper$Type.HORIZONTAL_GUIDELINE, "hGuideline");
        map2.put(Helper$Type.VERTICAL_CHAIN, "vChain");
        map2.put(Helper$Type.HORIZONTAL_CHAIN, "hChain");
        map2.put(Helper$Type.BARRIER, "barrier");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Helper(String str, Helper$HelperType helper$HelperType, String str2) {
        this.type = null;
        this.configMap = new HashMap();
        this.name = str;
        this.type = helper$HelperType;
        this.config = str2;
        this.configMap = convertConfigToMap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void main(String[] strArr) {
        System.out.println(new Barrier("abc", "['a1', 'b2']").toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void append(Map<String, String> map, StringBuilder sb) {
        if (map.isEmpty()) {
            return;
        }
        for (String str : map.keySet()) {
            sb.append(str);
            sb.append(":");
            sb.append(map.get(str));
            sb.append(",\n");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, String> convertConfigToMap() {
        String str = this.config;
        if (str == null || str.length() == 0) {
            return null;
        }
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder();
        String string = "";
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.config.length(); i11++) {
            char cCharAt = this.config.charAt(i11);
            if (cCharAt == ':') {
                string = sb.toString();
                sb.setLength(0);
            } else if (cCharAt == ',' && i9 == 0 && i10 == 0) {
                map.put(string, sb.toString());
                sb.setLength(0);
                string = "";
            } else if (cCharAt != ' ') {
                if (cCharAt == '[') {
                    i9++;
                } else if (cCharAt == ']') {
                    i9--;
                } else if (cCharAt == '{') {
                    i10++;
                } else if (cCharAt == '}') {
                    i10--;
                }
                sb.append(cCharAt);
            }
        }
        map.put(string, sb.toString());
        return map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getConfig() {
        return this.config;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getId() {
        return this.name;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Helper$HelperType getType() {
        return this.type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder(a.p(new StringBuilder(), this.name, ":{\n"));
        if (this.type != null) {
            sb.append("type:'");
            sb.append(this.type.toString());
            sb.append("',\n");
        }
        Map<String, String> map = this.configMap;
        if (map != null) {
            append(map, sb);
        }
        sb.append("},\n");
        return sb.toString();
    }

    public Helper(String str, Helper$HelperType helper$HelperType) {
        this.type = null;
        this.configMap = new HashMap();
        this.name = str;
        this.type = helper$HelperType;
    }
}
