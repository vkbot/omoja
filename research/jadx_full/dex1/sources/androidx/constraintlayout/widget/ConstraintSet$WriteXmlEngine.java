package androidx.constraintlayout.widget;

import ai.onnxruntime.a;
import android.content.Context;
import androidx.core.os.EnvironmentCompat;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSet$WriteXmlEngine {
    private static final String SPACE = "\n       ";
    Context mContext;
    int mFlags;
    ConstraintLayout mLayout;
    Writer mWriter;
    final /* synthetic */ ConstraintSet this$0;
    int mUnknownCount = 0;
    final String mLEFT = "'left'";
    final String mRIGHT = "'right'";
    final String mBASELINE = "'baseline'";
    final String mBOTTOM = "'bottom'";
    final String mTOP = "'top'";
    final String mSTART = "'start'";
    final String mEND = "'end'";
    HashMap<Integer, String> mIdMap = new HashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSet$WriteXmlEngine(ConstraintSet constraintSet, Writer writer, ConstraintLayout constraintLayout, int i9) {
        this.this$0 = constraintSet;
        this.mWriter = writer;
        this.mLayout = constraintLayout;
        this.mContext = constraintLayout.getContext();
        this.mFlags = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeBaseDimension(String str, int i9, int i10) throws IOException {
        if (i9 != i10) {
            if (i9 == -2) {
                this.mWriter.write(SPACE + str + "=\"wrap_content\"");
                return;
            }
            Writer writer = this.mWriter;
            if (i9 == -1) {
                writer.write(SPACE + str + "=\"match_parent\"");
                return;
            }
            writer.write(SPACE + str + "=\"" + i9 + "dp\"");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeBoolen(String str, boolean z8, boolean z9) throws IOException {
        if (z8 != z9) {
            this.mWriter.write(SPACE + str + "=\"" + z8 + "dp\"");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeDimension(String str, int i9, int i10) throws IOException {
        if (i9 != i10) {
            this.mWriter.write(SPACE + str + "=\"" + i9 + "dp\"");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeEnum(String str, int i9, String[] strArr, int i10) throws IOException {
        if (i9 != i10) {
            Writer writer = this.mWriter;
            StringBuilder sbX = a.x(SPACE, str, "=\"");
            sbX.append(strArr[i9]);
            sbX.append("\"");
            writer.write(sbX.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName(int i9) {
        if (this.mIdMap.containsKey(Integer.valueOf(i9))) {
            return a.p(new StringBuilder("@+id/"), this.mIdMap.get(Integer.valueOf(i9)), "");
        }
        if (i9 == 0) {
            return "parent";
        }
        String strLookup = lookup(i9);
        this.mIdMap.put(Integer.valueOf(i9), strLookup);
        return "@+id/" + strLookup + "";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String lookup(int i9) {
        try {
            if (i9 != -1) {
                return this.mContext.getResources().getResourceEntryName(i9);
            }
            StringBuilder sb = new StringBuilder(EnvironmentCompat.MEDIA_UNKNOWN);
            int i10 = this.mUnknownCount + 1;
            this.mUnknownCount = i10;
            sb.append(i10);
            return sb.toString();
        } catch (Exception unused) {
            StringBuilder sb2 = new StringBuilder(EnvironmentCompat.MEDIA_UNKNOWN);
            int i11 = this.mUnknownCount + 1;
            this.mUnknownCount = i11;
            sb2.append(i11);
            return sb2.toString();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeCircle(int i9, float f8, int i10) throws IOException {
        if (i9 == -1) {
            return;
        }
        this.mWriter.write("circle");
        this.mWriter.write(":[");
        this.mWriter.write(getName(i9));
        this.mWriter.write(", " + f8);
        this.mWriter.write(i10 + "]");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeConstraint(String str, int i9, String str2, int i10, int i11) throws IOException {
        if (i9 == -1) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write(":[");
        this.mWriter.write(getName(i9));
        this.mWriter.write(" , ");
        this.mWriter.write(str2);
        if (i10 != 0) {
            this.mWriter.write(" , " + i10);
        }
        this.mWriter.write("],\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeLayout() {
        this.mWriter.write("\n<ConstraintSet>\n");
        for (Integer num : ConstraintSet.access$1300(this.this$0).keySet()) {
            ConstraintSet$Constraint constraintSet$Constraint = (ConstraintSet$Constraint) ConstraintSet.access$1300(this.this$0).get(num);
            String name = getName(num.intValue());
            this.mWriter.write("  <Constraint");
            this.mWriter.write("\n       android:id=\"" + name + "\"");
            ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
            writeBaseDimension("android:layout_width", constraintSet$Layout.mWidth, -5);
            writeBaseDimension("android:layout_height", constraintSet$Layout.mHeight, -5);
            writeVariable("app:layout_constraintGuide_begin", constraintSet$Layout.guideBegin, -1.0f);
            writeVariable("app:layout_constraintGuide_end", constraintSet$Layout.guideEnd, -1.0f);
            writeVariable("app:layout_constraintGuide_percent", constraintSet$Layout.guidePercent, -1.0f);
            writeVariable("app:layout_constraintHorizontal_bias", constraintSet$Layout.horizontalBias, 0.5f);
            writeVariable("app:layout_constraintVertical_bias", constraintSet$Layout.verticalBias, 0.5f);
            writeVariable("app:layout_constraintDimensionRatio", constraintSet$Layout.dimensionRatio, (String) null);
            writeXmlConstraint("app:layout_constraintCircle", constraintSet$Layout.circleConstraint);
            writeVariable("app:layout_constraintCircleRadius", constraintSet$Layout.circleRadius, 0.0f);
            writeVariable("app:layout_constraintCircleAngle", constraintSet$Layout.circleAngle, 0.0f);
            writeVariable("android:orientation", constraintSet$Layout.orientation, -1.0f);
            writeVariable("app:layout_constraintVertical_weight", constraintSet$Layout.verticalWeight, -1.0f);
            writeVariable("app:layout_constraintHorizontal_weight", constraintSet$Layout.horizontalWeight, -1.0f);
            writeVariable("app:layout_constraintHorizontal_chainStyle", constraintSet$Layout.horizontalChainStyle, 0.0f);
            writeVariable("app:layout_constraintVertical_chainStyle", constraintSet$Layout.verticalChainStyle, 0.0f);
            writeVariable("app:barrierDirection", constraintSet$Layout.mBarrierDirection, -1.0f);
            writeVariable("app:barrierMargin", constraintSet$Layout.mBarrierMargin, 0.0f);
            writeDimension("app:layout_marginLeft", constraintSet$Layout.leftMargin, 0);
            writeDimension("app:layout_goneMarginLeft", constraintSet$Layout.goneLeftMargin, Integer.MIN_VALUE);
            writeDimension("app:layout_marginRight", constraintSet$Layout.rightMargin, 0);
            writeDimension("app:layout_goneMarginRight", constraintSet$Layout.goneRightMargin, Integer.MIN_VALUE);
            writeDimension("app:layout_marginStart", constraintSet$Layout.startMargin, 0);
            writeDimension("app:layout_goneMarginStart", constraintSet$Layout.goneStartMargin, Integer.MIN_VALUE);
            writeDimension("app:layout_marginEnd", constraintSet$Layout.endMargin, 0);
            writeDimension("app:layout_goneMarginEnd", constraintSet$Layout.goneEndMargin, Integer.MIN_VALUE);
            writeDimension("app:layout_marginTop", constraintSet$Layout.topMargin, 0);
            writeDimension("app:layout_goneMarginTop", constraintSet$Layout.goneTopMargin, Integer.MIN_VALUE);
            writeDimension("app:layout_marginBottom", constraintSet$Layout.bottomMargin, 0);
            writeDimension("app:layout_goneMarginBottom", constraintSet$Layout.goneBottomMargin, Integer.MIN_VALUE);
            writeDimension("app:goneBaselineMargin", constraintSet$Layout.goneBaselineMargin, Integer.MIN_VALUE);
            writeDimension("app:baselineMargin", constraintSet$Layout.baselineMargin, 0);
            writeBoolen("app:layout_constrainedWidth", constraintSet$Layout.constrainedWidth, false);
            writeBoolen("app:layout_constrainedHeight", constraintSet$Layout.constrainedHeight, false);
            writeBoolen("app:barrierAllowsGoneWidgets", constraintSet$Layout.mBarrierAllowsGoneWidgets, true);
            writeVariable("app:layout_wrapBehaviorInParent", constraintSet$Layout.mWrapBehavior, 0.0f);
            writeXmlConstraint("app:baselineToBaseline", constraintSet$Layout.baselineToBaseline);
            writeXmlConstraint("app:baselineToBottom", constraintSet$Layout.baselineToBottom);
            writeXmlConstraint("app:baselineToTop", constraintSet$Layout.baselineToTop);
            writeXmlConstraint("app:layout_constraintBottom_toBottomOf", constraintSet$Layout.bottomToBottom);
            writeXmlConstraint("app:layout_constraintBottom_toTopOf", constraintSet$Layout.bottomToTop);
            writeXmlConstraint("app:layout_constraintEnd_toEndOf", constraintSet$Layout.endToEnd);
            writeXmlConstraint("app:layout_constraintEnd_toStartOf", constraintSet$Layout.endToStart);
            writeXmlConstraint("app:layout_constraintLeft_toLeftOf", constraintSet$Layout.leftToLeft);
            writeXmlConstraint("app:layout_constraintLeft_toRightOf", constraintSet$Layout.leftToRight);
            writeXmlConstraint("app:layout_constraintRight_toLeftOf", constraintSet$Layout.rightToLeft);
            writeXmlConstraint("app:layout_constraintRight_toRightOf", constraintSet$Layout.rightToRight);
            writeXmlConstraint("app:layout_constraintStart_toEndOf", constraintSet$Layout.startToEnd);
            writeXmlConstraint("app:layout_constraintStart_toStartOf", constraintSet$Layout.startToStart);
            writeXmlConstraint("app:layout_constraintTop_toBottomOf", constraintSet$Layout.topToBottom);
            writeXmlConstraint("app:layout_constraintTop_toTopOf", constraintSet$Layout.topToTop);
            String[] strArr = {"spread", "wrap", "percent"};
            writeEnum("app:layout_constraintHeight_default", constraintSet$Layout.heightDefault, strArr, 0);
            writeVariable("app:layout_constraintHeight_percent", constraintSet$Layout.heightPercent, 1.0f);
            writeDimension("app:layout_constraintHeight_min", constraintSet$Layout.heightMin, 0);
            writeDimension("app:layout_constraintHeight_max", constraintSet$Layout.heightMax, 0);
            writeBoolen("android:layout_constrainedHeight", constraintSet$Layout.constrainedHeight, false);
            writeEnum("app:layout_constraintWidth_default", constraintSet$Layout.widthDefault, strArr, 0);
            writeVariable("app:layout_constraintWidth_percent", constraintSet$Layout.widthPercent, 1.0f);
            writeDimension("app:layout_constraintWidth_min", constraintSet$Layout.widthMin, 0);
            writeDimension("app:layout_constraintWidth_max", constraintSet$Layout.widthMax, 0);
            writeBoolen("android:layout_constrainedWidth", constraintSet$Layout.constrainedWidth, false);
            writeVariable("app:layout_constraintVertical_weight", constraintSet$Layout.verticalWeight, -1.0f);
            writeVariable("app:layout_constraintHorizontal_weight", constraintSet$Layout.horizontalWeight, -1.0f);
            writeVariable("app:layout_constraintHorizontal_chainStyle", constraintSet$Layout.horizontalChainStyle);
            writeVariable("app:layout_constraintVertical_chainStyle", constraintSet$Layout.verticalChainStyle);
            writeEnum("app:barrierDirection", constraintSet$Layout.mBarrierDirection, new String[]{"left", "right", "top", "bottom", "start", "end"}, -1);
            writeVariable("app:layout_constraintTag", constraintSet$Layout.mConstraintTag, (String) null);
            int[] iArr = constraintSet$Layout.mReferenceIds;
            if (iArr != null) {
                writeVariable("'ReferenceIds'", iArr);
            }
            this.mWriter.write(" />\n");
        }
        this.mWriter.write("</ConstraintSet>\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeVariable(String str, int[] iArr) throws IOException {
        if (iArr == null) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write(":");
        int i9 = 0;
        while (true) {
            int length = iArr.length;
            Writer writer = this.mWriter;
            if (i9 >= length) {
                writer.write("],\n");
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(i9 == 0 ? "[" : ", ");
            sb.append(getName(iArr[i9]));
            writer.write(sb.toString());
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeXmlConstraint(String str, int i9) throws IOException {
        if (i9 == -1) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write("=\"" + getName(i9) + "\"");
    }

    public void writeVariable(String str, float f8, float f9) throws IOException {
        if (f8 == f9) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write("=\"" + f8 + "\"");
    }

    public void writeVariable(String str, String str2, String str3) throws IOException {
        if (str2 == null || str2.equals(str3)) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write("=\"" + str2 + "\"");
    }

    public void writeVariable(String str, int i9) throws IOException {
        if (i9 == 0 || i9 == -1) {
            return;
        }
        this.mWriter.write(SPACE + str + "=\"" + i9 + "\"\n");
    }

    public void writeVariable(String str, String str2) throws IOException {
        if (str2 == null) {
            return;
        }
        this.mWriter.write(str);
        this.mWriter.write(":");
        this.mWriter.write(", ".concat(str2));
        this.mWriter.write("\n");
    }
}
