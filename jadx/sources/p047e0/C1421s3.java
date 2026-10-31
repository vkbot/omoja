package p047e0;

import ai.onnxruntime.AbstractC0074a;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.example.navistart.Transport.TransportService;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.Executor;
import p003a2.C0004a;
import p003a2.InterfaceC0006c;
import p006a5.C0023h;
import p039d2.C1262r;
import p052e5.C1496c;
import p052e5.InterfaceC1495b;
import p059f2.InterfaceC1534b;
import p062f5.C1572v;
import p072g5.C1619a;
import p082h5.C1666a;
import p089i2.C1739a;
import p097j.C1897i;
import p099j1.C1929i;
import p142n0.C2467b;
import p153o2.C2575c;
import p153o2.C2576d;
import p153o2.InterfaceC2573a;
import p153o2.InterfaceC2574b;
import p204t8.InterfaceC3268a;
import p258z3.C3720f;

/* JADX INFO: renamed from: e0.s3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1421s3 implements InterfaceC1495b, InterfaceC1534b {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3412b;

    /* JADX INFO: renamed from: c */
    public final Object f3413c;

    /* JADX INFO: renamed from: d */
    public Object f3414d;

    /* JADX INFO: renamed from: e */
    public Object f3415e;

    /* JADX INFO: renamed from: f */
    public Object f3416f;

    /* JADX INFO: renamed from: g */
    public Object f3417g;

    public C1421s3() {
        this.f3412b = 1;
        this.f3413c = new LinkedHashSet();
        this.f3414d = Optional.empty();
        this.f3415e = Optional.empty();
        this.f3416f = Optional.empty();
    }

    /* JADX INFO: renamed from: f */
    public static ArrayList m2452f(List list, int i10, int i11) {
        int i12 = (i10 - i11) / 2;
        ArrayList arrayList = new ArrayList();
        C2575c c2575c = new C2575c();
        c2575c.f7145g = i12;
        int size = list.size();
        for (int i13 = 0; i13 < size; i13++) {
            if (i13 == 0) {
                arrayList.add(c2575c);
            }
            arrayList.add((C2575c) list.get(i13));
            if (i13 == list.size() - 1) {
                arrayList.add(c2575c);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: t */
    public static int[] m2453t(int i10, ArrayList arrayList, SparseIntArray sparseIntArray) {
        Collections.sort(arrayList);
        sparseIntArray.clear();
        int[] iArr = new int[i10];
        int size = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        while (i12 < size) {
            Object obj = arrayList.get(i12);
            i12++;
            C2576d c2576d = (C2576d) obj;
            int i13 = c2576d.f7157b;
            iArr[i11] = i13;
            sparseIntArray.append(i13, c2576d.f7158c);
            i11++;
        }
        return iArr;
    }

    /* JADX INFO: renamed from: a */
    public void m2454a(List list, C2575c c2575c, int i10, int i11) {
        c2575c.f7151m = i11;
        ((InterfaceC2573a) this.f3413c).mo1697b(c2575c);
        c2575c.f7154p = i10;
        list.add(c2575c);
    }

    /* JADX WARN: Code duplicated, block: B:83:0x01cd  */
    /* JADX INFO: renamed from: b */
    public void m2455b(C1897i c1897i, int i10, int i11, int i12, int i13, int i14, List list) {
        int iMo1703h;
        InterfaceC2574b interfaceC2574b;
        int i15;
        boolean z9;
        int i16 = i10;
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        boolean zMo1704i = interfaceC2573a.mo1704i();
        int mode = View.MeasureSpec.getMode(i16);
        int size = View.MeasureSpec.getSize(i16);
        List arrayList = list == null ? new ArrayList() : list;
        c1897i.f4930c = arrayList;
        boolean z10 = i14 == -1;
        int paddingStart = zMo1704i ? interfaceC2573a.getPaddingStart() : interfaceC2573a.getPaddingTop();
        int paddingEnd = zMo1704i ? interfaceC2573a.getPaddingEnd() : interfaceC2573a.getPaddingBottom();
        int paddingTop = zMo1704i ? interfaceC2573a.getPaddingTop() : interfaceC2573a.getPaddingStart();
        int paddingBottom = zMo1704i ? interfaceC2573a.getPaddingBottom() : interfaceC2573a.getPaddingEnd();
        C2575c c2575c = new C2575c();
        int i17 = i13;
        int i18 = 1;
        c2575c.f7153o = i17;
        int i19 = paddingStart + paddingEnd;
        c2575c.f7143e = i19;
        int flexItemCount = interfaceC2573a.getFlexItemCount();
        boolean z11 = z10;
        int i20 = Integer.MIN_VALUE;
        int iCombineMeasuredStates = 0;
        int i21 = 0;
        int i22 = 0;
        while (i17 < flexItemCount) {
            int i23 = flexItemCount;
            View viewMo1698c = interfaceC2573a.mo1698c(i17);
            if (viewMo1698c != null) {
                if (viewMo1698c.getVisibility() == 8) {
                    c2575c.f7147i++;
                    c2575c.f7146h++;
                    if (i17 == i23 - 1 && c2575c.m4020a() != 0) {
                        m2454a(arrayList, c2575c, i17, i21);
                    }
                } else {
                    if (viewMo1698c instanceof CompoundButton) {
                        CompoundButton compoundButton = (CompoundButton) viewMo1698c;
                        InterfaceC2574b interfaceC2574b2 = (InterfaceC2574b) compoundButton.getLayoutParams();
                        int iMo4006c = interfaceC2574b2.mo4006c();
                        int iMo4016m = interfaceC2574b2.mo4016m();
                        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
                        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
                        int minimumHeight = buttonDrawable == null ? 0 : buttonDrawable.getMinimumHeight();
                        if (iMo4006c == -1) {
                            iMo4006c = minimumWidth;
                        }
                        interfaceC2574b2.mo4008e(iMo4006c);
                        if (iMo4016m == -1) {
                            iMo4016m = minimumHeight;
                        }
                        interfaceC2574b2.mo4012i(iMo4016m);
                    }
                    InterfaceC2574b interfaceC2574b3 = (InterfaceC2574b) viewMo1698c.getLayoutParams();
                    if (interfaceC2574b3.mo4004a() == 4) {
                        c2575c.f7152n.add(Integer.valueOf(i17));
                    }
                    int iMo4007d = zMo1704i ? interfaceC2574b3.mo4007d() : interfaceC2574b3.getHeight();
                    if (interfaceC2574b3.mo4014k() != -1.0f && mode == 1073741824) {
                        iMo4007d = Math.round(interfaceC2574b3.mo4014k() * size);
                    }
                    if (zMo1704i) {
                        iMo1703h = interfaceC2573a.mo1699d(i16, interfaceC2574b3.mo4015l() + interfaceC2574b3.mo4010g() + i19, iMo4007d);
                        int iMo1703h2 = interfaceC2573a.mo1703h(i11, interfaceC2574b3.mo4009f() + interfaceC2574b3.mo4011h() + paddingTop + paddingBottom + i21, interfaceC2574b3.getHeight());
                        viewMo1698c.measure(iMo1703h, iMo1703h2);
                        m2475x(viewMo1698c, i17, iMo1703h, iMo1703h2);
                    } else {
                        int iMo1699d = interfaceC2573a.mo1699d(i11, interfaceC2574b3.mo4015l() + interfaceC2574b3.mo4010g() + paddingTop + paddingBottom + i21, interfaceC2574b3.mo4007d());
                        iMo1703h = interfaceC2573a.mo1703h(i16, interfaceC2574b3.mo4009f() + interfaceC2574b3.mo4011h() + i19, iMo4007d);
                        viewMo1698c.measure(iMo1699d, iMo1703h);
                        m2475x(viewMo1698c, i17, iMo1699d, iMo1703h);
                    }
                    interfaceC2573a.mo1700e(i17, viewMo1698c);
                    m2456c(i17, viewMo1698c);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewMo1698c.getMeasuredState());
                    int i24 = c2575c.f7143e;
                    int measuredWidth = (zMo1704i ? viewMo1698c.getMeasuredWidth() : viewMo1698c.getMeasuredHeight()) + (zMo1704i ? interfaceC2574b3.mo4010g() : interfaceC2574b3.mo4011h()) + (zMo1704i ? interfaceC2574b3.mo4015l() : interfaceC2574b3.mo4009f());
                    int size2 = arrayList.size();
                    if (interfaceC2573a.getFlexWrap() != 0) {
                        if (interfaceC2574b3.mo4017n()) {
                            interfaceC2574b = interfaceC2574b3;
                        } else {
                            if (mode == 0) {
                                interfaceC2574b = interfaceC2574b3;
                            } else {
                                interfaceC2574b = interfaceC2574b3;
                                int maxLine = interfaceC2573a.getMaxLine();
                                if (maxLine == -1 || maxLine > size2 + 1) {
                                    int iMo1702g = interfaceC2573a.mo1702g(viewMo1698c, i17, i22);
                                    if (iMo1702g > 0) {
                                        measuredWidth += iMo1702g;
                                    }
                                    if (size < i24 + measuredWidth) {
                                    }
                                }
                            }
                            i19 = i19;
                            arrayList = arrayList;
                            c2575c.f7146h += i18;
                            i22++;
                            i15 = i20;
                        }
                        if (c2575c.m4020a() > 0) {
                            arrayList = arrayList;
                            m2454a(arrayList, c2575c, i17 > 0 ? i17 - 1 : 0, i21);
                            i21 += c2575c.f7145g;
                        }
                        if (zMo1704i) {
                            arrayList = arrayList;
                            if (interfaceC2574b.getHeight() == -1) {
                                viewMo1698c.measure(iMo1703h, interfaceC2573a.mo1703h(i11, interfaceC2574b.mo4009f() + interfaceC2574b.mo4011h() + interfaceC2573a.getPaddingBottom() + interfaceC2573a.getPaddingTop() + i21, interfaceC2574b.getHeight()));
                                m2456c(i17, viewMo1698c);
                            }
                        } else {
                            arrayList = arrayList;
                            if (interfaceC2574b.mo4007d() == -1) {
                                viewMo1698c.measure(interfaceC2573a.mo1699d(i11, interfaceC2574b.mo4015l() + interfaceC2574b.mo4010g() + interfaceC2573a.getPaddingRight() + interfaceC2573a.getPaddingLeft() + i21, interfaceC2574b.mo4007d()), iMo1703h);
                                m2456c(i17, viewMo1698c);
                            }
                        }
                        c2575c = new C2575c();
                        c2575c.f7146h = i18;
                        i19 = i19;
                        c2575c.f7143e = i19;
                        c2575c.f7153o = i17;
                        i15 = Integer.MIN_VALUE;
                        i22 = 0;
                    } else {
                        interfaceC2574b = interfaceC2574b3;
                        i19 = i19;
                        arrayList = arrayList;
                        c2575c.f7146h += i18;
                        i22++;
                        i15 = i20;
                    }
                    c2575c.f7155q |= interfaceC2574b.mo4013j() != 0.0f;
                    c2575c.f7156r |= interfaceC2574b.mo4005b() != 0.0f;
                    int[] iArr = (int[]) this.f3415e;
                    if (iArr != null) {
                        iArr[i17] = arrayList.size();
                    }
                    c2575c.f7143e = (zMo1704i ? viewMo1698c.getMeasuredWidth() : viewMo1698c.getMeasuredHeight()) + (zMo1704i ? interfaceC2574b.mo4010g() : interfaceC2574b.mo4011h()) + (zMo1704i ? interfaceC2574b.mo4015l() : interfaceC2574b.mo4009f()) + c2575c.f7143e;
                    c2575c.f7148j = interfaceC2574b.mo4013j() + c2575c.f7148j;
                    c2575c.f7149k = interfaceC2574b.mo4005b() + c2575c.f7149k;
                    interfaceC2573a.mo1696a(viewMo1698c, i17, i22, c2575c);
                    int iMax = Math.max(i15, interfaceC2573a.mo1705j(viewMo1698c) + (zMo1704i ? viewMo1698c.getMeasuredHeight() : viewMo1698c.getMeasuredWidth()) + (zMo1704i ? interfaceC2574b.mo4011h() : interfaceC2574b.mo4010g()) + (zMo1704i ? interfaceC2574b.mo4009f() : interfaceC2574b.mo4015l()));
                    c2575c.f7145g = Math.max(c2575c.f7145g, iMax);
                    if (zMo1704i) {
                        int flexWrap = interfaceC2573a.getFlexWrap();
                        int i25 = c2575c.f7150l;
                        i20 = iMax;
                        if (flexWrap != 2) {
                            c2575c.f7150l = Math.max(i25, interfaceC2574b.mo4011h() + viewMo1698c.getBaseline());
                        } else {
                            c2575c.f7150l = Math.max(i25, interfaceC2574b.mo4009f() + (viewMo1698c.getMeasuredHeight() - viewMo1698c.getBaseline()));
                        }
                    } else {
                        i20 = iMax;
                    }
                    if (i17 == i23 - 1 && c2575c.m4020a() != 0) {
                        m2454a(arrayList, c2575c, i17, i21);
                        i21 += c2575c.f7145g;
                    }
                    if (i14 != -1 && arrayList.size() > 0) {
                        i18 = 1;
                        if (((C2575c) arrayList.get(arrayList.size() - 1)).f7154p >= i14 && i17 >= i14 && !z11) {
                            i21 = -c2575c.f7145g;
                            z9 = true;
                        }
                        if (i21 > i12 && z9) {
                            break;
                        }
                    } else {
                        i18 = 1;
                    }
                    z9 = z11;
                    if (i21 > i12) {
                        continue;
                    }
                }
                i17++;
                i16 = i10;
                z11 = z9;
                flexItemCount = i23;
            } else if (i17 == i23 - 1 && c2575c.m4020a() != 0) {
                m2454a(arrayList, c2575c, i17, i21);
            }
            z9 = z11;
            i17++;
            i16 = i10;
            z11 = z9;
            flexItemCount = i23;
        }
        c1897i.f4929b = iCombineMeasuredStates;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: c */
    public void m2456c(int i10, View view) {
        boolean z9;
        InterfaceC2574b interfaceC2574b = (InterfaceC2574b) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z10 = true;
        if (measuredWidth >= interfaceC2574b.mo4006c()) {
            if (measuredWidth > interfaceC2574b.mo4019p()) {
                measuredWidth = interfaceC2574b.mo4019p();
            } else {
                z9 = false;
            }
            if (measuredHeight < interfaceC2574b.mo4016m()) {
                measuredHeight = interfaceC2574b.mo4016m();
            } else if (measuredHeight > interfaceC2574b.mo4018o()) {
                measuredHeight = interfaceC2574b.mo4018o();
            } else {
                z10 = z9;
            }
            if (z10) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, BasicMeasure.EXACTLY);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, BasicMeasure.EXACTLY);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                m2475x(view, i10, iMakeMeasureSpec, iMakeMeasureSpec2);
                ((InterfaceC2573a) this.f3413c).mo1700e(i10, view);
            }
        }
        measuredWidth = interfaceC2574b.mo4006c();
        z9 = true;
        if (measuredHeight < interfaceC2574b.mo4016m()) {
            measuredHeight = interfaceC2574b.mo4016m();
        } else if (measuredHeight > interfaceC2574b.mo4018o()) {
            measuredHeight = interfaceC2574b.mo4018o();
        } else {
            z10 = z9;
        }
        if (z10) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, BasicMeasure.EXACTLY);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight, BasicMeasure.EXACTLY);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            m2475x(view, i10, iMakeMeasureSpec3, iMakeMeasureSpec4);
            ((InterfaceC2573a) this.f3413c).mo1700e(i10, view);
        }
    }

    /* JADX INFO: renamed from: d */
    public void m2457d(int i10, List list) {
        int i11 = ((int[]) this.f3415e)[i10];
        if (i11 == -1) {
            i11 = 0;
        }
        if (list.size() > i11) {
            list.subList(i11, list.size()).clear();
        }
        int[] iArr = (int[]) this.f3415e;
        int length = iArr.length - 1;
        if (i10 > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i10, length, -1);
        }
        long[] jArr = (long[]) this.f3416f;
        int length2 = jArr.length - 1;
        if (i10 > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i10, length2, 0L);
        }
    }

    /* JADX INFO: renamed from: e */
    public void m2458e() {
        TransportService.m1587b((Closeable) this.f3414d);
    }

    /* JADX INFO: renamed from: g */
    public ArrayList m2459g(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            InterfaceC2574b interfaceC2574b = (InterfaceC2574b) ((InterfaceC2573a) this.f3413c).mo1701f(i11).getLayoutParams();
            C2576d c2576d = new C2576d();
            c2576d.f7158c = interfaceC2574b.getOrder();
            c2576d.f7157b = i11;
            arrayList.add(c2576d);
        }
        return arrayList;
    }

    @Override // p204t8.InterfaceC3268a
    public Object get() {
        switch (this.f3412b) {
            case 2:
                InterfaceC0006c interfaceC0006c = (InterfaceC0006c) ((C1496c) this.f3413c).f3693c;
                ((C1619a) this.f3414d).get();
                ((C1666a) this.f3415e).get();
                ((C1619a) this.f3416f).get();
                Executor executor = (Executor) ((C1619a) this.f3417g).get();
                C0004a c0004a = new C0004a("proto");
                Set set = ((C1262r) interfaceC0006c).f2980a;
                if (set.contains(c0004a)) {
                    return new C1572v(executor);
                }
                C2467b.m3832v("%s is not supported byt this factory. Supported encodings are: %s.", new Object[]{c0004a, set});
                return null;
            default:
                Executor executor2 = (Executor) ((InterfaceC3268a) this.f3413c).get();
                ((C0023h) this.f3415e).get();
                return new C1739a(executor2);
        }
    }

    /* JADX INFO: renamed from: h */
    public void m2460h(int i10, int i11, int i12) {
        int mode;
        int size;
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        int flexDirection = interfaceC2573a.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            mode = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
        } else if (flexDirection != 2 && flexDirection != 3) {
            C1929i.m3029k(AbstractC0074a.m154e(flexDirection, "Invalid flex direction: "));
            return;
        } else {
            mode = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
        }
        List<C2575c> flexLinesInternal = interfaceC2573a.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = interfaceC2573a.getSumOfCrossSize() + i12;
            int i13 = 0;
            if (flexLinesInternal.size() == 1) {
                ((C2575c) flexLinesInternal.get(0)).f7145g = size - i12;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = interfaceC2573a.getAlignContent();
                if (alignContent == 1) {
                    C2575c c2575c = new C2575c();
                    c2575c.f7145g = size - sumOfCrossSize;
                    flexLinesInternal.add(0, c2575c);
                    return;
                }
                if (alignContent == 2) {
                    interfaceC2573a.setFlexLines(m2452f(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize >= size) {
                        return;
                    }
                    float size2 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size3 = flexLinesInternal.size();
                    float f8 = 0.0f;
                    while (i13 < size3) {
                        arrayList.add((C2575c) flexLinesInternal.get(i13));
                        if (i13 != flexLinesInternal.size() - 1) {
                            C2575c c2575c2 = new C2575c();
                            if (i13 == flexLinesInternal.size() - 2) {
                                c2575c2.f7145g = Math.round(f8 + size2);
                                f8 = 0.0f;
                            } else {
                                c2575c2.f7145g = Math.round(size2);
                            }
                            int i14 = c2575c2.f7145g;
                            float f10 = (size2 - i14) + f8;
                            if (f10 > 1.0f) {
                                c2575c2.f7145g = i14 + 1;
                                f10 -= 1.0f;
                            } else if (f10 < -1.0f) {
                                c2575c2.f7145g = i14 - 1;
                                f10 += 1.0f;
                            }
                            f8 = f10;
                            arrayList.add(c2575c2);
                        }
                        i13++;
                    }
                    interfaceC2573a.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        interfaceC2573a.setFlexLines(m2452f(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size4 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    C2575c c2575c3 = new C2575c();
                    c2575c3.f7145g = size4;
                    for (C2575c c2575c4 : flexLinesInternal) {
                        arrayList2.add(c2575c3);
                        arrayList2.add(c2575c4);
                        arrayList2.add(c2575c3);
                    }
                    interfaceC2573a.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size5 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f11 = 0.0f;
                    while (i13 < size6) {
                        C2575c c2575c5 = (C2575c) flexLinesInternal.get(i13);
                        float f12 = c2575c5.f7145g + size5;
                        if (i13 == flexLinesInternal.size() - 1) {
                            f12 += f11;
                            f11 = 0.0f;
                        }
                        int iRound = Math.round(f12);
                        float f13 = (f12 - iRound) + f11;
                        if (f13 > 1.0f) {
                            iRound++;
                            f13 -= 1.0f;
                        } else if (f13 < -1.0f) {
                            iRound--;
                            f13 += 1.0f;
                        }
                        f11 = f13;
                        c2575c5.f7145g = iRound;
                        i13++;
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public void m2461i(int i10, int i11, int i12) {
        int size;
        int paddingLeft;
        int paddingRight;
        int i13;
        int i14;
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        int flexItemCount = interfaceC2573a.getFlexItemCount();
        boolean[] zArr = (boolean[]) this.f3414d;
        if (zArr == null) {
            this.f3414d = new boolean[Math.max(flexItemCount, 10)];
        } else if (zArr.length < flexItemCount) {
            this.f3414d = new boolean[Math.max(zArr.length * 2, flexItemCount)];
        } else {
            Arrays.fill(zArr, false);
        }
        if (i12 >= interfaceC2573a.getFlexItemCount()) {
            return;
        }
        int flexDirection = interfaceC2573a.getFlexDirection();
        int flexDirection2 = interfaceC2573a.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
            int largestMainSize = interfaceC2573a.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = interfaceC2573a.getPaddingLeft();
            paddingRight = interfaceC2573a.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                C1929i.m3029k(AbstractC0074a.m154e(flexDirection, "Invalid flex direction: "));
                return;
            }
            int mode2 = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
            if (mode2 != 1073741824) {
                size = interfaceC2573a.getLargestMainSize();
            }
            paddingLeft = interfaceC2573a.getPaddingTop();
            paddingRight = interfaceC2573a.getPaddingBottom();
        }
        int i15 = paddingRight + paddingLeft;
        int i16 = size;
        int[] iArr = (int[]) this.f3415e;
        int i17 = iArr != null ? iArr[i12] : 0;
        List flexLinesInternal = interfaceC2573a.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        while (i17 < size2) {
            C2575c c2575c = (C2575c) flexLinesInternal.get(i17);
            int i18 = c2575c.f7143e;
            if (i18 >= i16 || !c2575c.f7155q) {
                i13 = i10;
                i14 = i11;
                if (i18 > i16 && c2575c.f7156r) {
                    m2471s(i13, i14, c2575c, i16, i15, false);
                }
            } else {
                i13 = i10;
                i14 = i11;
                m2465m(i13, i14, c2575c, i16, i15, false);
            }
            i17++;
            i10 = i13;
            i11 = i14;
        }
    }

    /* JADX INFO: renamed from: j */
    public void m2462j(int i10) {
        int[] iArr = (int[]) this.f3415e;
        if (iArr == null) {
            this.f3415e = new int[Math.max(i10, 10)];
        } else if (iArr.length < i10) {
            this.f3415e = Arrays.copyOf((int[]) this.f3415e, Math.max(iArr.length * 2, i10));
        }
    }

    /* JADX INFO: renamed from: k */
    public void m2463k(int i10) {
        long[] jArr = (long[]) this.f3416f;
        if (jArr == null) {
            this.f3416f = new long[Math.max(i10, 10)];
        } else if (jArr.length < i10) {
            this.f3416f = Arrays.copyOf((long[]) this.f3416f, Math.max(jArr.length * 2, i10));
        }
    }

    /* JADX INFO: renamed from: l */
    public void m2464l(int i10) {
        long[] jArr = (long[]) this.f3417g;
        if (jArr == null) {
            this.f3417g = new long[Math.max(i10, 10)];
        } else if (jArr.length < i10) {
            this.f3417g = Arrays.copyOf((long[]) this.f3417g, Math.max(jArr.length * 2, i10));
        }
    }

    /* JADX INFO: renamed from: m */
    public void m2465m(int i10, int i11, C2575c c2575c, int i12, int i13, boolean z9) {
        int i14;
        float f8;
        int iMax;
        double d;
        double d10;
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        float f10 = c2575c.f7148j;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i12 < (i14 = c2575c.f7143e)) {
            return;
        }
        float f12 = (i12 - i14) / f10;
        c2575c.f7143e = i13 + c2575c.f7144f;
        if (!z9) {
            c2575c.f7145g = Integer.MIN_VALUE;
        }
        int i15 = 0;
        boolean z10 = false;
        int i16 = 0;
        float f13 = 0.0f;
        while (i15 < c2575c.f7146h) {
            int i17 = c2575c.f7153o + i15;
            View viewMo1698c = interfaceC2573a.mo1698c(i17);
            if (viewMo1698c == null || viewMo1698c.getVisibility() == 8) {
                f8 = f11;
                f12 = f12;
                z10 = z10;
            } else {
                InterfaceC2574b interfaceC2574b = (InterfaceC2574b) viewMo1698c.getLayoutParams();
                int flexDirection = interfaceC2573a.getFlexDirection();
                f8 = f11;
                if (flexDirection == 0 || flexDirection == 1) {
                    f12 = f12;
                    boolean z11 = z10;
                    int measuredWidth = viewMo1698c.getMeasuredWidth();
                    long[] jArr = (long[]) this.f3417g;
                    if (jArr != null) {
                        measuredWidth = (int) jArr[i17];
                    }
                    int measuredHeight = viewMo1698c.getMeasuredHeight();
                    long[] jArr2 = (long[]) this.f3417g;
                    if (jArr2 != null) {
                        measuredHeight = (int) (jArr2[i17] >> 32);
                    }
                    if (((boolean[]) this.f3414d)[i17] || interfaceC2574b.mo4013j() <= f8) {
                        z10 = z11;
                    } else {
                        float fMo4013j = (interfaceC2574b.mo4013j() * f12) + measuredWidth;
                        if (i15 == c2575c.f7146h - 1) {
                            fMo4013j += f13;
                            f13 = f8;
                        }
                        int iRound = Math.round(fMo4013j);
                        if (iRound > interfaceC2574b.mo4019p()) {
                            iRound = interfaceC2574b.mo4019p();
                            ((boolean[]) this.f3414d)[i17] = true;
                            c2575c.f7148j -= interfaceC2574b.mo4013j();
                            z10 = true;
                        } else {
                            float f14 = (fMo4013j - iRound) + f13;
                            double d11 = f14;
                            if (d11 > 1.0d) {
                                iRound++;
                                d = d11 - 1.0d;
                            } else {
                                if (d11 < -1.0d) {
                                    iRound--;
                                    d = d11 + 1.0d;
                                }
                                f13 = f14;
                                z10 = z11;
                            }
                            f14 = (float) d;
                            f13 = f14;
                            z10 = z11;
                        }
                        int iM2466n = m2466n(i11, interfaceC2574b, c2575c.f7151m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, BasicMeasure.EXACTLY);
                        viewMo1698c.measure(iMakeMeasureSpec, iM2466n);
                        int measuredWidth2 = viewMo1698c.getMeasuredWidth();
                        int measuredHeight2 = viewMo1698c.getMeasuredHeight();
                        m2475x(viewMo1698c, i17, iMakeMeasureSpec, iM2466n);
                        interfaceC2573a.mo1700e(i17, viewMo1698c);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i16, interfaceC2573a.mo1705j(viewMo1698c) + interfaceC2574b.mo4009f() + interfaceC2574b.mo4011h() + measuredHeight);
                    c2575c.f7143e = interfaceC2574b.mo4015l() + interfaceC2574b.mo4010g() + measuredWidth + c2575c.f7143e;
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewMo1698c.getMeasuredHeight();
                    long[] jArr3 = (long[]) this.f3417g;
                    if (jArr3 != null) {
                        measuredHeight3 = (int) (jArr3[i17] >> 32);
                    }
                    int measuredWidth3 = viewMo1698c.getMeasuredWidth();
                    long[] jArr4 = (long[]) this.f3417g;
                    if (jArr4 != null) {
                        measuredWidth3 = (int) jArr4[i17];
                    }
                    if (((boolean[]) this.f3414d)[i17] || interfaceC2574b.mo4013j() <= f8) {
                        f12 = f12;
                        z10 = z10;
                    } else {
                        float fMo4013j2 = (interfaceC2574b.mo4013j() * f12) + measuredHeight3;
                        if (i15 == c2575c.f7146h - 1) {
                            fMo4013j2 += f13;
                            f13 = f8;
                        }
                        int iRound2 = Math.round(fMo4013j2);
                        if (iRound2 > interfaceC2574b.mo4018o()) {
                            iRound2 = interfaceC2574b.mo4018o();
                            ((boolean[]) this.f3414d)[i17] = true;
                            c2575c.f7148j -= interfaceC2574b.mo4013j();
                            z10 = true;
                        } else {
                            float f15 = (fMo4013j2 - iRound2) + f13;
                            boolean z12 = z10;
                            double d12 = f15;
                            if (d12 > 1.0d) {
                                iRound2++;
                                d10 = d12 - 1.0d;
                            } else {
                                if (d12 < -1.0d) {
                                    iRound2--;
                                    d10 = d12 + 1.0d;
                                }
                                f13 = f15;
                                z10 = z12;
                            }
                            f15 = (float) d10;
                            f13 = f15;
                            z10 = z12;
                        }
                        int iM2467o = m2467o(i10, interfaceC2574b, c2575c.f7151m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, BasicMeasure.EXACTLY);
                        viewMo1698c.measure(iM2467o, iMakeMeasureSpec2);
                        int measuredWidth4 = viewMo1698c.getMeasuredWidth();
                        int measuredHeight4 = viewMo1698c.getMeasuredHeight();
                        m2475x(viewMo1698c, i17, iM2467o, iMakeMeasureSpec2);
                        interfaceC2573a.mo1700e(i17, viewMo1698c);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i16, interfaceC2573a.mo1705j(viewMo1698c) + interfaceC2574b.mo4015l() + interfaceC2574b.mo4010g() + measuredWidth3);
                    c2575c.f7143e = interfaceC2574b.mo4009f() + interfaceC2574b.mo4011h() + measuredHeight3 + c2575c.f7143e;
                }
                c2575c.f7145g = Math.max(c2575c.f7145g, iMax);
                i16 = iMax;
            }
            i15++;
            f11 = f8;
            f12 = f12;
        }
        if (!z10 || i14 == c2575c.f7143e) {
            return;
        }
        m2465m(i10, i11, c2575c, i12, i13, true);
    }

    /* JADX INFO: renamed from: n */
    public int m2466n(int i10, InterfaceC2574b interfaceC2574b, int i11) {
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        int iMo1703h = interfaceC2573a.mo1703h(i10, interfaceC2574b.mo4009f() + interfaceC2574b.mo4011h() + interfaceC2573a.getPaddingBottom() + interfaceC2573a.getPaddingTop() + i11, interfaceC2574b.getHeight());
        int size = View.MeasureSpec.getSize(iMo1703h);
        if (size > interfaceC2574b.mo4018o()) {
            return View.MeasureSpec.makeMeasureSpec(interfaceC2574b.mo4018o(), View.MeasureSpec.getMode(iMo1703h));
        }
        return size < interfaceC2574b.mo4016m() ? View.MeasureSpec.makeMeasureSpec(interfaceC2574b.mo4016m(), View.MeasureSpec.getMode(iMo1703h)) : iMo1703h;
    }

    /* JADX INFO: renamed from: o */
    public int m2467o(int i10, InterfaceC2574b interfaceC2574b, int i11) {
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        int iMo1699d = interfaceC2573a.mo1699d(i10, interfaceC2574b.mo4015l() + interfaceC2574b.mo4010g() + interfaceC2573a.getPaddingRight() + interfaceC2573a.getPaddingLeft() + i11, interfaceC2574b.mo4007d());
        int size = View.MeasureSpec.getSize(iMo1699d);
        if (size > interfaceC2574b.mo4019p()) {
            return View.MeasureSpec.makeMeasureSpec(interfaceC2574b.mo4019p(), View.MeasureSpec.getMode(iMo1699d));
        }
        return size < interfaceC2574b.mo4006c() ? View.MeasureSpec.makeMeasureSpec(interfaceC2574b.mo4006c(), View.MeasureSpec.getMode(iMo1699d)) : iMo1699d;
    }

    /* JADX INFO: renamed from: p */
    public void m2468p(View view, C2575c c2575c, int i10, int i11, int i12, int i13) {
        InterfaceC2574b interfaceC2574b = (InterfaceC2574b) view.getLayoutParams();
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        int alignItems = interfaceC2573a.getAlignItems();
        if (interfaceC2574b.mo4004a() != -1) {
            alignItems = interfaceC2574b.mo4004a();
        }
        int i14 = c2575c.f7145g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (interfaceC2573a.getFlexWrap() != 2) {
                    int i15 = i11 + i14;
                    view.layout(i10, (i15 - view.getMeasuredHeight()) - interfaceC2574b.mo4009f(), i12, i15 - interfaceC2574b.mo4009f());
                    return;
                }
                view.layout(i10, interfaceC2574b.mo4011h() + view.getMeasuredHeight() + (i11 - i14), i12, interfaceC2574b.mo4011h() + view.getMeasuredHeight() + (i13 - i14));
                return;
            }
            if (alignItems == 2) {
                int iMo4011h = ((interfaceC2574b.mo4011h() + (i14 - view.getMeasuredHeight())) - interfaceC2574b.mo4009f()) / 2;
                if (interfaceC2573a.getFlexWrap() != 2) {
                    int i16 = i11 + iMo4011h;
                    view.layout(i10, i16, i12, view.getMeasuredHeight() + i16);
                    return;
                } else {
                    int i17 = i11 - iMo4011h;
                    view.layout(i10, i17, i12, view.getMeasuredHeight() + i17);
                    return;
                }
            }
            if (alignItems == 3) {
                int flexWrap = interfaceC2573a.getFlexWrap();
                int i18 = c2575c.f7150l;
                if (flexWrap != 2) {
                    int iMax = Math.max(i18 - view.getBaseline(), interfaceC2574b.mo4011h());
                    view.layout(i10, i11 + iMax, i12, i13 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max(view.getBaseline() + (i18 - view.getMeasuredHeight()), interfaceC2574b.mo4009f());
                    view.layout(i10, i11 - iMax2, i12, i13 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (interfaceC2573a.getFlexWrap() != 2) {
            view.layout(i10, interfaceC2574b.mo4011h() + i11, i12, interfaceC2574b.mo4011h() + i13);
        } else {
            view.layout(i10, i11 - interfaceC2574b.mo4009f(), i12, i13 - interfaceC2574b.mo4009f());
        }
    }

    /* JADX INFO: renamed from: q */
    public void m2469q(View view, C2575c c2575c, boolean z9, int i10, int i11, int i12, int i13) {
        InterfaceC2574b interfaceC2574b = (InterfaceC2574b) view.getLayoutParams();
        int alignItems = ((InterfaceC2573a) this.f3413c).getAlignItems();
        if (interfaceC2574b.mo4004a() != -1) {
            alignItems = interfaceC2574b.mo4004a();
        }
        int i14 = c2575c.f7145g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z9) {
                    view.layout(((i10 + i14) - view.getMeasuredWidth()) - interfaceC2574b.mo4015l(), i11, ((i12 + i14) - view.getMeasuredWidth()) - interfaceC2574b.mo4015l(), i13);
                    return;
                }
                view.layout(interfaceC2574b.mo4010g() + view.getMeasuredWidth() + (i10 - i14), i11, interfaceC2574b.mo4010g() + view.getMeasuredWidth() + (i12 - i14), i13);
                return;
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int marginStart = ((MarginLayoutParamsCompat.getMarginStart(marginLayoutParams) + (i14 - view.getMeasuredWidth())) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (z9) {
                    view.layout(i10 - marginStart, i11, i12 - marginStart, i13);
                    return;
                } else {
                    view.layout(i10 + marginStart, i11, i12 + marginStart, i13);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (z9) {
            view.layout(i10 - interfaceC2574b.mo4015l(), i11, i12 - interfaceC2574b.mo4015l(), i13);
        } else {
            view.layout(interfaceC2574b.mo4010g() + i10, i11, interfaceC2574b.mo4010g() + i12, i13);
        }
    }

    /* JADX INFO: renamed from: r */
    public void m2470r(String str) {
        synchronized (this.f3417g) {
            ((BufferedWriter) this.f3416f).write(str);
            ((BufferedWriter) this.f3416f).newLine();
            ((BufferedWriter) this.f3416f).flush();
        }
    }

    /* JADX INFO: renamed from: s */
    public void m2471s(int i10, int i11, C2575c c2575c, int i12, int i13, boolean z9) {
        float f8;
        boolean z10;
        int iMax;
        boolean z11;
        int iMo4016m;
        float f10;
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        int i14 = c2575c.f7143e;
        float f11 = c2575c.f7149k;
        float f12 = 0.0f;
        if (f11 <= 0.0f || i12 > i14) {
            return;
        }
        float f13 = (i14 - i12) / f11;
        c2575c.f7143e = i13 + c2575c.f7144f;
        if (!z9) {
            c2575c.f7145g = Integer.MIN_VALUE;
        }
        int i15 = 0;
        boolean z12 = false;
        int i16 = 0;
        float f14 = 0.0f;
        while (i15 < c2575c.f7146h) {
            int i17 = c2575c.f7153o + i15;
            View viewMo1698c = interfaceC2573a.mo1698c(i17);
            if (viewMo1698c == null || viewMo1698c.getVisibility() == 8) {
                f8 = f12;
                f13 = f13;
                z10 = z12;
                i15 = i15;
            } else {
                InterfaceC2574b interfaceC2574b = (InterfaceC2574b) viewMo1698c.getLayoutParams();
                int flexDirection = interfaceC2573a.getFlexDirection();
                f8 = f12;
                if (flexDirection == 0 || flexDirection == 1) {
                    f13 = f13;
                    z10 = z12;
                    int measuredWidth = viewMo1698c.getMeasuredWidth();
                    long[] jArr = (long[]) this.f3417g;
                    if (jArr != null) {
                        measuredWidth = (int) jArr[i17];
                    }
                    int measuredHeight = viewMo1698c.getMeasuredHeight();
                    long[] jArr2 = (long[]) this.f3417g;
                    if (jArr2 != null) {
                        measuredHeight = (int) (jArr2[i17] >> 32);
                    }
                    if (((boolean[]) this.f3414d)[i17] || interfaceC2574b.mo4005b() <= f8) {
                        i15 = i15;
                    } else {
                        float fMo4005b = measuredWidth - (interfaceC2574b.mo4005b() * f13);
                        if (i15 == c2575c.f7146h - 1) {
                            fMo4005b += f14;
                            f14 = f8;
                        }
                        int iRound = Math.round(fMo4005b);
                        if (iRound < interfaceC2574b.mo4006c()) {
                            iRound = interfaceC2574b.mo4006c();
                            ((boolean[]) this.f3414d)[i17] = true;
                            c2575c.f7149k -= interfaceC2574b.mo4005b();
                            z10 = true;
                        } else {
                            float f15 = (fMo4005b - iRound) + f14;
                            double d = f15;
                            if (d > 1.0d) {
                                iRound++;
                                f15 -= 1.0f;
                            } else if (d < -1.0d) {
                                iRound--;
                                f15 += 1.0f;
                            }
                            f14 = f15;
                        }
                        int iM2466n = m2466n(i11, interfaceC2574b, c2575c.f7151m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, BasicMeasure.EXACTLY);
                        viewMo1698c.measure(iMakeMeasureSpec, iM2466n);
                        int measuredWidth2 = viewMo1698c.getMeasuredWidth();
                        int measuredHeight2 = viewMo1698c.getMeasuredHeight();
                        m2475x(viewMo1698c, i17, iMakeMeasureSpec, iM2466n);
                        interfaceC2573a.mo1700e(i17, viewMo1698c);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i16, interfaceC2573a.mo1705j(viewMo1698c) + interfaceC2574b.mo4009f() + interfaceC2574b.mo4011h() + measuredHeight);
                    c2575c.f7143e = interfaceC2574b.mo4015l() + interfaceC2574b.mo4010g() + measuredWidth + c2575c.f7143e;
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewMo1698c.getMeasuredHeight();
                    long[] jArr3 = (long[]) this.f3417g;
                    if (jArr3 != null) {
                        measuredHeight3 = (int) (jArr3[i17] >> 32);
                    }
                    int measuredWidth3 = viewMo1698c.getMeasuredWidth();
                    long[] jArr4 = (long[]) this.f3417g;
                    if (jArr4 != null) {
                        measuredWidth3 = (int) jArr4[i17];
                    }
                    if (((boolean[]) this.f3414d)[i17] || interfaceC2574b.mo4005b() <= f8) {
                        z11 = z12;
                    } else {
                        float fMo4005b2 = measuredHeight3 - (interfaceC2574b.mo4005b() * f13);
                        if (i15 == c2575c.f7146h - 1) {
                            fMo4005b2 += f14;
                            f14 = f8;
                        }
                        int iRound2 = Math.round(fMo4005b2);
                        if (iRound2 < interfaceC2574b.mo4016m()) {
                            iMo4016m = interfaceC2574b.mo4016m();
                            ((boolean[]) this.f3414d)[i17] = true;
                            c2575c.f7149k -= interfaceC2574b.mo4005b();
                            z11 = true;
                        } else {
                            float f16 = (fMo4005b2 - iRound2) + f14;
                            boolean z13 = z12;
                            double d10 = f16;
                            if (d10 > 1.0d) {
                                iMo4016m = iRound2 + 1;
                                f10 = f16 - 1.0f;
                            } else if (d10 < -1.0d) {
                                iMo4016m = iRound2 - 1;
                                f10 = f16 + 1.0f;
                            } else {
                                iMo4016m = iRound2;
                                z11 = z13;
                                f14 = f16;
                            }
                            f14 = f10;
                            z11 = z13;
                        }
                        int iM2467o = m2467o(i10, interfaceC2574b, c2575c.f7151m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMo4016m, BasicMeasure.EXACTLY);
                        viewMo1698c.measure(iM2467o, iMakeMeasureSpec2);
                        int measuredWidth4 = viewMo1698c.getMeasuredWidth();
                        int measuredHeight4 = viewMo1698c.getMeasuredHeight();
                        m2475x(viewMo1698c, i17, iM2467o, iMakeMeasureSpec2);
                        interfaceC2573a.mo1700e(i17, viewMo1698c);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i16, interfaceC2573a.mo1705j(viewMo1698c) + interfaceC2574b.mo4015l() + interfaceC2574b.mo4010g() + measuredWidth3);
                    c2575c.f7143e = interfaceC2574b.mo4009f() + interfaceC2574b.mo4011h() + measuredHeight3 + c2575c.f7143e;
                    z10 = z11;
                    i15 = i15;
                }
                c2575c.f7145g = Math.max(c2575c.f7145g, iMax);
                i16 = iMax;
            }
            i15++;
            f12 = f8;
            z12 = z10;
            f13 = f13;
        }
        if (!z12 || i14 == c2575c.f7143e) {
            return;
        }
        m2471s(i10, i11, c2575c, i12, i13, true);
    }

    /* JADX INFO: renamed from: u */
    public void m2472u(View view, int i10, int i11) {
        InterfaceC2574b interfaceC2574b = (InterfaceC2574b) view.getLayoutParams();
        int iMo4010g = (i10 - interfaceC2574b.mo4010g()) - interfaceC2574b.mo4015l();
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        int iMin = Math.min(Math.max(iMo4010g - interfaceC2573a.mo1705j(view), interfaceC2574b.mo4006c()), interfaceC2574b.mo4019p());
        long[] jArr = (long[]) this.f3417g;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) (jArr[i11] >> 32) : view.getMeasuredHeight(), BasicMeasure.EXACTLY);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, BasicMeasure.EXACTLY);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        m2475x(view, i11, iMakeMeasureSpec2, iMakeMeasureSpec);
        interfaceC2573a.mo1700e(i11, view);
    }

    /* JADX INFO: renamed from: v */
    public void m2473v(View view, int i10, int i11) {
        InterfaceC2574b interfaceC2574b = (InterfaceC2574b) view.getLayoutParams();
        int iMo4011h = (i10 - interfaceC2574b.mo4011h()) - interfaceC2574b.mo4009f();
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        int iMin = Math.min(Math.max(iMo4011h - interfaceC2573a.mo1705j(view), interfaceC2574b.mo4016m()), interfaceC2574b.mo4018o());
        long[] jArr = (long[]) this.f3417g;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) jArr[i11] : view.getMeasuredWidth(), BasicMeasure.EXACTLY);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, BasicMeasure.EXACTLY);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        m2475x(view, i11, iMakeMeasureSpec, iMakeMeasureSpec2);
        interfaceC2573a.mo1700e(i11, view);
    }

    /* JADX INFO: renamed from: w */
    public void m2474w(int i10) {
        View viewMo1698c;
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) this.f3413c;
        if (i10 >= interfaceC2573a.getFlexItemCount()) {
            return;
        }
        int flexDirection = interfaceC2573a.getFlexDirection();
        if (interfaceC2573a.getAlignItems() != 4) {
            for (C2575c c2575c : interfaceC2573a.getFlexLinesInternal()) {
                ArrayList arrayList = c2575c.f7152n;
                int size = arrayList.size();
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    Integer num = (Integer) obj;
                    View viewMo1698c2 = interfaceC2573a.mo1698c(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        m2473v(viewMo1698c2, c2575c.f7145g, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            C1929i.m3029k(AbstractC0074a.m154e(flexDirection, "Invalid flex direction: "));
                            return;
                        }
                        m2472u(viewMo1698c2, c2575c.f7145g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = (int[]) this.f3415e;
        List flexLinesInternal = interfaceC2573a.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i12 = iArr != null ? iArr[i10] : 0; i12 < size2; i12++) {
            C2575c c2575c2 = (C2575c) flexLinesInternal.get(i12);
            int i13 = c2575c2.f7146h;
            for (int i14 = 0; i14 < i13; i14++) {
                int i15 = c2575c2.f7153o + i14;
                if (i14 < interfaceC2573a.getFlexItemCount() && (viewMo1698c = interfaceC2573a.mo1698c(i15)) != null && viewMo1698c.getVisibility() != 8) {
                    InterfaceC2574b interfaceC2574b = (InterfaceC2574b) viewMo1698c.getLayoutParams();
                    if (interfaceC2574b.mo4004a() == -1 || interfaceC2574b.mo4004a() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            m2473v(viewMo1698c, c2575c2.f7145g, i15);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                C1929i.m3029k(AbstractC0074a.m154e(flexDirection, "Invalid flex direction: "));
                                return;
                            }
                            m2472u(viewMo1698c, c2575c2.f7145g, i15);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: x */
    public void m2475x(View view, int i10, int i11, int i12) {
        long[] jArr = (long[]) this.f3416f;
        if (jArr != null) {
            jArr[i10] = (((long) i11) & 4294967295L) | (((long) i12) << 32);
        }
        long[] jArr2 = (long[]) this.f3417g;
        if (jArr2 != null) {
            jArr2[i10] = (((long) view.getMeasuredWidth()) & 4294967295L) | (((long) view.getMeasuredHeight()) << 32);
        }
    }

    public C1421s3(C1666a c1666a, C1496c c1496c, C1619a c1619a, C1666a c1666a2, C3720f c3720f, C1619a c1619a2, C1619a c1619a3) {
        this.f3412b = 2;
        this.f3413c = c1496c;
        this.f3414d = c1619a;
        this.f3415e = c1666a2;
        this.f3416f = c1619a2;
        this.f3417g = c1619a3;
    }

    public C1421s3(InterfaceC2573a interfaceC2573a) {
        this.f3412b = 4;
        this.f3413c = interfaceC2573a;
    }

    public /* synthetic */ C1421s3(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i10) {
        this.f3412b = i10;
        this.f3413c = obj;
        this.f3414d = obj2;
        this.f3415e = obj3;
        this.f3416f = obj4;
        this.f3417g = obj5;
    }

    public C1421s3(String str, Closeable closeable, BufferedReader bufferedReader, BufferedWriter bufferedWriter) {
        this.f3412b = 5;
        this.f3417g = new Object();
        this.f3413c = str;
        this.f3414d = closeable;
        this.f3415e = bufferedReader;
        this.f3416f = bufferedWriter;
    }
}
