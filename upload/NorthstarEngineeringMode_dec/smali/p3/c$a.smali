.class public final Lp3/c$a;
.super Lp3/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# virtual methods
.method public final a()I
    .locals 0

    sget-object p0, Lp3/c;->r:Lp3/c;

    invoke-virtual {p0}, Lp3/c;->a()I

    move-result p0

    return p0
.end method
