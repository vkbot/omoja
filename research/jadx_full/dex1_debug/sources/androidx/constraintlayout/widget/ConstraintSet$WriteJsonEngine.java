package androidx.constraintlayout.widget;

import ai.onnxruntime.a;
import android.content.Context;
import androidx.core.os.EnvironmentCompat;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSet$WriteJsonEngine {
    private static final String SPACE = "       ";
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
    public ConstraintSet$WriteJsonEngine(ConstraintSet constraintSet, Writer writer, ConstraintLayout constraintLayout, int i9) {
        this.this$0 = constraintSet;
        this.mWriter = writer;
        this.mLayout = constraintLayout;
        this.mContext = constraintLayout.getContext();
        this.mFlags = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeDimension(String str, int i9, int i10, float f8, int i11, int i12, boolean z8) throws IOException {
        if (i9 != 0) {
            if (i9 == -2) {
                this.mWriter.write(SPACE + str + ": 'wrap'\n");
                return;
            }
            Writer writer = this.mWriter;
            if (i9 == -1) {
                writer.write(SPACE + str + ": 'parent'\n");
                return;
            }
            writer.write(SPACE + str + ": " + i9 + ",\n");
            return;
        }
        if (i12 == -1 && i11 == -1) {
            if (i10 == 1) {
                this.mWriter.write(SPACE + str + ": '???????????',\n");
                return;
            }
            if (i10 != 2) {
                return;
            }
            this.mWriter.write(SPACE + str + ": '" + f8 + "%',\n");
            return;
        }
        if (i10 == 0) {
            this.mWriter.write(SPACE + str + ": {'spread' ," + i11 + ", " + i12 + "}\n");
            return;
        }
        if (i10 == 1) {
            this.mWriter.write(SPACE + str + ": {'wrap' ," + i11 + ", " + i12 + "}\n");
            return;
        }
        if (i10 != 2) {
            return;
        }
        this.mWriter.write(SPACE + str + ": {'" + f8 + "'% ," + i11 + ", " + i12 + "}\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeGuideline(int i9, int i10, int i11, float f8) throws IOException {
        writeVariable("'orientation'", i9);
        writeVariable("'guideBegin'", i10);
        writeVariable("'guideEnd'", i11);
        writeVariable("'guidePercent'", f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName(int i9) {
        if (this.mIdMap.containsKey(Integer.valueOf(i9))) {
            return a.p(new StringBuilder("'"), this.mIdMap.get(Integer.valueOf(i9)), "'");
        }
        if (i9 == 0) {
            return "'parent'";
        }
        String strLookup = lookup(i9);
        this.mIdMap.put(Integer.valueOf(i9), strLookup);
        return "'" + strLookup + "'";
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
        this.mWriter.write("       circle");
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
        this.mWriter.write("\n'ConstraintSet':{\n");
        for (Integer num : ConstraintSet.access$1300(this.this$0).keySet()) {
            ConstraintSet$Constraint constraintSet$Constraint = (ConstraintSet$Constraint) ConstraintSet.access$1300(this.this$0).get(num);
            String name = getName(num.intValue());
            this.mWriter.write(name + ":{\n");
            ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
            writeDimension("height", constraintSet$Layout.mHeight, constraintSet$Layout.heightDefault, constraintSet$Layout.heightPercent, constraintSet$Layout.heightMin, constraintSet$Layout.heightMax, constraintSet$Layout.constrainedHeight);
            writeDimension("width", constraintSet$Layout.mWidth, constraintSet$Layout.widthDefault, constraintSet$Layout.widthPercent, constraintSet$Layout.widthMin, constraintSet$Layout.widthMax, constraintSet$Layout.constrainedWidth);
            writeConstraint("'left'", constraintSet$Layout.leftToLeft, "'left'", constraintSet$Layout.leftMargin, constraintSet$Layout.goneLeftMargin);
            writeConstraint("'left'", constraintSet$Layout.leftToRight, "'right'", constraintSet$Layout.leftMargin, constraintSet$Layout.goneLeftMargin);
            writeConstraint("'right'", constraintSet$Layout.rightToLeft, "'left'", constraintSet$Layout.rightMargin, constraintSet$Layout.goneRightMargin);
            writeConstraint("'right'", constraintSet$Layout.rightToRight, "'right'", constraintSet$Layout.rightMargin, constraintSet$Layout.goneRightMargin);
            writeConstraint("'baseline'", constraintSet$Layout.baselineToBaseline, "'baseline'", -1, constraintSet$Layout.goneBaselineMargin);
            writeConstraint("'baseline'", constraintSet$Layout.baselineToTop, "'top'", -1, constraintSet$Layout.goneBaselineMargin);
            writeConstraint("'baseline'", constraintSet$Layout.baselineToBottom, "'bottom'", -1, constraintSet$Layout.goneBaselineMargin);
            writeConstraint("'top'", constraintSet$Layout.topToBottom, "'bottom'", constraintSet$Layout.topMargin, constraintSet$Layout.goneTopMargin);
            writeConstraint("'top'", constraintSet$Layout.topToTop, "'top'", constraintSet$Layout.topMargin, constraintSet$Layout.goneTopMargin);
            writeConstraint("'bottom'", constraintSet$Layout.bottomToBottom, "'bottom'", constraintSet$Layout.bottomMargin, constraintSet$Layout.goneBottomMargin);
            writeConstraint("'bottom'", constraintSet$Layout.bottomToTop, "'top'", constraintSet$Layout.bottomMargin, constraintSet$Layout.goneBottomMargin);
            writeConstraint("'start'", constraintSet$Layout.startToStart, "'start'", constraintSet$Layout.startMargin, constraintSet$Layout.goneStartMargin);
            writeConstraint("'start'", constraintSet$Layout.startToEnd, "'end'", constraintSet$Layout.startMargin, constraintSet$Layout.goneStartMargin);
            writeConstraint("'end'", constraintSet$Layout.endToStart, "'start'", constraintSet$Layout.endMargin, constraintSet$Layout.goneEndMargin);
            writeConstraint("'end'", constraintSet$Layout.endToEnd, "'end'", constraintSet$Layout.endMargin, constraintSet$Layout.goneEndMargin);
            writeVariable("'horizontalBias'", constraintSet$Layout.horizontalBias, 0.5f);
            writeVariable("'verticalBias'", constraintSet$Layout.verticalBias, 0.5f);
            writeCircle(constraintSet$Layout.circleConstraint, constraintSet$Layout.circleAngle, constraintSet$Layout.circleRadius);
            writeGuideline(constraintSet$Layout.orientation, constraintSet$Layout.guideBegin, constraintSet$Layout.guideEnd, constraintSet$Layout.guidePercent);
            writeVariable("'dimensionRatio'", constraintSet$Layout.dimensionRatio);
            writeVariable("'barrierMargin'", constraintSet$Layout.mBarrierMargin);
            writeVariable("'type'", constraintSet$Layout.mHelperType);
            writeVariable("'ReferenceId'", constraintSet$Layout.mReferenceIdString);
            writeVariable("'mBarrierAllowsGoneWidgets'", constraintSet$Layout.mBarrierAllowsGoneWidgets, true);
            writeVariable("'WrapBehavior'", constraintSet$Layout.mWrapBehavior);
            writeVariable("'verticalWeight'", constraintSet$Layout.verticalWeight);
            writeVariable("'horizontalWeight'", constraintSet$Layout.horizontalWeight);
            writeVariable("'horizontalChainStyle'", constraintSet$Layout.horizontalChainStyle);
            writeVariable("'verticalChainStyle'", constraintSet$Layout.verticalChainStyle);
            writeVariable("'barrierDirection'", constraintSet$Layout.mBarrierDirection);
            int[] iArr = constraintSet$Layout.mReferenceIds;
            if (iArr != null) {
                writeVariable("'ReferenceIds'", iArr);
            }
            this.mWriter.write("}\n");
        }
        this.mWriter.write("}\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeVariable(String str, int[] iArr) throws IOException {
        if (iArr == null) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write(": ");
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

    public void writeVariable(String str, float f8) throws IOException {
        if (f8 == -1.0f) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write(": " + f8);
        this.mWriter.write(",\n");
    }

    public void writeVariable(String str, float f8, float f9) throws IOException {
        if (f8 == f9) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write(": " + f8);
        this.mWriter.write(",\n");
    }

    public void writeVariable(String str, boolean z8) throws IOException {
        if (z8) {
            this.mWriter.write(SPACE + str);
            this.mWriter.write(": " + z8);
            this.mWriter.write(",\n");
        }
    }

    public void writeVariable(String str, boolean z8, boolean z9) throws IOException {
        if (z8 == z9) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write(": " + z8);
        this.mWriter.write(",\n");
    }

    public void writeVariable(String str, int i9) throws IOException {
        if (i9 == 0 || i9 == -1) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write(":");
        this.mWriter.write(", " + i9);
        this.mWriter.write("\n");
    }

    public void writeVariable(String str, String str2) throws IOException {
        if (str2 == null) {
            return;
        }
        this.mWriter.write(SPACE + str);
        this.mWriter.write(":");
        this.mWriter.write(", ".concat(str2));
        this.mWriter.write("\n");
    }
}
