.class public final synthetic Lorg/apache/poi/xwpf/usermodel/c;
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

    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/c;->c:I

    return-void
.end method


# virtual methods
.method public final init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/c;->c:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;-><init>()V

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
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final init(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0
.end method

.method public final init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    .line 3
    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/c;->c:I

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_0
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    :sswitch_2
    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
