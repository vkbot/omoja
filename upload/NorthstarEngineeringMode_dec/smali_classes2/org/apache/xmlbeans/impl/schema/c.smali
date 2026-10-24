.class public Lorg/apache/xmlbeans/impl/schema/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Li5/c0;

.field public final b:Li5/f0;


# direct methods
.method public constructor <init>(Li5/f0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    invoke-interface {p1, p2}, Li5/f0;->resolveHandle(Ljava/lang/String;)Li5/r;

    move-result-object p1

    check-cast p1, Li5/c0;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    invoke-interface {v1, p0, v0}, Li5/d0;->newInstance(Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method
