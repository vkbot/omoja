package f5;

import android.text.TextUtils;
import com.google.firebase.inappmessaging.model.MessageType;
import com.google.protobuf.x0;
import e0.j2;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class q implements b8.b, b8.c, b8.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2224b;
    public final /* synthetic */ t c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q(t tVar, String str) {
        this.f2224b = 3;
        this.c = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.b
    public void accept(Object obj) {
        y5.i iVar = (y5.i) obj;
        switch (this.f2224b) {
            case 0:
                o oVar = this.c.f2231g;
                oVar.getClass();
                HashSet hashSet = new HashSet();
                for (x5.c cVar : iVar.q()) {
                    hashSet.add(com.bumptech.glide.g.a(cVar.r(), 1) ? cVar.u().o() : cVar.p().o());
                }
                e3.d.m("Potential impressions to clear: " + hashSet.toString());
                x7.e eVarA = oVar.a();
                y5.c cVar2 = o.c;
                d8.b.a(cVar2, "item is null");
                new i8.i(eVarA.e(x7.e.a(cVar2)), new f(1, oVar, hashSet)).z();
                break;
            default:
                g gVar = this.c.c;
                y yVar = gVar.f2197a;
                yVar.getClass();
                g8.b bVar = new g8.b(new x(1, yVar, iVar));
                f fVar = new f(0, gVar, iVar);
                z3.f fVar2 = d8.b.d;
                new g8.b(new g8.d(new g8.d(new g8.d(bVar, fVar2, fVar), fVar2, new e0.g(19)), new e0.g(20), d8.b.c), new e0.g(21)).z();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r7v15, resolved type: i8.u */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // b8.c
    public Object apply(Object obj) throws Exception {
        String strO;
        String strP;
        j5.f fVar;
        j5.a aVar;
        j5.h cVar;
        j5.h jVar;
        j5.f fVar2;
        j5.f fVar3;
        j5.a aVar2;
        j5.f fVar4;
        j5.f fVar5;
        x7.g hVar;
        switch (this.f2224b) {
            case 1:
                t tVar = this.c;
                String str = (String) obj;
                g gVar = tVar.c;
                gVar.getClass();
                i8.l lVar = new i8.l(new d7.b(1, gVar));
                y yVar = gVar.f2197a;
                x0 x0VarS = y5.i.s();
                yVar.getClass();
                i8.l lVar2 = new i8.l(new x(0, yVar, x0VarS));
                e eVar = new e(gVar, 0);
                z3.f fVar6 = d8.b.d;
                x7.e eVarB = new i8.r(new i8.r(new i8.r(new i8.f(lVar.e(new i8.r(lVar2, eVar, fVar6)), new e(gVar, 1), 0), fVar6, new e(gVar, 2)), new e0.g(24), fVar6), fVar6, new e0.g(25)).b(i8.d.f2733b);
                q qVar = new q(tVar, 4);
                s sVar = new s(tVar, str, new q(tVar, 5), new f(6, tVar, str), new e0.g(26));
                i8.r rVar = new i8.r(tVar.f2231g.a(), fVar6, new e0.g(27));
                y5.c cVarP = y5.c.p();
                d8.b.a(cVarP, "item is null");
                x7.e eVarB2 = rVar.e(x7.e.a(cVarP)).b(x7.e.a(y5.c.p()));
                l5.d dVar = (l5.d) tVar.f2237m;
                o7.a aVarC = dVar.c();
                Executor executor = tVar.f2239o;
                i8.c cVar2 = new i8.c(new f(4, aVarC, executor));
                dVar.d();
                n.p pVar = new n.p(17);
                l5.g gVar2 = new l5.g(dVar.d, pVar);
                synchronized (dVar.f3296g) {
                    dVar.f3301l.add(gVar2);
                    break;
                }
                o7.a aVar3 = (o7.a) pVar.c;
                dVar.f3297h.execute(new l5.c(dVar, 2));
                i8.g gVar3 = new i8.g(1, new x7.e[]{cVar2, new i8.c(new f(4, aVar3, executor))}, new p2.e(new e0.g(13)));
                x7.k kVar = tVar.f2230f.f2213a;
                d8.b.a(kVar, "scheduler is null");
                f fVar7 = new f(3, tVar, new i8.f(gVar3, kVar, 1));
                m0 m0Var = tVar.f2235k;
                if (!(m0Var.c ? str.equals("ON_FOREGROUND") : m0Var.f2219b)) {
                    e3.d.m("Attempting to fetch campaigns using cache");
                    return new h8.l(4, new i8.k(eVarB.e(new i8.r(new i8.k(eVarB2, fVar7, 0), qVar, fVar6)), sVar, 0));
                }
                e3.d.n("Forcing fetch from service rather than cache. Test Device: " + m0Var.f2219b + " | App Fresh Install: " + m0Var.c);
                return new h8.l(4, new i8.k(new i8.k(eVarB2, fVar7, 0), sVar, 0));
            case 2:
            default:
                t tVar2 = this.c;
                x5.c cVar3 = (x5.c) obj;
                tVar2.getClass();
                if (cVar3.q()) {
                    return x7.e.a(cVar3);
                }
                o oVar = tVar2.f2231g;
                oVar.getClass();
                String strO2 = com.bumptech.glide.g.a(cVar3.r(), 1) ? cVar3.u().o() : cVar3.p().o();
                i8.k kVar2 = new i8.k(oVar.a(), new e0.g(9), 1);
                e0.g gVar4 = new e0.g(10);
                i8.u uVar = new i8.u(0, kVar2);
                int i9 = x7.b.f6040b;
                d8.b.b(Integer.MAX_VALUE, "maxConcurrency");
                d8.b.b(i9, "bufferSize");
                if (uVar instanceof e8.e) {
                    Object objCall = ((e8.e) uVar).call();
                    hVar = objCall == null ? j8.e.f3106b : new j8.l(objCall, gVar4);
                } else {
                    hVar = new j8.h(uVar, gVar4, i9);
                }
                j8.c cVar4 = new j8.c(hVar, new e0.g(11), 1);
                d8.b.a(strO2, "element is null");
                return new i8.k(new i8.g(0, new k8.a(new k8.a(new k8.a(new j8.d(cVar4, new a9.w(strO2, 1)), new e0.g(22), 0), new d8.a(0, new k8.b()), 2), new p(cVar3), 1), new e0.g(23)), new p(cVar3), 1);
            case 3:
                i8.d dVar2 = i8.d.f2733b;
                t tVar3 = this.c;
                x5.c cVar5 = (x5.c) obj;
                tVar3.getClass();
                if (com.bumptech.glide.g.a(cVar5.r(), 1)) {
                    strO = cVar5.u().o();
                    strP = cVar5.u().p();
                } else {
                    if (!com.bumptech.glide.g.a(cVar5.r(), 2)) {
                        return dVar2;
                    }
                    String strO3 = cVar5.p().o();
                    String strP2 = cVar5.p().p();
                    if (!cVar5.q()) {
                        a aVar4 = tVar3.f2236l;
                        aVar4.f2184b.execute(new j2(8, aVar4, cVar5.p().s()));
                    }
                    strO = strO3;
                    strP = strP2;
                }
                d5.r rVarN = cVar5.n();
                Map mapO = cVar5.o();
                o4.b.i(rVarN, "FirebaseInAppMessaging content cannot be null.");
                o4.b.i(strO, "FirebaseInAppMessaging campaign id cannot be null.");
                o4.b.i(strP, "FirebaseInAppMessaging campaign name cannot be null.");
                e3.d.m("Decoding message: ".concat(rVarN.toString()));
                int iC = com.bumptech.glide.g.c(rVarN.r());
                if (iC == 0) {
                    d5.o oVarN = rVarN.n();
                    String strO4 = !TextUtils.isEmpty(oVarN.o()) ? oVarN.o() : null;
                    if (!TextUtils.isEmpty(oVarN.r())) {
                        String strR = oVarN.r();
                        if (TextUtils.isEmpty(strR)) {
                            strR = null;
                        }
                        if (TextUtils.isEmpty(strR)) {
                            j1.i.k("ImageData model must have an imageUrl");
                        } else {
                            fVar = new j5.f(strR);
                        }
                        return null;
                    }
                    fVar = null;
                    if (oVarN.t()) {
                        android.support.v4.media.h hVarD = w7.c.d(oVarN.n());
                        aVar = new j5.a((String) hVarD.c, (j5.d) hVarD.d);
                    } else {
                        aVar = null;
                    }
                    j5.l lVarG = oVarN.u() ? w7.c.g(oVarN.p()) : null;
                    j5.l lVarG2 = oVarN.v() ? w7.c.g(oVarN.s()) : null;
                    if (lVarG2 == null) {
                        j1.i.k("Banner model must have a title");
                    } else if (TextUtils.isEmpty(strO4)) {
                        j1.i.k("Banner model must have a background color");
                    } else {
                        cVar = new j5.c(lVarG2, lVarG, fVar, aVar, strO4, mapO);
                        jVar = cVar;
                    }
                    return null;
                }
                if (iC == 1) {
                    d5.t tVarS = rVarN.s();
                    String strP3 = !TextUtils.isEmpty(tVarS.p()) ? tVarS.p() : null;
                    if (!TextUtils.isEmpty(tVarS.s())) {
                        String strS = tVarS.s();
                        if (TextUtils.isEmpty(strS)) {
                            strS = null;
                        }
                        if (TextUtils.isEmpty(strS)) {
                            j1.i.k("ImageData model must have an imageUrl");
                        } else {
                            fVar2 = new j5.f(strS);
                        }
                        return null;
                    }
                    fVar2 = null;
                    j5.a aVarF = tVarS.u() ? w7.c.f(tVarS.n(), tVarS.o()) : null;
                    j5.l lVarG3 = tVarS.v() ? w7.c.g(tVarS.q()) : null;
                    j5.l lVarG4 = tVarS.w() ? w7.c.g(tVarS.t()) : null;
                    if (lVarG4 == null) {
                        j1.i.k("Modal model must have a title");
                    } else if (aVarF != null && aVarF.f3068b == null) {
                        j1.i.k("Modal model action must be null or have a button");
                    } else if (TextUtils.isEmpty(strP3)) {
                        j1.i.k("Modal model must have a background color");
                    } else {
                        cVar = new j5.i(lVarG4, lVarG3, fVar2, aVarF, strP3, mapO);
                        jVar = cVar;
                    }
                    return null;
                }
                if (iC == 2) {
                    d5.s sVarQ = rVarN.q();
                    if (!TextUtils.isEmpty(sVarQ.p())) {
                        String strP4 = sVarQ.p();
                        if (TextUtils.isEmpty(strP4)) {
                            strP4 = null;
                        }
                        if (TextUtils.isEmpty(strP4)) {
                            j1.i.k("ImageData model must have an imageUrl");
                        } else {
                            fVar3 = new j5.f(strP4);
                        }
                        return null;
                    }
                    fVar3 = null;
                    if (sVarQ.q()) {
                        android.support.v4.media.h hVarD2 = w7.c.d(sVarQ.n());
                        aVar2 = new j5.a((String) hVarD2.c, (j5.d) hVarD2.d);
                    } else {
                        aVar2 = null;
                    }
                    if (fVar3 == null) {
                        j1.i.k("ImageOnly model must have image data");
                        return null;
                    }
                    j5.g gVar5 = new j5.g(MessageType.IMAGE_ONLY, mapO);
                    gVar5.c = fVar3;
                    gVar5.d = aVar2;
                    jVar = gVar5;
                } else {
                    if (iC == 3) {
                        d5.q qVarO = rVarN.o();
                        j5.l lVarG5 = qVarO.C() ? w7.c.g(qVarO.w()) : null;
                        j5.l lVarG6 = qVarO.x() ? w7.c.g(qVarO.o()) : null;
                        String strN = !TextUtils.isEmpty(qVarO.n()) ? qVarO.n() : null;
                        j5.a aVarF2 = (qVarO.y() || qVarO.z()) ? w7.c.f(qVarO.s(), qVarO.t()) : null;
                        j5.a aVarF3 = (qVarO.A() || qVarO.B()) ? w7.c.f(qVarO.u(), qVarO.v()) : null;
                        if (!TextUtils.isEmpty(qVarO.r())) {
                            String strR2 = qVarO.r();
                            if (TextUtils.isEmpty(strR2)) {
                                strR2 = null;
                            }
                            if (TextUtils.isEmpty(strR2)) {
                                j1.i.k("ImageData model must have an imageUrl");
                            } else {
                                fVar4 = new j5.f(strR2);
                            }
                            return null;
                        }
                        fVar4 = null;
                        if (!TextUtils.isEmpty(qVarO.q())) {
                            String strQ = qVarO.q();
                            if (TextUtils.isEmpty(strQ)) {
                                strQ = null;
                            }
                            if (TextUtils.isEmpty(strQ)) {
                                j1.i.k("ImageData model must have an imageUrl");
                            } else {
                                fVar5 = new j5.f(strQ);
                            }
                            return null;
                        }
                        fVar5 = null;
                        if (aVarF2 == null) {
                            j1.i.k("Card model must have a primary action");
                        } else if (aVarF2.f3068b == null) {
                            j1.i.k("Card model must have a primary action button");
                        } else if (aVarF3 != null && aVarF3.f3068b == null) {
                            j1.i.k("Card model secondary action must be null or have a button");
                        } else if (lVarG5 == null) {
                            j1.i.k("Card model must have a title");
                        } else if (fVar4 == null && fVar5 == null) {
                            j1.i.k("Card model must have at least one image");
                        } else if (TextUtils.isEmpty(strN)) {
                            j1.i.k("Card model must have a background color");
                        } else {
                            cVar = new j5.e(lVarG5, lVarG6, fVar4, fVar5, strN, aVarF2, aVarF3, mapO);
                            jVar = cVar;
                        }
                        return null;
                    }
                    jVar = new j5.j(MessageType.UNSUPPORTED, mapO);
                }
                return jVar.f3080a.equals(MessageType.UNSUPPORTED) ? dVar2 : x7.e.a(new j5.m());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.d
    public boolean test(Object obj) {
        long jQ;
        long jN;
        x5.c cVar = (x5.c) obj;
        t tVar = this.c;
        if (!tVar.f2235k.f2219b) {
            i5.a aVar = tVar.d;
            if (com.bumptech.glide.g.a(cVar.r(), 1)) {
                jQ = cVar.u().q();
                jN = cVar.u().n();
            } else {
                if (!com.bumptech.glide.g.a(cVar.r(), 2)) {
                    return false;
                }
                jQ = cVar.p().q();
                jN = cVar.p().n();
            }
            aVar.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis <= jQ || jCurrentTimeMillis >= jN) {
                return false;
            }
        }
        return true;
    }

    public /* synthetic */ q(t tVar, int i9) {
        this.f2224b = i9;
        this.c = tVar;
    }
}
