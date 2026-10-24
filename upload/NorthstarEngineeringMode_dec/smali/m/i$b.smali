.class public final Lm/i$b;
.super Lm/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/c<",
        "Lm/i$a;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b()Lm/l;
    .locals 1

    new-instance v0, Lm/i$a;

    invoke-direct {v0, p0}, Lm/i$a;-><init>(Lm/i$b;)V

    return-object v0
.end method
