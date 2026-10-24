.class public interface abstract Lz2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/c$a;
    }
.end annotation


# static fields
.field public static final W0:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string/jumbo v1, "stinsetmode3b89type"

    invoke-interface {v0, v1}, Li5/f0;->resolveHandle(Ljava/lang/String;)Li5/r;

    move-result-object v0

    check-cast v0, Li5/c0;

    sput-object v0, Lz2/c;->W0:Li5/c0;

    sget-object v0, Lz2/c$a;->c:Li5/h0$a;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object v1

    check-cast v1, Lz2/c$a;

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object v0

    check-cast v0, Lz2/c$a;

    return-void
.end method
