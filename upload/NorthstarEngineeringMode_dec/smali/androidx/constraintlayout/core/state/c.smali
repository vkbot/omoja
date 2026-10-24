.class public final synthetic Landroidx/constraintlayout/core/state/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Ln2/g;
.implements Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;
.implements Lorg/apache/commons/io/output/a$a;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;
.implements Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
.implements Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/constraintlayout/core/state/c;->c:I

    return-void
.end method


# virtual methods
.method public final b(I[B)Ljava/io/InputStream;
    .locals 1

    new-instance p0, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object p0
.end method

.method public final dividerSize(ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-static {p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration;->a(ILandroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public final fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/state/c;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->o(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->j(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_2
    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->x(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Lvendor/mega/tboxclient/V1_0/ITboxClientService;
    .locals 0

    invoke-static {}, Lvendor/mega/tboxclient/V1_0/ITboxClientService;->getService()Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    move-result-object p0

    return-object p0
.end method

.method public final getInterpolation(F)F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/state/c;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->g(F)F

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->d(F)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/state/c;->c:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFFontData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontData;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFChart;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/state/c;->c:I

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFComments;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_0
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_2
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_3
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_4
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_5
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_6
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_7
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_8
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_8
        0x8 -> :sswitch_7
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xd -> :sswitch_4
        0x10 -> :sswitch_3
        0x13 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public final parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;->a(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    return-object p0
.end method
