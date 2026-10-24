.class public final synthetic Lorg/apache/poi/util/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityProperty;
.implements Lorg/apache/poi/util/XMLHelper$SecurityFeature;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/parsers/DocumentBuilderFactory;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/util/f0;->a:I

    iput-object p1, p0, Lorg/apache/poi/util/f0;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/poi/util/f0;->a:I

    iget-object p0, p0, Lorg/apache/poi/util/f0;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/poi/util/f0;->a:I

    iget-object p0, p0, Lorg/apache/poi/util/f0;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method
