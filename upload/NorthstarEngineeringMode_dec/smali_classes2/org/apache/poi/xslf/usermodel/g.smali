.class public final synthetic Lorg/apache/poi/xslf/usermodel/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;


# instance fields
.field public final synthetic a:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/g;->a:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-void
.end method


# virtual methods
.method public final accept()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/g;->a:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetSpcAft()V

    return-void
.end method
