.class public Lm3/a;
.super Ll3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm3/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lp3/c;
    .locals 1

    sget-object p0, Lm3/a$a;->a:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x22

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lp3/b;

    invoke-direct {p0}, Lp3/b;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lq3/a;

    invoke-direct {p0}, Lp3/c;-><init>()V

    :goto_1
    return-object p0
.end method
