.class final Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "XSLFCellTextParagraph"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;


# direct methods
.method private constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    .line 2
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    return-void
.end method


# virtual methods
.method public newTextRun(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;)V

    return-object v0
.end method

.method public bridge synthetic newTextRun(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;->newTextRun(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;

    move-result-object p0

    return-object p0
.end method
