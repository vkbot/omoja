.class public final synthetic Landroidx/constraintlayout/core/state/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lm4/b;
.implements Lorg/apache/poi/hssf/record/HSSFRecordTypes$RecordConstructor;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
.implements Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;
.implements Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/state/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/commons/io/output/i;

    sget p0, Lorg/apache/commons/io/output/i;->b1:I

    .line 2
    sget-object p0, Lorg/apache/commons/io/output/f;->c:Lorg/apache/commons/io/output/f;

    return-object p0
.end method

.method public apply(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/state/d;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/hssf/record/chart/NumberFormatIndexRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/NumberFormatIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/hssf/record/chart/SeriesChartGroupIndexRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/SeriesChartGroupIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/hssf/record/chart/PlotAreaRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/PlotAreaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/FrameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/NameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/hssf/record/chart/TickRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/TickRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/hssf/record/chart/BarRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/BarRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/LegendRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/UnitsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CFHeader12Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/FeatHdrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/poi/hssf/record/TableRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TableRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/IndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/state/d;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->k(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/state/d;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->v(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->l(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->w(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_2
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->c(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_3
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->z(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_4
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->B(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInterpolation(F)F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/state/d;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->h(F)F

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->a(F)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/state/d;->c:I

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;-><init>()V

    return-object p0

    :sswitch_0
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFVBAPart;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFVBAPart;-><init>()V

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :sswitch_2
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :sswitch_3
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :sswitch_4
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :sswitch_5
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;-><init>()V

    return-object p0

    :sswitch_6
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;-><init>()V

    return-object p0

    :sswitch_7
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFComments;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0xa -> :sswitch_6
        0xc -> :sswitch_5
        0xf -> :sswitch_4
        0x12 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/state/d;->c:I

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_0
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_2
    new-instance p0, Lorg/apache/poi/xssf/model/CalculationChain;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/CalculationChain;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_3
    new-instance p0, Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_4
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_5
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_6
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_7
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_8
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_9
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_a
    new-instance p0, Lorg/apache/poi/xssf/model/MapInfo;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/MapInfo;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_b
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xb -> :sswitch_a
        0xd -> :sswitch_9
        0xe -> :sswitch_8
        0x10 -> :sswitch_7
        0x11 -> :sswitch_6
        0x13 -> :sswitch_5
        0x16 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method
