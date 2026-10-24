.class public final synthetic Lorg/apache/poi/xwpf/usermodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/b;->c:I

    return-void
.end method


# virtual methods
.method public final init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/b;->c:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;-><init>()V

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
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 2
    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/b;->c:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
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
