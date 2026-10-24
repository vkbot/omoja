.class public final synthetic Lm5/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/g1$j;


# instance fields
.field public final synthetic c:Lm5/g1$l;

.field public final synthetic r:[C


# direct methods
.method public synthetic constructor <init>(Lm5/g1$l;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/j1;->c:Lm5/g1$l;

    iput-object p2, p0, Lm5/j1;->r:[C

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lm5/j1;->c:Lm5/g1$l;

    iget-object p0, p0, Lm5/j1;->r:[C

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, p0

    :goto_0
    iget-object v0, v0, Lm5/g1$l;->r:Lm5/g1$m;

    invoke-virtual {v0, p0, v1, v2}, Lm5/g1$m;->J([CII)I

    move-result p0

    return p0
.end method
