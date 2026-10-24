.class Lorg/apache/poi/xslf/usermodel/XSLFChart$2;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFChart;->getTitleShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFChart;

.field final synthetic val$title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFChart$2;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFChart;

    iput-object p4, p0, Lorg/apache/poi/xslf/usermodel/XSLFChart$2;->val$title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method


# virtual methods
.method public getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFChart$2;->val$title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    return-object p0
.end method
