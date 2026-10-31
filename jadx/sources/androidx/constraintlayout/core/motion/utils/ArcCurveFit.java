package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_ABOVE = 5;
    public static final int ARC_BELOW = 4;
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;
    private static final int DOWN_ARC = 4;
    private static final int START_HORIZONTAL = 2;
    private static final int START_LINEAR = 3;
    private static final int START_VERTICAL = 1;
    private static final int UP_ARC = 5;
    Arc[] mArcs;
    private boolean mExtrapolate = true;
    private final double[] mTime;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Arc {
        private static final double EPSILON = 0.001d;
        private static final String TAG = "Arc";
        private static double[] sOurPercent = new double[91];
        double mArcDistance;
        double mArcVelocity;
        double mEllipseA;
        double mEllipseB;
        double mEllipseCenterX;
        double mEllipseCenterY;
        boolean mLinear;
        double[] mLut;
        double mOneOverDeltaTime;
        double mTime1;
        double mTime2;
        double mTmpCosAngle;
        double mTmpSinAngle;
        boolean mVertical;
        double mX1;
        double mX2;
        double mY1;
        double mY2;

        public Arc(int i10, double d, double d10, double d11, double d12, double d13, double d14) {
            this.mLinear = false;
            double d15 = d13 - d11;
            double d16 = d14 - d12;
            if (i10 == 1) {
                this.mVertical = true;
            } else if (i10 == 4) {
                this.mVertical = d16 > 0.0d;
            } else if (i10 != 5) {
                this.mVertical = false;
            } else {
                this.mVertical = d16 < 0.0d;
            }
            this.mTime1 = d;
            this.mTime2 = d10;
            this.mOneOverDeltaTime = 1.0d / (d10 - d);
            if (3 == i10) {
                this.mLinear = true;
            }
            if (!this.mLinear && Math.abs(d15) >= EPSILON && Math.abs(d16) >= EPSILON) {
                this.mLut = new double[TypedValues.TYPE_TARGET];
                boolean z9 = this.mVertical;
                this.mEllipseA = d15 * ((double) (z9 ? -1 : 1));
                this.mEllipseB = d16 * ((double) (z9 ? 1 : -1));
                this.mEllipseCenterX = z9 ? d13 : d11;
                this.mEllipseCenterY = z9 ? d12 : d14;
                buildTable(d11, d12, d13, d14);
                this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
                return;
            }
            this.mLinear = true;
            this.mX1 = d11;
            this.mX2 = d13;
            this.mY1 = d12;
            this.mY2 = d14;
            double dHypot = Math.hypot(d16, d15);
            this.mArcDistance = dHypot;
            this.mArcVelocity = dHypot * this.mOneOverDeltaTime;
            double d17 = this.mTime2;
            double d18 = this.mTime1;
            this.mEllipseCenterX = d15 / (d17 - d18);
            this.mEllipseCenterY = d16 / (d17 - d18);
        }

        private void buildTable(double d, double d10, double d11, double d12) {
            double d13 = d11 - d;
            double d14 = d10 - d12;
            int i10 = 0;
            double dHypot = 0.0d;
            double d15 = 0.0d;
            double d16 = 0.0d;
            while (true) {
                double[] dArr = sOurPercent;
                if (i10 >= dArr.length) {
                    break;
                }
                int i11 = i10;
                double radians = Math.toRadians((((double) i10) * 90.0d) / ((double) (dArr.length - 1)));
                double dSin = Math.sin(radians) * d13;
                double dCos = Math.cos(radians) * d14;
                if (i11 > 0) {
                    dHypot += Math.hypot(dSin - d15, dCos - d16);
                    sOurPercent[i11] = dHypot;
                }
                i10 = i11 + 1;
                d15 = dSin;
                d16 = dCos;
            }
            this.mArcDistance = dHypot;
            int i12 = 0;
            while (true) {
                double[] dArr2 = sOurPercent;
                if (i12 >= dArr2.length) {
                    break;
                }
                dArr2[i12] = dArr2[i12] / dHypot;
                i12++;
            }
            int i13 = 0;
            while (true) {
                double[] dArr3 = this.mLut;
                if (i13 >= dArr3.length) {
                    return;
                }
                double length = ((double) i13) / ((double) (dArr3.length - 1));
                int iBinarySearch = Arrays.binarySearch(sOurPercent, length);
                if (iBinarySearch >= 0) {
                    this.mLut[i13] = ((double) iBinarySearch) / ((double) (sOurPercent.length - 1));
                } else if (iBinarySearch == -1) {
                    this.mLut[i13] = 0.0d;
                } else {
                    int i14 = -iBinarySearch;
                    int i15 = i14 - 2;
                    double[] dArr4 = sOurPercent;
                    double d17 = dArr4[i15];
                    this.mLut[i13] = (((length - d17) / (dArr4[i14 - 1] - d17)) + ((double) i15)) / ((double) (dArr4.length - 1));
                }
                i13++;
            }
        }

        public double getDX() {
            double d = this.mEllipseA * this.mTmpCosAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d, (-this.mEllipseB) * this.mTmpSinAngle);
            return this.mVertical ? (-d) * dHypot : d * dHypot;
        }

        public double getDY() {
            double d = this.mEllipseA * this.mTmpCosAngle;
            double d10 = (-this.mEllipseB) * this.mTmpSinAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d, d10);
            return this.mVertical ? (-d10) * dHypot : d10 * dHypot;
        }

        public double getLinearDX(double d) {
            return this.mEllipseCenterX;
        }

        public double getLinearDY(double d) {
            return this.mEllipseCenterY;
        }

        public double getLinearX(double d) {
            double d10 = (d - this.mTime1) * this.mOneOverDeltaTime;
            double d11 = this.mX1;
            return ((this.mX2 - d11) * d10) + d11;
        }

        public double getLinearY(double d) {
            double d10 = (d - this.mTime1) * this.mOneOverDeltaTime;
            double d11 = this.mY1;
            return ((this.mY2 - d11) * d10) + d11;
        }

        public double getX() {
            return (this.mEllipseA * this.mTmpSinAngle) + this.mEllipseCenterX;
        }

        public double getY() {
            return (this.mEllipseB * this.mTmpCosAngle) + this.mEllipseCenterY;
        }

        public double lookup(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.mLut;
            double length = d * ((double) (dArr.length - 1));
            int i10 = (int) length;
            double d10 = length - ((double) i10);
            double d11 = dArr[i10];
            return ((dArr[i10 + 1] - d11) * d10) + d11;
        }

        public void setPoint(double d) {
            double dLookup = lookup((this.mVertical ? this.mTime2 - d : d - this.mTime1) * this.mOneOverDeltaTime) * 1.5707963267948966d;
            this.mTmpSinAngle = Math.sin(dLookup);
            this.mTmpCosAngle = Math.cos(dLookup);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.mTime = dArr;
        this.mArcs = new Arc[dArr.length - 1];
        int i10 = 1;
        int i11 = 1;
        int i12 = 0;
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (i12 >= arcArr.length) {
                return;
            }
            int i13 = iArr[i12];
            int i14 = 3;
            if (i13 != 0) {
                if (i13 == 1) {
                    i10 = 1;
                    i14 = i10;
                } else {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            i14 = 4;
                            if (i13 != 4) {
                                i14 = 5;
                                if (i13 != 5) {
                                    i14 = i11;
                                }
                            }
                        } else {
                            if (i10 != 1) {
                                i10 = 1;
                            }
                            i14 = i10;
                        }
                    }
                    i10 = 2;
                    i14 = i10;
                }
            }
            double d = dArr[i12];
            int i15 = i12 + 1;
            double d10 = dArr[i15];
            double[] dArr3 = dArr2[i12];
            double d11 = dArr3[0];
            double d12 = dArr3[1];
            double[] dArr4 = dArr2[i15];
            arcArr[i12] = new Arc(i14, d, d10, d11, d12, dArr4[0], dArr4[1]);
            i12 = i15;
            i11 = i14;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        boolean z9 = this.mExtrapolate;
        Arc[] arcArr = this.mArcs;
        if (z9) {
            Arc arc = arcArr[0];
            double d10 = arc.mTime1;
            if (d < d10) {
                double d11 = d - d10;
                if (arc.mLinear) {
                    dArr[0] = (this.mArcs[0].getLinearDX(d10) * d11) + arc.getLinearX(d10);
                    dArr[1] = (d11 * this.mArcs[0].getLinearDY(d10)) + this.mArcs[0].getLinearY(d10);
                    return;
                }
                arc.setPoint(d10);
                dArr[0] = (this.mArcs[0].getDX() * d11) + this.mArcs[0].getX();
                dArr[1] = (d11 * this.mArcs[0].getDY()) + this.mArcs[0].getY();
                return;
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                double d12 = arcArr[arcArr.length - 1].mTime2;
                double d13 = d - d12;
                int length = arcArr.length - 1;
                Arc arc2 = arcArr[length];
                if (arc2.mLinear) {
                    dArr[0] = (this.mArcs[length].getLinearDX(d12) * d13) + arc2.getLinearX(d12);
                    dArr[1] = (d13 * this.mArcs[length].getLinearDY(d12)) + this.mArcs[length].getLinearY(d12);
                    return;
                }
                arc2.setPoint(d);
                dArr[0] = (this.mArcs[length].getDX() * d13) + this.mArcs[length].getX();
                dArr[1] = (d13 * this.mArcs[length].getDY()) + this.mArcs[length].getY();
                return;
            }
        } else {
            double d14 = arcArr[0].mTime1;
            if (d < d14) {
                d = d14;
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                d = arcArr[arcArr.length - 1].mTime2;
            }
        }
        int i10 = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i10 >= arcArr2.length) {
                return;
            }
            Arc arc3 = arcArr2[i10];
            if (d <= arc3.mTime2) {
                if (arc3.mLinear) {
                    dArr[0] = arc3.getLinearX(d);
                    dArr[1] = this.mArcs[i10].getLinearY(d);
                    return;
                } else {
                    arc3.setPoint(d);
                    dArr[0] = this.mArcs[i10].getX();
                    dArr[1] = this.mArcs[i10].getY();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        Arc[] arcArr = this.mArcs;
        double d10 = arcArr[0].mTime1;
        if (d < d10) {
            d = d10;
        } else if (d > arcArr[arcArr.length - 1].mTime2) {
            d = arcArr[arcArr.length - 1].mTime2;
        }
        int i10 = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i10 >= arcArr2.length) {
                return;
            }
            Arc arc = arcArr2[i10];
            if (d <= arc.mTime2) {
                if (arc.mLinear) {
                    dArr[0] = arc.getLinearDX(d);
                    dArr[1] = this.mArcs[i10].getLinearDY(d);
                    return;
                } else {
                    arc.setPoint(d);
                    dArr[0] = this.mArcs[i10].getDX();
                    dArr[1] = this.mArcs[i10].getDY();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mTime;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i10) {
        Arc[] arcArr = this.mArcs;
        int i11 = 0;
        double d10 = arcArr[0].mTime1;
        if (d < d10) {
            d = d10;
        }
        if (d > arcArr[arcArr.length - 1].mTime2) {
            d = arcArr[arcArr.length - 1].mTime2;
        }
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i11 >= arcArr2.length) {
                return Double.NaN;
            }
            Arc arc = arcArr2[i11];
            if (d <= arc.mTime2) {
                if (arc.mLinear) {
                    if (i10 == 0) {
                        return arc.getLinearDX(d);
                    }
                    return arc.getLinearDY(d);
                }
                arc.setPoint(d);
                Arc[] arcArr3 = this.mArcs;
                if (i10 == 0) {
                    return arcArr3[i11].getDX();
                }
                return arcArr3[i11].getDY();
            }
            i11++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        boolean z9 = this.mExtrapolate;
        Arc[] arcArr = this.mArcs;
        if (z9) {
            Arc arc = arcArr[0];
            double d10 = arc.mTime1;
            if (d < d10) {
                double d11 = d - d10;
                if (arc.mLinear) {
                    fArr[0] = (float) ((this.mArcs[0].getLinearDX(d10) * d11) + arc.getLinearX(d10));
                    fArr[1] = (float) ((d11 * this.mArcs[0].getLinearDY(d10)) + this.mArcs[0].getLinearY(d10));
                    return;
                }
                arc.setPoint(d10);
                fArr[0] = (float) ((this.mArcs[0].getDX() * d11) + this.mArcs[0].getX());
                fArr[1] = (float) ((d11 * this.mArcs[0].getDY()) + this.mArcs[0].getY());
                return;
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                double d12 = arcArr[arcArr.length - 1].mTime2;
                double d13 = d - d12;
                int length = arcArr.length - 1;
                Arc arc2 = arcArr[length];
                if (arc2.mLinear) {
                    fArr[0] = (float) ((this.mArcs[length].getLinearDX(d12) * d13) + arc2.getLinearX(d12));
                    fArr[1] = (float) ((d13 * this.mArcs[length].getLinearDY(d12)) + this.mArcs[length].getLinearY(d12));
                    return;
                }
                arc2.setPoint(d);
                fArr[0] = (float) this.mArcs[length].getX();
                fArr[1] = (float) this.mArcs[length].getY();
                return;
            }
        } else {
            double d14 = arcArr[0].mTime1;
            if (d < d14) {
                d = d14;
            } else if (d > arcArr[arcArr.length - 1].mTime2) {
                d = arcArr[arcArr.length - 1].mTime2;
            }
        }
        int i10 = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i10 >= arcArr2.length) {
                return;
            }
            Arc arc3 = arcArr2[i10];
            if (d <= arc3.mTime2) {
                if (arc3.mLinear) {
                    fArr[0] = (float) arc3.getLinearX(d);
                    fArr[1] = (float) this.mArcs[i10].getLinearY(d);
                    return;
                } else {
                    arc3.setPoint(d);
                    fArr[0] = (float) this.mArcs[i10].getX();
                    fArr[1] = (float) this.mArcs[i10].getY();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i10) {
        boolean z9 = this.mExtrapolate;
        Arc[] arcArr = this.mArcs;
        int i11 = 0;
        if (z9) {
            Arc arc = arcArr[0];
            double d10 = arc.mTime1;
            if (d < d10) {
                double d11 = d - d10;
                if (arc.mLinear) {
                    if (i10 == 0) {
                        return (d11 * this.mArcs[0].getLinearDX(d10)) + arc.getLinearX(d10);
                    }
                    return (d11 * this.mArcs[0].getLinearDY(d10)) + arc.getLinearY(d10);
                }
                arc.setPoint(d10);
                Arc[] arcArr2 = this.mArcs;
                if (i10 == 0) {
                    return (d11 * this.mArcs[0].getDX()) + arcArr2[0].getX();
                }
                return (d11 * this.mArcs[0].getDY()) + arcArr2[0].getY();
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                double d12 = arcArr[arcArr.length - 1].mTime2;
                double d13 = d - d12;
                int length = arcArr.length - 1;
                if (i10 == 0) {
                    return (d13 * this.mArcs[length].getLinearDX(d12)) + arcArr[length].getLinearX(d12);
                }
                return (d13 * this.mArcs[length].getLinearDY(d12)) + arcArr[length].getLinearY(d12);
            }
        } else {
            double d14 = arcArr[0].mTime1;
            if (d < d14) {
                d = d14;
            } else if (d > arcArr[arcArr.length - 1].mTime2) {
                d = arcArr[arcArr.length - 1].mTime2;
            }
        }
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i11 >= arcArr3.length) {
                return Double.NaN;
            }
            Arc arc2 = arcArr3[i11];
            if (d <= arc2.mTime2) {
                if (arc2.mLinear) {
                    if (i10 == 0) {
                        return arc2.getLinearX(d);
                    }
                    return arc2.getLinearY(d);
                }
                arc2.setPoint(d);
                Arc[] arcArr4 = this.mArcs;
                if (i10 == 0) {
                    return arcArr4[i11].getX();
                }
                return arcArr4[i11].getY();
            }
            i11++;
        }
    }
}
