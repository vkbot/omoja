.class public final synthetic Lorg/apache/poi/hssf/record/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/HSSFRecordTypes$RecordConstructor;
.implements Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;
.implements Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$MethodHandler;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;
.implements Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
.implements Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;
.implements Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/m1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/hssf/record/m1;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternalNameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SelectionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/hssf/record/chart/BeginRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/BeginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/AreaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ChartRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lorg/apache/poi/hssf/record/FeatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/FeatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_19
    new-instance p0, Lorg/apache/poi/hssf/record/PasswordRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PasswordRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1a
    new-instance p0, Lorg/apache/poi/hssf/record/ArrayRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ArrayRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1b
    new-instance p0, Lorg/apache/poi/hssf/record/StringRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1c
    new-instance p0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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

.method public apply(Lorg/apache/poi/util/LittleEndianInput;II)Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    .line 2
    iget p0, p0, Lorg/apache/poi/hssf/record/m1;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/hssf/record/m1;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->h(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2
    iget p0, p0, Lorg/apache/poi/hssf/record/m1;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public handle(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->b(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/hssf/record/m1;->c:I

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectData;-><init>()V

    return-object p0

    :sswitch_0
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :sswitch_2
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :sswitch_3
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :sswitch_4
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :sswitch_5
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0xb -> :sswitch_4
        0xd -> :sswitch_3
        0xe -> :sswitch_2
        0x10 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 2
    iget p0, p0, Lorg/apache/poi/hssf/record/m1;->c:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFFontData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFFontData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFChart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->a(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p0

    return-object p0
.end method
