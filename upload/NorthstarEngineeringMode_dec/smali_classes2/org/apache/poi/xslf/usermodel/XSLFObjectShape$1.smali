.class Lorg/apache/poi/xslf/usermodel/XSLFObjectShape$1;
.super Lorg/apache/commons/io/output/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->updateObjectData(Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;Lorg/apache/poi/sl/usermodel/ObjectMetaData;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;

.field final synthetic val$md:Lorg/apache/poi/sl/usermodel/ObjectMetaData;

.field final synthetic val$rp:Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/sl/usermodel/ObjectMetaData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape$1;->val$rp:Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape$1;->val$md:Lorg/apache/poi/sl/usermodel/ObjectMetaData;

    invoke-direct {p0}, Lorg/apache/commons/io/output/b;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape$1;->val$rp:Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape$1;->val$md:Lorg/apache/poi/sl/usermodel/ObjectMetaData;

    invoke-static {v0, v1, v2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/sl/usermodel/ObjectMetaData;Lorg/apache/commons/io/output/b;)V

    return-void
.end method
