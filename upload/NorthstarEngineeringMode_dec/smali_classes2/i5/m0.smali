.class public interface abstract Li5/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/i0;


# static fields
.field public static final t:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Li5/l0;->a:Ljava/lang/String;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/a;->n:Lorg/apache/xmlbeans/impl/schema/a;

    const-string v1, "_BI_boolean"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/a;->resolveHandle(Ljava/lang/String;)Li5/r;

    move-result-object v0

    check-cast v0, Li5/c0;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/a;->n:Lorg/apache/xmlbeans/impl/schema/a;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/c0;

    sput-object v0, Li5/m0;->t:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract getBooleanValue()Z
.end method
