package com.example.navistart.cores;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Saa {

    /* JADX INFO: renamed from: i */
    private final int f1732i;
    private final int ratio;

    /* JADX INFO: renamed from: s1 */
    private final String f1733s1;

    /* JADX INFO: renamed from: s2 */
    private final String f1734s2;

    public Saa(String str, String str2, int i10, int i11) {
        this.f1733s1 = str;
        this.f1734s2 = str2;
        this.f1732i = i10;
        this.ratio = i11;
    }

    public int getI() {
        return this.f1732i;
    }

    public int getRatio() {
        return this.ratio;
    }

    public String getS1() {
        return this.f1733s1;
    }

    public String getS2() {
        return this.f1734s2;
    }

    public Saa(String str, String str2, int i10) {
        this(str, str2, i10, 50);
    }
}
