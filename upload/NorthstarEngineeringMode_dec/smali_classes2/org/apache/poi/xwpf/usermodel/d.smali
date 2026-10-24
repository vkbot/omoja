.class public final synthetic Lorg/apache/poi/xwpf/usermodel/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;
.implements Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/d;->c:I

    return-void
.end method


# virtual methods
.method public final init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/d;->c:I

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;-><init>()V

    return-object p0

    :sswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>()V

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final init(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0
.end method

.method public final init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 3
    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/d;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
