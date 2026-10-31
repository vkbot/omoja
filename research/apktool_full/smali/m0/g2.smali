.class public final synthetic Lm0/g2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh3/h;


# instance fields
.field public final synthetic a:Lm0/k2;


# direct methods
.method public synthetic constructor <init>(Lm0/k2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/g2;->a:Lm0/k2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const p2, 0x7f090499

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lm0/g2;->a:Lm0/k2;

    .line 8
    .line 9
    if-ne p1, p2, :cond_1

    .line 10
    .line 11
    const/16 p1, 0x1e

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lm0/k2;->y(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const p2, 0x7f09049b

    .line 18
    .line 19
    .line 20
    if-ne p1, p2, :cond_2

    .line 21
    .line 22
    const/16 p1, 0x46

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lm0/k2;->y(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const/16 p1, 0x32

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lm0/k2;->y(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
