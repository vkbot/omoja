.class public final synthetic Landroidx/constraintlayout/core/state/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Ln2/g;
.implements Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;
.implements Lm4/a;
.implements Lorg/apache/commons/io/output/a$a;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;
.implements Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;
.implements Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
.implements Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/state/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Landroidx/constraintlayout/core/state/b;->c:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p1, Lorg/apache/commons/io/output/i;

    sget-object p0, Li4/c;->a:[B

    .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const p1, 0x7fffffff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Cannot read more than %,d into a byte array"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->a(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result p0

    return p0
.end method

.method public b(I[B)Ljava/io/InputStream;
    .locals 0

    sget p0, Lorg/apache/commons/io/output/j;->c:I

    :try_start_0
    sget p0, Ln4/f;->Z:I

    new-instance p0, Ln4/f$a;

    invoke-direct {p0}, Ln4/f$a;-><init>()V

    invoke-virtual {p0, p2}, Ln4/f$a;->m([B)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ln4/f$a;->p(I)V

    invoke-virtual {p0, p1}, Ln4/f$a;->n(I)V

    invoke-virtual {p0}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/UncheckedIOException;

    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public dividerSize(ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/state/b;->c:I

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->c(IILandroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public get()Lvendor/mega/tboxclient/V1_0/ITboxClientService;
    .locals 0

    invoke-static {}, Lvendor/mega/tboxclient/V1_0/ITboxClientService;->getService()Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    move-result-object p0

    return-object p0
.end method

.method public getInterpolation(F)F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/state/b;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->e(F)F

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->b(F)F

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->c(F)F

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/state/b;->c:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>()V

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
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/state/b;->c:I

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFObjectData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_0
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

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
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_7
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_7
        0xf -> :sswitch_6
        0x12 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x17 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/state/b;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->a(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public shouldHideDivider(ILandroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->d(ILandroidx/recyclerview/widget/RecyclerView;Z)Z

    move-result p0

    return p0
.end method
