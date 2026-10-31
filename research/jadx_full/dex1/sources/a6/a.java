package a6;

import java.io.Serializable;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f51a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f52b;
    public final int c;
    public final Object d;
    public final Serializable e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(int i9, int i10, String str, String str2, boolean z8) {
        this.f51a = z8;
        this.f52b = Math.max(0, i9);
        this.c = Math.max(0, i10);
        this.d = str == null ? "" : str;
        this.e = str2 == null ? "" : str2;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: z5.o[] */
    /* JADX WARN: Multi-variable type inference failed */
    public a(f6.b bVar, o[] oVarArr, boolean z8, int i9, int i10) {
        this.d = bVar;
        this.e = oVarArr;
        this.f51a = z8;
        this.f52b = i9;
        this.c = i10;
    }
}
