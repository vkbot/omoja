.class public final synthetic Lorg/apache/poi/util/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityFeature;
.implements Lorg/apache/poi/util/XMLHelper$SecurityProperty;


# instance fields
.field public final synthetic a:Ljavax/xml/validation/SchemaFactory;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/validation/SchemaFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/b0;->a:Ljavax/xml/validation/SchemaFactory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/util/b0;->a:Ljavax/xml/validation/SchemaFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/validation/SchemaFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/util/b0;->a:Ljavax/xml/validation/SchemaFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/validation/SchemaFactory;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method
