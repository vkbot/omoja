.class public final synthetic Lorg/apache/poi/xslf/usermodel/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;
.implements Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xslf/usermodel/i;->c:I

    return-void
.end method


# virtual methods
.method public final fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/xslf/usermodel/i;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->g(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->c(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->e(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->k(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/xslf/usermodel/i;->c:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/CommentsTable;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/SharedStringsTable;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>()V

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
    new-instance p0, Lorg/apache/poi/xssf/model/SingleXmlCells;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/SingleXmlCells;-><init>()V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 2
    iget p0, p0, Lorg/apache/poi/xslf/usermodel/i;->c:I

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_2
    new-instance p0, Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_3
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_4
    new-instance p0, Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/ThemesTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_5
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFVBAPart;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFVBAPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

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
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_a
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_b
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFChart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_b
        0x7 -> :sswitch_a
        0x8 -> :sswitch_9
        0xa -> :sswitch_8
        0xd -> :sswitch_7
        0x10 -> :sswitch_6
        0x12 -> :sswitch_5
        0x13 -> :sswitch_4
        0x15 -> :sswitch_3
        0x17 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method
