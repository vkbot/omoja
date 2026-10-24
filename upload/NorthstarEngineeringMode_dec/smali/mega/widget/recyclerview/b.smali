.class public final synthetic Lmega/widget/recyclerview/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;
.implements Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;
.implements Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lmega/widget/recyclerview/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dividerColor(ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    iget p0, p0, Lmega/widget/recyclerview/b;->c:I

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->e(IILandroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->d(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2
    iget p0, p0, Lmega/widget/recyclerview/b;->c:I

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->m(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 1
    iget p0, p0, Lmega/widget/recyclerview/b;->c:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/StylesTable;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/xssf/model/CalculationChain;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/CalculationChain;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/ThemesTable;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/xssf/model/MapInfo;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/MapInfo;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0
.end method

.method public init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 3
    iget p0, p0, Lmega/widget/recyclerview/b;->c:I

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_2
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_3
    new-instance p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_4
    new-instance p0, Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

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
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_9
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_a
    new-instance p0, Lorg/apache/poi/xssf/model/SingleXmlCells;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/SingleXmlCells;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_b
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_a
        0x6 -> :sswitch_9
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_5
        0xe -> :sswitch_4
        0x11 -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
