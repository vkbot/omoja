.class public final synthetic Lorg/apache/poi/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityFeature;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljavax/xml/stream/XMLInputFactory;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/stream/XMLInputFactory;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/util/z;->a:I

    iput-object p1, p0, Lorg/apache/poi/util/z;->b:Ljavax/xml/stream/XMLInputFactory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Z)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/z;->a:I

    iget-object p0, p0, Lorg/apache/poi/util/z;->b:Ljavax/xml/stream/XMLInputFactory;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/XMLHelper;->c(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
