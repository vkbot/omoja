.class public final synthetic Lorg/apache/xmlbeans/impl/schema/j0;
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

    iput p2, p0, Lorg/apache/xmlbeans/impl/schema/j0;->a:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/j0;->b:Lorg/apache/xmlbeans/impl/schema/l0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/j0;->a:I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/j0;->b:Lorg/apache/xmlbeans/impl/schema/l0;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void
.end method
