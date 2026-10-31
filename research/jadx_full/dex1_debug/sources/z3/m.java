package z3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m extends a.a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // a.a
    public final void k(y yVar, float f8, float f9) {
        float f10 = f9 * f8;
        yVar.d(f10, 180.0f, 90.0f);
        float f11 = f10 * 2.0f;
        u uVar = new u(0.0f, 0.0f, f11, f11);
        uVar.f6279f = 180.0f;
        uVar.f6280g = 90.0f;
        yVar.f6287f.add(uVar);
        s sVar = new s(uVar);
        yVar.a(180.0f);
        yVar.f6288g.add(sVar);
        yVar.d = 270.0f;
        float f12 = (0.0f + f11) * 0.5f;
        float f13 = (f11 - 0.0f) / 2.0f;
        double d = 270.0f;
        yVar.f6286b = (((float) Math.cos(Math.toRadians(d))) * f13) + f12;
        yVar.c = (f13 * ((float) Math.sin(Math.toRadians(d)))) + f12;
    }
}
