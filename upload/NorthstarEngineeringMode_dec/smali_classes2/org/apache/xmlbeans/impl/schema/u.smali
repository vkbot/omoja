.class public final synthetic Lorg/apache/xmlbeans/impl/schema/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/schema/v;

.field public final synthetic b:Lorg/apache/xmlbeans/impl/schema/l0;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/v;Lorg/apache/xmlbeans/impl/schema/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/u;->a:Lorg/apache/xmlbeans/impl/schema/v;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/u;->b:Lorg/apache/xmlbeans/impl/schema/l0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Li5/r;

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/u;->a:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/u;->b:Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/r;->o()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    const/4 v0, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, v0, :cond_3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected component type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    move v0, p2

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    return-void
.end method
