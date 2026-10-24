.class public final synthetic Lorg/apache/xmlbeans/impl/schema/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/xmlbeans/impl/schema/l0;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/l0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/xmlbeans/impl/schema/k0;->a:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/k0;->b:Lorg/apache/xmlbeans/impl/schema/l0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/k0;->a:I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k0;->b:Lorg/apache/xmlbeans/impl/schema/l0;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Li5/i0;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->R(Li5/i0;)V

    return-void

    :pswitch_0
    check-cast p1, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
