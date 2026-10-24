.class public final synthetic Lorg/apache/poi/xslf/usermodel/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;


# instance fields
.field public final synthetic c:Lorg/apache/poi/xslf/usermodel/XSLFShape;

.field public final synthetic r:Z


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/k;->c:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    iput-boolean p2, p0, Lorg/apache/poi/xslf/usermodel/k;->r:Z

    return-void
.end method


# virtual methods
.method public final fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/k;->c:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    iget-boolean p0, p0, Lorg/apache/poi/xslf/usermodel/k;->r:Z

    invoke-static {v0, p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->j(Lorg/apache/poi/xslf/usermodel/XSLFShape;ZLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method
