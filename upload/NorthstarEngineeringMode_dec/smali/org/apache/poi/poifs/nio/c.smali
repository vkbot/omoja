.class public final synthetic Lorg/apache/poi/poifs/nio/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/poifs/nio/c;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/nio/c;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setBigDecimalValue(Ljava/math/BigDecimal;)V

    return-void

    :pswitch_0
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setStringValue(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setBigDecimalValue(Ljava/math/BigDecimal;)V

    return-void

    :pswitch_2
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Li5/d;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setGDateValue(Li5/d;)V

    return-void

    :pswitch_3
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Li5/d;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setGDateValue(Li5/d;)V

    return-void

    :pswitch_4
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, [B

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setByteArrayValue([B)V

    return-void

    :pswitch_5
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Li5/h0;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setEnumValue(Li5/h0;)V

    return-void

    :pswitch_6
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/g;

    check-cast p2, Li5/y$a;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/g;->a()V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/schema/g;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_7
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/g;

    check-cast p2, Li5/c0$a;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/g;->a()V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/schema/g;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_8
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/g;

    check-cast p2, Li5/y$a;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/g;->a()V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/schema/g;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    check-cast p1, Ljava/nio/ByteBuffer;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
