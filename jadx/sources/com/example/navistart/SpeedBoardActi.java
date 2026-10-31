package com.example.navistart;

import android.app.UiModeManager;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import com.example.navistart.SpeedBoardActi;
import com.example.navistart.cores.HUDMassageObj;
import com.google.protobuf.AbstractC1178q;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p005a4.RunnableC0014g;
import p016b1.C0867h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1440x1;
import p078h0.C1652b;
import p078h0.InterfaceC1653c;
import p115k7.C2052b;
import p189s0.C3129a;
import p206u0.C3277a;
import p216v0.C3318e;
import p217v1.C3326d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SpeedBoardActi extends AppCompatActivity implements InterfaceC1653c {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f1605f = 0;

    /* JADX INFO: renamed from: b */
    public final ScheduledThreadPoolExecutor f1606b = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-65, -78, 87, 110, 119, -32, 23, -41, -98, -90, 115, 104, 103, -53}, new byte[]{-20, -62, 50, 11, 19, -94, 120, -74}));

    /* JADX INFO: renamed from: c */
    public RunnableC0014g f1607c;

    /* JADX INFO: renamed from: d */
    public ScheduledFuture f1608d;

    /* JADX INFO: renamed from: e */
    public Fragment f1609e;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BlackActivity.m1391t(this);
        setContentView(R.layout.speedboard3);
        C1652b.m2734a();
        Fragment c3318e = AbstractC1387m.m2421h(new byte[]{42, 28, 110, -96, -95, -95, 125}, new byte[]{78, 121, 8, -63, -44, -51, 9, 29}).equals(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{114, -106, -26, -104, ByteCompanionObject.MIN_VALUE, -68, -65, 32, 96, -121, -37, -76, -110, -71, -66, 36, 113, -106, -32}, new byte[]{5, -13, -124, -57, -9, -43, -37, 71}), AbstractC1387m.m2421h(new byte[]{-103, 101, 106, 31, -55, -6, 101}, new byte[]{-3, 0, 12, 126, -68, -106, 17, 79}))) ? new C3318e() : new C0867h();
        getSupportFragmentManager().beginTransaction().replace(R.id.speedView, c3318e, AbstractC1387m.m2421h(new byte[]{41, 6, 81, 29, -13, -98, -72, 48, 59, 4, 80}, new byte[]{122, 86, 20, 88, -73, -63, -6, ByteCompanionObject.MAX_VALUE})).commit();
        this.f1609e = c3318e;
        final int i10 = 0;
        C3326d.m5242a().m5245d().f9728a.observe(this, new Observer(this) { // from class: e0.q2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ SpeedBoardActi f3380b;

            {
                this.f3380b = this;
            }

            /* JADX WARN: Type inference failed for: r0v10, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v2, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v4, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v8, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v9, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r1v1, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i11 = i10;
                SpeedBoardActi speedBoardActi = this.f3380b;
                switch (i11) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i12 = SpeedBoardActi.f1605f;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            ?? r1 = speedBoardActi.f1609e;
                            if (r1 != 0) {
                                r1.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i13 = SpeedBoardActi.f1605f;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            ?? r9 = speedBoardActi.f1609e;
                            if (r9 != 0) {
                                r9.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i14 = SpeedBoardActi.f1605f;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{-12, -10}, new byte[]{54, 70, 44, -35, -62, -39, 70, -73}, sb);
                            int i15 = c2052b.f5608d;
                            ?? r10 = speedBoardActi.f1609e;
                            if (r10 != 0) {
                                r10.mo927g(i15, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i16 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r11 = speedBoardActi.f1609e;
                            if (r11 != 0) {
                                r11.mo931o(hUDMassageObj);
                            }
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i17 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r12 = speedBoardActi.f1609e;
                            if (r12 != 0) {
                                r12.mo926f(str);
                            }
                        }
                        break;
                    default:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i18 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r13 = speedBoardActi.f1609e;
                            if (r13 != 0) {
                                r13.mo929k(c3129a);
                            }
                        }
                        break;
                }
            }
        });
        final int i11 = 1;
        C3326d.m5242a().m5245d().f9729b.observe(this, new Observer(this) { // from class: e0.q2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ SpeedBoardActi f3380b;

            {
                this.f3380b = this;
            }

            /* JADX WARN: Type inference failed for: r0v10, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v2, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v4, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v8, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v9, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r1v1, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i12 = i11;
                SpeedBoardActi speedBoardActi = this.f3380b;
                switch (i12) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i13 = SpeedBoardActi.f1605f;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            ?? r1 = speedBoardActi.f1609e;
                            if (r1 != 0) {
                                r1.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i14 = SpeedBoardActi.f1605f;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            ?? r9 = speedBoardActi.f1609e;
                            if (r9 != 0) {
                                r9.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i15 = SpeedBoardActi.f1605f;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{-12, -10}, new byte[]{54, 70, 44, -35, -62, -39, 70, -73}, sb);
                            int i16 = c2052b.f5608d;
                            ?? r10 = speedBoardActi.f1609e;
                            if (r10 != 0) {
                                r10.mo927g(i16, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i17 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r11 = speedBoardActi.f1609e;
                            if (r11 != 0) {
                                r11.mo931o(hUDMassageObj);
                            }
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i18 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r12 = speedBoardActi.f1609e;
                            if (r12 != 0) {
                                r12.mo926f(str);
                            }
                        }
                        break;
                    default:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i19 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r13 = speedBoardActi.f1609e;
                            if (r13 != 0) {
                                r13.mo929k(c3129a);
                            }
                        }
                        break;
                }
            }
        });
        final int i12 = 2;
        C3326d.m5242a().m5245d().f9730c.observe(this, new Observer(this) { // from class: e0.q2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ SpeedBoardActi f3380b;

            {
                this.f3380b = this;
            }

            /* JADX WARN: Type inference failed for: r0v10, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v2, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v4, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v8, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v9, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r1v1, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i13 = i12;
                SpeedBoardActi speedBoardActi = this.f3380b;
                switch (i13) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i14 = SpeedBoardActi.f1605f;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            ?? r1 = speedBoardActi.f1609e;
                            if (r1 != 0) {
                                r1.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i15 = SpeedBoardActi.f1605f;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            ?? r9 = speedBoardActi.f1609e;
                            if (r9 != 0) {
                                r9.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i16 = SpeedBoardActi.f1605f;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{-12, -10}, new byte[]{54, 70, 44, -35, -62, -39, 70, -73}, sb);
                            int i17 = c2052b.f5608d;
                            ?? r10 = speedBoardActi.f1609e;
                            if (r10 != 0) {
                                r10.mo927g(i17, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i18 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r11 = speedBoardActi.f1609e;
                            if (r11 != 0) {
                                r11.mo931o(hUDMassageObj);
                            }
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i19 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r12 = speedBoardActi.f1609e;
                            if (r12 != 0) {
                                r12.mo926f(str);
                            }
                        }
                        break;
                    default:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i110 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r13 = speedBoardActi.f1609e;
                            if (r13 != 0) {
                                r13.mo929k(c3129a);
                            }
                        }
                        break;
                }
            }
        });
        final int i13 = 3;
        C3326d.m5242a().m5245d().f9731d.observe(this, new Observer(this) { // from class: e0.q2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ SpeedBoardActi f3380b;

            {
                this.f3380b = this;
            }

            /* JADX WARN: Type inference failed for: r0v10, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v2, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v4, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v8, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v9, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r1v1, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i14 = i13;
                SpeedBoardActi speedBoardActi = this.f3380b;
                switch (i14) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i15 = SpeedBoardActi.f1605f;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            ?? r1 = speedBoardActi.f1609e;
                            if (r1 != 0) {
                                r1.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i16 = SpeedBoardActi.f1605f;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            ?? r9 = speedBoardActi.f1609e;
                            if (r9 != 0) {
                                r9.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i17 = SpeedBoardActi.f1605f;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{-12, -10}, new byte[]{54, 70, 44, -35, -62, -39, 70, -73}, sb);
                            int i18 = c2052b.f5608d;
                            ?? r10 = speedBoardActi.f1609e;
                            if (r10 != 0) {
                                r10.mo927g(i18, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i19 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r11 = speedBoardActi.f1609e;
                            if (r11 != 0) {
                                r11.mo931o(hUDMassageObj);
                            }
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i110 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r12 = speedBoardActi.f1609e;
                            if (r12 != 0) {
                                r12.mo926f(str);
                            }
                        }
                        break;
                    default:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i111 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r13 = speedBoardActi.f1609e;
                            if (r13 != 0) {
                                r13.mo929k(c3129a);
                            }
                        }
                        break;
                }
            }
        });
        final int i14 = 4;
        C3326d.m5242a().m5245d().f9732e.observe(this, new Observer(this) { // from class: e0.q2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ SpeedBoardActi f3380b;

            {
                this.f3380b = this;
            }

            /* JADX WARN: Type inference failed for: r0v10, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v2, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v4, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v8, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v9, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r1v1, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i15 = i14;
                SpeedBoardActi speedBoardActi = this.f3380b;
                switch (i15) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i16 = SpeedBoardActi.f1605f;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            ?? r1 = speedBoardActi.f1609e;
                            if (r1 != 0) {
                                r1.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i17 = SpeedBoardActi.f1605f;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            ?? r9 = speedBoardActi.f1609e;
                            if (r9 != 0) {
                                r9.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i18 = SpeedBoardActi.f1605f;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{-12, -10}, new byte[]{54, 70, 44, -35, -62, -39, 70, -73}, sb);
                            int i19 = c2052b.f5608d;
                            ?? r10 = speedBoardActi.f1609e;
                            if (r10 != 0) {
                                r10.mo927g(i19, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i110 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r11 = speedBoardActi.f1609e;
                            if (r11 != 0) {
                                r11.mo931o(hUDMassageObj);
                            }
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i111 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r12 = speedBoardActi.f1609e;
                            if (r12 != 0) {
                                r12.mo926f(str);
                            }
                        }
                        break;
                    default:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i112 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r13 = speedBoardActi.f1609e;
                            if (r13 != 0) {
                                r13.mo929k(c3129a);
                            }
                        }
                        break;
                }
            }
        });
        final int i15 = 5;
        C3326d.m5242a().m5245d().f9733f.observe(this, new Observer(this) { // from class: e0.q2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ SpeedBoardActi f3380b;

            {
                this.f3380b = this;
            }

            /* JADX WARN: Type inference failed for: r0v10, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v2, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v4, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v8, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r0v9, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference failed for: r1v1, types: [androidx.fragment.app.Fragment, v0.g] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i16 = i15;
                SpeedBoardActi speedBoardActi = this.f3380b;
                switch (i16) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i17 = SpeedBoardActi.f1605f;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            ?? r1 = speedBoardActi.f1609e;
                            if (r1 != 0) {
                                r1.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i18 = SpeedBoardActi.f1605f;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            ?? r9 = speedBoardActi.f1609e;
                            if (r9 != 0) {
                                r9.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i19 = SpeedBoardActi.f1605f;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{-12, -10}, new byte[]{54, 70, 44, -35, -62, -39, 70, -73}, sb);
                            int i110 = c2052b.f5608d;
                            ?? r10 = speedBoardActi.f1609e;
                            if (r10 != 0) {
                                r10.mo927g(i110, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i111 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r11 = speedBoardActi.f1609e;
                            if (r11 != 0) {
                                r11.mo931o(hUDMassageObj);
                            }
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i112 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r12 = speedBoardActi.f1609e;
                            if (r12 != 0) {
                                r12.mo926f(str);
                            }
                        }
                        break;
                    default:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i113 = SpeedBoardActi.f1605f;
                        } else {
                            ?? r13 = speedBoardActi.f1609e;
                            if (r13 != 0) {
                                r13.mo929k(c3129a);
                            }
                        }
                        break;
                }
            }
        });
        this.f1607c = new RunnableC0014g(18, this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        m1540s();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.fragment.app.Fragment, v0.g] */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f1609e.mo932q();
        int nightMode = ((UiModeManager) getSystemService(AbstractC1387m.m2421h(new byte[]{111, 12, 123, -69, -7, 64}, new byte[]{26, 101, 22, -44, -99, 37, -118, 6}))).getNightMode();
        if (nightMode == 0) {
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-91, -9, -100, -1, -123, 2, -78, -127, -106, -7, -3, 93, -123, 22, -78, -123, -105, -59, -4, 111, -124, 44, 66, -24, -59, -88, -103, 15, -23, 115, -46, 25, -105, -57, -4, 106, -124, 35, -78, -116, -105, -62, -4, 100, -124, 45, -77, -66, -105, -56, -4, 106, -124, 33, -77, -72, -106, -9, 12, 15, -27, 115, -48, -24, -59, -88, -110, 15, -23, 115, -46, -24, -59, -88, -108, 14, -46, 115, -41, -24, -58, -88, -106, 15, -19}, new byte[]{71, 120, 44, -33, 85, -93, 98, 57}));
        } else if (nightMode == 1) {
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{107, -115, 120, 120, -52, 113, 57, -6, 74, -109, 36, 94, Base64.padSymbol, 32, 122, 88, 75, -89, 36, 90, 60, 20, -117, 10, 41, -62, 78, 54, 87, 112, 37, 11, 28, -62, 65, 54, 81, 113, 27, -6, 74, -109, 36, 84, 60, 20, 122, 88, 75, -87, 36, 86, Base64.padSymbol, 46, -117, 11, 25, -62, 65, 54, 80, 113, 27}, new byte[]{-101, 18, -12, -26, -20, -95, -85, -38}));
            ?? r1 = this.f1609e;
            if (r1 != 0) {
                r1.mo928h();
            }
        } else if (nightMode != 2) {
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{59, -29, 8, -104, -79, -74, 70, -16, 9, -62, 75, 8, 65, -59, 23, -107, 97, -81, 26, 105, -29, -60, 35, -107, 101, -81, 16, -104, -79, -87, 70, -16, -7, -82, 37, 104, -34, -59, 22, -107, 108, -82, 47, 104, -44, -60, 45, -107, 108, -82, 38, 104, -47}, new byte[]{-39, 126, -101, -72, 97, 20, -106, 69}));
        } else {
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{41, -67, -117, -119, -34, 13, 31, -60, 8, -93, -41, -94, 47, 92, 92, 102, 9, -105, -41, -90, 46, 104, -83, 52, 107, -14, -67, -54, 69, 12, 3, 53, 94, -14, -78, -54, 67, 13, Base64.padSymbol, -60, 8, -96, -42, -117, 46, 97, 93, 89, 9, -110, -42, -107, -34, 12, 15, 52, 108, -14, -69, -54, 78}, new byte[]{-39, 34, 7, 26, -2, -35, -115, -28}));
            ?? r9 = this.f1609e;
            if (r9 != 0) {
                r9.mo933r();
            }
        }
        this.f1609e.mo922a();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        Boolean boolValueOf;
        super.onStart();
        C1652b.f4208q = this;
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            boolValueOf = Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-95}, new byte[]{-111, 28, -73, -57, -52, 15, -120, -126}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            m1540s();
            this.f1608d = this.f1606b.scheduleWithFixedDelay(this.f1607c, 10L, 400L, TimeUnit.MILLISECONDS);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        m1540s();
        C1652b.f4208q = null;
    }

    /* JADX INFO: renamed from: s */
    public final void m1540s() {
        ScheduledFuture scheduledFuture = this.f1608d;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f1608d.cancel(true);
    }
}
