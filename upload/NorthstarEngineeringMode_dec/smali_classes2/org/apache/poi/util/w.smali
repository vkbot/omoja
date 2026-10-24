.class public final synthetic Lorg/apache/poi/util/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityFeature;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/parsers/SAXParserFactory;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/util/w;->a:I

    iput-object p1, p0, Lorg/apache/poi/util/w;->b:Ljavax/xml/parsers/SAXParserFactory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Z)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/w;->a:I

    iget-object p0, p0, Lorg/apache/poi/util/w;->b:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method
