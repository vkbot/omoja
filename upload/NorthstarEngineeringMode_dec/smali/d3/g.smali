.class public interface abstract Ld3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/g$a;
    }
.end annotation


# static fields
.field public static final p:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string/jumbo v1, "stext2fe5type"

    invoke-interface {v0, v1}, Li5/f0;->resolveHandle(Ljava/lang/String;)Li5/r;

    move-result-object v0

    check-cast v0, Li5/c0;

    sput-object v0, Ld3/g;->p:Li5/c0;

    sget-object v0, Ld3/g$a;->c:Li5/h0$a;

    const-string/jumbo v1, "view"

    invoke-virtual {v0, v1}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object v1

    check-cast v1, Ld3/g$a;

    const-string v1, "edit"

    invoke-virtual {v0, v1}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object v1

    check-cast v1, Ld3/g$a;

    const-string v1, "backwardCompatible"

    invoke-virtual {v0, v1}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object v0

    check-cast v0, Ld3/g$a;

    return-void
.end method
