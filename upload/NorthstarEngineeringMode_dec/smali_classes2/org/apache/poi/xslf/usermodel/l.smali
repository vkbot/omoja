.class public final synthetic Lorg/apache/poi/xslf/usermodel/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;
.implements Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;


# instance fields
.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/l;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/l;->c:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->a(Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/l;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Function;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->n(Ljava/util/function/Function;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method
