.class public final Lorg/apache/xmlbeans/impl/schema/i;
.super Lorg/apache/xmlbeans/impl/schema/l;
.source "SourceFile"

# interfaces
.implements Li5/t;


# instance fields
.field public final k:Lorg/apache/xmlbeans/impl/schema/g;

.field public l:Ljava/lang/String;

.field public final m:Li5/t$a;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li5/t$a;

    invoke-direct {v0, p0}, Li5/r$a;-><init>(Li5/r;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/i;->m:Li5/t$a;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/i;->k:Lorg/apache/xmlbeans/impl/schema/g;

    return-void
.end method


# virtual methods
.method public final H()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/i;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final K()Li5/r$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/i;->m:Li5/t$a;

    return-object p0
.end method

.method public final f()Li5/f0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/i;->k:Lorg/apache/xmlbeans/impl/schema/g;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object p0

    return-object p0
.end method

.method public final o()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
