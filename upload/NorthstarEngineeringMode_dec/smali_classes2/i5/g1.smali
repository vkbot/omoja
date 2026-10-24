.class public interface abstract Li5/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/i0;


# static fields
.field public static final O:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Li5/l0;->a:Ljava/lang/String;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/a;->n:Lorg/apache/xmlbeans/impl/schema/a;

    const-string v1, "_BI_gYearMonth"

    invoke-interface {v0, v1}, Li5/f0;->resolveHandle(Ljava/lang/String;)Li5/r;

    move-result-object v0

    check-cast v0, Li5/c0;

    sput-object v0, Li5/g1;->O:Li5/c0;

    return-void
.end method
