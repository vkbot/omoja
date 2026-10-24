.class public final synthetic Lorg/apache/xmlbeans/impl/values/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[F


# direct methods
.method public synthetic constructor <init>([FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/xmlbeans/impl/values/o0;->a:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/o0;->b:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/o0;->a:I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/o0;->b:[F

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->O1([FLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->h1([FLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
