.class public final synthetic Lm5/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/g1$j;


# instance fields
.field public final synthetic c:Lm5/g1$l;

.field public final synthetic r:[C

.field public final synthetic x:I

.field public final synthetic y:I


# direct methods
.method public synthetic constructor <init>(Lm5/g1$l;[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/i1;->c:Lm5/g1$l;

    iput-object p2, p0, Lm5/i1;->r:[C

    iput p3, p0, Lm5/i1;->x:I

    iput p4, p0, Lm5/i1;->y:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lm5/i1;->c:Lm5/g1$l;

    iget-object v0, v0, Lm5/g1$l;->r:Lm5/g1$m;

    iget-object v1, p0, Lm5/i1;->r:[C

    iget v2, p0, Lm5/i1;->x:I

    iget p0, p0, Lm5/i1;->y:I

    invoke-virtual {v0, v1, v2, p0}, Lm5/g1$m;->J([CII)I

    move-result p0

    return p0
.end method
