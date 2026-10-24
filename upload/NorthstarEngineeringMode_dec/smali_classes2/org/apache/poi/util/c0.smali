.class public final synthetic Lorg/apache/poi/util/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityProperty;
.implements Lorg/apache/poi/util/XMLHelper$SecurityFeature;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/util/c0;->a:I

    iput-object p2, p0, Lorg/apache/poi/util/c0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/poi/util/c0;->a:I

    iget-object p0, p0, Lorg/apache/poi/util/c0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Ljavax/xml/validation/SchemaFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/validation/SchemaFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final accept(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/util/c0;->b:Ljava/lang/Object;

    check-cast p0, Ljavax/xml/stream/XMLInputFactory;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/XMLHelper;->c(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
