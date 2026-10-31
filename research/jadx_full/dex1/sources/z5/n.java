package z5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n f6331b;
    public static final n c;
    public static final n d;
    public static final n e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final n f6332f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final n f6333g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final n f6334h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final n f6335i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final n f6336j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final n f6337k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ n[] f6338l;

    /* JADX INFO: Fake field, exist only in values array */
    n EF0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        n nVar = new n("OTHER", 0);
        n nVar2 = new n("ORIENTATION", 1);
        f6331b = nVar2;
        n nVar3 = new n("BYTE_SEGMENTS", 2);
        c = nVar3;
        n nVar4 = new n("ERROR_CORRECTION_LEVEL", 3);
        d = nVar4;
        n nVar5 = new n("ISSUE_NUMBER", 4);
        e = nVar5;
        n nVar6 = new n("SUGGESTED_PRICE", 5);
        f6332f = nVar6;
        n nVar7 = new n("POSSIBLE_COUNTRY", 6);
        f6333g = nVar7;
        n nVar8 = new n("UPC_EAN_EXTENSION", 7);
        f6334h = nVar8;
        n nVar9 = new n("PDF417_EXTRA_METADATA", 8);
        f6335i = nVar9;
        n nVar10 = new n("STRUCTURED_APPEND_SEQUENCE", 9);
        f6336j = nVar10;
        n nVar11 = new n("STRUCTURED_APPEND_PARITY", 10);
        f6337k = nVar11;
        f6338l = new n[]{nVar, nVar2, nVar3, nVar4, nVar5, nVar6, nVar7, nVar8, nVar9, nVar10, nVar11};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n[] values() {
        return (n[]) f6338l.clone();
    }
}
