.class public final synthetic Lorg/apache/poi/util/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityProperty;
.implements Lorg/apache/poi/util/XMLHelper$SecurityFeature;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/d0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/util/d0;->a:Ljava/lang/Object;

    check-cast p0, Ljavax/xml/validation/SchemaFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/validation/SchemaFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/util/d0;->a:Ljava/lang/Object;

    check-cast p0, Lorg/xml/sax/XMLReader;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method
