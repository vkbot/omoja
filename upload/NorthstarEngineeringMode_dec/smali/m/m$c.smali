.class public final Lm/m$c;
.super Lm/c;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/c<",
        "Lm/m$b;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b()Lm/l;
    .locals 1

    new-instance v0, Lm/m$b;

    invoke-direct {v0, p0}, Lm/m$b;-><init>(Lm/m$c;)V

    return-object v0
.end method
