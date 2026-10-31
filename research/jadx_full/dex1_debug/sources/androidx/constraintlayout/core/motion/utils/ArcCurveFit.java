package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
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
    ArcCurveFit$Arc[] mArcs;
    private boolean mExtrapolate = true;
    private final double[] mTime;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.mTime = dArr;
        this.mArcs = new ArcCurveFit$Arc[dArr.length - 1];
        int i9 = 1;
        int i10 = 1;
        int i11 = 0;
        while (true) {
            ArcCurveFit$Arc[] arcCurveFit$ArcArr = this.mArcs;
            if (i11 >= arcCurveFit$ArcArr.length) {
                return;
            }
            int i12 = iArr[i11];
            int i13 = 3;
            if (i12 != 0) {
                if (i12 == 1) {
                    i9 = 1;
                    i13 = i9;
                } else {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            i13 = 4;
                            if (i12 != 4) {
                                i13 = 5;
                                if (i12 != 5) {
                                    i13 = i10;
                                }
                            }
                        } else {
                            if (i9 != 1) {
                                i9 = 1;
                            }
                            i13 = i9;
                        }
                    }
                    i9 = 2;
                    i13 = i9;
                }
            }
            double d = dArr[i11];
            int i14 = i11 + 1;
            double d9 = dArr[i14];
            double[] dArr3 = dArr2[i11];
            double d10 = dArr3[0];
            double d11 = dArr3[1];
            double[] dArr4 = dArr2[i14];
            arcCurveFit$ArcArr[i11] = new ArcCurveFit$Arc(i13, d, d9, d10, d11, dArr4[0], dArr4[1]);
            i11 = i14;
            i10 = i13;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        boolean z8 = this.mExtrapolate;
        ArcCurveFit$Arc[] arcCurveFit$ArcArr = this.mArcs;
        if (z8) {
            ArcCurveFit$Arc arcCurveFit$Arc = arcCurveFit$ArcArr[0];
            double d9 = arcCurveFit$Arc.mTime1;
            if (d < d9) {
                double d10 = d - d9;
                if (arcCurveFit$Arc.mLinear) {
                    dArr[0] = (this.mArcs[0].getLinearDX(d9) * d10) + arcCurveFit$Arc.getLinearX(d9);
                    dArr[1] = (d10 * this.mArcs[0].getLinearDY(d9)) + this.mArcs[0].getLinearY(d9);
                    return;
                }
                arcCurveFit$Arc.setPoint(d9);
                dArr[0] = (this.mArcs[0].getDX() * d10) + this.mArcs[0].getX();
                dArr[1] = (d10 * this.mArcs[0].getDY()) + this.mArcs[0].getY();
                return;
            }
            if (d > arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2) {
                double d11 = arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2;
                double d12 = d - d11;
                int length = arcCurveFit$ArcArr.length - 1;
                ArcCurveFit$Arc arcCurveFit$Arc2 = arcCurveFit$ArcArr[length];
                if (arcCurveFit$Arc2.mLinear) {
                    dArr[0] = (this.mArcs[length].getLinearDX(d11) * d12) + arcCurveFit$Arc2.getLinearX(d11);
                    dArr[1] = (d12 * this.mArcs[length].getLinearDY(d11)) + this.mArcs[length].getLinearY(d11);
                    return;
                }
                arcCurveFit$Arc2.setPoint(d);
                dArr[0] = (this.mArcs[length].getDX() * d12) + this.mArcs[length].getX();
                dArr[1] = (d12 * this.mArcs[length].getDY()) + this.mArcs[length].getY();
                return;
            }
        } else {
            double d13 = arcCurveFit$ArcArr[0].mTime1;
            if (d < d13) {
                d = d13;
            }
            if (d > arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2) {
                d = arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2;
            }
        }
        int i9 = 0;
        while (true) {
            ArcCurveFit$Arc[] arcCurveFit$ArcArr2 = this.mArcs;
            if (i9 >= arcCurveFit$ArcArr2.length) {
                return;
            }
            ArcCurveFit$Arc arcCurveFit$Arc3 = arcCurveFit$ArcArr2[i9];
            if (d <= arcCurveFit$Arc3.mTime2) {
                if (arcCurveFit$Arc3.mLinear) {
                    dArr[0] = arcCurveFit$Arc3.getLinearX(d);
                    dArr[1] = this.mArcs[i9].getLinearY(d);
                    return;
                } else {
                    arcCurveFit$Arc3.setPoint(d);
                    dArr[0] = this.mArcs[i9].getX();
                    dArr[1] = this.mArcs[i9].getY();
                    return;
                }
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        ArcCurveFit$Arc[] arcCurveFit$ArcArr = this.mArcs;
        double d9 = arcCurveFit$ArcArr[0].mTime1;
        if (d < d9) {
            d = d9;
        } else if (d > arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2) {
            d = arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2;
        }
        int i9 = 0;
        while (true) {
            ArcCurveFit$Arc[] arcCurveFit$ArcArr2 = this.mArcs;
            if (i9 >= arcCurveFit$ArcArr2.length) {
                return;
            }
            ArcCurveFit$Arc arcCurveFit$Arc = arcCurveFit$ArcArr2[i9];
            if (d <= arcCurveFit$Arc.mTime2) {
                if (arcCurveFit$Arc.mLinear) {
                    dArr[0] = arcCurveFit$Arc.getLinearDX(d);
                    dArr[1] = this.mArcs[i9].getLinearDY(d);
                    return;
                } else {
                    arcCurveFit$Arc.setPoint(d);
                    dArr[0] = this.mArcs[i9].getDX();
                    dArr[1] = this.mArcs[i9].getDY();
                    return;
                }
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mTime;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i9) {
        ArcCurveFit$Arc[] arcCurveFit$ArcArr = this.mArcs;
        int i10 = 0;
        double d9 = arcCurveFit$ArcArr[0].mTime1;
        if (d < d9) {
            d = d9;
        }
        if (d > arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2) {
            d = arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2;
        }
        while (true) {
            ArcCurveFit$Arc[] arcCurveFit$ArcArr2 = this.mArcs;
            if (i10 >= arcCurveFit$ArcArr2.length) {
                return Double.NaN;
            }
            ArcCurveFit$Arc arcCurveFit$Arc = arcCurveFit$ArcArr2[i10];
            if (d <= arcCurveFit$Arc.mTime2) {
                if (arcCurveFit$Arc.mLinear) {
                    if (i9 == 0) {
                        return arcCurveFit$Arc.getLinearDX(d);
                    }
                    return arcCurveFit$Arc.getLinearDY(d);
                }
                arcCurveFit$Arc.setPoint(d);
                ArcCurveFit$Arc[] arcCurveFit$ArcArr3 = this.mArcs;
                if (i9 == 0) {
                    return arcCurveFit$ArcArr3[i10].getDX();
                }
                return arcCurveFit$ArcArr3[i10].getDY();
            }
            i10++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        boolean z8 = this.mExtrapolate;
        ArcCurveFit$Arc[] arcCurveFit$ArcArr = this.mArcs;
        if (z8) {
            ArcCurveFit$Arc arcCurveFit$Arc = arcCurveFit$ArcArr[0];
            double d9 = arcCurveFit$Arc.mTime1;
            if (d < d9) {
                double d10 = d - d9;
                if (arcCurveFit$Arc.mLinear) {
                    fArr[0] = (float) ((this.mArcs[0].getLinearDX(d9) * d10) + arcCurveFit$Arc.getLinearX(d9));
                    fArr[1] = (float) ((d10 * this.mArcs[0].getLinearDY(d9)) + this.mArcs[0].getLinearY(d9));
                    return;
                }
                arcCurveFit$Arc.setPoint(d9);
                fArr[0] = (float) ((this.mArcs[0].getDX() * d10) + this.mArcs[0].getX());
                fArr[1] = (float) ((d10 * this.mArcs[0].getDY()) + this.mArcs[0].getY());
                return;
            }
            if (d > arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2) {
                double d11 = arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2;
                double d12 = d - d11;
                int length = arcCurveFit$ArcArr.length - 1;
                ArcCurveFit$Arc arcCurveFit$Arc2 = arcCurveFit$ArcArr[length];
                if (arcCurveFit$Arc2.mLinear) {
                    fArr[0] = (float) ((this.mArcs[length].getLinearDX(d11) * d12) + arcCurveFit$Arc2.getLinearX(d11));
                    fArr[1] = (float) ((d12 * this.mArcs[length].getLinearDY(d11)) + this.mArcs[length].getLinearY(d11));
                    return;
                }
                arcCurveFit$Arc2.setPoint(d);
                fArr[0] = (float) this.mArcs[length].getX();
                fArr[1] = (float) this.mArcs[length].getY();
                return;
            }
        } else {
            double d13 = arcCurveFit$ArcArr[0].mTime1;
            if (d < d13) {
                d = d13;
            } else if (d > arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2) {
                d = arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2;
            }
        }
        int i9 = 0;
        while (true) {
            ArcCurveFit$Arc[] arcCurveFit$ArcArr2 = this.mArcs;
            if (i9 >= arcCurveFit$ArcArr2.length) {
                return;
            }
            ArcCurveFit$Arc arcCurveFit$Arc3 = arcCurveFit$ArcArr2[i9];
            if (d <= arcCurveFit$Arc3.mTime2) {
                if (arcCurveFit$Arc3.mLinear) {
                    fArr[0] = (float) arcCurveFit$Arc3.getLinearX(d);
                    fArr[1] = (float) this.mArcs[i9].getLinearY(d);
                    return;
                } else {
                    arcCurveFit$Arc3.setPoint(d);
                    fArr[0] = (float) this.mArcs[i9].getX();
                    fArr[1] = (float) this.mArcs[i9].getY();
                    return;
                }
            }
            i9++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i9) {
        boolean z8 = this.mExtrapolate;
        ArcCurveFit$Arc[] arcCurveFit$ArcArr = this.mArcs;
        int i10 = 0;
        if (z8) {
            ArcCurveFit$Arc arcCurveFit$Arc = arcCurveFit$ArcArr[0];
            double d9 = arcCurveFit$Arc.mTime1;
            if (d < d9) {
                double d10 = d - d9;
                if (arcCurveFit$Arc.mLinear) {
                    if (i9 == 0) {
                        return (d10 * this.mArcs[0].getLinearDX(d9)) + arcCurveFit$Arc.getLinearX(d9);
                    }
                    return (d10 * this.mArcs[0].getLinearDY(d9)) + arcCurveFit$Arc.getLinearY(d9);
                }
                arcCurveFit$Arc.setPoint(d9);
                ArcCurveFit$Arc[] arcCurveFit$ArcArr2 = this.mArcs;
                if (i9 == 0) {
                    return (d10 * this.mArcs[0].getDX()) + arcCurveFit$ArcArr2[0].getX();
                }
                return (d10 * this.mArcs[0].getDY()) + arcCurveFit$ArcArr2[0].getY();
            }
            if (d > arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2) {
                double d11 = arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2;
                double d12 = d - d11;
                int length = arcCurveFit$ArcArr.length - 1;
                if (i9 == 0) {
                    return (d12 * this.mArcs[length].getLinearDX(d11)) + arcCurveFit$ArcArr[length].getLinearX(d11);
                }
                return (d12 * this.mArcs[length].getLinearDY(d11)) + arcCurveFit$ArcArr[length].getLinearY(d11);
            }
        } else {
            double d13 = arcCurveFit$ArcArr[0].mTime1;
            if (d < d13) {
                d = d13;
            } else if (d > arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2) {
                d = arcCurveFit$ArcArr[arcCurveFit$ArcArr.length - 1].mTime2;
            }
        }
        while (true) {
            ArcCurveFit$Arc[] arcCurveFit$ArcArr3 = this.mArcs;
            if (i10 >= arcCurveFit$ArcArr3.length) {
                return Double.NaN;
            }
            ArcCurveFit$Arc arcCurveFit$Arc2 = arcCurveFit$ArcArr3[i10];
            if (d <= arcCurveFit$Arc2.mTime2) {
                if (arcCurveFit$Arc2.mLinear) {
                    if (i9 == 0) {
                        return arcCurveFit$Arc2.getLinearX(d);
                    }
                    return arcCurveFit$Arc2.getLinearY(d);
                }
                arcCurveFit$Arc2.setPoint(d);
                ArcCurveFit$Arc[] arcCurveFit$ArcArr4 = this.mArcs;
                if (i9 == 0) {
                    return arcCurveFit$ArcArr4[i10].getX();
                }
                return arcCurveFit$ArcArr4[i10].getY();
            }
            i10++;
        }
    }
}
