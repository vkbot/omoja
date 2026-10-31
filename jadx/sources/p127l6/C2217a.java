package p127l6;

import java.util.Map;
import p063f6.C1578b;
import p104j6.C1994c;
import p137m6.AbstractC2401a;
import p260z5.C3746b;
import p260z5.C3747c;
import p260z5.C3749e;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.InterfaceC3755k;

/* JADX INFO: renamed from: l6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2217a implements InterfaceC3755k {

    /* JADX INFO: renamed from: b */
    public static final C3759o[] f5824b = new C3759o[0];

    /* JADX INFO: renamed from: a */
    public final C1994c f5825a = new C1994c(1);

    @Override // p260z5.InterfaceC3755k
    /* JADX INFO: renamed from: a */
    public final C3757m mo89a(C3746b c3746b, Map map) throws C3747c, C3749e, C3753i {
        byte[] bArr;
        String strValueOf;
        C1578b c1578bM5977a = c3746b.m5977a();
        int i10 = c1578bM5977a.f3900b;
        int i11 = c1578bM5977a.f3901c;
        int i12 = -1;
        int i13 = i11;
        int i14 = -1;
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = 0;
            while (true) {
                int i17 = c1578bM5977a.f3902d;
                if (i16 < i17) {
                    int i18 = c1578bM5977a.f3903e[(i17 * i15) + i16];
                    if (i18 != 0) {
                        if (i15 < i13) {
                            i13 = i15;
                        }
                        if (i15 > i14) {
                            i14 = i15;
                        }
                        int i19 = i16 << 5;
                        if (i19 < i10) {
                            int i20 = 0;
                            while ((i18 << (31 - i20)) == 0) {
                                i20++;
                            }
                            int i21 = i20 + i19;
                            if (i21 < i10) {
                                i10 = i21;
                            }
                        }
                        if (i19 + 31 > i12) {
                            int i22 = 31;
                            while ((i18 >>> i22) == 0) {
                                i22--;
                            }
                            int i23 = i19 + i22;
                            if (i23 > i12) {
                                i12 = i23;
                            }
                        }
                    }
                    i16++;
                }
            }
        }
        int[] iArr = (i12 < i10 || i14 < i13) ? null : new int[]{i10, i13, (i12 - i10) + 1, (i14 - i13) + 1};
        if (iArr == null) {
            throw C3753i.f11192d;
        }
        int i24 = iArr[0];
        int i25 = iArr[1];
        int i26 = iArr[2];
        int i27 = iArr[3];
        int[] iArr2 = new int[33];
        for (int i28 = 0; i28 < 33; i28++) {
            int i29 = (((i27 / 2) + (i28 * i27)) / 33) + i25;
            for (int i30 = 0; i30 < 30; i30++) {
                if (c1578bM5977a.m2658b((((((i28 & 1) * i26) / 2) + ((i26 / 2) + (i30 * i26))) / 30) + i24, i29)) {
                    int i31 = (i30 / 32) + i28;
                    iArr2[i31] = iArr2[i31] | (1 << (i30 & 31));
                }
            }
        }
        C1994c c1994c = this.f5825a;
        c1994c.getClass();
        byte[] bArr2 = new byte[144];
        for (int i32 = 0; i32 < 33; i32++) {
            int[] iArr3 = AbstractC2401a.f6501a[i32];
            for (int i33 = 0; i33 < 30; i33++) {
                int i34 = iArr3[i33];
                if (i34 >= 0 && ((iArr2[(i33 / 32) + i32] >>> (i33 & 31)) & 1) != 0) {
                    int i35 = i34 / 6;
                    bArr2[i35] = (byte) (bArr2[i35] | ((byte) (1 << (5 - (i34 % 6)))));
                }
            }
        }
        c1994c.m3083a(0, 10, 10, 0, bArr2);
        int i36 = bArr2[0] & 15;
        if (i36 == 2 || i36 == 3 || i36 == 4) {
            c1994c.m3083a(20, 84, 40, 1, bArr2);
            c1994c.m3083a(20, 84, 40, 2, bArr2);
            bArr = new byte[94];
        } else {
            if (i36 != 5) {
                throw C3749e.m5980a();
            }
            c1994c.m3083a(20, 68, 56, 1, bArr2);
            c1994c.m3083a(20, 68, 56, 2, bArr2);
            bArr = new byte[78];
        }
        System.arraycopy(
        /*  JADX ERROR: Method code generation error
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x012d: INVOKE (r18v0 ?? I:??[OBJECT, ARRAY]), (0 int), (r9v3 'bArr' byte[]), (0 int), (10 int) STATIC call: java.lang.System.arraycopy(java.lang.Object, int, java.lang.Object, int, int):void A[MD:(java.lang.Object, int, java.lang.Object, int, int):void (c)] (LINE:302) in method: l6.a.a(z5.b, java.util.Map):z5.m, file: classes.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(Unknown Source)
            	at java.base/java.util.ArrayList.forEach(Unknown Source)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(Unknown Source)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Unknown Source)
            	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(Unknown Source)
            	at java.base/java.util.stream.AbstractPipeline.copyInto(Unknown Source)
            	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(Unknown Source)
            	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(Unknown Source)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(Unknown Source)
            	at java.base/java.util.stream.AbstractPipeline.evaluate(Unknown Source)
            	at java.base/java.util.stream.ReferencePipeline.forEach(Unknown Source)
            	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
            	at jadx.core.ProcessClass.process(ProcessClass.java:89)
            	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
            	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
            	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
            	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r18v0 ??
            	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
            */
        /*
            Method dump skipped, instruction units count: 749
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p127l6.C2217a.mo89a(z5.b, java.util.Map):z5.m");
    }

    @Override // p260z5.InterfaceC3755k
    public final void reset() {
    }
}
