.class public interface abstract Lp5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp5/a$a;
    }
.end annotation


# static fields
.field public static final A0:Li5/c0;

.field public static final B0:Lp5/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lu5/a;->a:Lu5/a;

    const-string v1, "spaceb986attrtype"

    invoke-interface {v0, v1}, Li5/f0;->resolveHandle(Ljava/lang/String;)Li5/r;

    move-result-object v0

    check-cast v0, Li5/c0;

    sput-object v0, Lp5/a;->A0:Li5/c0;

    sget-object v0, Lp5/a$a;->c:Li5/h0$a;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object v1

    check-cast v1, Lp5/a$a;

    const-string v1, "preserve"

    invoke-virtual {v0, v1}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object v0

    check-cast v0, Lp5/a$a;

    sput-object v0, Lp5/a;->B0:Lp5/a$a;

    return-void
.end method
