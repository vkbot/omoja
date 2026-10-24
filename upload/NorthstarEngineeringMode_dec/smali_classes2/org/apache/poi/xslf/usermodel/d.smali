.class public final synthetic Lorg/apache/poi/xslf/usermodel/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lorg/apache/poi/xslf/usermodel/XSLFSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/d;->a:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/d;->a:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    check-cast p1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->a(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    return-void
.end method
