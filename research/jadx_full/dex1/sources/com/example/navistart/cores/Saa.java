package com.example.navistart.cores;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Saa {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f906i;
    private final int ratio;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    private final String f907s1;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private final String f908s2;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Saa(String str, String str2, int i9, int i10) {
        this.f907s1 = str;
        this.f908s2 = str2;
        this.f906i = i9;
        this.ratio = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getI() {
        return this.f906i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRatio() {
        return this.ratio;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getS1() {
        return this.f907s1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getS2() {
        return this.f908s2;
    }

    public Saa(String str, String str2, int i9) {
        this(str, str2, i9, 50);
    }
}
