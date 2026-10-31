package androidx.constraintlayout.widget;

import ai.onnxruntime.a;
import android.util.Log;
import androidx.constraintlayout.core.Metrics;
import java.text.DecimalFormat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintLayoutStatistics {
    public static final int DURATION_OF_CHILD_MEASURES = 5;
    public static final int DURATION_OF_LAYOUT = 7;
    public static final int DURATION_OF_MEASURES = 6;
    private static int MAX_WORD = 25;
    public static final int NUMBER_OF_CHILD_MEASURES = 4;
    public static final int NUMBER_OF_CHILD_VIEWS = 3;
    public static final int NUMBER_OF_EQUATIONS = 9;
    public static final int NUMBER_OF_LAYOUTS = 1;
    public static final int NUMBER_OF_ON_MEASURES = 2;
    public static final int NUMBER_OF_SIMPLE_EQUATIONS = 10;
    public static final int NUMBER_OF_VARIABLES = 8;
    private static final String WORD_PAD = new String(new char[25]).replace((char) 0, ' ');
    ConstraintLayout mConstraintLayout;
    private final Metrics mMetrics;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintLayoutStatistics(ConstraintLayoutStatistics constraintLayoutStatistics) {
        Metrics metrics = new Metrics();
        this.mMetrics = metrics;
        metrics.copy(constraintLayoutStatistics.mMetrics);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String compare(DecimalFormat decimalFormat, ConstraintLayoutStatistics constraintLayoutStatistics, int i9) {
        String strP = a.p(a.w(fmt(decimalFormat, getValue(i9) * 1.0E-6f, 7), " -> "), fmt(decimalFormat, constraintLayoutStatistics.getValue(i9) * 1.0E-6f, 7), "ms");
        String strP2 = a.p(new StringBuilder(), WORD_PAD, geName(i9));
        return a.m("CL Perf: ", strP2.substring(strP2.length() - MAX_WORD).concat(" = "), strP);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String fmt(DecimalFormat decimalFormat, float f8, int i9) {
        StringBuilder sbU = a.u(new String(new char[i9]).replace((char) 0, ' '));
        sbU.append(decimalFormat.format(f8));
        String string = sbU.toString();
        return string.substring(string.length() - i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        Log.v(str, "CL Perf: --------  Performance .(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")  ------ ");
        DecimalFormat decimalFormat = new DecimalFormat("###.000");
        Log.v(str, log(decimalFormat, 5));
        Log.v(str, log(decimalFormat, 7));
        Log.v(str, log(decimalFormat, 6));
        Log.v(str, log(1));
        Log.v(str, log(2));
        Log.v(str, log(3));
        Log.v(str, log(4));
        Log.v(str, log(8));
        Log.v(str, log(9));
        Log.v(str, log(10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void attach(ConstraintLayout constraintLayout) {
        constraintLayout.fillMetrics(this.mMetrics);
        this.mConstraintLayout = constraintLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintLayoutStatistics clone() {
        return new ConstraintLayoutStatistics(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detach() {
        ConstraintLayout constraintLayout = this.mConstraintLayout;
        if (constraintLayout != null) {
            constraintLayout.fillMetrics(null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String geName(int i9) {
        switch (i9) {
            case 1:
                return "NumberOfLayouts";
            case 2:
                return "MeasureCalls";
            case 3:
                return "ChildCount";
            case 4:
                return "ChildrenMeasures";
            case 5:
                return "MeasuresWidgetsDuration ";
            case 6:
                return "MeasureDuration";
            case 7:
                return "MeasuresLayoutDuration";
            case 8:
                return "SolverVariables";
            case 9:
                return "SolverEquations";
            case 10:
                return "SimpleEquations";
            default:
                return "";
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getValue(int i9) {
        switch (i9) {
            case 1:
                return this.mMetrics.mNumberOfLayouts;
            case 2:
                return this.mMetrics.mMeasureCalls;
            case 3:
                return this.mMetrics.mChildCount;
            case 4:
                return this.mMetrics.mNumberOfMeasures;
            case 5:
                return this.mMetrics.measuresWidgetsDuration;
            case 6:
                return this.mMetrics.mMeasureDuration;
            case 7:
                return this.mMetrics.measuresLayoutDuration;
            case 8:
                return this.mMetrics.mVariables;
            case 9:
                return this.mMetrics.mEquations;
            case 10:
                return this.mMetrics.mSimpleEquations;
            default:
                return 0L;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void logSummary(String str, ConstraintLayoutStatistics constraintLayoutStatistics) {
        if (constraintLayoutStatistics == null) {
            log(str);
            return;
        }
        DecimalFormat decimalFormat = new DecimalFormat("###.000");
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        Log.v(str, "CL Perf: -=  Performance .(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")  =- ");
        Log.v(str, compare(decimalFormat, constraintLayoutStatistics, 5));
        Log.v(str, compare(decimalFormat, constraintLayoutStatistics, 7));
        Log.v(str, compare(decimalFormat, constraintLayoutStatistics, 6));
        Log.v(str, compare(constraintLayoutStatistics, 1));
        Log.v(str, compare(constraintLayoutStatistics, 2));
        Log.v(str, compare(constraintLayoutStatistics, 3));
        Log.v(str, compare(constraintLayoutStatistics, 4));
        Log.v(str, compare(constraintLayoutStatistics, 8));
        Log.v(str, compare(constraintLayoutStatistics, 9));
        Log.v(str, compare(constraintLayoutStatistics, 10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        this.mMetrics.reset();
    }

    /* JADX INFO: renamed from: clone, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m30clone() {
        return clone();
    }

    public ConstraintLayoutStatistics(ConstraintLayout constraintLayout) {
        this.mMetrics = new Metrics();
        attach(constraintLayout);
    }

    private String compare(ConstraintLayoutStatistics constraintLayoutStatistics, int i9) {
        String str = getValue(i9) + " -> " + constraintLayoutStatistics.getValue(i9);
        String strP = a.p(new StringBuilder(), WORD_PAD, geName(i9));
        return a.m("CL Perf: ", strP.substring(strP.length() - MAX_WORD).concat(" = "), str);
    }

    private String log(DecimalFormat decimalFormat, int i9) {
        String strFmt = fmt(decimalFormat, getValue(i9) * 1.0E-6f, 7);
        String strP = a.p(new StringBuilder(), WORD_PAD, geName(i9));
        return a.m("CL Perf: ", strP.substring(strP.length() - MAX_WORD).concat(" = "), strFmt);
    }

    public void logSummary(String str) {
        log(str);
    }

    private String log(int i9) {
        String string = Long.toString(getValue(i9));
        String strP = a.p(new StringBuilder(), WORD_PAD, geName(i9));
        return a.m("CL Perf: ", strP.substring(strP.length() - MAX_WORD).concat(" = "), string);
    }
}
