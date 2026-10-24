.class public final synthetic Lorg/apache/poi/openxml4j/opc/e;
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

    iput p1, p0, Lorg/apache/poi/openxml4j/opc/e;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lorg/apache/poi/openxml4j/opc/e;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setQNameValue(Ljavax/xml/namespace/QName;)V

    return-void

    :pswitch_0
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setCalendarValue(Ljava/util/Calendar;)V

    return-void

    :pswitch_1
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setDateValue(Ljava/util/Date;)V

    return-void

    :pswitch_2
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setDateValue(Ljava/util/Date;)V

    return-void

    :pswitch_3
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setObjectValue(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setObjectValue(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setBigIntegerValue(Ljava/math/BigInteger;)V

    return-void

    :pswitch_6
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setBigIntegerValue(Ljava/math/BigInteger;)V

    return-void

    :pswitch_7
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Li5/g;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->setGDurationValue(Li5/g;)V

    return-void

    :pswitch_8
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/g;

    check-cast p2, Li5/c0$a;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/g;->a()V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/schema/g;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/g;

    check-cast p2, Li5/v$a;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/g;->a()V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/schema/g;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_a
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/g;

    check-cast p2, Li5/t$a;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/g;->a()V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/schema/g;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_b
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/g;

    check-cast p2, Li5/u$a;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/g;->a()V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/schema/g;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    check-cast p1, Le3/a;

    check-cast p2, Le3/a;

    invoke-static {p1, p2}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->a(Le3/a;Le3/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
