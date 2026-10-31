package e0;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$MarginLayoutParams;
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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s3 implements e5.b, f2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1951b;
    public final Object c;
    public Object d;
    public Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f1952f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f1953g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s3() {
        this.f1951b = 1;
        this.c = new LinkedHashSet();
        this.d = Optional.empty();
        this.e = Optional.empty();
        this.f1952f = Optional.empty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList f(List list, int i9, int i10) {
        int i11 = (i9 - i10) / 2;
        ArrayList arrayList = new ArrayList();
        o2.c cVar = new o2.c();
        cVar.f4041g = i11;
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            if (i12 == 0) {
                arrayList.add(cVar);
            }
            arrayList.add((o2.c) list.get(i12));
            if (i12 == list.size() - 1) {
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int[] t(int i9, ArrayList arrayList, SparseIntArray sparseIntArray) {
        Collections.sort(arrayList);
        sparseIntArray.clear();
        int[] iArr = new int[i9];
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            o2.d dVar = (o2.d) obj;
            int i12 = dVar.f4052b;
            iArr[i10] = i12;
            sparseIntArray.append(i12, dVar.c);
            i10++;
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(List list, o2.c cVar, int i9, int i10) {
        cVar.f4047m = i10;
        ((o2.a) this.c).b(cVar);
        cVar.f4050p = i9;
        list.add(cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:83:0x01cd  */
    public void b(j.i iVar, int i9, int i10, int i11, int i12, int i13, List list) {
        int iH;
        o2.b bVar;
        int i14;
        boolean z8;
        int i15 = i9;
        o2.a aVar = (o2.a) this.c;
        boolean zI = aVar.i();
        int mode = View$MeasureSpec.getMode(i15);
        int size = View$MeasureSpec.getSize(i15);
        List arrayList = list == null ? new ArrayList() : list;
        iVar.c = arrayList;
        boolean z9 = i13 == -1;
        int paddingStart = zI ? aVar.getPaddingStart() : aVar.getPaddingTop();
        int paddingEnd = zI ? aVar.getPaddingEnd() : aVar.getPaddingBottom();
        int paddingTop = zI ? aVar.getPaddingTop() : aVar.getPaddingStart();
        int paddingBottom = zI ? aVar.getPaddingBottom() : aVar.getPaddingEnd();
        o2.c cVar = new o2.c();
        int i16 = i12;
        int i17 = 1;
        cVar.f4049o = i16;
        int i18 = paddingStart + paddingEnd;
        cVar.e = i18;
        int flexItemCount = aVar.getFlexItemCount();
        boolean z10 = z9;
        int i19 = Integer.MIN_VALUE;
        int iCombineMeasuredStates = 0;
        int i20 = 0;
        int i21 = 0;
        while (i16 < flexItemCount) {
            int i22 = flexItemCount;
            View viewC = aVar.c(i16);
            if (viewC != null) {
                if (viewC.getVisibility() == 8) {
                    cVar.f4043i++;
                    cVar.f4042h++;
                    if (i16 == i22 - 1 && cVar.a() != 0) {
                        a(arrayList, cVar, i16, i20);
                    }
                } else {
                    if (viewC instanceof CompoundButton) {
                        CompoundButton compoundButton = (CompoundButton) viewC;
                        o2.b bVar2 = (o2.b) compoundButton.getLayoutParams();
                        int iC = bVar2.c();
                        int iM = bVar2.m();
                        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
                        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
                        int minimumHeight = buttonDrawable == null ? 0 : buttonDrawable.getMinimumHeight();
                        if (iC == -1) {
                            iC = minimumWidth;
                        }
                        bVar2.e(iC);
                        if (iM == -1) {
                            iM = minimumHeight;
                        }
                        bVar2.i(iM);
                    }
                    o2.b bVar3 = (o2.b) viewC.getLayoutParams();
                    if (bVar3.a() == 4) {
                        cVar.f4048n.add(Integer.valueOf(i16));
                    }
                    int iD = zI ? bVar3.d() : bVar3.getHeight();
                    if (bVar3.k() != -1.0f && mode == 1073741824) {
                        iD = Math.round(bVar3.k() * size);
                    }
                    if (zI) {
                        iH = aVar.d(i15, bVar3.l() + bVar3.g() + i18, iD);
                        int iH2 = aVar.h(i10, bVar3.f() + bVar3.h() + paddingTop + paddingBottom + i20, bVar3.getHeight());
                        viewC.measure(iH, iH2);
                        x(viewC, i16, iH, iH2);
                    } else {
                        int iD2 = aVar.d(i10, bVar3.l() + bVar3.g() + paddingTop + paddingBottom + i20, bVar3.d());
                        iH = aVar.h(i15, bVar3.f() + bVar3.h() + i18, iD);
                        viewC.measure(iD2, iH);
                        x(viewC, i16, iD2, iH);
                    }
                    aVar.e(i16, viewC);
                    c(i16, viewC);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewC.getMeasuredState());
                    int i23 = cVar.e;
                    int measuredWidth = (zI ? viewC.getMeasuredWidth() : viewC.getMeasuredHeight()) + (zI ? bVar3.g() : bVar3.h()) + (zI ? bVar3.l() : bVar3.f());
                    int size2 = arrayList.size();
                    if (aVar.getFlexWrap() != 0) {
                        if (bVar3.n()) {
                            bVar = bVar3;
                        } else {
                            if (mode == 0) {
                                bVar = bVar3;
                            } else {
                                bVar = bVar3;
                                int maxLine = aVar.getMaxLine();
                                if (maxLine == -1 || maxLine > size2 + 1) {
                                    int iG = aVar.g(viewC, i16, i21);
                                    if (iG > 0) {
                                        measuredWidth += iG;
                                    }
                                    if (size < i23 + measuredWidth) {
                                    }
                                }
                            }
                            i18 = i18;
                            arrayList = arrayList;
                            cVar.f4042h += i17;
                            i21++;
                            i14 = i19;
                        }
                        if (cVar.a() > 0) {
                            arrayList = arrayList;
                            a(arrayList, cVar, i16 > 0 ? i16 - 1 : 0, i20);
                            i20 += cVar.f4041g;
                        }
                        if (zI) {
                            arrayList = arrayList;
                            if (bVar.getHeight() == -1) {
                                viewC.measure(iH, aVar.h(i10, bVar.f() + bVar.h() + aVar.getPaddingBottom() + aVar.getPaddingTop() + i20, bVar.getHeight()));
                                c(i16, viewC);
                            }
                        } else {
                            arrayList = arrayList;
                            if (bVar.d() == -1) {
                                viewC.measure(aVar.d(i10, bVar.l() + bVar.g() + aVar.getPaddingRight() + aVar.getPaddingLeft() + i20, bVar.d()), iH);
                                c(i16, viewC);
                            }
                        }
                        cVar = new o2.c();
                        cVar.f4042h = i17;
                        i18 = i18;
                        cVar.e = i18;
                        cVar.f4049o = i16;
                        i14 = Integer.MIN_VALUE;
                        i21 = 0;
                    } else {
                        bVar = bVar3;
                        i18 = i18;
                        arrayList = arrayList;
                        cVar.f4042h += i17;
                        i21++;
                        i14 = i19;
                    }
                    cVar.f4051q |= bVar.j() != 0.0f;
                    cVar.r |= bVar.b() != 0.0f;
                    int[] iArr = (int[]) this.e;
                    if (iArr != null) {
                        iArr[i16] = arrayList.size();
                    }
                    cVar.e = (zI ? viewC.getMeasuredWidth() : viewC.getMeasuredHeight()) + (zI ? bVar.g() : bVar.h()) + (zI ? bVar.l() : bVar.f()) + cVar.e;
                    cVar.f4044j = bVar.j() + cVar.f4044j;
                    cVar.f4045k = bVar.b() + cVar.f4045k;
                    aVar.a(viewC, i16, i21, cVar);
                    int iMax = Math.max(i14, aVar.j(viewC) + (zI ? viewC.getMeasuredHeight() : viewC.getMeasuredWidth()) + (zI ? bVar.h() : bVar.g()) + (zI ? bVar.f() : bVar.l()));
                    cVar.f4041g = Math.max(cVar.f4041g, iMax);
                    if (zI) {
                        int flexWrap = aVar.getFlexWrap();
                        int i24 = cVar.f4046l;
                        i19 = iMax;
                        if (flexWrap != 2) {
                            cVar.f4046l = Math.max(i24, bVar.h() + viewC.getBaseline());
                        } else {
                            cVar.f4046l = Math.max(i24, bVar.f() + (viewC.getMeasuredHeight() - viewC.getBaseline()));
                        }
                    } else {
                        i19 = iMax;
                    }
                    if (i16 == i22 - 1 && cVar.a() != 0) {
                        a(arrayList, cVar, i16, i20);
                        i20 += cVar.f4041g;
                    }
                    if (i13 != -1 && arrayList.size() > 0) {
                        i17 = 1;
                        if (((o2.c) arrayList.get(arrayList.size() - 1)).f4050p >= i13 && i16 >= i13 && !z10) {
                            i20 = -cVar.f4041g;
                            z8 = true;
                        }
                        if (i20 > i11 && z8) {
                            break;
                        }
                    } else {
                        i17 = 1;
                    }
                    z8 = z10;
                    if (i20 > i11) {
                        continue;
                    }
                }
                i16++;
                i15 = i9;
                z10 = z8;
                flexItemCount = i22;
            } else if (i16 == i22 - 1 && cVar.a() != 0) {
                a(arrayList, cVar, i16, i20);
            }
            z8 = z10;
            i16++;
            i15 = i9;
            z10 = z8;
            flexItemCount = i22;
        }
        iVar.f2793b = iCombineMeasuredStates;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    public void c(int i9, View view) {
        boolean z8;
        o2.b bVar = (o2.b) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z9 = true;
        if (measuredWidth >= bVar.c()) {
            if (measuredWidth > bVar.p()) {
                measuredWidth = bVar.p();
            } else {
                z8 = false;
            }
            if (measuredHeight < bVar.m()) {
                measuredHeight = bVar.m();
            } else if (measuredHeight > bVar.o()) {
                measuredHeight = bVar.o();
            } else {
                z9 = z8;
            }
            if (z9) {
                int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(measuredWidth, BasicMeasure.EXACTLY);
                int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(measuredHeight, BasicMeasure.EXACTLY);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                x(view, i9, iMakeMeasureSpec, iMakeMeasureSpec2);
                ((o2.a) this.c).e(i9, view);
            }
        }
        measuredWidth = bVar.c();
        z8 = true;
        if (measuredHeight < bVar.m()) {
            measuredHeight = bVar.m();
        } else if (measuredHeight > bVar.o()) {
            measuredHeight = bVar.o();
        } else {
            z9 = z8;
        }
        if (z9) {
            int iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(measuredWidth, BasicMeasure.EXACTLY);
            int iMakeMeasureSpec4 = View$MeasureSpec.makeMeasureSpec(measuredHeight, BasicMeasure.EXACTLY);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            x(view, i9, iMakeMeasureSpec3, iMakeMeasureSpec4);
            ((o2.a) this.c).e(i9, view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(int i9, List list) {
        int i10 = ((int[]) this.e)[i9];
        if (i10 == -1) {
            i10 = 0;
        }
        if (list.size() > i10) {
            list.subList(i10, list.size()).clear();
        }
        int[] iArr = (int[]) this.e;
        int length = iArr.length - 1;
        if (i9 > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i9, length, -1);
        }
        long[] jArr = (long[]) this.f1952f;
        int length2 = jArr.length - 1;
        if (i9 > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i9, length2, 0L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void e() {
        TransportService.b((Closeable) this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList g(int i9) {
        ArrayList arrayList = new ArrayList(i9);
        for (int i10 = 0; i10 < i9; i10++) {
            o2.b bVar = (o2.b) ((o2.a) this.c).f(i10).getLayoutParams();
            o2.d dVar = new o2.d();
            dVar.c = bVar.getOrder();
            dVar.f4052b = i10;
            arrayList.add(dVar);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public Object get() {
        switch (this.f1951b) {
            case 2:
                a2.c cVar = (a2.c) ((e5.c) this.c).c;
                ((g5.a) this.d).get();
                ((h5.a) this.e).get();
                ((g5.a) this.f1952f).get();
                Executor executor = (Executor) ((g5.a) this.f1953g).get();
                a2.a aVar = new a2.a("proto");
                Set set = ((d2.r) cVar).f1694a;
                if (set.contains(aVar)) {
                    return new f5.v(executor);
                }
                n0.b.v("%s is not supported byt this factory. Supported encodings are: %s.", new Object[]{aVar, set});
                return null;
            default:
                Executor executor2 = (Executor) ((t8.a) this.c).get();
                ((a5.h) this.e).get();
                return new i2.a(executor2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void h(int i9, int i10, int i11) {
        int mode;
        int size;
        o2.a aVar = (o2.a) this.c;
        int flexDirection = aVar.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            mode = View$MeasureSpec.getMode(i10);
            size = View$MeasureSpec.getSize(i10);
        } else if (flexDirection != 2 && flexDirection != 3) {
            j1.i.k(ai.onnxruntime.a.e(flexDirection, "Invalid flex direction: "));
            return;
        } else {
            mode = View$MeasureSpec.getMode(i9);
            size = View$MeasureSpec.getSize(i9);
        }
        List<o2.c> flexLinesInternal = aVar.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = aVar.getSumOfCrossSize() + i11;
            int i12 = 0;
            if (flexLinesInternal.size() == 1) {
                ((o2.c) flexLinesInternal.get(0)).f4041g = size - i11;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = aVar.getAlignContent();
                if (alignContent == 1) {
                    o2.c cVar = new o2.c();
                    cVar.f4041g = size - sumOfCrossSize;
                    flexLinesInternal.add(0, cVar);
                    return;
                }
                if (alignContent == 2) {
                    aVar.setFlexLines(f(flexLinesInternal, size, sumOfCrossSize));
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
                    while (i12 < size3) {
                        arrayList.add((o2.c) flexLinesInternal.get(i12));
                        if (i12 != flexLinesInternal.size() - 1) {
                            o2.c cVar2 = new o2.c();
                            if (i12 == flexLinesInternal.size() - 2) {
                                cVar2.f4041g = Math.round(f8 + size2);
                                f8 = 0.0f;
                            } else {
                                cVar2.f4041g = Math.round(size2);
                            }
                            int i13 = cVar2.f4041g;
                            float f9 = (size2 - i13) + f8;
                            if (f9 > 1.0f) {
                                cVar2.f4041g = i13 + 1;
                                f9 -= 1.0f;
                            } else if (f9 < -1.0f) {
                                cVar2.f4041g = i13 - 1;
                                f9 += 1.0f;
                            }
                            f8 = f9;
                            arrayList.add(cVar2);
                        }
                        i12++;
                    }
                    aVar.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        aVar.setFlexLines(f(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size4 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    o2.c cVar3 = new o2.c();
                    cVar3.f4041g = size4;
                    for (o2.c cVar4 : flexLinesInternal) {
                        arrayList2.add(cVar3);
                        arrayList2.add(cVar4);
                        arrayList2.add(cVar3);
                    }
                    aVar.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size5 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f10 = 0.0f;
                    while (i12 < size6) {
                        o2.c cVar5 = (o2.c) flexLinesInternal.get(i12);
                        float f11 = cVar5.f4041g + size5;
                        if (i12 == flexLinesInternal.size() - 1) {
                            f11 += f10;
                            f10 = 0.0f;
                        }
                        int iRound = Math.round(f11);
                        float f12 = (f11 - iRound) + f10;
                        if (f12 > 1.0f) {
                            iRound++;
                            f12 -= 1.0f;
                        } else if (f12 < -1.0f) {
                            iRound--;
                            f12 += 1.0f;
                        }
                        f10 = f12;
                        cVar5.f4041g = iRound;
                        i12++;
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void i(int i9, int i10, int i11) {
        int size;
        int paddingLeft;
        int paddingRight;
        int i12;
        int i13;
        o2.a aVar = (o2.a) this.c;
        int flexItemCount = aVar.getFlexItemCount();
        boolean[] zArr = (boolean[]) this.d;
        if (zArr == null) {
            this.d = new boolean[Math.max(flexItemCount, 10)];
        } else if (zArr.length < flexItemCount) {
            this.d = new boolean[Math.max(zArr.length * 2, flexItemCount)];
        } else {
            Arrays.fill(zArr, false);
        }
        if (i11 >= aVar.getFlexItemCount()) {
            return;
        }
        int flexDirection = aVar.getFlexDirection();
        int flexDirection2 = aVar.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View$MeasureSpec.getMode(i9);
            size = View$MeasureSpec.getSize(i9);
            int largestMainSize = aVar.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = aVar.getPaddingLeft();
            paddingRight = aVar.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                j1.i.k(ai.onnxruntime.a.e(flexDirection, "Invalid flex direction: "));
                return;
            }
            int mode2 = View$MeasureSpec.getMode(i10);
            size = View$MeasureSpec.getSize(i10);
            if (mode2 != 1073741824) {
                size = aVar.getLargestMainSize();
            }
            paddingLeft = aVar.getPaddingTop();
            paddingRight = aVar.getPaddingBottom();
        }
        int i14 = paddingRight + paddingLeft;
        int i15 = size;
        int[] iArr = (int[]) this.e;
        int i16 = iArr != null ? iArr[i11] : 0;
        List flexLinesInternal = aVar.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        while (i16 < size2) {
            o2.c cVar = (o2.c) flexLinesInternal.get(i16);
            int i17 = cVar.e;
            if (i17 >= i15 || !cVar.f4051q) {
                i12 = i9;
                i13 = i10;
                if (i17 > i15 && cVar.r) {
                    s(i12, i13, cVar, i15, i14, false);
                }
            } else {
                i12 = i9;
                i13 = i10;
                m(i12, i13, cVar, i15, i14, false);
            }
            i16++;
            i9 = i12;
            i10 = i13;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void j(int i9) {
        int[] iArr = (int[]) this.e;
        if (iArr == null) {
            this.e = new int[Math.max(i9, 10)];
        } else if (iArr.length < i9) {
            this.e = Arrays.copyOf((int[]) this.e, Math.max(iArr.length * 2, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void k(int i9) {
        long[] jArr = (long[]) this.f1952f;
        if (jArr == null) {
            this.f1952f = new long[Math.max(i9, 10)];
        } else if (jArr.length < i9) {
            this.f1952f = Arrays.copyOf((long[]) this.f1952f, Math.max(jArr.length * 2, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void l(int i9) {
        long[] jArr = (long[]) this.f1953g;
        if (jArr == null) {
            this.f1953g = new long[Math.max(i9, 10)];
        } else if (jArr.length < i9) {
            this.f1953g = Arrays.copyOf((long[]) this.f1953g, Math.max(jArr.length * 2, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void m(int i9, int i10, o2.c cVar, int i11, int i12, boolean z8) {
        int i13;
        float f8;
        int iMax;
        double d;
        double d9;
        o2.a aVar = (o2.a) this.c;
        float f9 = cVar.f4044j;
        float f10 = 0.0f;
        if (f9 <= 0.0f || i11 < (i13 = cVar.e)) {
            return;
        }
        float f11 = (i11 - i13) / f9;
        cVar.e = i12 + cVar.f4040f;
        if (!z8) {
            cVar.f4041g = Integer.MIN_VALUE;
        }
        int i14 = 0;
        boolean z9 = false;
        int i15 = 0;
        float f12 = 0.0f;
        while (i14 < cVar.f4042h) {
            int i16 = cVar.f4049o + i14;
            View viewC = aVar.c(i16);
            if (viewC == null || viewC.getVisibility() == 8) {
                f8 = f10;
                f11 = f11;
                z9 = z9;
            } else {
                o2.b bVar = (o2.b) viewC.getLayoutParams();
                int flexDirection = aVar.getFlexDirection();
                f8 = f10;
                if (flexDirection == 0 || flexDirection == 1) {
                    f11 = f11;
                    boolean z10 = z9;
                    int measuredWidth = viewC.getMeasuredWidth();
                    long[] jArr = (long[]) this.f1953g;
                    if (jArr != null) {
                        measuredWidth = (int) jArr[i16];
                    }
                    int measuredHeight = viewC.getMeasuredHeight();
                    long[] jArr2 = (long[]) this.f1953g;
                    if (jArr2 != null) {
                        measuredHeight = (int) (jArr2[i16] >> 32);
                    }
                    if (((boolean[]) this.d)[i16] || bVar.j() <= f8) {
                        z9 = z10;
                    } else {
                        float fJ = (bVar.j() * f11) + measuredWidth;
                        if (i14 == cVar.f4042h - 1) {
                            fJ += f12;
                            f12 = f8;
                        }
                        int iRound = Math.round(fJ);
                        if (iRound > bVar.p()) {
                            iRound = bVar.p();
                            ((boolean[]) this.d)[i16] = true;
                            cVar.f4044j -= bVar.j();
                            z9 = true;
                        } else {
                            float f13 = (fJ - iRound) + f12;
                            double d10 = f13;
                            if (d10 > 1.0d) {
                                iRound++;
                                d = d10 - 1.0d;
                            } else {
                                if (d10 < -1.0d) {
                                    iRound--;
                                    d = d10 + 1.0d;
                                }
                                f12 = f13;
                                z9 = z10;
                            }
                            f13 = (float) d;
                            f12 = f13;
                            z9 = z10;
                        }
                        int iN = n(i10, bVar, cVar.f4047m);
                        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(iRound, BasicMeasure.EXACTLY);
                        viewC.measure(iMakeMeasureSpec, iN);
                        int measuredWidth2 = viewC.getMeasuredWidth();
                        int measuredHeight2 = viewC.getMeasuredHeight();
                        x(viewC, i16, iMakeMeasureSpec, iN);
                        aVar.e(i16, viewC);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i15, aVar.j(viewC) + bVar.f() + bVar.h() + measuredHeight);
                    cVar.e = bVar.l() + bVar.g() + measuredWidth + cVar.e;
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewC.getMeasuredHeight();
                    long[] jArr3 = (long[]) this.f1953g;
                    if (jArr3 != null) {
                        measuredHeight3 = (int) (jArr3[i16] >> 32);
                    }
                    int measuredWidth3 = viewC.getMeasuredWidth();
                    long[] jArr4 = (long[]) this.f1953g;
                    if (jArr4 != null) {
                        measuredWidth3 = (int) jArr4[i16];
                    }
                    if (((boolean[]) this.d)[i16] || bVar.j() <= f8) {
                        f11 = f11;
                        z9 = z9;
                    } else {
                        float fJ2 = (bVar.j() * f11) + measuredHeight3;
                        if (i14 == cVar.f4042h - 1) {
                            fJ2 += f12;
                            f12 = f8;
                        }
                        int iRound2 = Math.round(fJ2);
                        if (iRound2 > bVar.o()) {
                            iRound2 = bVar.o();
                            ((boolean[]) this.d)[i16] = true;
                            cVar.f4044j -= bVar.j();
                            z9 = true;
                        } else {
                            float f14 = (fJ2 - iRound2) + f12;
                            boolean z11 = z9;
                            double d11 = f14;
                            if (d11 > 1.0d) {
                                iRound2++;
                                d9 = d11 - 1.0d;
                            } else {
                                if (d11 < -1.0d) {
                                    iRound2--;
                                    d9 = d11 + 1.0d;
                                }
                                f12 = f14;
                                z9 = z11;
                            }
                            f14 = (float) d9;
                            f12 = f14;
                            z9 = z11;
                        }
                        int iO = o(i9, bVar, cVar.f4047m);
                        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(iRound2, BasicMeasure.EXACTLY);
                        viewC.measure(iO, iMakeMeasureSpec2);
                        int measuredWidth4 = viewC.getMeasuredWidth();
                        int measuredHeight4 = viewC.getMeasuredHeight();
                        x(viewC, i16, iO, iMakeMeasureSpec2);
                        aVar.e(i16, viewC);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i15, aVar.j(viewC) + bVar.l() + bVar.g() + measuredWidth3);
                    cVar.e = bVar.f() + bVar.h() + measuredHeight3 + cVar.e;
                }
                cVar.f4041g = Math.max(cVar.f4041g, iMax);
                i15 = iMax;
            }
            i14++;
            f10 = f8;
            f11 = f11;
        }
        if (!z9 || i13 == cVar.e) {
            return;
        }
        m(i9, i10, cVar, i11, i12, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int n(int i9, o2.b bVar, int i10) {
        o2.a aVar = (o2.a) this.c;
        int iH = aVar.h(i9, bVar.f() + bVar.h() + aVar.getPaddingBottom() + aVar.getPaddingTop() + i10, bVar.getHeight());
        int size = View$MeasureSpec.getSize(iH);
        if (size > bVar.o()) {
            return View$MeasureSpec.makeMeasureSpec(bVar.o(), View$MeasureSpec.getMode(iH));
        }
        return size < bVar.m() ? View$MeasureSpec.makeMeasureSpec(bVar.m(), View$MeasureSpec.getMode(iH)) : iH;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int o(int i9, o2.b bVar, int i10) {
        o2.a aVar = (o2.a) this.c;
        int iD = aVar.d(i9, bVar.l() + bVar.g() + aVar.getPaddingRight() + aVar.getPaddingLeft() + i10, bVar.d());
        int size = View$MeasureSpec.getSize(iD);
        if (size > bVar.p()) {
            return View$MeasureSpec.makeMeasureSpec(bVar.p(), View$MeasureSpec.getMode(iD));
        }
        return size < bVar.c() ? View$MeasureSpec.makeMeasureSpec(bVar.c(), View$MeasureSpec.getMode(iD)) : iD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void p(View view, o2.c cVar, int i9, int i10, int i11, int i12) {
        o2.b bVar = (o2.b) view.getLayoutParams();
        o2.a aVar = (o2.a) this.c;
        int alignItems = aVar.getAlignItems();
        if (bVar.a() != -1) {
            alignItems = bVar.a();
        }
        int i13 = cVar.f4041g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (aVar.getFlexWrap() != 2) {
                    int i14 = i10 + i13;
                    view.layout(i9, (i14 - view.getMeasuredHeight()) - bVar.f(), i11, i14 - bVar.f());
                    return;
                }
                view.layout(i9, bVar.h() + view.getMeasuredHeight() + (i10 - i13), i11, bVar.h() + view.getMeasuredHeight() + (i12 - i13));
                return;
            }
            if (alignItems == 2) {
                int iH = ((bVar.h() + (i13 - view.getMeasuredHeight())) - bVar.f()) / 2;
                if (aVar.getFlexWrap() != 2) {
                    int i15 = i10 + iH;
                    view.layout(i9, i15, i11, view.getMeasuredHeight() + i15);
                    return;
                } else {
                    int i16 = i10 - iH;
                    view.layout(i9, i16, i11, view.getMeasuredHeight() + i16);
                    return;
                }
            }
            if (alignItems == 3) {
                int flexWrap = aVar.getFlexWrap();
                int i17 = cVar.f4046l;
                if (flexWrap != 2) {
                    int iMax = Math.max(i17 - view.getBaseline(), bVar.h());
                    view.layout(i9, i10 + iMax, i11, i12 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max(view.getBaseline() + (i17 - view.getMeasuredHeight()), bVar.f());
                    view.layout(i9, i10 - iMax2, i11, i12 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (aVar.getFlexWrap() != 2) {
            view.layout(i9, bVar.h() + i10, i11, bVar.h() + i12);
        } else {
            view.layout(i9, i10 - bVar.f(), i11, i12 - bVar.f());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void q(View view, o2.c cVar, boolean z8, int i9, int i10, int i11, int i12) {
        o2.b bVar = (o2.b) view.getLayoutParams();
        int alignItems = ((o2.a) this.c).getAlignItems();
        if (bVar.a() != -1) {
            alignItems = bVar.a();
        }
        int i13 = cVar.f4041g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z8) {
                    view.layout(((i9 + i13) - view.getMeasuredWidth()) - bVar.l(), i10, ((i11 + i13) - view.getMeasuredWidth()) - bVar.l(), i12);
                    return;
                }
                view.layout(bVar.g() + view.getMeasuredWidth() + (i9 - i13), i10, bVar.g() + view.getMeasuredWidth() + (i11 - i13), i12);
                return;
            }
            if (alignItems == 2) {
                ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) view.getLayoutParams();
                int marginStart = ((MarginLayoutParamsCompat.getMarginStart(viewGroup$MarginLayoutParams) + (i13 - view.getMeasuredWidth())) - MarginLayoutParamsCompat.getMarginEnd(viewGroup$MarginLayoutParams)) / 2;
                if (z8) {
                    view.layout(i9 - marginStart, i10, i11 - marginStart, i12);
                    return;
                } else {
                    view.layout(i9 + marginStart, i10, i11 + marginStart, i12);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (z8) {
            view.layout(i9 - bVar.l(), i10, i11 - bVar.l(), i12);
        } else {
            view.layout(bVar.g() + i9, i10, bVar.g() + i11, i12);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void r(String str) {
        synchronized (this.f1953g) {
            ((BufferedWriter) this.f1952f).write(str);
            ((BufferedWriter) this.f1952f).newLine();
            ((BufferedWriter) this.f1952f).flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void s(int i9, int i10, o2.c cVar, int i11, int i12, boolean z8) {
        float f8;
        boolean z9;
        int iMax;
        boolean z10;
        int iM;
        float f9;
        o2.a aVar = (o2.a) this.c;
        int i13 = cVar.e;
        float f10 = cVar.f4045k;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i11 > i13) {
            return;
        }
        float f12 = (i13 - i11) / f10;
        cVar.e = i12 + cVar.f4040f;
        if (!z8) {
            cVar.f4041g = Integer.MIN_VALUE;
        }
        int i14 = 0;
        boolean z11 = false;
        int i15 = 0;
        float f13 = 0.0f;
        while (i14 < cVar.f4042h) {
            int i16 = cVar.f4049o + i14;
            View viewC = aVar.c(i16);
            if (viewC == null || viewC.getVisibility() == 8) {
                f8 = f11;
                f12 = f12;
                z9 = z11;
                i14 = i14;
            } else {
                o2.b bVar = (o2.b) viewC.getLayoutParams();
                int flexDirection = aVar.getFlexDirection();
                f8 = f11;
                if (flexDirection == 0 || flexDirection == 1) {
                    f12 = f12;
                    z9 = z11;
                    int measuredWidth = viewC.getMeasuredWidth();
                    long[] jArr = (long[]) this.f1953g;
                    if (jArr != null) {
                        measuredWidth = (int) jArr[i16];
                    }
                    int measuredHeight = viewC.getMeasuredHeight();
                    long[] jArr2 = (long[]) this.f1953g;
                    if (jArr2 != null) {
                        measuredHeight = (int) (jArr2[i16] >> 32);
                    }
                    if (((boolean[]) this.d)[i16] || bVar.b() <= f8) {
                        i14 = i14;
                    } else {
                        float fB = measuredWidth - (bVar.b() * f12);
                        if (i14 == cVar.f4042h - 1) {
                            fB += f13;
                            f13 = f8;
                        }
                        int iRound = Math.round(fB);
                        if (iRound < bVar.c()) {
                            iRound = bVar.c();
                            ((boolean[]) this.d)[i16] = true;
                            cVar.f4045k -= bVar.b();
                            z9 = true;
                        } else {
                            float f14 = (fB - iRound) + f13;
                            double d = f14;
                            if (d > 1.0d) {
                                iRound++;
                                f14 -= 1.0f;
                            } else if (d < -1.0d) {
                                iRound--;
                                f14 += 1.0f;
                            }
                            f13 = f14;
                        }
                        int iN = n(i10, bVar, cVar.f4047m);
                        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(iRound, BasicMeasure.EXACTLY);
                        viewC.measure(iMakeMeasureSpec, iN);
                        int measuredWidth2 = viewC.getMeasuredWidth();
                        int measuredHeight2 = viewC.getMeasuredHeight();
                        x(viewC, i16, iMakeMeasureSpec, iN);
                        aVar.e(i16, viewC);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i15, aVar.j(viewC) + bVar.f() + bVar.h() + measuredHeight);
                    cVar.e = bVar.l() + bVar.g() + measuredWidth + cVar.e;
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewC.getMeasuredHeight();
                    long[] jArr3 = (long[]) this.f1953g;
                    if (jArr3 != null) {
                        measuredHeight3 = (int) (jArr3[i16] >> 32);
                    }
                    int measuredWidth3 = viewC.getMeasuredWidth();
                    long[] jArr4 = (long[]) this.f1953g;
                    if (jArr4 != null) {
                        measuredWidth3 = (int) jArr4[i16];
                    }
                    if (((boolean[]) this.d)[i16] || bVar.b() <= f8) {
                        z10 = z11;
                    } else {
                        float fB2 = measuredHeight3 - (bVar.b() * f12);
                        if (i14 == cVar.f4042h - 1) {
                            fB2 += f13;
                            f13 = f8;
                        }
                        int iRound2 = Math.round(fB2);
                        if (iRound2 < bVar.m()) {
                            iM = bVar.m();
                            ((boolean[]) this.d)[i16] = true;
                            cVar.f4045k -= bVar.b();
                            z10 = true;
                        } else {
                            float f15 = (fB2 - iRound2) + f13;
                            boolean z12 = z11;
                            double d9 = f15;
                            if (d9 > 1.0d) {
                                iM = iRound2 + 1;
                                f9 = f15 - 1.0f;
                            } else if (d9 < -1.0d) {
                                iM = iRound2 - 1;
                                f9 = f15 + 1.0f;
                            } else {
                                iM = iRound2;
                                z10 = z12;
                                f13 = f15;
                            }
                            f13 = f9;
                            z10 = z12;
                        }
                        int iO = o(i9, bVar, cVar.f4047m);
                        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(iM, BasicMeasure.EXACTLY);
                        viewC.measure(iO, iMakeMeasureSpec2);
                        int measuredWidth4 = viewC.getMeasuredWidth();
                        int measuredHeight4 = viewC.getMeasuredHeight();
                        x(viewC, i16, iO, iMakeMeasureSpec2);
                        aVar.e(i16, viewC);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i15, aVar.j(viewC) + bVar.l() + bVar.g() + measuredWidth3);
                    cVar.e = bVar.f() + bVar.h() + measuredHeight3 + cVar.e;
                    z9 = z10;
                    i14 = i14;
                }
                cVar.f4041g = Math.max(cVar.f4041g, iMax);
                i15 = iMax;
            }
            i14++;
            f11 = f8;
            z11 = z9;
            f12 = f12;
        }
        if (!z11 || i13 == cVar.e) {
            return;
        }
        s(i9, i10, cVar, i11, i12, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void u(View view, int i9, int i10) {
        o2.b bVar = (o2.b) view.getLayoutParams();
        int iG = (i9 - bVar.g()) - bVar.l();
        o2.a aVar = (o2.a) this.c;
        int iMin = Math.min(Math.max(iG - aVar.j(view), bVar.c()), bVar.p());
        long[] jArr = (long[]) this.f1953g;
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(jArr != null ? (int) (jArr[i10] >> 32) : view.getMeasuredHeight(), BasicMeasure.EXACTLY);
        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(iMin, BasicMeasure.EXACTLY);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        x(view, i10, iMakeMeasureSpec2, iMakeMeasureSpec);
        aVar.e(i10, view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void v(View view, int i9, int i10) {
        o2.b bVar = (o2.b) view.getLayoutParams();
        int iH = (i9 - bVar.h()) - bVar.f();
        o2.a aVar = (o2.a) this.c;
        int iMin = Math.min(Math.max(iH - aVar.j(view), bVar.m()), bVar.o());
        long[] jArr = (long[]) this.f1953g;
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(jArr != null ? (int) jArr[i10] : view.getMeasuredWidth(), BasicMeasure.EXACTLY);
        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(iMin, BasicMeasure.EXACTLY);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        x(view, i10, iMakeMeasureSpec, iMakeMeasureSpec2);
        aVar.e(i10, view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void w(int i9) {
        View viewC;
        o2.a aVar = (o2.a) this.c;
        if (i9 >= aVar.getFlexItemCount()) {
            return;
        }
        int flexDirection = aVar.getFlexDirection();
        if (aVar.getAlignItems() != 4) {
            for (o2.c cVar : aVar.getFlexLinesInternal()) {
                ArrayList arrayList = cVar.f4048n;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    Integer num = (Integer) obj;
                    View viewC2 = aVar.c(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        v(viewC2, cVar.f4041g, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            j1.i.k(ai.onnxruntime.a.e(flexDirection, "Invalid flex direction: "));
                            return;
                        }
                        u(viewC2, cVar.f4041g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = (int[]) this.e;
        List flexLinesInternal = aVar.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i11 = iArr != null ? iArr[i9] : 0; i11 < size2; i11++) {
            o2.c cVar2 = (o2.c) flexLinesInternal.get(i11);
            int i12 = cVar2.f4042h;
            for (int i13 = 0; i13 < i12; i13++) {
                int i14 = cVar2.f4049o + i13;
                if (i13 < aVar.getFlexItemCount() && (viewC = aVar.c(i14)) != null && viewC.getVisibility() != 8) {
                    o2.b bVar = (o2.b) viewC.getLayoutParams();
                    if (bVar.a() == -1 || bVar.a() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            v(viewC, cVar2.f4041g, i14);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                j1.i.k(ai.onnxruntime.a.e(flexDirection, "Invalid flex direction: "));
                                return;
                            }
                            u(viewC, cVar2.f4041g, i14);
                        }
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void x(View view, int i9, int i10, int i11) {
        long[] jArr = (long[]) this.f1952f;
        if (jArr != null) {
            jArr[i9] = (((long) i10) & 4294967295L) | (((long) i11) << 32);
        }
        long[] jArr2 = (long[]) this.f1953g;
        if (jArr2 != null) {
            jArr2[i9] = (((long) view.getMeasuredWidth()) & 4294967295L) | (((long) view.getMeasuredHeight()) << 32);
        }
    }

    public s3(h5.a aVar, e5.c cVar, g5.a aVar2, h5.a aVar3, z3.f fVar, g5.a aVar4, g5.a aVar5) {
        this.f1951b = 2;
        this.c = cVar;
        this.d = aVar2;
        this.e = aVar3;
        this.f1952f = aVar4;
        this.f1953g = aVar5;
    }

    public s3(o2.a aVar) {
        this.f1951b = 4;
        this.c = aVar;
    }

    public /* synthetic */ s3(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i9) {
        this.f1951b = i9;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f1952f = obj4;
        this.f1953g = obj5;
    }

    public s3(String str, Closeable closeable, BufferedReader bufferedReader, BufferedWriter bufferedWriter) {
        this.f1951b = 5;
        this.f1953g = new Object();
        this.c = str;
        this.d = closeable;
        this.e = bufferedReader;
        this.f1952f = bufferedWriter;
    }
}
