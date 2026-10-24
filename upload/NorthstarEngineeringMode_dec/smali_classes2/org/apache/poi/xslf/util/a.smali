.class public final synthetic Lorg/apache/poi/xslf/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xslf/util/a;->a:I

    iput-object p2, p0, Lorg/apache/poi/xslf/util/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/poi/xslf/util/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/xslf/util/a;->a:I

    iget-object v1, p0, Lorg/apache/poi/xslf/util/a;->c:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xslf/util/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/z;

    check-cast v1, Ljava/util/function/BiConsumer;

    check-cast p1, Ljavax/xml/namespace/QName;

    check-cast p2, Li5/r$a;

    invoke-static {p0, v1, p1, p2}, Lorg/apache/xmlbeans/impl/schema/z;->l(Lorg/apache/xmlbeans/impl/schema/z;Ljava/util/function/BiConsumer;Ljavax/xml/namespace/QName;Li5/r$a;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/Map;

    check-cast v1, Ljava/text/AttributedCharacterIterator;

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {p0, v1, p1, p2}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->a(Ljava/util/Map;Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
